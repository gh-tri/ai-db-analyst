#!/usr/bin/env python3
"""
Synthetic data generator for the AI Database Analyst capstone.

Design choices (see design doc §2):
  - Reproducible: fixed random seed, so the "correct answers" used by the eval
    harness (eval/eval_set.json) stay valid across re-runs.
  - Deliberately seeds ONE clear, multi-causal anomaly: a Q2 2025 revenue dip in
    the APAC region, driven by (a) discontinuing a top-selling APAC product at
    the end of Q1 2025, and (b) a broader softness in APAC order volume during
    Q2 2025. This gives the "why did revenue decline in Q2" demo question a real,
    discoverable, multi-table answer instead of an unfalsifiable LLM story.
  - Bounded size (tens of thousands of order line items, not millions) — this is
    a prototype; see design doc §8 for how the design would change at real scale.
"""
import os
import random
import datetime as dt
from collections import defaultdict

import psycopg2
import psycopg2.extras
from faker import Faker

random.seed(42)
fake = Faker()
Faker.seed(42)

DB_DSN = os.environ.get(
    "SEED_DB_DSN", "dbname=ai_db_analyst user=postgres host=localhost"
)

# ---------------------------------------------------------------------------
# Reference data
# ---------------------------------------------------------------------------

REGIONS = ["North America", "EMEA", "APAC", "LATAM"]

COUNTRIES_BY_REGION = {
    "North America": ["United States", "Canada", "Mexico"],
    "EMEA": ["United Kingdom", "Germany", "France", "United Arab Emirates"],
    "APAC": ["India", "Japan", "Australia", "Singapore"],
    "LATAM": ["Brazil", "Argentina", "Chile"],
}

CATEGORIES = [
    "Electronics",
    "Home & Kitchen",
    "Apparel",
    "Sports & Outdoors",
    "Beauty & Personal Care",
    "Office Supplies",
    "Toys & Games",
    "Books",
]

PRICE_RANGE_BY_CATEGORY = {
    "Electronics": (25, 900),
    "Home & Kitchen": (10, 250),
    "Apparel": (8, 150),
    "Sports & Outdoors": (10, 300),
    "Beauty & Personal Care": (5, 80),
    "Office Supplies": (3, 120),
    "Toys & Games": (5, 90),
    "Books": (6, 45),
}

N_PRODUCTS_PER_CATEGORY = 6
N_CUSTOMERS = 3000
START_DATE = dt.date(2023, 1, 1)
AS_OF_DATE = dt.date(2025, 12, 31)  # must match db/business_glossary.yaml reference_date

# The seeded anomaly
ANOMALY_REGION = "APAC"
ANOMALY_CATEGORY = "Electronics"
ANOMALY_DISCONTINUE_DATE = dt.date(2025, 3, 15)
ANOMALY_Q2_VOLUME_MULTIPLIER = 0.6  # ~40% order-volume softness in APAC, Apr-Jun 2025
ANOMALY_HERO_PRODUCT_BOOST = 4.0  # how much more likely APAC picks the hero product pre-discontinuation


def month_range(start: dt.date, end: dt.date):
    cur = dt.date(start.year, start.month, 1)
    while cur <= end:
        yield cur
        if cur.month == 12:
            cur = dt.date(cur.year + 1, 1, 1)
        else:
            cur = dt.date(cur.year, cur.month + 1, 1)


def random_date_in_month(month_start: dt.date) -> dt.date:
    if month_start.month == 12:
        next_month = dt.date(month_start.year + 1, 1, 1)
    else:
        next_month = dt.date(month_start.year, month_start.month + 1, 1)
    days_in_month = (next_month - month_start).days
    return month_start + dt.timedelta(days=random.randint(0, days_in_month - 1))


