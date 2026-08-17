-- Security layer #4 (database-level enforcement) from the design doc.
-- Even if every upstream validation layer has a bug, this role physically
-- cannot write or delete anything — it only ever has SELECT.

DO $$
BEGIN
    IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'app_readonly') THEN
        CREATE ROLE app_readonly LOGIN PASSWORD 'readonly_dev_password';
    END IF;
END
$$;

-- No write privileges anywhere. Ever.
REVOKE ALL ON SCHEMA analyst FROM app_readonly;
REVOKE ALL ON ALL TABLES IN SCHEMA analyst FROM app_readonly;

GRANT USAGE ON SCHEMA analyst TO app_readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA analyst TO app_readonly;

-- Any tables/views created later in this schema are read-only by default too,
-- so a future migration can't silently widen the app's DB permissions.
ALTER DEFAULT PRIVILEGES IN SCHEMA analyst GRANT SELECT ON TABLES TO app_readonly;

-- Belt-and-braces: explicitly confirm no write grants exist for this role.
-- (Informational only — run manually to audit.)
-- SELECT grantee, table_name, privilege_type
-- FROM information_schema.role_table_grants
-- WHERE grantee = 'app_readonly';

-- Per-session safety net enforced at connection time by the app (see app/db.py),
-- but also settable as a role-level default so it applies even to ad-hoc psql
-- sessions logged in as app_readonly:
ALTER ROLE app_readonly SET statement_timeout = '5s';
ALTER ROLE app_readonly SET default_transaction_read_only = on;