def main():
    conn = psycopg2.connect(DB_DSN)
    conn.autocommit = False
    cur = conn.cursor()
    cur.execute("SET search_path TO analyst")

    print("Seeding regions/countries...")
    region_ids = {}
    for r in REGIONS:
        cur.execute(
            "INSERT INTO regions (region_name) VALUES (%s) RETURNING region_id", (r,)
        )
        region_ids[r] = cur.fetchone()[0]

    country_ids = {}
    country_region = {}
    for region, countries in COUNTRIES_BY_REGION.items():
        for c in countries:
            cur.execute(
                "INSERT INTO countries (country_name, region_id) VALUES (%s, %s) RETURNING country_id",
                (c, region_ids[region]),
            )
            country_ids[c] = cur.fetchone()[0]
            country_region[c] = region

    print("Seeding categories/products...")
    category_ids = {}
    for c in CATEGORIES:
        cur.execute(
            "INSERT INTO categories (category_name) VALUES (%s) RETURNING category_id",
            (c,),
        )
        category_ids[c] = cur.fetchone()[0]

    products = []  # list of dicts
    for cat in CATEGORIES:
        lo, hi = PRICE_RANGE_BY_CATEGORY[cat]
        for i in range(N_PRODUCTS_PER_CATEGORY):
            name = f"{cat.split(' ')[0]} {fake.word().capitalize()} {fake.word().capitalize()}"
            price = round(random.uniform(lo, hi), 2)
            cur.execute(
                """INSERT INTO products (product_name, category_id, unit_price, is_discontinued, discontinued_date)
                   VALUES (%s, %s, %s, FALSE, NULL) RETURNING product_id""",
                (name, category_ids[cat], price),
            )
            pid = cur.fetchone()[0]
            products.append(
                {"id": pid, "name": name, "category": cat, "price": price, "discontinued": None}
            )

    # Designate the "hero" product that drives the seeded anomaly: the
    # highest-priced Electronics product becomes a top APAC seller, then gets
    # discontinued at the end of Q1 2025.
    electronics = [p for p in products if p["category"] == ANOMALY_CATEGORY]
    hero_product = max(electronics, key=lambda p: p["price"])
    cur.execute(
        "UPDATE products SET is_discontinued = TRUE, discontinued_date = %s WHERE product_id = %s",
        (ANOMALY_DISCONTINUE_DATE, hero_product["id"]),
    )
    hero_product["discontinued"] = ANOMALY_DISCONTINUE_DATE
    print(f"  Hero/anomaly product: '{hero_product['name']}' (id={hero_product['id']}), "
          f"discontinued {ANOMALY_DISCONTINUE_DATE}")

    print(f"Seeding {N_CUSTOMERS} customers...")
    all_countries = list(country_ids.keys())
    # Weight customer distribution roughly evenly across countries with a little noise
    customers = []
    for _ in range(N_CUSTOMERS):
        country = random.choice(all_countries)
        signup = fake.date_between(start_date=START_DATE, end_date=AS_OF_DATE)
        name = fake.name()
        email = fake.unique.email()
        cur.execute(
            """INSERT INTO customers (customer_name, email, country_id, signup_date)
               VALUES (%s, %s, %s, %s) RETURNING customer_id""",
            (name, email, country_ids[country], signup),
        )
        cid = cur.fetchone()[0]
        customers.append({"id": cid, "country": country, "region": country_region[country], "signup": signup})

    conn.commit()
    print("Reference data committed. Generating orders (this is the slow part)...")

    order_rows = []
    item_rows = []
    order_id_counter = 0
    item_id_counter = 0

    non_discontinued_ids = [p["id"] for p in products if p["id"] != hero_product["id"]]

    for month_start in month_range(START_DATE, AS_OF_DATE):
        is_holiday_season = month_start.month in (11, 12)
        is_anomaly_quarter = ANOMALY_Q2_VOLUME_MULTIPLIER and month_start.year == 2025 and month_start.month in (4, 5, 6)

        for cust in customers:
            if cust["signup"] > month_start:
                continue  # not a customer yet

            base_rate = 0.16
            rate = base_rate
            if is_holiday_season:
                rate *= 1.3
            if is_anomaly_quarter and cust["region"] == ANOMALY_REGION:
                rate *= ANOMALY_Q2_VOLUME_MULTIPLIER

            # Poisson-ish: mostly 0, sometimes 1, rarely 2
            n_orders = 0
            r = random.random()
            if r < rate:
                n_orders = 1
                if random.random() < rate * 0.15:
                    n_orders = 2

            for _ in range(n_orders):
                order_id_counter += 1
                order_date = random_date_in_month(month_start)
                status_roll = random.random()
                status = "completed"
                if status_roll < 0.03:
                    status = "refunded"
                elif status_roll < 0.07:
                    status = "cancelled"

                order_rows.append((order_id_counter, cust["id"], order_date, status))

                n_items = random.choice([1, 1, 2, 2, 3, 4])
                chosen_products = set()
                for _ in range(n_items):
                    # Hero-product boosting for APAC pre-discontinuation
                    if (
                        cust["region"] == ANOMALY_REGION
                        and order_date < ANOMALY_DISCONTINUE_DATE
                        and random.random() < (ANOMALY_HERO_PRODUCT_BOOST / len(products))
                    ):
                        prod_id = hero_product["id"]
                    else:
                        candidates = non_discontinued_ids if order_date >= ANOMALY_DISCONTINUE_DATE else [
                            p["id"] for p in products
                        ]
                        prod_id = random.choice(candidates)

                    if prod_id in chosen_products:
                        continue
                    chosen_products.add(prod_id)

                    prod = next(p for p in products if p["id"] == prod_id)
                    qty = random.randint(1, 5)
                    # small price drift over time (+/- 10%) vs current catalog price
                    price_at_sale = round(prod["price"] * random.uniform(0.9, 1.05), 2)
                    discount = random.choice([0, 0, 0, 0.05, 0.1, 0.15])

                    item_id_counter += 1
                    item_rows.append(
                        (item_id_counter, order_id_counter, prod_id, qty, price_at_sale, discount)
                    )

        if len(order_rows) > 4000:
            psycopg2.extras.execute_values(
                cur,
                "INSERT INTO orders (order_id, customer_id, order_date, status) VALUES %s",
                order_rows,
            )
            psycopg2.extras.execute_values(
                cur,
                "INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price, discount) VALUES %s",
                item_rows,
            )
            conn.commit()
            order_rows, item_rows = [], []

    if order_rows:
        psycopg2.extras.execute_values(
            cur,
            "INSERT INTO orders (order_id, customer_id, order_date, status) VALUES %s",
            order_rows,
        )
        psycopg2.extras.execute_values(
            cur,
            "INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price, discount) VALUES %s",
            item_rows,
        )
        conn.commit()

    # Reset sequences since we inserted explicit IDs
    cur.execute("SELECT setval('orders_order_id_seq', (SELECT MAX(order_id) FROM orders))")
    cur.execute("SELECT setval('order_items_order_item_id_seq', (SELECT MAX(order_item_id) FROM order_items))")
    conn.commit()

    cur.execute("SELECT COUNT(*) FROM orders")
    n_orders = cur.fetchone()[0]
    cur.execute("SELECT COUNT(*) FROM order_items")
    n_items = cur.fetchone()[0]
    print(f"Done. {n_orders} orders, {n_items} order items.")

    # Self-verify the seeded anomaly is actually visible in the data
    cur.execute(
        """
        SELECT date_part('year', order_date)::int AS yr,
               CASE WHEN date_part('month', order_date) BETWEEN 4 AND 6 THEN 'Q2' ELSE 'other' END AS q,
               ROUND(SUM(quantity * unit_price * (1 - discount)), 2) AS revenue
        FROM order_items oi
        JOIN orders o ON o.order_id = oi.order_id
        JOIN customers c ON c.customer_id = o.customer_id
        JOIN countries co ON co.country_id = c.country_id
        JOIN regions r ON r.region_id = co.region_id
        WHERE r.region_name = %s AND o.status = 'completed'
          AND date_part('month', order_date) BETWEEN 4 AND 6
        GROUP BY yr, q
        ORDER BY yr
        """,
        (ANOMALY_REGION,),
    )
    print(f"\nAPAC Q2 revenue by year (anomaly check):")
    for row in cur.fetchall():
        print(f"  {row[0]} Q2: ${row[2]:,.2f}")

    cur.close()
    conn.close()


if __name__ == "__main__":
    main()
