--
-- PostgreSQL database dump
--


-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: categories; Type: TABLE DATA; Schema: analyst; Owner: -
--

COPY analyst.categories (category_id, category_name) FROM stdin;
1	Electronics
2	Home & Kitchen
3	Apparel
4	Sports & Outdoors
5	Beauty & Personal Care
6	Office Supplies
7	Toys & Games
8	Books
\.


--
-- Data for Name: regions; Type: TABLE DATA; Schema: analyst; Owner: -
--

COPY analyst.regions (region_id, region_name) FROM stdin;
1	North America
2	EMEA
3	APAC
4	LATAM
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: analyst; Owner: -
--

COPY analyst.countries (country_id, country_name, region_id) FROM stdin;
1	United States	1
2	Canada	1
3	Mexico	1
4	United Kingdom	2
5	Germany	2
6	France	2
7	United Arab Emirates	2
8	India	3
9	Japan	3
10	Australia	3
11	Singapore	3
12	Brazil	4
13	Argentina	4
14	Chile	4
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: analyst; Owner: -
--

COPY analyst.customers (customer_id, customer_name, email, country_id, signup_date) FROM stdin;
1	Michael Miles	lynchgeorge@example.net	11	2023-06-28
2	Devin Schaefer	gabriellecameron@example.org	14	2023-09-26
3	Ethan Adams	robinbradley@example.net	6	2023-09-08
4	Jennifer Rocha	ithomas@example.org	3	2023-12-11
5	Nicole Patterson	icox@example.net	6	2025-03-26
6	Shannon Hernandez	laurahenderson@example.org	6	2024-06-24
7	Julie King	frazierdanny@example.net	4	2024-02-26
8	Gina Carter	shawnmckay@example.net	11	2025-04-02
9	Cassandra Gaines	meagan89@example.org	5	2023-10-16
10	Kimberly Osborne	georgetracy@example.org	12	2023-06-17
11	Sandra Parker	allenashley@example.org	11	2025-10-14
12	Mr. Philip Cannon	donnaarroyo@example.org	11	2023-04-04
13	Jenny Lewis	jenniferross@example.net	2	2023-10-18
14	Joseph Martinez	calebsmith@example.net	10	2024-12-12
15	Benjamin Welch	carlosjohnson@example.com	11	2023-09-09
16	Michael Lewis	jenniferkhan@example.net	3	2023-03-19
17	Rhonda Lee	hopkinsmichael@example.com	9	2024-06-01
18	Megan Joyce	brownjessica@example.org	12	2024-05-26
19	Jerry Henderson	steven17@example.net	4	2023-09-30
20	Kimberly Smith	housemelinda@example.org	3	2023-04-18
21	Dr. Steven Martin	gallowayjoseph@example.com	8	2024-03-21
22	Monica Logan	smoore@example.org	7	2023-11-09
23	Kimberly Adkins	williamsthomas@example.net	5	2025-11-26
24	Angela Lopez	leonardjoe@example.org	11	2023-06-22
25	Lauren Williams	barnesbrandy@example.net	12	2025-10-28
26	Michael Edwards	randy47@example.com	9	2023-12-13
27	Alexandra Howell	jonesjason@example.com	4	2025-10-14
28	Benjamin Sanchez	eric84@example.net	11	2023-05-26
29	Kendra Contreras	sarah12@example.com	6	2025-12-13
30	Juan Nelson	jenniferharris@example.net	14	2023-05-07
31	Danielle Odonnell	davisrodney@example.com	13	2025-07-22
32	Carlos Whitney	joycearnold@example.com	13	2023-02-18
33	Tony Vazquez	amydavenport@example.net	1	2024-09-06
34	Andrew Diaz	nolanjason@example.org	4	2024-08-28
35	Justin Baxter	sarayoung@example.org	14	2024-12-31
36	Sierra Johnson	kimberly63@example.com	1	2025-12-04
37	Janet Williams	dwalker@example.com	13	2023-06-24
38	Crystal Johnson	raymondramirez@example.org	6	2023-12-01
39	Martin Ross	sheila14@example.org	7	2025-11-24
40	Mrs. Linda Reed	samuel81@example.com	5	2024-09-27
41	Andrew Graham	michaeljones@example.net	2	2025-09-11
42	Mary Martinez	william65@example.com	4	2025-10-05
43	Cheryl Ortega	lbyrd@example.net	10	2025-02-02
44	Roy Torres	russellcarpenter@example.net	12	2024-09-15
45	Michael Dixon	donnacampbell@example.net	6	2023-12-19
46	Robert Potter	jeffrey32@example.org	4	2024-11-24
47	Miss Patricia Gibson	jennifercruz@example.com	11	2023-02-20
48	Abigail Potter	osbornejeffery@example.net	8	2023-09-25
49	David Charles	danderson@example.net	7	2024-07-21
50	Emily Fischer	usalazar@example.net	11	2024-08-04
51	Jill Moore	wcole@example.org	8	2024-04-12
52	Richard Washington	joshuajones@example.com	3	2025-07-08
53	Steven Miller	jessebenson@example.net	5	2023-09-14
54	Gary Owens	clarkrobert@example.net	3	2023-08-23
55	Spencer Johnston	wsmith@example.com	4	2025-11-01
56	Tiffany Barnes	tracynelson@example.com	12	2025-04-05
57	Michael Powell	marycalhoun@example.net	9	2023-02-01
58	Leslie Alvarado	dayderek@example.com	9	2024-08-07
59	Garrett Gibson	kathleen64@example.com	5	2023-07-18
60	Alec Ryan	jeffrey10@example.org	12	2023-10-04
61	Alex Hernandez	thomaswilson@example.org	10	2025-11-05
62	Jacob Obrien	stricklandfrank@example.com	7	2024-05-24
63	Eric Byrd	tsanders@example.org	10	2023-04-29
64	Lori Garcia	melissa91@example.net	7	2023-03-25
65	Jeffrey Wood	alexander67@example.org	6	2025-05-06
66	Steven Stevens	ryangross@example.net	4	2024-04-19
67	Kimberly Webb	lpetersen@example.com	3	2023-10-23
68	Timothy Ramirez	dsanchez@example.net	9	2023-12-19
69	Allen Rosales	tonykelly@example.com	8	2024-10-30
70	Meredith Hill	blackjames@example.org	2	2024-01-08
71	Peter Vaughn DDS	bwest@example.org	13	2025-02-27
72	David Beck	thomas85@example.com	1	2023-11-19
73	Heather Chavez	john13@example.com	14	2025-12-27
74	Pamela Lopez	joannahill@example.net	2	2023-05-11
75	Diane Garcia	kennethward@example.com	3	2025-12-05
76	Denise Mccann	heidi27@example.org	11	2023-01-16
77	Julie Alexander	tammyking@example.com	3	2025-08-13
78	John Ray	hernandezlisa@example.com	13	2023-05-05
79	Justin Butler	kimberlyjames@example.com	11	2023-04-04
80	Jessica Carroll	lynchjody@example.org	7	2023-11-22
81	Brad Allen	moorericky@example.net	10	2024-11-15
82	David Mann	ojones@example.com	2	2024-10-12
83	Mary Peck	owilson@example.net	7	2025-05-12
84	Charles Brown	brooke94@example.com	7	2023-06-13
85	Melissa Bender	mkim@example.org	10	2023-05-17
86	Lindsey Johnson	suzannehuff@example.net	8	2025-08-31
87	Phillip Underwood	hinesgregory@example.net	9	2024-10-04
88	Catherine Richards	ecosta@example.com	5	2024-12-14
89	Brian Martin	ssteele@example.net	9	2024-03-23
90	Krista Gibson	johnny16@example.net	14	2025-10-31
91	Sean Murray	lopezmichael@example.com	1	2025-06-22
92	Christina Dunn	samuel71@example.org	11	2024-11-15
93	Cynthia Moore	tranchristopher@example.org	12	2025-12-01
94	Ronnie Jimenez	william46@example.com	2	2024-05-20
95	Juan Reyes	michellehill@example.com	11	2025-12-09
96	Debra Smith	mary97@example.org	9	2024-01-08
97	Mr. Phillip Bennett	molly39@example.com	13	2024-05-03
98	Amanda Garner	qhughes@example.net	5	2023-09-13
99	Andrew Shaw MD	sawyerscott@example.net	13	2025-12-09
100	Charles Pitts	charlesharrington@example.com	11	2025-09-23
101	Marie Christian	ofinley@example.net	6	2024-01-06
102	Joshua Williamson II	wendy16@example.org	2	2025-08-29
103	Ashlee Jackson	rebecca05@example.org	5	2025-04-12
104	Charles Schmidt	georgemiller@example.com	7	2023-11-18
105	Thomas Thomas	dlittle@example.com	3	2024-11-09
106	Julie Roberts	charleslandry@example.net	8	2024-12-31
107	Melissa Bryant	james67@example.org	1	2023-11-24
108	Laura Haney	andrew64@example.org	12	2023-09-17
109	Natasha Williams	swall@example.org	12	2024-09-11
110	Mark Oliver	courtneyberger@example.net	5	2024-10-26
111	Amanda Diaz	christopherphillips@example.net	9	2023-02-13
112	Richard Walter	alyssa42@example.com	13	2024-03-30
113	Tracy Phillips	linda71@example.org	3	2025-09-27
114	Michael Craig	zcoffey@example.net	9	2025-04-05
115	Alexis Herrera	vrichardson@example.net	2	2024-02-05
116	Mark Watson	thomasharvey@example.net	14	2023-10-15
117	Maria Reid	tblankenship@example.net	11	2023-12-26
118	Tracy Torres	pwilson@example.net	5	2024-03-23
119	Michael Paul	umatthews@example.org	14	2023-05-29
120	Sandra Gilbert	antonio53@example.com	11	2025-08-27
121	Jack Pollard	amy50@example.com	9	2024-05-01
122	Tiffany Holloway	batesdarlene@example.net	10	2023-10-30
123	Gavin Zhang	caseyhubbard@example.org	4	2025-11-29
124	Crystal Schroeder	ramireztracey@example.org	3	2024-10-04
125	Ashley Delacruz	alexistyler@example.org	6	2024-08-14
126	Derek Martinez	vfox@example.org	13	2024-10-06
127	Kayla Rodriguez	soniawilliams@example.net	3	2024-06-05
128	Victor Brown	bboone@example.net	9	2024-07-24
129	Jill Lam	charlene12@example.com	13	2023-04-29
130	Michelle James	shawn96@example.org	9	2024-11-14
131	Matthew Rich	russellbeasley@example.com	1	2025-05-18
132	Jason Davis	qedwards@example.com	10	2024-01-07
133	Kara Davis	daviscolin@example.net	6	2025-11-10
134	Anthony Frye	elizabeth65@example.net	8	2024-02-13
135	Thomas Williams	caroline51@example.net	1	2025-10-27
136	John Boone	megan51@example.com	2	2024-07-09
137	Sarah Villegas	lynchdiane@example.net	6	2024-09-20
138	Michael Parker	michael22@example.net	14	2023-10-20
139	Patrick Bonilla	reesejason@example.com	13	2024-12-20
140	Eric Nguyen	wareeric@example.net	5	2024-05-11
141	Jeremy Coleman	nperry@example.net	4	2023-02-24
142	Douglas Gregory	trose@example.org	1	2023-05-05
143	Mrs. Christine Dougherty	kathrynroberts@example.org	4	2023-08-30
144	Casey James	vincentwhitaker@example.com	10	2023-01-09
145	Amanda Smith	atkinsbarbara@example.net	2	2023-03-20
146	Donna Sullivan	george97@example.net	2	2024-03-18
147	Ryan Sanchez	zwarren@example.com	12	2025-10-04
148	Richard Jones	schmidtjames@example.com	8	2025-03-27
149	Maria Hernandez	thomasjames@example.net	14	2024-01-20
150	Angela Bean	kmarshall@example.net	2	2023-06-17
151	Kristy Reid	michelle52@example.com	13	2024-05-06
152	Eric Hill	bellcharles@example.com	9	2023-03-16
153	Ronald Jones	gilbertwilliam@example.com	13	2024-05-09
154	Nancy Williams	marcalvarez@example.org	3	2024-09-27
155	Robert Monroe	wagnergerald@example.org	3	2025-11-14
156	Kelly Bishop MD	paul59@example.org	11	2025-02-13
157	Andrea Davis	umitchell@example.net	8	2025-05-14
158	Brittany Miller	sabrinacollins@example.net	9	2025-11-22
159	Kurt Hurley	angelica52@example.net	3	2025-02-03
160	Yolanda Gaines	lucasrodney@example.com	5	2025-02-08
161	Trevor Peterson	ilee@example.org	9	2023-01-20
162	Ashley Wise	stanleynancy@example.net	14	2023-03-26
163	Christopher Guerra	jenniferwilliams@example.com	10	2023-05-24
164	Jeremy Mitchell	pyoung@example.com	7	2025-01-10
165	Stephanie Lee	smurray@example.com	4	2025-11-23
166	Christopher Gonzalez	moniquewilliams@example.com	9	2024-07-04
167	Ashley Singleton	mitchellkathryn@example.com	13	2025-08-15
168	Sandra Davis	lisawilkerson@example.org	12	2024-05-07
169	James Hughes	brooksanthony@example.org	12	2024-03-30
170	Raven Taylor	samantha72@example.net	4	2025-07-07
171	Susan Smith	marydunn@example.net	12	2024-05-28
172	Ricardo Young	williamsrobert@example.net	5	2024-10-28
173	Taylor Carlson	chenbailey@example.net	7	2024-05-15
174	Lucas Allen	qlopez@example.org	11	2023-06-07
175	Troy Stephens	myerstheodore@example.net	11	2024-07-27
176	Paul Kelly	cooperjessica@example.net	6	2024-02-28
177	Nicole Anderson	amy27@example.net	8	2023-04-24
178	Chad Baldwin	mjohnson@example.org	9	2024-06-07
179	Emily Collins	ihays@example.com	8	2025-05-16
180	Cheryl Kelly	glennmartin@example.org	2	2023-10-05
181	James Gonzales	lmorgan@example.com	4	2025-05-25
182	Robert Adams	acostachristian@example.net	4	2025-01-27
183	Edward Garcia	donna47@example.net	2	2025-12-25
184	Jeremy West	christina64@example.net	6	2025-02-24
185	Angela Walsh	william20@example.org	1	2025-12-09
186	Jessica Martinez	kimberlydiaz@example.com	10	2025-07-18
187	Christian Cole	nathan19@example.org	9	2025-11-05
188	Matthew Wright	johnsonjacob@example.net	4	2024-08-02
189	Deborah Green	nlewis@example.com	10	2024-02-28
190	Mrs. Brandy Jones MD	zosborn@example.net	4	2025-01-29
191	Miss Michelle Pierce	patricia22@example.com	1	2025-11-25
192	Curtis Taylor	jjohnson@example.net	2	2024-07-11
193	Kristen Salazar	jonesraymond@example.net	12	2024-02-08
194	Patricia Morrow	martinezlogan@example.org	11	2025-02-26
195	Haley Humphrey	katrinaanderson@example.net	1	2024-05-07
196	Caleb Hernandez	fernandodonovan@example.org	4	2025-09-24
197	Stephanie Singleton	james84@example.org	2	2024-01-14
198	Anna Davidson	georgeweber@example.net	1	2024-11-15
199	Amanda Shields	williamsdarlene@example.net	14	2024-01-05
200	Kenneth Montgomery	jimenezcourtney@example.com	6	2023-10-17
201	David Aguirre	eevans@example.net	2	2024-12-03
202	John Harris	larryhiggins@example.net	9	2023-03-07
203	James Hodges	floressteven@example.com	4	2025-12-17
204	Anthony Dougherty	kwright@example.com	5	2024-05-07
205	Cheryl Moore	tjimenez@example.com	11	2025-10-19
206	Kathy Levy	brandywilliams@example.com	8	2023-01-26
207	Martha Ruiz	booneryan@example.com	4	2024-06-25
208	Holly Morales	michaelroberts@example.com	9	2025-03-07
209	Diana Hays	andersoncolin@example.com	3	2024-07-06
210	Todd Fischer	carriemorales@example.org	12	2025-05-20
211	Gary Wells	ghernandez@example.org	10	2023-02-19
212	Carla Ewing	brittney88@example.net	10	2023-12-26
213	Karen Smith	emily69@example.com	8	2024-06-20
214	Melissa Johnson	pbaker@example.net	4	2025-05-22
215	Lauren Jackson	rhernandez@example.org	13	2024-09-24
216	Ashley Smith	robert63@example.com	8	2023-02-04
217	Kaitlyn Charles	thorntonapril@example.net	13	2024-07-03
218	Kelly Edwards	stevepatel@example.net	7	2023-12-22
219	Michelle Schneider	chelsea33@example.com	4	2024-01-23
220	William Evans	janet75@example.com	2	2024-09-03
221	Rebecca Hill	berryamy@example.com	2	2024-01-17
222	Regina Roberts	stephanie15@example.com	11	2025-06-15
223	Cindy Clayton	sarah42@example.org	7	2024-12-19
224	Dana Santiago	danawilliams@example.com	6	2024-11-05
225	Michael Taylor	richarddonovan@example.com	7	2023-12-28
226	Victor Morris	velezchristopher@example.net	7	2024-06-06
227	Sarah Johnson	robertmonroe@example.org	8	2023-09-12
228	Jon Zuniga	nancy04@example.net	14	2025-12-27
229	Frances Gibson	ismall@example.net	12	2024-10-22
230	Brian Martin	twong@example.org	1	2024-05-27
231	Edward Craig	gregorychase@example.com	11	2023-01-16
232	Angie Caldwell	tinawoods@example.org	11	2025-06-24
233	Jeremy Adams	kevin90@example.com	11	2023-01-08
234	Amy Wilson	erik84@example.net	2	2024-12-16
235	Elizabeth Mendez	susanmendoza@example.com	1	2023-05-09
236	Jennifer Dunn	ztodd@example.net	7	2025-03-29
237	Melanie Larson	foxallison@example.com	12	2025-06-23
238	Amy Kelley	ashleyhernandez@example.com	6	2023-03-27
239	Michael Love	gdavis@example.com	13	2025-07-24
240	Jose Bryant	hansenemily@example.com	14	2025-06-04
241	Robert Reese	williamsmelvin@example.org	2	2025-03-02
242	Steven Andersen	ajohnson@example.org	4	2024-08-15
243	Veronica Brewer	ybrooks@example.com	4	2025-04-22
244	Jaime Vega	desireebailey@example.org	4	2025-08-10
245	Cameron Irwin	avilatiffany@example.com	9	2025-12-23
246	Kim Morrow	stevenmoore@example.org	8	2025-01-07
247	Ashley Pacheco	bmendez@example.org	3	2025-10-23
248	Andrew Harper	sanchezbradley@example.com	7	2023-08-14
249	Scott Brown	jim95@example.net	3	2023-09-14
250	Erica Turner	valerieboyd@example.com	5	2024-10-16
251	Travis Hobbs	conniesimmons@example.com	8	2023-11-26
252	Mason James	heather62@example.com	4	2023-02-21
253	Kara Atkinson	meredith27@example.org	14	2024-02-17
254	Kristin Anderson	jonathanrivera@example.org	2	2024-09-07
255	Anna Hardy	brettbennett@example.net	8	2025-10-06
256	Chelsea Gill	timothybooth@example.com	13	2024-10-22
257	Christy Lee	burgesskaren@example.org	14	2023-11-28
258	Jennifer Allen	kimberly67@example.net	14	2025-01-31
259	Ian Andrade	ugarcia@example.com	9	2024-12-11
260	Dale Edwards	hartjeffrey@example.org	2	2025-04-13
261	Lauren Cortez	elijah53@example.com	1	2023-01-18
262	Juan Harding	jonathan77@example.com	11	2024-09-15
263	Caroline Cortez	iwhite@example.net	9	2023-07-04
264	Sara Jones	duranrobert@example.net	14	2025-11-14
265	Alexa Wagner	bruce97@example.net	1	2023-09-11
266	Juan Smith	amanda40@example.net	2	2024-06-18
267	Renee Browning	hullalice@example.org	13	2025-06-09
268	Robin Adams	zmiller@example.com	14	2023-07-30
269	Courtney Sutton DVM	davisnicholas@example.net	4	2024-09-10
270	Michele Miller	vnewman@example.net	3	2024-06-05
271	Stephanie Ellison	jasonparrish@example.net	7	2025-12-06
272	Benjamin Frost	whitemelissa@example.org	8	2024-06-04
273	Nicole Marquez	thickman@example.org	8	2025-11-18
274	Sarah Rhodes	patrick21@example.net	4	2024-09-09
275	Brent Hall	petersonkayla@example.net	14	2025-03-27
276	Alyssa Nelson	whenry@example.net	7	2024-03-10
277	Michael Guerrero	bartonkenneth@example.org	1	2025-10-27
278	Christian Dawson	jodistewart@example.org	3	2025-02-19
279	Jill Juarez	andersonjacob@example.com	7	2023-04-11
280	Ashley Davis	carlsonkristen@example.com	1	2024-09-01
281	Richard Hardy	ashleyjackson@example.com	7	2023-01-14
282	Derrick Thomas	ryanfisher@example.com	5	2023-07-05
283	Tony Le	mwheeler@example.com	13	2025-05-07
284	Travis Cook	vbrock@example.com	13	2023-04-28
285	Shannon Mccann	kevinmorrison@example.net	8	2024-01-02
286	Vincent Novak	jessica79@example.org	5	2023-08-08
287	Richard Diaz	brittanygardner@example.net	7	2023-12-23
288	Nicholas Hahn	samuelcarter@example.net	12	2025-04-20
289	Rebecca Chambers	cynthiaallen@example.net	12	2023-03-17
290	James Cole	iaguilar@example.net	13	2023-06-18
291	Jennifer Johnson	jacqueline89@example.net	9	2025-10-08
292	David Ortega	deborahwilliams@example.net	11	2025-09-28
293	Paul Sheppard	grodriguez@example.com	12	2025-01-11
294	Kristin Watts	seanmyers@example.net	8	2023-09-01
295	Haley Johnson	phillipssamantha@example.org	3	2024-10-06
296	Brenda Collins	hmueller@example.com	4	2023-05-08
297	Nathan Chavez	evanslisa@example.org	5	2024-01-17
298	Brian Marsh	zacharyarnold@example.com	4	2023-01-25
299	Crystal Sullivan	jacobsandoval@example.com	1	2024-09-05
300	Christina Vargas	nsmith@example.org	10	2023-02-01
301	Rebecca Ray	michaelgonzalez@example.org	12	2023-11-01
302	Kelsey Fowler	lcarr@example.org	9	2023-10-15
303	Lisa Cervantes	samantha91@example.net	1	2024-01-16
304	Eric White	williambarnes@example.org	12	2023-05-27
305	John Medina	angelaburns@example.org	6	2024-09-21
306	Lisa Glenn	washingtonjames@example.com	1	2023-07-24
307	Kathleen Cohen	cmckinney@example.com	1	2025-11-21
308	Rebecca Walker	hillamanda@example.org	10	2023-07-03
309	Patricia Simpson	armstrongjoseph@example.net	8	2025-05-04
310	Rodney Williams	bpayne@example.org	9	2025-06-20
311	Danielle Golden	colemichael@example.org	14	2025-03-16
312	Patricia Young PhD	michelle96@example.org	9	2024-04-25
313	Robin Trujillo	amanda98@example.org	3	2024-11-05
314	Donna Adams	taylorkaren@example.com	1	2023-12-21
315	Sharon Martinez DVM	dustinmorris@example.org	9	2025-10-03
316	Katherine Ray	courtney67@example.org	2	2025-04-13
317	Anna Robertson	heather57@example.com	14	2024-11-24
318	Raymond Oconnor	sreid@example.com	3	2023-12-25
319	Jennifer Donaldson	troymorris@example.com	2	2025-07-19
320	Kylie Washington	patricia00@example.org	10	2024-01-05
321	Alexis Noble	scottsmith@example.com	2	2024-11-16
322	Bonnie Santos	nancymcdowell@example.org	11	2023-08-10
323	Jacob Mckee	brettgarrett@example.net	14	2024-12-17
324	Matthew Padilla	lewischristian@example.net	4	2025-02-04
325	Alexandra Dominguez	mcneilrobert@example.org	7	2023-09-05
326	Brandon Shaffer	edwardsnicole@example.org	2	2024-06-07
327	Shelly May	caseyelliott@example.net	10	2024-02-24
328	Nathan Fuller	samanthajensen@example.com	4	2024-12-12
329	Brian Goodwin	bbell@example.com	10	2025-07-30
330	Matthew Wright	kimberly04@example.org	10	2025-05-16
331	Nicole Phillips	bowerslaura@example.org	1	2024-07-20
332	Jonathan Wheeler	hatfieldsarah@example.org	10	2024-06-25
333	Jennifer Payne	kathrynbest@example.org	2	2024-02-28
334	Dennis Williams	fryraymond@example.com	7	2023-01-19
335	Jennifer Miles	davidsonamanda@example.org	11	2024-11-19
336	Jorge Harris	amandamyers@example.net	10	2023-10-31
337	Maria Collins	pblair@example.org	10	2025-04-15
338	Audrey Salazar	parkerjudith@example.net	9	2023-09-25
339	Chad Smith	hbenton@example.net	6	2023-07-12
340	Carol Martinez	jessica10@example.com	5	2025-05-07
341	Austin Joseph	crawfordwilliam@example.org	4	2025-06-02
342	Holly Scott	shannonemily@example.org	11	2024-07-01
343	Amanda Roy	brandoncox@example.org	12	2023-09-08
344	Amanda Pratt	pwalker@example.com	6	2023-07-15
345	Roger Duncan	shawrachel@example.org	4	2025-09-29
346	Amber Morales	xcline@example.com	5	2023-09-02
347	Aimee Gonzalez	jodi37@example.com	7	2023-12-25
348	Raymond Gonzalez DVM	edwardrandolph@example.org	3	2024-10-09
349	Ryan Wiley	aaron64@example.org	11	2023-09-13
350	Mrs. Tonya Kaufman	jenniferdavis@example.org	11	2023-08-13
351	Mercedes Watson	carpenterwilliam@example.net	5	2025-09-09
352	Keith Graham	joelgreen@example.com	8	2025-06-16
353	Ronnie Nguyen	enelson@example.org	6	2025-10-11
354	Ashley Garcia	aowens@example.org	13	2023-05-30
355	Christine Parker	melissa12@example.net	2	2024-08-09
356	Lindsey Lewis	eddie35@example.com	1	2023-11-30
357	Debbie Ewing	cranemelissa@example.net	8	2024-07-16
358	Joel Lara	davidbrown@example.org	10	2025-03-30
359	Jacqueline Mccoy	aguilarjonathan@example.org	10	2023-05-24
360	Steven Ramos	christopherboone@example.com	2	2023-01-24
361	Amber Glass	zunderwood@example.com	2	2023-05-15
362	Carrie Lewis	joshuagriffin@example.org	9	2023-02-02
363	Danielle Phillips	eandrade@example.org	4	2023-02-07
364	Jason Day	crystalpham@example.org	9	2023-04-07
365	Heather Stephens	kcooper@example.net	5	2025-12-19
366	Alexander Harper	huangkimberly@example.org	3	2023-12-19
367	Hunter Silva	terrigarcia@example.net	6	2025-06-04
368	Raven Mclaughlin	barbaramcgrath@example.com	2	2023-09-22
369	Sarah Thompson	linda59@example.org	4	2024-01-24
370	Keith Thomas	marycochran@example.com	6	2025-02-09
371	Andrew Brown	andrewwoods@example.com	5	2024-08-16
372	Carlos Love	brian29@example.net	3	2025-10-02
373	Sarah Valencia	brookssheri@example.com	8	2025-10-01
374	Frank Daugherty	fconner@example.net	14	2024-10-03
375	Kristina Preston	jeffrey92@example.com	9	2023-12-14
376	Bethany Daniel	xrosales@example.net	12	2023-12-02
377	Tammy Ponce	daniellegarcia@example.com	5	2023-02-05
378	Cynthia Haas	daisymccarty@example.net	10	2023-06-04
379	Gabriela Smith	johnjones@example.com	13	2025-01-03
380	Amber Kim	acosta@example.com	11	2025-05-11
381	James Poole	franciscojones@example.org	9	2025-08-23
382	Trevor Jones	pamelamartin@example.org	1	2023-11-19
383	Anna Wheeler	bbush@example.net	11	2024-08-22
384	Brooke Garcia	terriortiz@example.net	14	2023-06-30
385	Deborah Campbell	codylong@example.net	9	2025-03-01
386	Isaac Patterson	madison97@example.org	5	2025-07-08
387	Mark Rowland	tanthony@example.com	11	2023-04-17
388	Deborah May	ylopez@example.com	2	2024-05-30
389	Jeremiah Baker	anne21@example.org	3	2023-07-24
390	Jennifer Avila	angelarandall@example.net	5	2025-01-01
391	Sharon Wells	thomasmiller@example.net	2	2024-04-03
392	Kellie Duncan	davidtodd@example.org	2	2023-02-08
393	Daniel Lee	hendersonvanessa@example.com	12	2025-11-05
394	Brittany Larson	renee11@example.com	9	2023-08-10
395	Shannon Stone	buchanancindy@example.net	3	2024-09-01
396	Chase Knight	buckleyanna@example.org	5	2025-05-05
397	Sheryl Humphrey	patrick79@example.net	5	2025-05-10
398	Jamie Montgomery	vwilliams@example.net	10	2024-06-01
399	Tammie Prince	morganlaura@example.com	4	2023-09-18
400	Michael Garcia PhD	kevinmanning@example.com	12	2023-11-03
401	Matthew Lopez	robinrussell@example.com	6	2023-10-23
402	Samantha Robertson	cameronmckinney@example.com	4	2025-04-11
403	Sherry Johnson	nancygonzalez@example.org	11	2023-05-29
404	Thomas Bush	micheal78@example.com	11	2023-10-01
405	Andre Watson	ethompson@example.net	14	2024-11-26
406	Ryan Green	mitchellpaul@example.org	5	2024-08-26
407	Cindy Walker	ericaadams@example.com	9	2025-07-23
408	Tracy Fleming	pbuck@example.org	8	2024-07-16
409	David Trujillo	jennifer46@example.com	5	2024-10-20
410	Daniel Turner	asilva@example.net	14	2025-07-21
411	Sara Hoffman	kenneth17@example.org	1	2025-12-30
412	Frederick Hill	jacob83@example.org	2	2024-01-04
413	Lindsay Guerrero	jenniferrios@example.com	11	2025-05-31
414	James Johnson	matthewreeves@example.net	7	2023-10-12
415	Susan Powers	megan82@example.com	14	2024-08-08
416	David Stokes	staceylam@example.net	5	2023-04-17
417	Patrick Parker	nathan94@example.com	1	2023-04-08
418	Sean Silva	kennedyjames@example.org	1	2025-07-21
419	Edwin Brown	derrickgonzalez@example.com	6	2025-08-07
420	Victoria Thomas	kimberlyfreeman@example.net	13	2025-12-16
421	Anthony Hayes	kathleenjackson@example.org	3	2025-12-16
422	Anita Mendez	epowell@example.com	11	2024-06-20
423	Monica Dodson	katherine83@example.org	5	2023-01-06
424	Danielle Steele	larry16@example.net	3	2025-01-11
425	Rodney Evans	stephen89@example.net	12	2024-10-06
426	Whitney Cooper	mhoward@example.org	8	2024-01-05
427	Jennifer Perez	jasonjohnson@example.net	9	2025-11-04
428	Matthew Johnson	kelsey90@example.net	12	2023-07-05
429	Martha Smith	butleromar@example.net	7	2025-12-25
430	Christine Jennings	turnerdorothy@example.net	9	2023-10-04
431	Mercedes Barnes	huntchristine@example.com	1	2024-07-23
432	Craig Gonzalez	marie35@example.net	2	2023-05-05
433	Joshua Lozano	arivera@example.org	2	2024-03-24
434	Sara Caldwell	stacychan@example.org	12	2025-01-05
435	David Hall	joseph01@example.org	3	2025-03-03
436	Heather Rhodes	grodgers@example.org	9	2025-08-15
437	Matthew Murphy	rfriedman@example.net	1	2023-01-11
438	Catherine Morales	ynelson@example.net	14	2023-04-12
439	Mariah Robles	andersonjessica@example.org	6	2025-07-20
440	Karen Carroll	ywhite@example.com	10	2023-04-24
441	Sheryl Acosta	timothyfreeman@example.com	9	2024-10-31
442	Matthew Smith	tiffanysantiago@example.com	3	2024-04-27
443	Lisa Reynolds	timothyalvarado@example.net	7	2024-07-22
444	Kristin Huerta	smithsarah@example.net	3	2024-02-26
445	Sheila Jones	vflores@example.com	1	2025-07-18
446	Mason Powell	christianwallace@example.net	5	2023-02-25
447	Jillian Wilson	bmcgee@example.org	6	2024-05-05
448	Joshua Petersen	pamela83@example.net	13	2024-03-17
449	Heidi Brown	meganrivera@example.net	14	2025-01-05
450	Heidi Chavez	malonejeffrey@example.com	1	2024-10-18
451	Rebecca Kelley	jacqueline02@example.com	6	2024-01-24
452	Mikayla Rodriguez	jacobconrad@example.com	4	2023-06-03
453	Cheryl Morgan	owilliams@example.net	11	2023-08-25
454	Joanna Barrett	tamarasmith@example.net	4	2024-10-06
455	Sara Webb	heatherthompson@example.org	11	2023-02-23
456	Lisa Morris	mbarnes@example.net	2	2023-04-24
457	Victor Waller	iballard@example.com	6	2025-04-14
458	Kayla Cameron	jennifer83@example.org	13	2024-10-21
459	Melissa Morse	tinasantos@example.org	9	2023-08-18
460	Erica Wilson	anna99@example.net	14	2024-07-05
461	Stephanie Ferguson	hstokes@example.org	7	2025-02-16
462	Michael Gonzalez	tonyavega@example.org	10	2023-01-28
463	Elizabeth Molina	howardshaun@example.net	12	2025-07-08
464	Sharon Newton	yyoung@example.net	3	2025-08-08
465	Tammy Hughes	tammy00@example.net	4	2023-11-11
466	Priscilla Berg	rhondabush@example.net	14	2023-10-03
467	Nancy Gonzalez	kellythompson@example.net	3	2024-02-07
468	Nancy Wilson	pattersonangela@example.org	13	2023-03-23
469	Abigail Owens	billmcfarland@example.net	13	2023-06-26
470	Lisa Stanley	jtyler@example.com	3	2023-02-25
471	Kelly Krueger	hartmanerik@example.net	7	2023-03-21
472	Daniel Lewis	mark43@example.net	1	2024-08-11
473	Samantha Zavala MD	sean99@example.org	3	2024-08-03
474	Erica Moon	cruzamber@example.com	12	2025-11-15
475	Patricia Robertson	stucker@example.net	6	2023-01-28
476	Tiffany Jackson	simsjason@example.net	13	2023-07-30
477	Jessica Garcia	elucas@example.net	7	2025-04-27
478	Mitchell Johnson	brownlaura@example.net	13	2025-01-21
479	Susan Russell	bmccoy@example.com	11	2023-03-19
480	Kimberly May	avilabrenda@example.net	14	2023-01-19
481	Jonathan Roberts	catherine47@example.com	12	2025-07-17
482	Kara Ferguson	julierobles@example.net	13	2024-03-08
483	Elizabeth Eaton	susan08@example.net	4	2023-11-20
484	Kenneth Long	torreskaitlin@example.net	5	2023-06-04
485	Matthew Hunt	jackjensen@example.com	3	2024-01-12
486	Robert Phelps	enewman@example.com	13	2023-08-01
487	Craig Carpenter	michael31@example.com	12	2025-01-05
488	Emily Hayes	heather29@example.net	2	2024-11-09
489	Jeffrey Smith	kristenjoseph@example.net	7	2024-02-04
490	Brandy Quinn	wford@example.com	14	2024-04-22
491	Matthew Miller	michele28@example.org	1	2024-06-17
492	Angela Jones	atkinsoncrystal@example.net	14	2023-10-16
493	Christy Johnson	amy87@example.net	8	2024-09-25
494	Daniel Barton	dennis88@example.org	4	2025-04-28
495	Mary Charles	katherinetaylor@example.org	4	2024-03-10
496	Mary Faulkner	ccrosby@example.org	14	2023-07-16
497	Dennis Young	aprilmoody@example.com	8	2025-04-13
498	Anthony Hooper	dakota84@example.net	6	2024-05-29
499	Carrie Valdez	briana18@example.com	5	2023-10-16
500	Kelli Gomez	tommy79@example.org	14	2024-02-17
501	Christopher Jones	jason22@example.com	13	2024-07-03
502	Mary Perry	jennifer77@example.com	14	2024-10-21
503	Roy Johnson	andersonbrittany@example.org	4	2023-08-19
504	Kenneth Brown	sandra86@example.net	4	2024-11-20
505	Sherry Luna	stacey37@example.net	1	2025-11-27
506	Carolyn Greer	laurahoover@example.org	11	2025-12-23
507	Carol Jennings	ecarlson@example.org	4	2024-11-13
508	Alan Mills	mserrano@example.org	7	2024-02-19
509	Linda Rich	davisdonna@example.net	6	2023-07-14
510	Todd Gregory	xboyd@example.org	5	2024-08-13
511	Todd Olson	zbell@example.net	14	2025-02-02
512	Laura Coleman	thomas31@example.com	2	2025-09-21
513	Deanna Smith	lanedavid@example.org	13	2024-10-17
514	Robert Ortiz	mooredenise@example.com	5	2024-02-15
515	Krystal Carr	afischer@example.net	6	2023-10-14
516	Mr. Justin King	becky62@example.net	11	2025-05-08
517	Richard Avery	lewisrichard@example.com	9	2023-05-11
518	Melinda Williams	aoconnell@example.org	7	2025-05-26
519	Kyle Davis	jeffrey19@example.org	11	2025-06-20
520	Jennifer Douglas	jennifer90@example.org	14	2025-03-04
521	Dakota Sandoval	james98@example.net	9	2024-12-02
522	Megan Ward	cantrellchristopher@example.com	6	2025-02-03
523	James Willis	mclaughlincasey@example.org	1	2025-05-03
524	Kristin Aguilar	sylvia43@example.net	2	2024-08-24
525	Jared Smith	richardrodriguez@example.org	5	2025-11-20
526	Bruce Palmer	nancy94@example.net	3	2024-07-04
527	John Sanchez	susan77@example.net	10	2024-04-29
528	Mr. James Kramer	ericahall@example.com	5	2025-08-01
529	Joseph Haynes	john16@example.net	1	2024-03-27
530	Justin White	michael94@example.org	2	2025-03-30
531	Susan Porter	jimmyallen@example.com	10	2025-11-03
532	David Montgomery	kimberlywilson@example.org	7	2023-08-15
533	Lisa Duran	charlesnathan@example.com	6	2025-01-10
534	Dr. Sheila Henry	raymond92@example.org	12	2024-06-23
535	Todd Johnson	phillip27@example.org	13	2024-07-29
536	Michael Smith	nicolasgarcia@example.com	6	2025-02-03
537	Joshua Young	vmullen@example.com	7	2024-11-01
538	Jason Goodwin	melissa47@example.org	10	2023-07-21
539	Melissa Olsen	linda86@example.com	9	2024-09-17
540	Nancy Kennedy	thompsonvictor@example.net	2	2023-08-03
541	Rachel Evans	rosshannah@example.org	7	2024-07-20
542	Ryan Davis	jordan58@example.net	10	2023-08-24
543	Alejandro Martinez	barbarasantos@example.net	4	2025-10-17
544	Heather Nunez	champton@example.org	5	2023-07-11
545	Mark Thomas	daniellemcfarland@example.com	1	2024-02-22
546	Sarah Jones	matthewedwards@example.net	12	2024-11-22
547	Matthew Nelson	xnorman@example.net	7	2023-11-16
548	Jennifer White	martinezjimmy@example.com	1	2024-10-04
549	Angela Jackson	davissharon@example.com	9	2025-10-26
550	James Hubbard	garciachristine@example.org	13	2024-08-23
551	Ellen Wright	scott22@example.net	9	2024-12-18
552	Matthew Dalton	michelle78@example.com	11	2025-07-07
553	Travis Ryan	owelch@example.net	12	2024-08-23
554	Kimberly Stout	zfernandez@example.org	12	2024-04-21
555	David Torres	millskatherine@example.org	12	2024-04-28
556	Adam Weeks	xevans@example.com	11	2024-01-12
557	Rebecca Kelley	robertcastro@example.com	4	2025-05-23
558	Maria Clayton	josehenderson@example.org	6	2023-10-01
559	Lisa Benson	justin84@example.com	7	2024-07-19
560	Chad Rodriguez	rwilliamson@example.net	2	2023-07-25
561	Alec Williams	lopezcurtis@example.com	11	2024-11-12
562	Adam Davis	snydermatthew@example.com	6	2023-05-17
563	Mr. Michael Johnson Jr.	brianrowe@example.org	10	2025-05-10
564	Steven Wright	hclayton@example.net	6	2024-08-17
565	Jessica Rojas	gonzalezjill@example.org	11	2023-09-30
566	Mrs. Melanie Collins	eric08@example.net	14	2024-07-24
567	Mr. Isaac Williams	teresayoung@example.com	2	2023-05-14
568	Donald Wilson	albertwilliams@example.net	12	2023-12-22
569	Jacqueline Davis	vincentparks@example.com	5	2024-06-04
570	Lori Brown DDS	martinezjesse@example.net	9	2025-10-16
571	Renee Gonzales	andrewgray@example.net	5	2025-05-13
572	Karina Kim	amy73@example.net	11	2023-05-28
573	Nicholas Hill	caseymoore@example.com	7	2023-07-24
574	Jordan Parsons	bgross@example.net	6	2025-06-16
575	Cynthia Le	rlee@example.com	7	2025-07-27
576	Douglas Ortiz	daniel81@example.org	12	2025-04-18
577	Shane Harris	clee@example.net	5	2025-07-03
578	John Hanson	brandon39@example.net	9	2024-12-03
579	Christine Henry	mcdonalddanielle@example.com	3	2023-03-19
580	Jennifer Wood	colonjoseph@example.org	4	2024-09-03
581	Angela Lewis	garciajerry@example.com	7	2025-03-15
582	Danielle Garrett	angelagrant@example.net	11	2023-07-27
583	Heather Ellis	kandrade@example.org	7	2023-04-26
584	Mary Ferguson	umahoney@example.net	11	2024-08-25
585	Jacob Duran	umckenzie@example.net	12	2025-12-21
586	Jaime Pierce	michael77@example.com	3	2023-09-21
587	Duane Smith	victoriaturner@example.com	10	2023-01-01
588	Ethan Ingram	samantha88@example.net	10	2025-12-13
589	Andrew Kelly	josephpreston@example.org	5	2025-10-10
590	Anna Ross	jessicacummings@example.com	7	2023-09-13
591	Melissa Johnston	larsonkevin@example.net	9	2023-07-09
592	Richard Weeks	michael66@example.org	14	2025-06-04
593	Matthew Guzman	walterscrystal@example.org	1	2025-08-10
594	Joshua Hernandez	ericnunez@example.com	5	2023-11-30
595	Laura Davis	zroberts@example.org	5	2025-11-29
596	Kenneth Williams	zbaker@example.net	4	2023-05-25
597	Pamela Castillo	tonypearson@example.org	7	2024-04-20
598	Kelly Allen MD	kmorris@example.org	13	2024-09-06
599	Jacob Lee	brittney04@example.org	10	2023-05-04
600	Wanda Ramos	scottglass@example.org	10	2025-12-17
601	Peter Farrell	singhjohn@example.net	11	2023-08-07
602	Samantha Smith	torresthomas@example.com	6	2025-10-11
603	Christina Mills	ana92@example.net	8	2023-08-17
604	Kevin Alvarado	scottbrian@example.org	8	2025-02-04
605	Amy Pena	jonesdonna@example.net	8	2025-05-14
606	Sharon Smith	yhall@example.net	11	2025-07-22
607	Ethan Delacruz	lopezvincent@example.com	4	2025-12-05
608	Amanda Nielsen	matthew62@example.org	9	2024-09-05
609	Mario Young	lisa46@example.org	8	2024-01-15
610	Courtney Peterson	fsandoval@example.net	13	2025-10-30
611	Lisa Garrett	robertberry@example.com	13	2024-02-23
612	Erin Daniels	denisecarpenter@example.net	12	2025-11-28
613	Ellen Thornton	russellstout@example.org	3	2025-05-26
614	Brooke Jones	whitemary@example.org	11	2024-12-19
615	Sheryl Gutierrez	vturner@example.net	2	2025-03-07
616	Richard Rodriguez	anthonyodom@example.net	5	2025-10-18
617	Crystal Hall	howardhailey@example.com	9	2023-10-20
618	Julie Banks	melissahenry@example.org	11	2023-05-27
619	Jason Novak	stephanie33@example.org	11	2023-06-29
620	Victoria Camacho	dwatts@example.org	10	2023-03-14
621	Lisa Holloway	phillip99@example.net	6	2024-04-13
622	Rachel Meyer	cbryant@example.org	2	2024-07-29
623	Nicholas Grant	leescott@example.com	14	2024-07-21
624	Christopher Phillips	vaughnrebecca@example.com	13	2025-04-27
625	Nathan Wilson	phillipmorris@example.org	4	2025-06-27
626	Michelle Harris	udavis@example.net	11	2023-07-15
627	Carly Quinn	wilsonshannon@example.com	5	2024-12-11
628	Monica Hester	nicholasjames@example.org	4	2023-04-04
629	Mary Hernandez	haroldjoseph@example.com	13	2025-09-25
630	Tonya Roberts	davidanderson@example.org	4	2023-12-04
631	Alexandria Jimenez	astephens@example.net	3	2023-01-04
632	Kevin Alvarez	mramos@example.net	1	2025-08-24
633	Diana Fuller	brandonhernandez@example.net	1	2023-01-08
634	Andrew Lane	mark10@example.org	4	2024-01-18
635	Michael Carr	tammycurry@example.com	8	2024-04-01
636	Edwin Richardson	wwilkins@example.com	10	2025-10-16
637	John Martinez	mark68@example.org	14	2025-07-12
638	Ashley Blair	webbhaley@example.net	13	2025-01-31
639	Emily Fox	sara99@example.com	2	2023-11-11
640	Katherine White	jeanettekrause@example.org	8	2024-07-23
641	Robert Mclaughlin	laurenduarte@example.com	7	2023-05-10
642	Robert Lewis	hannahking@example.org	11	2023-02-19
643	Erica Smith	matthew99@example.org	10	2023-12-04
644	Roy Nielsen	zhendricks@example.org	4	2025-06-30
645	Mr. Steven Herrera	steven60@example.net	12	2024-12-07
646	Emily Herrera	barbararivera@example.com	12	2023-11-24
647	Ryan Morgan	ksims@example.net	7	2023-03-14
648	Bruce Patton	janet50@example.com	8	2024-10-25
649	David Hayes DVM	aliciathompson@example.com	7	2024-03-29
650	Susan Wallace	lloydrebecca@example.org	4	2025-05-09
651	Morgan Mills	douglas18@example.net	3	2023-07-28
652	Andrew Hughes	cookpamela@example.org	11	2025-12-23
653	Emily Lane	danielle35@example.org	12	2024-07-24
654	Francis Alexander	nelsoneric@example.org	1	2023-07-30
655	Kayla Clark	andrea42@example.net	13	2023-01-17
656	Carolyn Collins	amber02@example.org	14	2025-05-30
657	Ashley Brown	tmyers@example.net	13	2024-05-30
658	Melissa Griffin	larry38@example.org	2	2025-09-02
659	Julie Anderson	tdavis@example.net	13	2025-12-02
660	Julie Meza	michellejensen@example.com	7	2024-12-06
661	Mary Mccormick	shawn01@example.com	4	2024-03-05
662	Ryan Campbell	cassandra28@example.org	3	2023-05-04
663	Ashley Hawkins	sparksamanda@example.com	13	2024-03-20
664	David Moore	vreyes@example.org	12	2024-10-08
665	Rachel Graham	amy32@example.net	9	2025-06-10
666	Michelle Copeland	vargassteven@example.net	8	2025-01-03
667	Eric Sullivan	jenningscandace@example.com	1	2023-04-17
668	Amy Robinson	paigeberger@example.net	9	2023-12-25
669	Mary Chavez	peter97@example.org	4	2025-06-05
670	Elizabeth Bauer	samantha65@example.org	14	2023-08-14
671	Kayla Abbott	bryan80@example.org	2	2024-09-30
672	Heather Callahan	youngjacqueline@example.com	8	2025-02-09
673	Jennifer Graham	elainewells@example.org	3	2024-11-15
674	Heather Butler	whitney22@example.org	13	2024-08-31
675	Nathan Tucker	iproctor@example.org	8	2023-03-20
676	Shannon English	dhanson@example.net	11	2023-05-31
677	Janice Perez	kjacobs@example.com	9	2024-04-09
678	Jonathan Jenkins	arthur09@example.com	9	2025-07-16
679	John Vaughn	jessicafox@example.com	10	2025-02-10
680	Steve Davis	qmccoy@example.net	6	2024-05-24
681	Rebecca Edwards	bergeramanda@example.org	13	2023-03-27
682	Julie Gross	zgomez@example.com	8	2024-05-28
683	Thomas Curry	bryan79@example.org	10	2023-11-13
684	Dorothy Mclaughlin	mitchellchristopher@example.net	14	2024-09-19
685	Darlene Gilbert	michaela01@example.net	12	2023-03-26
686	Brittany Griffin	josehaynes@example.com	9	2023-07-11
687	Amanda Riggs	caitlinunderwood@example.com	7	2023-07-17
688	James Guerrero	jasonnavarro@example.com	14	2025-04-04
689	Robert Williams	tross@example.com	9	2023-03-01
690	Kim James	jwells@example.net	8	2025-03-28
691	Timothy Cole	suzanne01@example.net	3	2025-08-10
692	Jessica Hull	matthew41@example.com	12	2024-11-28
693	Raymond Curry	aprilbyrd@example.org	14	2024-12-17
694	Adam Jones	gdavis@example.net	8	2023-12-10
695	Douglas Lee	harveybrian@example.net	8	2024-05-03
696	Tiffany Little	millercassandra@example.com	5	2024-12-19
697	Kylie Coffey	dominguezjon@example.com	13	2024-12-19
698	Jesse Carney	qschwartz@example.com	4	2024-12-24
699	Destiny Brown	dcook@example.com	14	2023-10-09
700	Jeremiah Vasquez	chelseywhite@example.com	11	2025-11-12
701	Jessica Mendez	gainesjennifer@example.org	5	2023-04-29
702	Nicholas Waters	mosleyeduardo@example.net	13	2023-02-08
703	James Hernandez	rebecca90@example.net	13	2023-01-01
704	Karen Powell	fernandezaaron@example.net	9	2025-02-13
705	Mr. Timothy Howard	richard15@example.net	8	2025-06-14
706	Ryan Hodges	deborah28@example.org	11	2025-07-23
707	Elizabeth Price	mccoymichael@example.org	4	2025-11-25
708	Collin Johnson	cortezbrittany@example.com	5	2025-08-27
709	Maria Porter	blevy@example.org	8	2024-03-01
710	Nathan Sullivan	lindsaycontreras@example.com	2	2024-01-07
711	Kimberly Figueroa	sandyjohnson@example.org	12	2025-10-26
712	Terry Montgomery	jacquelineanderson@example.org	5	2024-06-19
713	Samantha Davis	marybrown@example.org	4	2024-11-23
714	Lisa Brown	ronaldcain@example.net	5	2023-05-06
715	William Johnston	marcoconnell@example.org	6	2025-01-12
716	Gabriela Martinez	katherinejackson@example.com	6	2025-04-16
717	Timothy Williams	moodycrystal@example.com	9	2024-08-28
718	John Smith	saramann@example.net	2	2025-05-01
719	Robert Barton	jamiebowman@example.net	3	2025-08-29
720	Christopher Holt	jennifersalazar@example.org	3	2024-05-08
721	Hannah Smith	jamesdowns@example.org	4	2024-11-17
722	Victoria Romero	qtownsend@example.org	7	2024-11-08
723	Robert Jennings	kjimenez@example.net	12	2023-10-30
724	Jackson Clark	matthew70@example.org	3	2025-10-07
725	Casey Floyd	erobertson@example.org	12	2025-03-21
726	Erika Gonzalez	jerry15@example.org	4	2025-02-28
727	Sheila Bennett	charlesrichards@example.org	2	2023-04-18
728	Timothy Gibson	dbrooks@example.net	7	2025-09-02
729	Derrick Rogers	schwartzbrian@example.org	7	2023-08-01
730	Jason Wolf	oliviamunoz@example.net	6	2023-05-02
731	Laura Tran	christophervincent@example.com	9	2025-11-09
732	John Ford	blairjill@example.org	8	2025-08-02
733	Daniel Pennington	robinvillanueva@example.com	7	2023-09-29
734	John Mack	simmonsphillip@example.net	1	2025-12-09
735	David Hansen	steelerichard@example.org	4	2025-06-18
736	Matthew Davis	kcaldwell@example.net	14	2023-05-26
737	Lauren Bray	tingram@example.com	7	2024-05-17
738	Lori Padilla	daltonchad@example.net	7	2023-07-22
739	Jeffery Nelson	kristinmiller@example.com	13	2023-12-31
740	Tony Leonard	rodriguezmichael@example.net	10	2025-03-16
741	Matthew Bush	devonrogers@example.net	12	2023-02-14
742	Todd Carpenter	karenhodges@example.com	1	2023-05-05
743	Michael Ramirez	watsonshaun@example.net	14	2024-01-22
744	Michael Gregory	shannon51@example.org	13	2024-07-30
745	Bobby Hurst	susan11@example.org	10	2025-09-03
746	Kathleen Golden	cartertara@example.net	7	2023-10-30
747	Jason Rojas	carterbryan@example.org	8	2025-10-17
748	Gabriella Lane	todd88@example.com	1	2025-07-03
749	Stephanie Parker	jeremy54@example.org	6	2024-05-16
750	Tyler Montgomery	jennifermitchell@example.org	5	2023-06-12
751	Mary Hernandez	darylchaney@example.net	13	2025-07-08
752	Cody Hart	wadetiffany@example.org	7	2023-05-19
753	Carla Turner	sullivanvictor@example.org	14	2024-02-13
754	Brittney Cordova	deborah47@example.com	14	2025-11-03
755	Wendy Estrada	hmorgan@example.net	7	2025-11-27
756	Michael Wilson	moralesmary@example.com	9	2024-06-08
757	Lee Lee	kimberlywang@example.org	12	2024-01-27
758	Jill Powers	daughertypreston@example.com	12	2023-01-25
759	Terri Kerr	raymond65@example.com	9	2023-12-14
760	Gregory Madden	lewispamela@example.net	13	2024-02-13
761	Donna Shaffer	achandler@example.org	10	2025-12-22
762	Briana Turner	carl96@example.org	4	2025-07-03
763	Denise Thompson	wpage@example.org	8	2023-01-08
764	Donna Henry	mary47@example.net	4	2023-08-07
765	Rick Moore	stephanie71@example.net	5	2025-03-21
766	Christopher Knox	anthonyhubbard@example.com	7	2024-12-30
767	Patrick Perkins	ooneill@example.net	8	2025-12-24
768	Barbara Hunt	brucefrancisco@example.org	1	2024-06-05
769	Michael Howard	nelsonrobert@example.com	7	2023-06-10
770	Mark Jones	katiewhite@example.org	6	2023-02-23
771	Frank Stewart	joseph51@example.net	11	2024-10-17
772	Alexandria Holmes	kimberly65@example.org	11	2024-09-27
773	Daniel Lopez	butlersabrina@example.org	13	2023-04-23
774	Karen Collins	don79@example.net	7	2025-06-15
775	Michael Johnson	walkermelissa@example.org	12	2025-04-16
776	Daniel Zavala	yvazquez@example.org	3	2025-01-23
777	Nicole Williams	johnsondonna@example.net	14	2023-03-27
778	David Jones	websterkimberly@example.net	8	2023-03-06
779	Cathy Bell	thomasjulie@example.com	3	2023-08-13
780	Christopher Mason	williamjones@example.net	10	2025-11-04
781	Michelle Brandt	rachelmedina@example.net	9	2025-04-15
782	Jonathan Zimmerman	helen27@example.net	1	2023-04-19
783	Henry Gray	willierussell@example.com	7	2025-11-14
784	Chad Farmer	angela01@example.com	10	2023-05-16
785	Jesus Fitzgerald	aperez@example.com	10	2024-06-24
786	Scott Jacobson	xcrosby@example.org	11	2025-12-14
787	Megan Sanders	wilsonralph@example.net	1	2023-01-15
788	Timothy Levine	coxjames@example.org	2	2024-10-08
789	Barbara Massey DDS	kathy99@example.com	11	2024-10-13
790	Terri Kelly	garcher@example.com	7	2025-04-08
791	Bryan Burns	courtneytaylor@example.org	3	2023-06-11
792	Kathleen Johnson	patrickshelton@example.org	14	2025-03-18
793	Paige Guerrero	msparks@example.com	8	2023-11-28
794	Dennis Cooper PhD	cisnerosanthony@example.com	3	2024-12-25
795	Jerry Farrell	cstevens@example.org	1	2025-08-21
796	Elizabeth Mccarthy	tjordan@example.net	5	2024-09-01
797	Laura Henry	kalvarez@example.net	7	2024-03-02
798	Kevin Gray	katie45@example.org	6	2023-03-03
799	Russell Bailey	hubbardcolleen@example.com	4	2023-01-31
800	Hunter Bell	johnwong@example.net	8	2023-04-17
801	Sheila Wilson	andrewnguyen@example.com	6	2023-04-04
802	Jose Fisher	dominguezbrianna@example.com	6	2024-12-21
803	Kenneth Stokes	vazquezjamie@example.com	13	2024-02-18
804	Gina Mendez	tara37@example.net	7	2024-07-04
805	Sara Herrera	joseph49@example.com	5	2025-07-16
806	Tina Robbins	vargasjoshua@example.net	13	2025-05-31
807	Daniel Flynn	william46@example.net	14	2025-05-27
808	James Weber	jpowers@example.org	7	2024-08-14
809	Kelli Lopez	vlewis@example.com	5	2025-08-22
810	Rhonda Farrell	umichael@example.net	14	2023-10-21
811	Joel Allen	megan65@example.org	2	2023-03-07
812	Debra Mitchell	jonathanburke@example.com	8	2024-11-25
813	Alexis Robles	steven86@example.com	1	2023-09-19
814	Christopher Taylor	kristine48@example.org	12	2024-12-09
815	Nathan Casey	heathchristopher@example.net	9	2024-12-06
816	Troy Mosley	sandersmary@example.org	1	2023-11-23
817	Kathryn Martinez	tyler13@example.net	6	2023-09-16
818	Erin Silva	vshaffer@example.org	4	2023-05-14
819	Brian Lewis	scott49@example.org	11	2025-10-21
820	Travis Stewart	pwells@example.com	2	2024-06-20
821	Heidi Baldwin	andrew90@example.net	13	2025-08-20
822	Melissa Mccormick	johnnycruz@example.net	11	2024-12-26
823	Robert Martinez	miaprice@example.com	1	2025-11-15
824	Elizabeth Mayer	kennethvillarreal@example.org	13	2025-10-12
825	Sherry Wang	rmccormick@example.org	1	2025-09-29
826	Kaitlin Gutierrez	jennifer12@example.net	4	2025-06-20
827	Jason Daniel	shawn00@example.net	4	2023-10-13
828	Rachel Taylor	tgonzalez@example.com	14	2024-12-03
829	David Reeves	melaniejennings@example.com	1	2024-09-22
830	Brandi Thompson	lauren31@example.com	10	2024-05-09
831	James Davenport	andrewjohnson@example.net	3	2024-02-07
832	Susan Mccann	josechristian@example.org	4	2024-12-09
833	David Davis	george91@example.org	3	2024-03-15
834	Thomas Chavez	twilson@example.org	8	2025-02-25
835	Rachael Roberts	breyes@example.org	11	2023-07-28
836	Diane Byrd MD	bsparks@example.com	2	2024-10-19
837	Jerry Wright	emiller@example.org	10	2025-12-04
838	Jennifer Lewis	verickson@example.net	4	2025-08-12
839	Anthony Cook	thomasgomez@example.net	8	2023-10-08
840	Linda Goodman	smithwilliam@example.com	12	2025-10-25
841	Jacob Donaldson	carpenterjorge@example.net	5	2023-11-28
842	John Davis	hthomas@example.com	13	2024-06-23
843	Seth Davenport	sara44@example.net	6	2023-02-18
844	Kelly Graham	leslievang@example.org	3	2025-06-27
845	Mallory Gonzales	edgarhall@example.org	10	2024-08-31
846	John Wilson	wwilliams@example.net	10	2024-05-29
847	Brian Cortez	daviddavis@example.com	12	2024-09-06
848	Jordan Nelson	brandybonilla@example.net	12	2023-07-17
849	Thomas Sanchez	vrhodes@example.org	2	2025-04-19
850	Mrs. Jacqueline Hickman	hooderic@example.org	13	2023-11-08
851	Karen Fuller	brooke05@example.org	14	2024-05-18
852	Erika Dennis	jasonwilliams@example.net	3	2024-12-19
853	Natasha Payne	qdavis@example.org	5	2023-11-06
854	Jennifer Smith	frankchan@example.com	2	2023-09-20
855	Brittany Evans	tfitzgerald@example.net	10	2024-12-09
856	Brendan Richardson	tracymcclure@example.com	1	2024-10-22
857	Ann Henderson	christina66@example.org	5	2023-10-21
858	John Walker	sarahrose@example.net	10	2023-02-14
859	Jeffrey Solomon	ievans@example.net	11	2024-07-28
860	Kelly Phillips	arnoldsamantha@example.net	7	2025-09-15
861	Brandon Guerrero	michael91@example.net	7	2023-04-28
862	Julie Hartman	awilliams@example.net	12	2023-01-18
863	Jordan Santiago	matthew23@example.org	4	2023-11-22
864	Mrs. Megan Hamilton	smithdarryl@example.org	2	2023-03-27
865	Jared Sandoval	nturner@example.com	10	2024-12-19
866	Megan Ballard	martinezalexander@example.org	12	2025-01-26
867	Chelsea Johnson	pwong@example.org	14	2025-06-12
868	Rachel Lee	kayla27@example.com	11	2024-04-22
869	Christian Park	cruiz@example.net	4	2023-01-24
870	Ronald Myers	alan66@example.com	2	2023-09-23
871	Kristen Roberts	gross@example.net	12	2025-03-18
872	Susan Dillon	jenniferrice@example.com	13	2025-03-04
873	Debra Wong	nwilson@example.net	5	2024-09-23
874	Alisha Roberts	taylorkim@example.net	14	2024-01-15
875	Gina Guzman	sanderson@example.net	11	2023-08-29
876	Sandra Nunez	laura29@example.org	10	2025-02-17
877	Mary Anderson	ericvasquez@example.com	13	2023-11-06
878	David Hawkins DVM	nicole52@example.org	2	2025-10-29
879	Amanda Brown	owilson@example.org	13	2025-06-25
880	Dr. Richard Hammond	paula89@example.net	10	2024-09-07
881	Tracy Lloyd	villegaskimberly@example.net	13	2023-04-25
882	Samantha Williams	jacksondavid@example.org	1	2025-05-06
883	Edgar Alexander	goconnor@example.org	6	2025-09-24
884	Chad Allison	xmontes@example.org	9	2024-12-09
885	Gloria Wagner	adamsjennifer@example.com	7	2023-09-26
886	Brittany Molina	icobb@example.com	11	2024-01-30
887	Jimmy Phelps	sherry72@example.org	6	2024-03-28
888	Andrea Morgan	kholden@example.com	2	2025-02-24
889	Mary May	levinetina@example.net	9	2023-03-09
890	Jennifer Blackwell	jennifer55@example.org	11	2025-08-17
891	Lisa Thomas	ngriffin@example.net	6	2025-06-24
892	Jessica Reed	trowe@example.org	1	2024-11-14
893	Neil Singh	abigailfernandez@example.org	14	2023-02-10
894	Kelly Sherman	andrewzamora@example.net	7	2023-04-12
895	Raymond Barber	dennismckenzie@example.com	14	2024-10-10
896	Anthony Curtis	westashley@example.org	8	2024-11-17
897	Dr. Virginia Cunningham	michaelmitchell@example.net	2	2024-05-11
898	James Mclaughlin	murphybrandi@example.com	7	2024-09-19
899	Jeffery Jenkins	brownpamela@example.com	6	2024-05-12
900	Michael Powell	lwiggins@example.com	11	2023-08-24
901	Melissa Gould PhD	jcolon@example.net	14	2024-11-27
902	Beverly Bush	bensonstanley@example.org	8	2023-05-20
903	Jaclyn Crane	xrodriguez@example.net	12	2025-03-28
904	Autumn Torres	kevin70@example.org	3	2023-11-14
905	Amber Shannon	jason70@example.org	7	2023-06-05
906	Andrew Olson	ariel56@example.com	3	2024-08-22
907	Brandi Taylor	qgill@example.com	12	2025-07-02
908	Ann Weber	zhughes@example.com	9	2023-06-13
909	Stacy Fitzgerald	clinejasmine@example.net	11	2024-08-15
910	Ellen Brewer	leechristine@example.net	5	2024-11-20
911	Kelly Christensen	martinezsharon@example.org	10	2025-04-09
912	Daniel Gallegos	imiller@example.net	13	2025-11-19
913	Katherine Peck	samuel60@example.net	9	2023-12-17
914	Brian Garcia	justinwhite@example.org	13	2023-12-14
915	Meghan Brown	howard04@example.com	8	2023-06-18
916	Steven Scott	williamsjohn@example.net	8	2023-04-19
917	Paul Cruz Jr.	floresangela@example.org	7	2024-10-03
918	David Mercado	angela91@example.org	14	2024-06-14
919	Beth Carroll	omiller@example.net	12	2025-04-15
920	Jacqueline Galloway	amandahenderson@example.net	10	2023-08-11
921	John Calderon	denise20@example.org	5	2024-05-09
922	Mr. Ryan James	megan39@example.net	6	2025-10-19
923	Joseph Jones	fosterdavid@example.org	14	2023-11-05
924	Dr. Christine Wagner PhD	cynthia74@example.org	4	2025-03-04
925	Daniel Haley	allen20@example.net	14	2024-12-26
926	Megan Gutierrez	ifarmer@example.org	2	2024-06-05
927	Angela Johnson	wchambers@example.com	5	2025-05-12
928	Christopher Tate	martinezmitchell@example.org	8	2025-06-25
929	Alejandro Campbell	james94@example.net	4	2024-05-01
930	Tracy Johnson	tconway@example.net	13	2023-08-31
931	Roberto Foster	ashley72@example.net	8	2023-08-17
932	Megan Morrison	cameronanderson@example.org	10	2023-08-01
933	Savannah Ibarra	james08@example.net	10	2023-05-20
934	Jordan Pace	nashmarcus@example.com	11	2023-10-04
935	Julie Ward	stephensonjeffrey@example.com	7	2023-10-28
936	Emily Myers	christopher90@example.net	6	2025-10-02
937	Tina Stark	frankcollins@example.net	1	2023-09-05
938	Jeffrey Johnson	mary31@example.com	8	2024-11-15
939	Anthony Cook	sherryparsons@example.net	14	2023-09-19
940	Jeremy Martinez	rangelnicholas@example.net	6	2024-04-25
941	Thomas Ramos	cheryl61@example.org	3	2023-03-13
942	Elizabeth James	williamsonrobert@example.net	8	2025-01-11
943	Jody Marshall	nhobbs@example.org	4	2025-05-12
944	Rachel Gibson	briana11@example.org	6	2024-01-07
945	Richard Lee	danascott@example.com	13	2024-10-13
946	Charlene Taylor	brownlarry@example.com	5	2024-06-11
947	Heather Silva	dylanparker@example.com	6	2024-07-15
948	Kelly Sandoval	brianhunter@example.net	5	2023-11-15
949	Craig Gonzalez	kristenpeterson@example.net	10	2025-07-29
950	Julie Schwartz	christina65@example.org	12	2024-06-04
951	Susan Crawford	fowlerheather@example.com	5	2023-04-25
952	Nicholas Cisneros	lindsay63@example.com	9	2024-11-14
953	Heidi Jones MD	thomasscott@example.net	1	2023-07-21
954	Amanda Johnson	justinrobinson@example.com	9	2024-10-03
955	Julian White	thompsonjose@example.org	4	2025-02-26
956	Jamie Cobb	morganjason@example.com	2	2023-01-23
957	Mary Pugh	ejohns@example.org	4	2023-09-20
958	Rebecca Lee	ubenson@example.net	12	2023-06-08
959	Tammy Hines	melissaphillips@example.org	7	2024-04-15
960	Robert Salas	fclark@example.com	8	2023-12-25
961	Carol Hughes	victor72@example.com	9	2025-05-16
962	Karen Sosa	zadams@example.net	13	2025-02-19
963	Amanda Robinson	shannonyoung@example.org	4	2025-10-05
964	Laura Walls	jonathan12@example.org	12	2023-12-02
965	Crystal Williams	ronald76@example.com	8	2023-11-20
966	Mr. Alexander Alexander III	howardchristopher@example.net	11	2024-02-07
967	Rachel House	wilsonmichael@example.net	12	2024-07-15
968	Gary Turner	james92@example.net	8	2023-08-08
969	Alexa Evans	krista66@example.net	8	2025-03-21
970	Matthew Hays	michelleperez@example.net	13	2025-04-09
971	Jose Hartman	dsharp@example.com	1	2025-03-31
972	Cole Carrillo	cclark@example.net	2	2025-05-17
973	Shane Torres	porterdonna@example.com	5	2023-02-02
974	Michael Powell	mark09@example.org	4	2024-01-08
975	Troy Rivera	nbaird@example.com	7	2025-10-06
976	John Murphy	tfowler@example.org	12	2023-03-11
977	Cassandra Serrano	ocampbell@example.com	4	2023-07-07
978	Anthony Stone	markbrowning@example.com	5	2024-12-23
979	Joshua Mendoza	pricerebecca@example.org	11	2023-06-21
980	Jeffrey Mckinney	kmoore@example.com	10	2023-05-23
981	Melinda Hill	rittersean@example.com	6	2024-10-05
982	Gary Carroll	kstevens@example.org	8	2024-10-24
983	Stanley Bryant	peter26@example.org	9	2025-03-18
984	Jessica Cruz	hollydavis@example.net	9	2023-07-16
985	Seth Hill	elizabeth13@example.com	6	2025-11-01
986	Barbara Wood	gordonkimberly@example.com	7	2024-03-26
987	Jonathan Murray	fowleremma@example.com	12	2024-05-08
988	Savannah Sanders	kingjenna@example.org	9	2024-02-22
989	Kari Jones	jenniferkim@example.com	6	2023-12-25
990	Carolyn Smith	thompsondavid@example.net	6	2025-06-17
991	Phillip Byrd	scottthompson@example.net	12	2024-03-03
992	Cindy Horton	myerskyle@example.org	8	2023-02-07
993	James Harris	nicholasallen@example.org	5	2024-10-17
994	Adrian Hoover	walkernicole@example.net	5	2023-01-18
995	Jason Rodriguez	marcus39@example.org	5	2023-07-03
996	Jeffrey Hall	kellyglenn@example.com	4	2025-10-20
997	Daniel Robinson	debra50@example.org	2	2024-12-17
998	Randall Porter	marquezkylie@example.net	12	2025-08-27
999	Lindsay Jarvis	xgregory@example.net	4	2023-07-07
1000	Philip Watts	bjones@example.net	6	2023-05-26
1001	Jorge Harmon	hallchristina@example.org	2	2025-09-25
1002	Nicole Harvey	taylorvictor@example.org	12	2023-12-05
1003	Andrew Mclean	vstevenson@example.org	9	2023-06-16
1004	Paige Meyer	swong@example.org	13	2023-11-01
1005	Grace Harris	knoxelizabeth@example.org	12	2023-09-08
1006	Courtney Salas	isaiah01@example.com	3	2025-05-27
1007	Mark Thomas	davidthompson@example.net	4	2023-03-18
1008	Cynthia Miller	ucollins@example.org	4	2025-06-29
1009	David Mitchell	mfaulkner@example.com	12	2023-09-26
1010	Dr. Ian Gray	galexander@example.net	8	2025-08-02
1011	Sally Leon	gillronald@example.org	5	2025-03-15
1012	Linda Hernandez	jonathanford@example.com	12	2025-04-10
1013	Karen Cook	mgonzalez@example.org	10	2023-11-07
1014	Molly Henry	vbentley@example.com	13	2023-01-15
1015	William Jones	riddledavid@example.net	9	2024-02-25
1016	Tina Wise	william75@example.net	10	2023-06-27
1017	Jeff Wright	xjohnson@example.net	5	2023-03-05
1018	Max Hernandez	jblackburn@example.com	2	2025-02-12
1019	Mary Martin	wisedawn@example.com	14	2023-09-28
1020	Stephanie Stone	nancymartin@example.com	4	2024-03-11
1021	Walter Barrett	uwillis@example.com	5	2023-10-04
1022	Sheila Rodriguez	lisa43@example.net	4	2025-04-03
1023	William Velasquez	daviskim@example.com	6	2024-03-11
1024	Morgan Jackson	jacob23@example.com	3	2024-07-28
1025	Joanne Olsen	jamesbrady@example.org	5	2023-07-19
1026	Jennifer Sims	oneillgabriel@example.com	1	2023-10-11
1027	Austin Johnson	timothychambers@example.org	12	2023-04-04
1028	Tyler Ortega	davisalexa@example.org	9	2023-01-11
1029	Tonya Adams	vkennedy@example.net	3	2024-02-16
1030	Steve Key	shelleyortega@example.com	5	2024-04-15
1031	Shelley Drake	bryantholly@example.net	1	2024-10-30
1032	Allison Martinez	stephanie35@example.com	1	2025-07-03
1033	Karen Gutierrez	aaronlittle@example.com	9	2024-11-08
1034	Angel Aguirre	erica39@example.com	5	2023-01-19
1035	Angela Patterson	shatfield@example.org	12	2024-03-14
1036	Cory Thomas	andersonlaura@example.com	3	2025-03-15
1037	Victoria Owens DVM	olsonamber@example.org	11	2025-06-30
1038	Mary Davis	bholder@example.org	14	2023-08-20
1039	James Ramirez	elizabeth12@example.net	13	2025-10-14
1040	Robert Cook II	schneidernicholas@example.net	8	2024-11-24
1041	Martha Glover	ostokes@example.com	2	2025-03-24
1042	Brandon Yang	juliewilson@example.com	14	2023-05-07
1043	James Mclaughlin	bryan83@example.com	1	2023-05-20
1044	Jacob Shelton	aprilguzman@example.org	10	2025-12-08
1045	Samuel Stewart	mary77@example.org	5	2023-04-27
1046	Maurice Solis	georgekyle@example.net	8	2024-10-20
1047	Michelle Mendoza DVM	ycarter@example.org	8	2023-05-16
1048	Ronald Clark	isabellawilliams@example.org	8	2025-12-10
1049	Elizabeth Briggs	vickiekelley@example.com	6	2025-07-27
1050	Gregory Myers	rosejustin@example.net	3	2024-04-07
1051	Kimberly Davis	karen90@example.net	1	2025-10-07
1052	Laura Ramos	jcarter@example.org	5	2023-11-29
1053	Nancy Smith	gregoryvanessa@example.org	14	2023-08-27
1054	Miss Carol Brown	terri20@example.org	8	2024-02-17
1055	Leslie Booker	hsanchez@example.org	2	2025-12-09
1056	Kyle Thompson	yparsons@example.net	14	2024-03-10
1057	Sharon Santos	cynthia75@example.org	2	2024-12-22
1058	John Barnett	andrewberry@example.net	7	2023-05-12
1059	Anna Watkins	pwashington@example.net	8	2024-06-09
1060	Ariana Brown	richardhaynes@example.com	2	2024-04-19
1061	Robin Freeman	molinajared@example.net	10	2024-08-31
1062	Kyle White	hmcbride@example.org	11	2025-09-09
1063	Christopher Hart	millerdavid@example.com	11	2023-05-22
1064	Jenny Landry	wrightbrandon@example.net	1	2024-02-03
1065	Joseph Taylor	hneal@example.com	3	2025-09-17
1066	Melissa Bates	youngjacob@example.com	3	2024-10-25
1067	Chad Arnold	joshua96@example.org	13	2025-07-26
1068	Matthew Martin	qmiller@example.net	10	2024-08-25
1069	Kimberly Jones	wanda35@example.net	5	2024-04-10
1070	Lisa Barnes	lesliefrench@example.com	2	2024-12-20
1071	Angela Martinez	suttonrichard@example.com	4	2023-01-29
1072	Gavin Nelson	joshuagarcia@example.org	2	2024-12-01
1073	Timothy Thompson	brianna71@example.net	9	2024-02-19
1074	Diane Nelson	mosleygeorge@example.com	13	2024-01-18
1075	Megan Kramer	iwoods@example.com	7	2023-07-17
1076	Brittney Martinez	rbradley@example.org	10	2023-01-11
1077	Jacqueline Waters	lmann@example.com	10	2025-10-02
1078	Kathryn Hill	tmeyer@example.org	13	2025-12-15
1079	Theresa Russell	megan11@example.net	10	2023-12-01
1080	Kenneth Miller	angela70@example.com	4	2023-09-20
1081	Breanna Jimenez	sullivanchristina@example.net	13	2025-01-11
1082	Joseph Reed	lawsontami@example.net	9	2023-01-08
1083	Stephanie Thompson	mary85@example.org	7	2025-10-15
1084	James Wilson	marierosales@example.org	8	2024-04-07
1085	Mr. Aaron Welch	trobinson@example.net	8	2023-11-14
1086	Taylor Stafford	abrown@example.net	5	2024-07-18
1087	Brian Bailey	richardsmith@example.com	14	2024-05-19
1088	Jose Hernandez	gentryadam@example.net	10	2024-06-22
1089	James Diaz	amandaadams@example.com	7	2023-10-01
1090	Charles Burgess	howardmonica@example.org	5	2024-12-19
1091	Casey Fisher	rachel23@example.com	10	2023-05-02
1092	Mrs. Katherine Simpson	markduran@example.com	10	2025-11-16
1093	Sarah Price	rosariolaura@example.org	1	2024-07-03
1094	Pamela Young	russell90@example.com	10	2023-06-20
1095	Bradley Patterson	jessicalopez@example.com	12	2024-06-09
1096	Wendy Wright	tgonzalez@example.org	2	2025-04-19
1097	Catherine Riddle	jeromeanderson@example.org	13	2025-02-06
1098	Charles Smith	christopherwilliams@example.com	4	2023-10-27
1099	Veronica Walker	gmendoza@example.com	11	2024-07-28
1100	Derrick Ramirez	jennifer35@example.org	4	2024-12-06
1101	Matthew Morris	thomas91@example.com	5	2023-07-19
1102	Heidi Torres	caldwellfelicia@example.org	11	2023-07-22
1103	Heather Maxwell	john43@example.net	2	2023-12-29
1104	Bianca Newton	williamstanya@example.net	3	2024-02-25
1105	Jeremy Garcia	kevin73@example.net	4	2025-06-14
1106	Corey Pierce	patricia85@example.com	3	2025-02-28
1107	Susan Jones	gmills@example.org	9	2024-05-06
1108	Walter Roberts	bauerheather@example.net	2	2023-07-02
1109	Joseph Palmer Jr.	ychristensen@example.net	3	2025-06-10
1110	Devon White	ashleyvargas@example.org	1	2025-05-03
1111	Joy Zimmerman	kevin34@example.net	7	2025-08-20
1112	Danny Ferguson	benjamin24@example.org	8	2023-10-22
1113	Maria Wright	amandasmith@example.com	12	2023-10-24
1114	Erika Potts	jennifer69@example.com	10	2024-11-23
1115	Robert Holloway	jessicaramirez@example.com	8	2023-12-22
1116	Veronica Osborne	sharphailey@example.net	5	2025-11-29
1117	Lindsey Harris	rwalker@example.org	1	2023-10-09
1118	Nicole Moore	jessicahamilton@example.org	4	2024-09-28
1119	Christopher Lopez	jacobhenry@example.net	5	2025-09-14
1120	Eric Mcclure	mmcdaniel@example.org	12	2023-07-17
1121	Jesse Brewer	hgarcia@example.org	5	2023-06-07
1122	Lindsey Gray	rodriguezalexander@example.net	12	2025-03-06
1123	Randy Adams	sparksalbert@example.org	14	2025-10-20
1124	Sarah Miller	timothyhart@example.com	8	2024-08-16
1125	John Sanchez	courtney10@example.org	2	2025-06-11
1126	Jorge Copeland	aaronwalker@example.org	11	2023-04-23
1127	Matthew Perez	tmcdaniel@example.org	4	2024-04-12
1128	Courtney Huber MD	gilbertdavid@example.org	5	2024-06-22
1129	Cassandra Moreno	erinhernandez@example.net	13	2025-09-07
1130	Donna Hutchinson	sabrina54@example.net	13	2025-01-22
1131	Shannon Spence	lukemyers@example.net	11	2025-05-24
1132	Robin Wilson	rmoyer@example.org	10	2025-05-22
1133	Catherine Cruz MD	aolson@example.net	11	2023-04-10
1134	Robert Valdez	patrickdunn@example.net	13	2025-05-18
1135	Samantha Cruz	xrose@example.net	4	2024-08-07
1136	Brandon Ward	victoriasmith@example.net	7	2025-06-07
1137	Brian Pruitt	melinda24@example.com	2	2024-06-02
1138	Valerie Durham	jasonwalker@example.net	9	2023-06-07
1139	Michele Bennett	hortonroger@example.org	4	2023-05-31
1140	Angela Monroe	anthonydiaz@example.org	11	2025-02-07
1141	Ronald Butler	terrytaylor@example.net	3	2023-09-26
1142	Jason Rogers	mitchelleric@example.net	5	2025-02-03
1143	Kathy Smith	dfrazier@example.net	14	2023-02-05
1144	Kenneth Torres	rodneymoore@example.org	3	2025-02-17
1145	Beth Lewis	robinsonisaiah@example.net	2	2024-07-25
1146	Angela Schwartz	pedwards@example.com	1	2025-12-04
1147	Robert Lucas	josephgarcia@example.com	3	2025-06-24
1148	Alyssa Campbell	jonescarla@example.com	13	2024-10-22
1149	Timothy Allen	davilaannette@example.net	5	2023-07-25
1150	Mr. Brandon Parker	karen68@example.org	10	2025-12-16
1151	Henry Anderson	riverapeggy@example.net	12	2023-12-11
1152	Brittany Matthews	cwoods@example.com	14	2023-04-21
1153	Angela Garrett	nicoleaguirre@example.net	10	2023-06-26
1154	Wendy Mason	seth25@example.com	5	2023-06-04
1155	Jessica Macdonald	nallen@example.net	8	2024-01-30
1156	Mark Jimenez	thomasmonica@example.net	2	2023-03-24
1157	Stephanie Porter	sedwards@example.org	8	2025-08-07
1158	Heather Jones	escott@example.com	12	2023-03-16
1159	Thomas Case	swilliams@example.com	5	2025-04-15
1160	Melanie Alexander	nathaniel68@example.com	12	2024-03-23
1161	Melanie Oliver	figueroajohn@example.net	7	2023-10-15
1162	Donna Moore	onash@example.com	5	2023-01-09
1163	Hannah Mcdonald	lrodriguez@example.net	9	2025-08-15
1164	Jennifer Hamilton	umurphy@example.com	9	2023-04-29
1165	Dr. John Ramirez	gardnerstacy@example.org	8	2025-12-27
1166	Andre Burke	zbrown@example.com	8	2024-12-02
1167	Cindy Lewis	cisnerosgabriela@example.com	2	2025-05-14
1168	Charles Hill	evansjennifer@example.com	10	2023-10-04
1169	Debbie Rivas	jacobsonroy@example.com	1	2024-07-28
1170	Jason Alvarez	tammykim@example.net	7	2023-06-30
1171	Kristina English	christiancontreras@example.net	12	2024-09-16
1172	Samantha Navarro	alexis72@example.com	6	2023-06-08
1173	Wayne Russell	mcneilsherry@example.org	10	2025-08-04
1174	Laura Johnson	robertpayne@example.org	5	2024-11-25
1175	Daniel Lee	woodmichael@example.com	1	2024-10-20
1176	Sharon Lyons	wgutierrez@example.com	2	2025-09-08
1177	William Rogers	stephenbrooks@example.net	4	2025-06-25
1178	Jane Bruce	swalters@example.net	11	2024-10-13
1179	Annette Miller	davisallen@example.com	14	2025-10-24
1180	Loretta Gardner	zgordon@example.org	14	2023-04-24
1181	Christy Frank	ewilson@example.org	10	2025-01-01
1182	Julie Odonnell	xsmith@example.org	10	2024-01-19
1183	Matthew Parker	anunez@example.com	1	2024-07-09
1184	Richard Randall	matthew96@example.org	13	2023-02-05
1185	Luis Long	solisbecky@example.org	11	2024-08-31
1186	Nicholas Powell	zachary63@example.org	14	2025-10-25
1187	Bryan Ray	ocameron@example.com	5	2025-02-16
1188	Frank Davis	kimcristina@example.net	10	2025-07-05
1189	Kimberly Compton	ujohnson@example.org	1	2023-06-17
1190	Paula Lopez	kennethnichols@example.org	13	2025-12-12
1191	Jamie Green	hillsavannah@example.net	13	2025-03-06
1192	Dr. Ashley Ho	rodriguezjustin@example.org	3	2023-01-26
1193	Isaiah Massey MD	apope@example.org	8	2023-04-12
1194	Christine Barnes	cynthia72@example.org	9	2024-06-16
1195	Mary Welch	wilsonmatthew@example.com	11	2023-11-24
1196	Kimberly Moore	sara39@example.org	8	2024-06-13
1197	Paige Robinson	danny30@example.com	5	2024-08-09
1198	Michael Martinez	timothy15@example.net	3	2023-06-01
1199	Patrick Simpson	qnielsen@example.org	10	2024-08-26
1200	Michelle Hayden	silvakatie@example.com	7	2023-08-05
1201	Nathan Hamilton	vhenderson@example.com	11	2023-07-01
1202	Lisa Patterson	nathaniel17@example.org	14	2025-06-12
1203	Dawn Ortiz	raymond12@example.com	8	2025-08-31
1204	David Lewis	nathan51@example.org	2	2024-04-15
1205	Gary Marshall	rachel81@example.com	8	2023-12-15
1206	Daniel Hoffman	berrydebbie@example.net	6	2023-11-07
1207	Francisco Gonzalez	rjimenez@example.com	7	2025-04-08
1208	Kyle Garza	barbaramitchell@example.net	6	2023-05-11
1209	Abigail Murray	meaganpowell@example.net	6	2025-05-07
1210	Matthew Jones	gallegosrobert@example.com	11	2025-10-02
1211	Jennifer Hawkins	troy06@example.com	2	2023-10-28
1212	Samuel Coffey	cameronsharon@example.org	14	2025-02-01
1213	Adam Garcia	michelle63@example.org	3	2023-02-02
1214	Robin Cabrera	villamiranda@example.com	6	2023-04-07
1215	Anthony Torres	mark96@example.com	7	2025-08-25
1216	Lauren Wilson	michelle96@example.net	12	2025-02-04
1217	Joseph Lane	ubray@example.net	8	2024-05-04
1218	Ralph Dawson	angelica33@example.net	5	2024-06-12
1219	Amy Smith	taylorcruz@example.com	11	2023-03-27
1220	Kevin Rose	kathleen47@example.net	7	2023-04-25
1221	Suzanne Robinson	paul79@example.net	14	2023-06-18
1222	Barry Henderson	stephanie91@example.org	13	2023-08-11
1223	Brian Smith	blopez@example.com	9	2024-05-19
1224	Derek Mcintosh	gomezjason@example.com	1	2024-12-25
1225	Amy Nelson	williamspatrick@example.com	8	2024-07-03
1226	Christopher Hill	gstone@example.net	2	2023-08-01
1227	Brian Wilson	johnstonjohn@example.net	6	2023-02-24
1228	Manuel Baldwin	olong@example.net	5	2023-04-21
1229	Kathleen Jackson	michaelroberts@example.net	6	2025-06-21
1230	Cody Velez	sstevenson@example.org	2	2023-11-12
1231	Carol Cook	athomas@example.net	13	2023-07-06
1232	Christopher Baker	jacksonkathleen@example.org	7	2024-06-03
1233	Lauren Freeman	thomaswilliams@example.org	14	2024-10-12
1234	Sara Fox MD	kimberlygarcia@example.net	9	2024-09-13
1235	Gregory Gardner DDS	michael05@example.com	14	2024-01-03
1236	Patricia Vincent	rrodriguez@example.net	1	2025-02-16
1237	William Chase	michaeljohnson@example.net	11	2025-03-08
1238	Heather Garner	samanthagray@example.org	14	2025-03-22
1239	Meghan Nolan	harcher@example.org	9	2025-11-23
1240	Stacy Myers	rlandry@example.com	8	2023-10-18
1241	Mia Flowers	hamiltonspencer@example.com	7	2023-07-28
1242	Kathryn Jennings	hbecker@example.com	1	2023-11-12
1243	Elizabeth Roberts	alexis03@example.com	4	2024-11-14
1244	John Smith	donna00@example.com	9	2025-06-22
1245	Rachel Shaw	stephaniereeves@example.org	6	2023-05-31
1246	Kevin Miller	antoniofitzpatrick@example.org	10	2025-12-26
1247	Jenny Rasmussen	orozcosamantha@example.net	13	2025-06-07
1248	Meghan Morris	feliciagonzalez@example.org	8	2023-12-07
1249	Eric Evans	ygardner@example.com	11	2024-03-31
1250	Melissa Gordon	taylor67@example.com	8	2023-04-16
1251	Thomas Johnson	idavis@example.net	13	2025-11-18
1252	Lauren Watson	brian62@example.com	1	2025-09-19
1253	Phillip Holmes	millerjoseph@example.net	4	2025-01-03
1254	Samantha Cunningham	michelle19@example.net	5	2023-04-28
1255	Meredith Black	rtaylor@example.net	9	2024-07-13
1256	Eric Hays	shaffercindy@example.org	3	2025-07-22
1257	Larry Martinez	wrightdale@example.org	5	2023-05-06
1258	Anthony Martinez	lwebb@example.org	8	2025-06-30
1259	Samantha Maldonado	reynoldsdaisy@example.org	12	2025-07-10
1260	Cynthia Hunt	thomasroberts@example.net	8	2023-06-05
1261	Holly Hill	gwolfe@example.com	2	2023-04-20
1262	Alfred Bryant	tsmith@example.org	1	2024-04-01
1263	Lisa Williams	sydney77@example.com	11	2024-12-07
1264	Jonathan Callahan	michaelmccarthy@example.com	10	2023-01-10
1265	Christian Rios	stephen24@example.net	13	2024-07-15
1266	Thomas Brewer	mestes@example.net	4	2023-11-28
1267	Katie Hopkins	david59@example.net	12	2023-07-17
1268	Jennifer Williams	jesseortega@example.com	3	2024-01-17
1269	Peter Zavala	danielgilmore@example.net	5	2025-10-19
1270	Jennifer Brown	danny17@example.com	9	2025-09-04
1271	Tammy Morris	ogray@example.net	1	2024-10-26
1272	John Shelton	jamesmartin@example.net	9	2024-09-01
1273	Kevin Soto	harrislisa@example.org	7	2025-06-04
1274	Joshua Jones	faithrosario@example.net	2	2024-01-29
1275	Ronnie Hudson MD	michael82@example.org	4	2024-12-04
1276	Shelly Carroll	kimberlyevans@example.org	14	2024-04-25
1277	Joshua Johnson	sandra46@example.net	2	2024-06-30
1278	Brooke Roberts	melissafrederick@example.net	8	2024-01-27
1279	Kimberly Snow	qgiles@example.net	2	2023-12-08
1280	Dean Cook	tayloramy@example.net	11	2023-02-02
1281	Susan Brown	kjones@example.net	14	2023-12-27
1282	Amanda Zavala	ngeorge@example.org	3	2025-02-08
1283	Carl Cummings	johnsonwilliam@example.net	8	2025-08-29
1284	Richard Walter	andrewbrown@example.org	12	2024-01-19
1285	Melanie Rojas	xwilliams@example.com	5	2024-08-07
1286	Jeffery Taylor	nwilson@example.com	9	2025-01-31
1287	Thomas Allen	chapmanjeremy@example.net	12	2024-01-21
1288	Kimberly Williams	marksjohn@example.org	5	2025-04-04
1289	Christopher Williams	carrie34@example.org	7	2023-03-25
1290	Bryan Jones	shawna37@example.net	14	2024-10-25
1291	Thomas Robinson	shelly84@example.net	8	2025-03-16
1292	Emma Weaver	brownrachel@example.net	8	2023-09-25
1293	Mr. Thomas Skinner	kevintran@example.org	4	2025-11-06
1294	Brenda Spence	dsantos@example.org	8	2024-02-12
1295	Debra Chapman	margaret10@example.com	9	2023-01-24
1296	Albert Reyes	nwilliams@example.com	3	2025-07-24
1297	Anthony Torres	sharon95@example.com	7	2023-07-21
1298	Nicole Peterson	yglenn@example.net	4	2025-06-06
1299	Renee Tran	michele87@example.com	10	2025-10-13
1300	Kelly Martin	pmcdonald@example.org	9	2024-09-18
1301	Michael Hill	kelseyphillips@example.net	12	2025-09-20
1302	Heidi Hopkins	martinezashley@example.com	3	2024-03-08
1303	Jill Smith	owenstammy@example.com	14	2025-07-04
1304	Jennifer Riley	hillcheryl@example.com	2	2024-11-29
1305	David Buchanan	misty23@example.net	5	2025-11-09
1306	Mary Hall	lopezwilliam@example.com	13	2023-07-11
1307	Mitchell Brown	theresa05@example.net	13	2024-09-26
1308	Hannah Jones	markwatson@example.net	14	2025-02-25
1309	Sherri Thomas	catherine55@example.com	7	2024-03-31
1310	Tommy Carter	martinbradley@example.org	6	2025-09-09
1311	Lee Morton	shelby69@example.org	13	2025-09-25
1312	Phillip Banks	benjaminvictoria@example.net	9	2024-12-20
1313	Kimberly Barnes	abbottallison@example.org	5	2024-07-05
1314	Kelly Stewart	marycarter@example.org	14	2024-10-26
1315	Vanessa Hall	kaitlin13@example.com	1	2023-12-26
1316	Heidi Bell	melendezdenise@example.net	5	2025-03-13
1317	Crystal Carey	sarasanchez@example.com	12	2023-09-10
1318	Lisa Flynn	lee16@example.com	5	2025-01-08
1319	Johnny Keith	rachelwalter@example.org	14	2024-07-07
1320	Ralph Dawson	inewton@example.org	10	2023-07-02
1321	Christopher Jones	wstrong@example.org	10	2025-07-02
1322	Michelle Wilson	brittany91@example.net	11	2024-03-16
1323	Heather Cole	vmccoy@example.com	8	2023-02-19
1324	Chad White	hernandezalan@example.net	14	2023-11-13
1325	Jamie Gonzales	shirley13@example.com	3	2024-02-10
1326	Joseph Fox	ymitchell@example.com	8	2024-06-24
1327	Amanda Landry	russellramirez@example.net	9	2025-04-09
1328	Christopher Roberts	kgonzales@example.com	8	2023-12-11
1329	Larry Rodriguez	elizabeththomas@example.org	6	2025-10-25
1330	Caroline George	moyeramber@example.org	6	2024-08-27
1331	Allison Harris	hdennis@example.org	9	2023-01-08
1332	Brian Mccarthy	wallaceryan@example.com	13	2025-06-28
1333	Donald Barnett	linda31@example.com	9	2023-04-06
1334	Jesse Moss	mannleroy@example.org	7	2023-06-21
1335	Rebecca Stewart	averycourtney@example.org	8	2024-04-19
1336	Tony Nunez	theodore72@example.net	6	2023-05-30
1337	Mark Davis	aaronjones@example.net	14	2024-06-27
1338	Amanda Watts	pwelch@example.net	4	2024-10-31
1339	Tiffany Humphrey	nancycontreras@example.com	12	2024-01-17
1340	Howard Castillo	robinsonsydney@example.com	4	2025-05-22
1341	David Coleman	stevenflores@example.org	10	2024-04-04
1342	Carl Khan	rburke@example.org	7	2024-01-16
1343	Daniel Rosales	xbrown@example.com	4	2023-02-01
1344	James Ramos	dgreen@example.com	14	2023-10-14
1345	Mark Williams	kortiz@example.org	13	2024-06-15
1346	Ashley Donaldson	david80@example.net	7	2024-08-09
1347	Richard Cook	katie81@example.net	1	2023-01-24
1348	Joseph Galloway	oheath@example.com	6	2023-02-23
1349	Erin Lewis	shelbyjohnson@example.org	12	2025-05-27
1350	Kathryn Moody	moorekevin@example.org	8	2025-04-06
1351	Amanda Brady	irios@example.net	12	2024-11-22
1352	Angela Wagner	vsmith@example.net	13	2025-08-17
1353	Noah Sparks	marievillarreal@example.com	7	2024-10-24
1354	Elizabeth Stevens	bakerdiana@example.com	7	2024-04-10
1355	Daniel Russell	timothy88@example.org	11	2024-02-17
1356	Monica Bean PhD	chavezbecky@example.org	13	2024-02-23
1357	Jacob Hart	martin11@example.net	14	2024-03-11
1358	Katherine Wright	richardmassey@example.net	11	2023-07-05
1359	Crystal Saunders	robert52@example.org	3	2025-03-02
1360	Jennifer Smith	karinorton@example.net	8	2023-12-18
1361	Cynthia Murray	vrobertson@example.net	1	2024-07-01
1362	Michael Bennett	martinkaitlin@example.org	3	2023-03-31
1363	Ashley Mcclure	zjackson@example.net	9	2023-08-05
1364	Kimberly Ross	david44@example.net	10	2024-06-17
1365	Kristy Martin	alexandra39@example.net	6	2023-12-20
1366	Kaitlyn Clark	sara22@example.net	14	2024-02-11
1367	Evan White	ajones@example.com	2	2025-02-22
1368	Brandon Ellis	browntaylor@example.org	14	2025-02-07
1369	Sophia Cooper	reillyjoshua@example.com	14	2023-03-15
1370	Marcus Powell	ann31@example.net	8	2024-10-01
1371	Diana Baker	martinezalexa@example.net	2	2023-06-16
1372	Raymond Vargas	tammy97@example.org	9	2025-04-18
1373	Virginia Davis	douglasalvarez@example.org	8	2023-07-04
1374	Amy Hunt	ecoleman@example.com	1	2023-12-21
1375	Cynthia Long	wmccarthy@example.com	12	2023-11-28
1376	Blake Jacobs	stephaniedougherty@example.com	3	2025-07-07
1377	Kristina Henry	gina86@example.net	7	2025-02-17
1378	Jacob Owens	jessica39@example.net	14	2024-01-17
1379	Cheryl Brooks	gonzalezmichael@example.org	11	2025-08-17
1380	Brandon Wood	wesley09@example.com	3	2023-01-07
1381	John Williams	joshua09@example.org	2	2023-02-06
1382	Yolanda Chen	vthompson@example.net	8	2025-08-03
1383	Amanda Johnson	janicethompson@example.org	13	2025-04-01
1384	Barbara Ramos	edwardsmichaela@example.com	5	2023-04-01
1385	Lucas Smith	rachael29@example.net	6	2025-12-12
1386	Teresa Powell	brownmandy@example.net	10	2025-10-31
1387	Christopher Williams	haleyortiz@example.net	12	2023-06-11
1388	April Hill	david79@example.net	7	2025-03-28
1389	Anita Hardin	jessicalopez@example.net	11	2023-04-05
1390	Christopher Smith	steven34@example.net	2	2024-11-17
1391	Cheryl Campos	lancegray@example.com	14	2024-12-04
1392	Ethan Perez	joshuagonzalez@example.com	6	2023-07-14
1393	Brandon Kelly	michael87@example.net	14	2023-10-11
1394	Travis Richards	amandaclark@example.net	11	2025-01-22
1395	Melanie Roberts	holly88@example.net	14	2024-04-20
1396	Raymond Scott	hgreen@example.net	9	2025-05-19
1397	Charles Willis	anne90@example.com	7	2024-12-21
1398	Sheila Smith	valvarez@example.net	6	2025-02-06
1399	Hunter Martin	karengonzales@example.net	11	2025-09-15
1400	Jessica Ross	johnnybrooks@example.com	12	2024-05-14
1401	Andrew Hickman	kathrynsantana@example.net	13	2024-06-12
1402	Derrick Ray	martingarrett@example.com	8	2023-04-29
1403	Terri Gonzalez	davidcook@example.org	14	2025-08-28
1404	Ralph Solis	dfoster@example.org	9	2025-11-28
1405	Christopher Parker	joelharris@example.org	1	2024-12-22
1406	Justin Rowe	woodsmelvin@example.com	10	2025-03-03
1407	Daniel Kennedy	tguerra@example.org	2	2024-08-25
1408	Carl Hines	ricardomurphy@example.com	4	2025-04-15
1409	Jessica Long	reedelizabeth@example.net	11	2025-06-16
1410	Cassandra Young	matthew09@example.net	11	2023-01-30
1411	Maria Taylor	bradleyturner@example.org	5	2025-04-03
1412	Jessica Mitchell	eleonard@example.org	4	2024-01-07
1413	Cassie Sanders	marshallchristopher@example.net	12	2023-10-13
1414	Jennifer Roman	luisandrews@example.com	2	2025-03-13
1415	Matthew Santiago	twise@example.com	7	2025-01-21
1416	Lindsey Lang	xshaw@example.com	2	2023-10-11
1417	Valerie Rodriguez	tinaschmidt@example.com	13	2025-02-18
1418	Adam Vaughan	james97@example.com	11	2025-08-10
1419	Bryan Burns	brendan95@example.com	12	2023-02-23
1420	Pamela Johnson	guy56@example.org	14	2024-04-11
1421	Andrew Rodriguez	schmidtrandy@example.org	2	2024-05-04
1422	Nicholas Schultz	worozco@example.com	8	2023-04-03
1423	Roger Conley	uwilliams@example.com	3	2025-01-24
1424	Misty Burnett	reyestina@example.org	12	2023-02-11
1425	Elizabeth Morales	stephaniescott@example.net	5	2024-01-05
1426	Thomas Sanford	ashleycooley@example.net	1	2025-03-24
1427	Dana Lindsey	ashley36@example.com	1	2024-07-16
1428	Destiny Powers	rbrowning@example.com	6	2025-03-28
1429	Albert Perry	joshuaford@example.net	13	2023-10-26
1430	Albert Nguyen	carrjessica@example.net	1	2023-12-15
1431	Madison Murphy	jalvarez@example.org	5	2025-06-24
1432	Rodney Hernandez	sclark@example.org	6	2024-01-11
1433	Andrew Phelps	welchanna@example.com	6	2025-01-06
1434	Kendra Torres	shannon70@example.org	7	2023-04-01
1435	Guy Reynolds	potterjustin@example.net	3	2024-11-15
1436	Thomas Anderson	davisjeffery@example.org	4	2024-06-21
1437	Christopher Waters	wpierce@example.org	9	2024-09-16
1438	Emma Cox	beckgloria@example.net	7	2024-04-02
1439	Joseph Myers	dsimpson@example.com	10	2025-04-14
1440	Thomas Thompson	aaron57@example.net	11	2025-06-23
1441	Janet Delgado	ojenkins@example.org	13	2023-07-08
1442	Manuel Duarte	udougherty@example.net	3	2024-11-08
1443	Kaitlyn Davis	andrew96@example.net	3	2023-10-01
1444	Thomas Ellis	gregorygiles@example.org	3	2024-07-13
1445	Steven Clark	rstevens@example.net	2	2023-12-20
1446	Christopher Murray	laramary@example.org	10	2024-04-30
1447	Andrea Goodman	ecamacho@example.com	14	2023-09-26
1448	David Baldwin	baldwincatherine@example.net	7	2023-03-19
1449	Ronald Brown	uclayton@example.org	10	2025-02-21
1450	Kayla Banks	gcobb@example.org	11	2024-02-02
1451	Lauren Moody	michaeldouglas@example.org	4	2025-07-16
1452	Christine Davis	ellisjenna@example.org	8	2025-09-26
1453	Michael Rivera	klyons@example.com	10	2025-04-08
1454	Brittany Roberts	nicoleelliott@example.net	3	2024-10-12
1455	Brooke Walters	rmarquez@example.com	4	2023-11-15
1456	Betty Lawson	oscott@example.org	8	2023-06-19
1457	Brittany Smith	jennifer86@example.com	11	2025-07-20
1458	Gregory Moore	alexandra67@example.net	5	2024-11-08
1459	Casey Prince	barnettcalvin@example.org	8	2023-07-05
1460	Donald Strickland	santosmichael@example.com	5	2023-12-05
1461	Alexandria Francis	judithcox@example.org	11	2024-09-15
1462	Gary Jones	wallerbrian@example.net	1	2024-03-12
1463	Robert White	jeremylove@example.org	13	2024-07-26
1464	Kristen Davis	jessicalowery@example.org	8	2023-02-14
1465	Darren Willis	imarshall@example.org	5	2024-07-26
1466	Christina Wilson	alvarezcory@example.net	11	2023-12-16
1467	Mr. Kevin Callahan	cortezscott@example.net	9	2023-08-24
1468	Lisa Bryant	kingrichard@example.com	3	2023-08-02
1469	Jordan Palmer	joseph83@example.com	2	2024-06-23
1470	Ellen Alexander	tonyflores@example.net	8	2023-10-29
1471	Austin Reynolds	cody75@example.net	6	2024-05-30
1472	Cheryl Rodriguez	jasonshaw@example.com	10	2025-01-22
1473	Michael Pennington	ashleymoore@example.org	5	2025-04-19
1474	Christopher Moore	markblack@example.com	11	2023-07-30
1475	Penny Adams	thomas45@example.org	7	2024-12-16
1476	Sandra Stewart	ronald66@example.org	12	2023-12-02
1477	Wayne Gomez	theresawang@example.org	5	2025-04-14
1478	Matthew Scott	andrew66@example.com	8	2025-06-15
1479	Rebecca Williamson	ggates@example.org	14	2024-09-03
1480	John Griffith	ccrane@example.net	5	2023-09-24
1481	Michelle Wright	dbrown@example.net	4	2024-03-03
1482	Jessica Mitchell	vtaylor@example.org	7	2024-01-11
1483	Jennifer Hernandez	brittanyandrews@example.net	14	2023-12-22
1484	Kenneth Farmer	angela40@example.org	8	2023-04-07
1485	Richard Dawson	susan57@example.net	2	2025-04-25
1486	John Murray	james44@example.net	4	2025-08-26
1487	Bryan Jenkins	zshaffer@example.org	7	2025-03-29
1488	William Brooks	gforbes@example.com	10	2025-06-29
1489	Kenneth Walters DDS	mccannkimberly@example.net	6	2025-05-15
1490	Sarah Berry	mbishop@example.org	10	2023-06-23
1491	Donald Hayes	debrajones@example.net	5	2025-04-19
1492	Richard Stevenson	zpreston@example.net	12	2024-09-21
1493	Jean Smith	ronald43@example.net	5	2023-11-18
1494	Jimmy Ortega	patricia92@example.org	1	2025-01-08
1495	Christopher Johnson	chanamber@example.org	14	2025-04-26
1496	David Clark	frank43@example.org	11	2023-12-25
1497	Shawn Blackburn	flowersnicholas@example.com	7	2025-04-25
1498	Christine Williams	nross@example.com	5	2025-08-07
1499	Wayne Hunter	martinjason@example.com	1	2024-10-08
1500	Zachary Perry	traciemarsh@example.com	10	2025-03-22
1501	Theresa Smith	zlara@example.org	14	2024-06-07
1502	Sara Hamilton	jerome16@example.com	11	2024-01-24
1503	Monica Merritt	taylorjohn@example.net	13	2023-01-18
1504	Brenda Harrison	brownleah@example.net	12	2023-01-11
1505	Jason Moore	gregstone@example.org	1	2024-12-24
1506	Catherine Koch	buchanananthony@example.org	10	2025-03-23
1507	Susan Baker	anthony05@example.org	12	2023-12-02
1508	Shane Mcintyre	ryankathryn@example.net	8	2025-08-31
1509	Adrian Prince	barnescarl@example.com	14	2024-07-29
1510	Steven Alexander	collinsterrance@example.com	5	2024-05-23
1511	Holly Austin	woodskaitlyn@example.net	13	2023-05-21
1512	Carlos Dunlap	donnapaul@example.net	13	2023-08-03
1513	Ashley Perez	jessicaturner@example.net	4	2024-03-18
1514	Kelly Ray	kathleen25@example.com	10	2025-12-02
1515	Noah Rosales	ywelch@example.org	13	2024-02-15
1516	Mark Conley	fernandomorris@example.net	6	2025-12-08
1517	Chelsea Kane	nhayes@example.com	4	2024-06-10
1518	Autumn Ramirez	matthew24@example.com	11	2024-11-11
1519	Mr. Matthew Barnett	kathryn41@example.com	4	2025-06-02
1520	Joshua Davis	hgreer@example.net	10	2024-04-12
1521	Gregory Chavez	burchteresa@example.org	5	2025-02-19
1522	Yvette Lee	kimberlygonzalez@example.net	11	2024-03-11
1523	Brittany Heath	mcbridemichael@example.org	13	2024-01-23
1524	Carol Moore DDS	meganpotter@example.org	12	2025-01-29
1525	Jessica Harris	haleystacy@example.com	13	2024-08-15
1526	Jennifer Woods	derek40@example.org	11	2024-03-02
1527	Emily Leblanc	brownrobert@example.org	11	2023-10-03
1528	William Bray	petermoore@example.com	14	2024-06-10
1529	Ruben Jones	donald61@example.net	3	2024-03-04
1530	Brittany Ramos	kathleen01@example.net	11	2025-03-20
1531	Mark Ruiz	hevans@example.net	2	2023-12-07
1532	Benjamin Werner	nancy06@example.com	11	2025-03-24
1533	Kevin Walter	oblake@example.net	11	2023-05-04
1534	Miss Linda Cox DVM	bcopeland@example.com	1	2023-04-23
1535	Randy Kirby	rebecca85@example.com	5	2023-03-04
1536	Howard Smith	fsanchez@example.org	13	2024-12-31
1537	Ashley Norman	kcastro@example.com	8	2024-10-09
1538	Mary Williams	garzalaura@example.org	1	2024-10-26
1539	Phillip Ward	tochoa@example.net	10	2024-09-22
1540	Jessica Murray	bentleylisa@example.net	6	2023-02-13
1541	Terry Robinson	andrewbautista@example.org	12	2025-03-26
1542	Allen Bryant	michael55@example.org	3	2023-11-17
1543	Erika Lyons	kayla23@example.net	2	2023-10-30
1544	Erica Morales	kimberly27@example.org	5	2025-04-24
1545	Natalie Huff	leslietorres@example.net	6	2024-01-01
1546	Marc Fowler	tharris@example.com	12	2023-04-10
1547	Stephanie Fischer	marcusrodriguez@example.net	7	2024-01-19
1548	Maria Phillips	raymonddominguez@example.org	3	2023-12-07
1549	Suzanne Alvarado	dustin58@example.com	4	2023-04-13
1550	Ashley Blanchard	christina15@example.org	3	2024-03-10
1551	Joshua Contreras	anthony33@example.org	13	2024-04-29
1552	Robert Thomas	john09@example.com	9	2025-08-16
1553	Juan Carroll	hlopez@example.net	6	2025-07-06
1554	Stephanie Hughes	jasmine54@example.com	9	2024-03-13
1555	Taylor Flores	chase25@example.net	9	2024-02-10
1556	Betty Pollard	gnichols@example.net	5	2023-09-28
1557	Michael Bray	stevenandrews@example.org	14	2023-09-07
1558	Kevin Brown	andrewwest@example.net	3	2024-05-18
1559	Sean Hernandez	cameron49@example.com	5	2023-03-05
1560	Michelle Henry	valerielewis@example.com	14	2025-11-03
1561	Elizabeth Hall	ithomas@example.net	8	2023-12-06
1562	Tricia Brown	briana19@example.org	13	2024-10-04
1563	Morgan Wright	maryjohnson@example.com	5	2024-08-03
1564	Brandon Powell	yballard@example.net	12	2025-03-08
1565	Catherine Collins	jasminekoch@example.com	14	2024-06-03
1566	Curtis Bell	morgankaren@example.net	6	2023-04-10
1567	Amy Hawkins	cody08@example.org	13	2023-10-10
1568	Alexander Stein	michele23@example.net	2	2023-01-06
1569	Daniel Reed	carolberry@example.com	8	2024-11-10
1570	Cassandra Hernandez	cjohnson@example.net	2	2025-02-12
1571	Barbara Villa	daniel29@example.net	3	2025-08-30
1572	Corey Moore	sharon86@example.com	13	2023-07-03
1573	Ana Sanchez	johnroth@example.org	4	2025-10-30
1574	Anthony Haas	qcochran@example.net	14	2025-05-19
1575	Sarah Davis	rhonda99@example.net	11	2025-04-06
1576	Joshua Harris	derek34@example.net	12	2024-08-05
1577	Bradley Johnson	morristimothy@example.com	11	2024-04-11
1578	Patricia Townsend DDS	lopezchristopher@example.net	7	2023-12-01
1579	Carrie Edwards	fergusonbrandon@example.com	14	2025-03-29
1580	Joshua Colon	hrodgers@example.org	13	2024-02-26
1581	Amanda Lewis	ododson@example.net	9	2024-07-11
1582	Kathleen Duncan	williamspatrick@example.net	6	2023-12-17
1583	Tanner Keller	tracey63@example.com	2	2023-05-08
1584	Christopher George	nicole69@example.net	13	2025-10-01
1585	Christine Johns	robert06@example.com	7	2025-08-03
1586	Chelsey Maxwell	carol60@example.net	1	2024-02-17
1587	Michael Jones	wilsonrachel@example.com	5	2025-04-20
1588	Carol Singh	smitchell@example.com	9	2023-03-14
1589	Philip Foster	stephaniepeters@example.com	2	2025-07-25
1590	Amanda Mendoza	perezmarissa@example.org	8	2023-08-08
1591	Andrea Graham	samuel27@example.net	6	2023-04-02
1592	Kathy Villegas	jennywilliams@example.org	11	2025-04-22
1593	Trevor Weeks	steven06@example.com	12	2025-11-04
1594	Arthur White	matthewgriffith@example.org	11	2023-06-17
1595	David Rice	douglasbrandt@example.org	5	2025-08-12
1596	Joseph Smith	jennifermorris@example.org	10	2023-05-02
1597	David James	cervanteskayla@example.org	7	2023-06-07
1598	Amanda Gardner	banksrenee@example.net	14	2025-07-27
1599	Luis Cole	feliciasalazar@example.com	11	2024-12-07
1600	Karen Roach	xherrera@example.org	6	2025-12-09
1601	Carrie Coffey	nicole50@example.com	2	2023-06-08
1602	Joe Page	vanessamartinez@example.net	11	2025-05-31
1603	Jennifer Butler	ywallace@example.com	4	2024-01-22
1604	James Cummings	johnmarquez@example.net	8	2024-02-03
1605	Mary Montgomery	wkelley@example.com	1	2023-08-02
1606	James Harrison	xevans@example.net	10	2024-02-15
1607	George Wu	bgiles@example.org	9	2024-03-27
1608	Daniel Bradley	joshuareese@example.net	6	2025-10-29
1609	Laura Owen	robertmcdonald@example.net	10	2025-04-22
1610	Emily Fitzpatrick	lowekristin@example.org	4	2023-05-23
1611	Sheila Rivera	edwardsrachel@example.org	11	2023-01-24
1612	Elizabeth Jones	brandy77@example.com	2	2025-03-25
1613	Brian Hoffman	frankwilson@example.net	11	2025-02-09
1614	Lori Graves	hannah31@example.net	14	2024-03-24
1615	Anne Williams	ekennedy@example.org	8	2025-11-01
1616	Victoria Cox	lrichards@example.com	12	2025-04-20
1617	Theresa Knight	vanessa51@example.org	5	2025-09-05
1618	James Hernandez	suzanneflores@example.net	11	2023-05-28
1619	Heather Terrell	lsmith@example.com	7	2025-05-18
1620	David Palmer	burnsrebecca@example.org	2	2025-12-21
1621	Deborah Ferrell	billy71@example.com	3	2024-12-12
1622	William Weber	turnerjames@example.com	1	2024-08-26
1623	Michael Terry	michael86@example.com	1	2024-02-21
1624	Gregory Green	tracyadams@example.com	5	2025-02-13
1625	Melvin Flores	johnsondavid@example.org	8	2025-10-03
1626	Austin Armstrong	kimberlyshields@example.org	2	2023-09-24
1627	Glenda Stout	mooreconnie@example.com	2	2025-03-02
1628	Maurice Salazar	padillajames@example.net	4	2024-11-21
1629	Nathan Davis	omoody@example.org	9	2025-10-11
1630	Frank Moreno	troth@example.com	3	2023-02-24
1631	Dwayne Lowe	ramoswilliam@example.org	7	2024-10-24
1632	Charles Weaver	hollywarner@example.org	8	2023-07-12
1633	Nicole Perez	lreid@example.com	6	2023-07-26
1634	Donna Simmons	jill80@example.net	11	2024-10-20
1635	Diana Martin	brownmax@example.net	12	2025-09-02
1636	Jessica Craig	floreskelsey@example.com	12	2023-03-08
1637	Tina Carroll	shannon75@example.com	9	2025-02-03
1638	Joshua Mcgee II	bradgomez@example.com	7	2023-11-25
1639	Robert Landry	dford@example.com	10	2025-08-21
1640	Janice Herring	kristinajames@example.net	12	2023-06-17
1641	Jeffrey Roth	edwardshah@example.org	12	2023-06-13
1642	Chris Rogers	crawforderic@example.net	3	2023-04-14
1643	Lawrence Porter	kvalentine@example.com	7	2023-11-01
1644	Tyrone Jones	janice94@example.org	11	2025-11-27
1645	Regina Butler	fryecrystal@example.com	2	2023-09-15
1646	Jessica Martinez	alyssapeterson@example.com	14	2024-11-21
1647	Jaclyn Waller	smithmitchell@example.org	8	2025-06-02
1648	David Wiggins	cynthia74@example.net	10	2023-08-18
1649	Melissa Winters	kimberly93@example.net	7	2024-01-09
1650	Robert Burns	uzamora@example.net	5	2024-10-11
1651	Charles Morris	uford@example.com	1	2025-08-22
1652	Corey Carrillo	michaelstrickland@example.com	12	2023-03-15
1653	Erin Summers	yhoffman@example.com	6	2023-09-28
1654	Mr. Stephen Gonzalez	susanharper@example.org	4	2025-11-13
1655	Stephen Mills	john66@example.net	8	2023-11-20
1656	Dean Thomas	johnsondawn@example.com	8	2025-06-15
1657	Theodore Hernandez	mpeters@example.com	4	2023-03-28
1658	Donald Hill	lmitchell@example.org	14	2025-04-10
1659	Anthony Nguyen	uwood@example.net	6	2023-12-20
1660	Jeffrey Nguyen	markhuff@example.org	2	2024-02-15
1661	Peter Williams	sharpjennifer@example.com	11	2024-12-05
1662	Christian Mills	christopherward@example.com	6	2023-03-11
1663	Paul Vasquez	warrendarlene@example.com	9	2024-01-06
1664	Ann Clark	dariuspruitt@example.com	11	2025-01-30
1665	Michael Johnson	timothywilliams@example.org	6	2023-09-06
1666	Brenda Flores	qavila@example.com	1	2025-11-06
1667	Katherine Caldwell	cpierce@example.org	7	2023-01-22
1668	Kevin Smith	perkinsmicheal@example.org	5	2024-10-07
1669	Adam Burton	joseph58@example.com	4	2024-03-10
1670	Lawrence Cook	rachael61@example.net	2	2023-06-25
1671	Larry Curtis	hharris@example.org	14	2023-11-09
1672	Timothy Harris	marissa39@example.com	14	2024-02-29
1673	Mark Knight	jay04@example.org	8	2024-01-31
1674	Geoffrey Porter	dcortez@example.com	2	2023-08-25
1675	John Hoffman	laura31@example.net	11	2024-10-20
1676	Andre Williams	arroyosarah@example.com	4	2023-04-28
1677	Tonya Davis	jason36@example.net	11	2024-05-02
1678	Jason Johnson	roachkevin@example.com	11	2025-08-17
1679	Victoria Rocha	calhounjulie@example.net	10	2024-05-15
1680	Tara Thompson	millerjimmy@example.net	1	2025-05-18
1681	Alexander Hart	simoneric@example.org	1	2025-01-30
1682	Andrew Reynolds	agutierrez@example.net	13	2024-03-11
1683	Tina Walter	jennifer34@example.org	6	2025-09-09
1684	Chelsea Norris	forbesbradley@example.net	4	2025-01-05
1685	Tristan Freeman	jennifernewton@example.com	3	2025-07-03
1686	Joy Kennedy	nathanielwinters@example.net	13	2024-02-03
1687	Nicholas Reed	bettywatson@example.com	10	2024-08-26
1688	Michael Preston	bward@example.org	4	2025-04-20
1689	Faith Howard	ihayes@example.net	2	2024-10-21
1690	Jonathan Heath	carolfernandez@example.net	14	2023-06-29
1691	Brenda Velasquez	makaylasanders@example.com	13	2023-06-24
1692	Kimberly Stone DDS	sarah23@example.net	9	2025-08-22
1693	Bruce Dennis	amy68@example.net	4	2025-02-16
1694	Gregory Russell	perezdawn@example.org	10	2025-06-16
1695	Chelsea Smith	simpsonruth@example.net	4	2025-07-02
1696	Jared Bryan	lynnjames@example.org	14	2025-11-06
1697	Cody Parsons	jonesshaun@example.org	14	2023-02-04
1698	Jamie Wolfe	matthew53@example.com	4	2024-04-06
1699	Karen Mendez	sheltontiffany@example.com	6	2024-04-14
1700	Michael Callahan	xmullins@example.org	13	2023-12-16
1701	Shirley Avery	yvang@example.org	3	2024-04-07
1702	Angie King	millerjennifer@example.net	13	2025-11-20
1703	James Rogers	tjohnson@example.net	10	2024-11-22
1704	Claire Jenkins	suttonbrittney@example.net	1	2025-04-30
1705	Jill Shaw	khill@example.com	5	2025-05-05
1706	Misty King	wolfetravis@example.com	14	2025-05-27
1707	Dylan Rivera	mcdanieltanya@example.org	3	2023-11-18
1708	Mr. Reginald Roman	kelseywilliams@example.org	3	2023-08-07
1709	Lauren Snyder	donaldyang@example.net	9	2023-09-02
1710	Jacob Hale	ericksonrachael@example.com	5	2024-09-08
1711	John Ramirez	fjones@example.com	13	2024-11-26
1712	Karen Hunter	rebeccahutchinson@example.org	3	2025-08-19
1713	Cody Gonzalez	angela71@example.net	2	2023-01-27
1714	Justin Hall	kevinfrancis@example.com	11	2023-07-23
1715	Richard Rodriguez	brenda04@example.org	14	2023-01-13
1716	John Lewis	nmendoza@example.org	1	2023-12-16
1717	Lori Trevino	thomasdavid@example.net	3	2023-07-08
1718	Karen Fritz	knightjohn@example.com	1	2023-06-09
1719	Darin Baker	goodwinbrad@example.com	6	2025-07-08
1720	Michael Galvan	ocole@example.net	13	2025-05-04
1721	Travis Hicks	wlucas@example.net	13	2025-09-20
1722	Donna Mejia	agreene@example.org	4	2023-06-22
1723	Paula Mejia	woodphillip@example.com	10	2024-09-07
1724	Mrs. Sara Jacobs	melissa78@example.com	6	2024-12-12
1725	Melissa Dominguez	taylordavis@example.com	1	2024-02-27
1726	Lisa Brown	sarah49@example.net	3	2025-12-03
1727	Erika Allen	michaeltorres@example.com	5	2023-09-07
1728	Dennis Coleman	kaylazamora@example.org	1	2024-07-20
1729	Cheryl Parks	james79@example.net	3	2025-05-28
1730	Sherri Little	carlyschultz@example.com	12	2023-07-09
1731	Kathleen Sanchez	klove@example.com	7	2023-07-20
1732	Larry King	zli@example.org	9	2024-08-11
1733	Dawn Simpson	william63@example.com	2	2023-03-14
1734	William Larson	ukim@example.org	12	2023-02-25
1735	Philip Gamble	boonejoshua@example.net	2	2023-06-03
1736	Brendan Paul	qharris@example.net	8	2024-08-09
1737	William Ball	russell33@example.net	8	2023-03-07
1738	Tanya Gomez	edwardspencer@example.com	13	2024-10-23
1739	Vincent Reyes	bestchristopher@example.net	6	2025-04-14
1740	Rhonda Martinez	meganwalker@example.com	9	2024-11-03
1741	Tabitha Ramirez	allenkyle@example.net	10	2024-10-29
1742	Jill Hall	ortizsean@example.org	2	2025-07-31
1743	Lucas James	jamie76@example.net	8	2025-03-20
1744	Jordan Hughes	xobrien@example.org	9	2024-01-10
1745	Melissa Gray	uclark@example.com	4	2025-02-09
1746	Earl Hall	ryu@example.net	10	2024-03-19
1747	Jodi Mcbride	xarmstrong@example.com	1	2023-09-25
1748	Jeremy Coleman	oscott@example.com	12	2023-01-23
1749	Karen Jackson DVM	meghanwerner@example.com	13	2024-02-06
1750	Michael Moore	wrightalicia@example.com	14	2023-02-22
1751	Scott Ramirez	jeremycollins@example.net	11	2024-05-11
1752	Lisa Armstrong	keithharrison@example.com	9	2023-03-15
1753	Robert Gonzalez	jonescraig@example.org	5	2025-09-06
1754	Kristen Wood	ericfrederick@example.org	8	2024-08-07
1755	Christopher Nelson	masonpatricia@example.com	11	2025-05-11
1756	Christopher Anderson	audrey47@example.org	1	2023-05-28
1757	Michelle Martin	jonesnicholas@example.org	1	2024-05-13
1758	Katherine Webster	doneal@example.net	8	2023-11-11
1759	Larry Higgins	hwalton@example.com	14	2025-10-29
1760	Beth Johnson	greenemichael@example.com	7	2023-07-02
1761	Janet Evans	edwardsjames@example.org	7	2023-05-07
1762	Nicole Cole	deborahturner@example.org	11	2023-08-25
1763	Stephanie King	dowens@example.com	2	2023-06-05
1764	Jason Williams	pennylivingston@example.com	8	2025-08-24
1765	Theodore Eaton	smiller@example.com	12	2024-02-14
1766	Amanda Jarvis	vjones@example.org	8	2025-06-18
1767	Alexandra Garcia	brian83@example.net	2	2023-12-06
1768	Jamie Lindsey	ureed@example.com	2	2024-07-24
1769	Laurie Stephenson	ghamilton@example.org	6	2024-02-07
1770	Nicole Hunter	sarahgray@example.net	10	2024-12-30
1771	Madison Thomas	christopherreyes@example.com	3	2025-02-21
1772	Adam Anderson	ahudson@example.org	2	2023-08-30
1773	Wanda Clark	martinbenjamin@example.net	3	2024-04-12
1774	John Zavala	qwilson@example.com	5	2024-06-12
1775	Nicholas Watson	qsosa@example.net	10	2025-06-07
1776	Robin Rivera	alison98@example.net	11	2024-09-03
1777	Stephanie Perez	hamiltonjoseph@example.net	10	2023-11-02
1778	Wendy Williams	laurie41@example.org	9	2023-11-26
1779	Colleen Blanchard	gstein@example.net	12	2024-08-30
1780	Patrick Barnes	kerry32@example.net	6	2024-08-16
1781	Andrea Edwards	grahamlisa@example.org	7	2024-06-10
1782	Felicia Wood	joe76@example.net	10	2024-03-29
1783	David Sanchez	matthewharper@example.net	9	2023-08-23
1784	Bradley Hogan	hernandezroy@example.org	5	2024-02-17
1785	Melissa Hernandez	smithgregory@example.org	8	2025-10-20
1786	Meghan Hull	elizabeth10@example.org	9	2023-11-16
1787	Andrew Aguilar	mendezlori@example.org	10	2025-09-04
1788	Samantha Henry	brittney98@example.org	7	2025-05-14
1789	Austin Obrien	eric81@example.com	2	2025-06-29
1790	Amanda Phelps	heatherpatrick@example.com	13	2024-10-26
1791	Matthew Briggs	proman@example.com	12	2025-11-08
1792	Joel Warner	millerbriana@example.org	2	2024-12-30
1793	Mrs. Miranda Campbell MD	beth76@example.com	14	2023-06-11
1794	Terri Arnold	sharon37@example.net	11	2023-05-15
1795	Corey Jones	randalllinda@example.com	11	2023-02-07
1796	Mr. James Fletcher MD	lisamcgee@example.net	13	2023-07-24
1797	Thomas Knight	adrianlogan@example.com	9	2024-04-07
1798	Dr. Charles Henson	williamsimpson@example.com	12	2024-03-31
1799	Jennifer Townsend	jennifer95@example.com	14	2025-09-20
1800	Dr. Jonathan Clark	erin84@example.net	4	2023-01-03
1801	Leslie House	ryandodson@example.org	7	2024-03-03
1802	Kimberly Ryan	vwilliams@example.org	8	2024-05-13
1803	Rebecca Wells	mhickman@example.net	4	2024-03-22
1804	Kevin Cole	patricia03@example.net	7	2023-09-10
1805	Derek Schmidt	walkerlorraine@example.org	6	2025-09-17
1806	Tyler Lang	amanda86@example.org	14	2024-03-10
1807	Rebecca Bowman	kayla07@example.net	8	2024-07-03
1808	Donna Wilson	saraprice@example.net	7	2023-08-22
1809	Christina Cohen	murphyjohn@example.com	7	2023-12-26
1810	Paul Scott	emily62@example.com	12	2023-01-23
1811	Brent Huynh	whitney81@example.org	2	2023-08-12
1812	Sarah Smith	camerontownsend@example.com	6	2025-12-12
1813	Jerry Martinez	edixon@example.net	7	2025-11-22
1814	Heather Davis	paullopez@example.com	6	2024-11-03
1815	Lisa Montes	gayfrancis@example.com	11	2025-03-05
1816	Kimberly Mendoza	anthony66@example.org	5	2023-06-25
1817	Jennifer Jackson	vayala@example.net	6	2025-06-02
1818	Cristina Sandoval DVM	dgrant@example.com	3	2023-03-15
1819	Steven Johnson	adamkelly@example.net	11	2023-12-19
1820	Jennifer Monroe	michelle12@example.org	8	2025-10-19
1821	Audrey Taylor	jspencer@example.net	2	2024-10-13
1822	Robert Hartman	john86@example.com	2	2025-04-13
1823	Todd Ortega	heathercabrera@example.org	14	2023-02-12
1824	Vicki Hester	charles44@example.com	2	2023-11-04
1825	Mrs. Michelle Kane	coxcody@example.com	2	2023-01-25
1826	Caleb Ray	halljoshua@example.net	7	2025-04-20
1827	Angela Marquez	rebecca41@example.com	2	2025-04-06
1828	Thomas Fisher	joseph02@example.org	12	2025-04-03
1829	April Vance	harrisonmichael@example.net	12	2023-04-14
1830	Todd Jacobson	christopherjackson@example.net	6	2023-04-28
1831	Ashley Burnett	trobinson@example.org	13	2025-10-02
1832	Sharon Hicks	hsmith@example.com	3	2023-07-05
1833	Sarah Vasquez	brianclark@example.net	9	2024-09-23
1834	Eileen Taylor	sbartlett@example.com	1	2024-03-01
1835	Belinda Fisher	julievazquez@example.net	10	2023-09-30
1836	Barbara Lambert	jenniferhall@example.org	9	2023-07-21
1837	Melinda Anderson	joshuarodriguez@example.org	9	2025-03-26
1838	Sandra Smith	petersonsergio@example.org	6	2024-12-14
1839	Sheila Nguyen	hgray@example.net	11	2025-03-04
1840	Shannon Thomas	qgomez@example.net	2	2023-10-29
1841	Donald Williams Jr.	ymoore@example.org	7	2023-09-23
1842	Christina Rodriguez	donald42@example.com	6	2025-03-30
1843	Phillip Brown	pbailey@example.org	14	2025-04-22
1844	Desiree Woods	bconway@example.org	11	2024-05-07
1845	William Arnold	danielgriffith@example.net	13	2024-12-07
1846	Scott Black	julie01@example.net	7	2023-10-07
1847	Steven King	katherinebarnett@example.net	14	2025-11-14
1848	Tammy Weeks	amadden@example.org	12	2025-07-26
1849	Michael Spencer	aaron32@example.org	1	2025-11-15
1850	Jessica Horton	brenda69@example.net	5	2025-03-13
1851	John Gonzalez	markhodge@example.com	10	2024-09-09
1852	Gavin Perez	norrisdakota@example.org	5	2024-05-31
1853	Christine Gutierrez	garciaveronica@example.net	6	2023-09-11
1854	Oscar Robinson	johnsonalexander@example.net	2	2024-04-28
1855	Maria Wu DVM	petersonjoel@example.org	10	2024-03-24
1856	Kyle Francis	bradleybarker@example.net	9	2023-04-13
1857	Monica Howe	nmontoya@example.com	4	2023-07-02
1858	Jonathan Perez	aaron55@example.com	3	2025-08-29
1859	Patrick Hooper	contrerasjames@example.org	11	2024-09-01
1860	Christopher Wilcox	davidmurray@example.net	8	2023-09-14
1861	Amanda Swanson	michaelsherman@example.com	4	2024-05-07
1862	Michael Bass	thomassmith@example.com	14	2025-07-03
1863	Ryan Fisher	duranjason@example.org	2	2023-02-08
1864	Michael Martin	olivia29@example.net	6	2024-03-30
1865	Jerry Jackson	qramirez@example.net	14	2024-12-24
1866	Patricia Smith	xphillips@example.net	9	2023-08-23
1867	Kevin Hogan	rachelhall@example.net	6	2024-05-24
1868	Kristin Foster	brianwhite@example.org	2	2024-08-07
1869	Anthony Garrison	allenandrea@example.com	13	2025-05-24
1870	Dean Dunn	bradleyhenry@example.org	5	2024-07-28
1871	Melissa Davis	colleenjones@example.net	10	2023-06-02
1872	Philip Murray	victoria50@example.org	4	2024-11-25
1873	Patricia Vazquez	millerfrederick@example.net	13	2025-04-18
1874	Angela Lee	gonzalespatricia@example.net	7	2025-06-03
1875	Nicole Jacobs	vanessaedwards@example.net	14	2024-02-11
1876	Maria Goodwin	erik82@example.net	9	2023-05-07
1877	Donna Boyd	hernandezmadison@example.com	13	2025-01-01
1878	Emily Harrison	cmcdonald@example.net	14	2024-07-03
1879	Stacey Gray	christopher84@example.net	10	2023-02-23
1880	Bryce Gutierrez	william55@example.net	10	2023-06-14
1881	Christopher Ray	tranbenjamin@example.com	11	2023-02-23
1882	Jason Chase	ymontgomery@example.org	11	2023-02-28
1883	Tiffany Chase	grimesjohnny@example.net	9	2025-04-25
1884	Kendra Smith	suzanne28@example.com	1	2023-05-17
1885	Kelli Gray	allisonbrown@example.com	10	2024-06-29
1886	Brenda Ross	jessica89@example.net	11	2023-09-23
1887	Jennifer Moore	natashaavila@example.org	14	2025-01-03
1888	Kelsey Lewis	susan41@example.com	12	2024-02-08
1889	Dorothy Hendrix	wmoore@example.com	5	2025-08-14
1890	Amanda Powell	jenniferwood@example.net	1	2025-04-09
1891	Tyler Pruitt	barnettterry@example.com	3	2025-01-18
1892	Dylan Johnston	ingramjessica@example.com	5	2024-03-26
1893	Kelly Greer	martin27@example.net	12	2023-09-22
1894	Michael Johnson	kaiserkelly@example.org	13	2025-06-29
1895	Phillip Kelly	brenda16@example.net	5	2025-09-30
1896	Brian Davis	ufox@example.org	6	2023-08-31
1897	Christina Watkins	travistaylor@example.net	6	2024-08-19
1898	Stephen Bond	hubersamantha@example.net	1	2023-12-20
1899	Vernon Esparza Jr.	umaxwell@example.net	3	2025-04-13
1900	Cody Hoover	willismatthew@example.com	14	2025-09-03
1901	Kyle Glass	haleycook@example.net	3	2023-05-03
1902	Drew Werner	hornerebecca@example.org	10	2025-02-08
1903	Jenna Lynch	dennis01@example.com	11	2025-08-24
1904	Shelby Fowler	daniel43@example.org	7	2024-10-23
1905	Ryan Willis	ulee@example.org	2	2024-03-10
1906	Katie Jones	vhill@example.com	3	2025-10-28
1907	Andrew Reese	david86@example.net	12	2023-03-26
1908	Alex Conner	travisfoster@example.com	11	2023-02-16
1909	Kelly Davis	ronaldbradford@example.org	1	2025-11-24
1910	Amy Dyer	peter91@example.org	2	2025-10-30
1911	Angel Bentley	corythompson@example.org	12	2024-02-27
1912	Anthony Jordan	ryanrodriguez@example.net	9	2023-10-06
1913	Justin Barrera	traceyguerra@example.com	4	2025-07-16
1914	David Kemp	leontracie@example.org	7	2025-03-31
1915	Scott Durham	ricklewis@example.net	7	2024-01-11
1916	Amy Estrada	bvazquez@example.net	8	2024-02-14
1917	Wendy Carpenter	prattjustin@example.org	6	2025-06-19
1918	Jody Scott	richardharper@example.net	3	2025-10-20
1919	Pamela Armstrong	qkane@example.com	6	2024-11-14
1920	Olivia Reese	hdavis@example.com	5	2025-06-28
1921	Lauren Walsh	dylancunningham@example.com	12	2023-06-08
1922	Emily Montgomery	stephaniezamora@example.org	6	2023-01-24
1923	Sabrina Phillips	kimberlyjordan@example.net	13	2023-07-22
1924	Jennifer Lyons	omoore@example.org	10	2024-09-05
1925	Steven May	karacollins@example.net	10	2024-05-15
1926	Erika Bates	debra82@example.net	2	2023-09-07
1927	Sara Pollard	merrittsusan@example.net	1	2025-09-09
1928	Michael Bishop	anthony26@example.net	3	2023-05-09
1929	Bridget Guerrero	bowerspatrick@example.com	3	2025-04-15
1930	Tammy Robinson	gstokes@example.net	13	2024-01-13
1931	Pamela Aguirre	ashley14@example.org	10	2025-06-28
1932	Chase Matthews	melissa40@example.org	1	2025-05-01
1933	Paul Smith	yburke@example.org	11	2025-06-30
1934	William Hughes	charlesbarnett@example.net	2	2025-12-29
1935	Sarah Williams	brooksbrian@example.net	5	2024-01-02
1936	Lawrence Hodge	brian62@example.net	8	2023-11-02
1937	Tiffany May	brentrichardson@example.net	11	2024-07-25
1938	Jon Ramos	peter07@example.org	7	2023-11-03
1939	Jennifer Anderson	melvinpeters@example.org	8	2025-03-05
1940	Mario Wells MD	hendrixariana@example.net	10	2025-03-27
1941	Alison Zuniga	carlos33@example.org	8	2023-03-15
1942	Casey Velazquez	jennifer23@example.com	7	2024-05-11
1943	John Ho	ksmith@example.net	5	2025-09-29
1944	April Rodriguez	gyoung@example.net	4	2023-04-22
1945	Joshua Bray	nmartinez@example.com	13	2023-12-14
1946	Elizabeth Baker	barbergary@example.net	9	2023-03-23
1947	James Dixon	reynoldsjustin@example.org	2	2023-12-20
1948	David Garcia	jferguson@example.com	6	2023-09-16
1949	Mr. Thomas Jones PhD	humphreypatricia@example.net	7	2025-03-22
1950	Mark Green	ijackson@example.com	2	2024-08-10
1951	Nicholas Obrien II	odelacruz@example.net	5	2025-03-15
1952	Jose Stephens	ricky53@example.net	11	2023-09-24
1953	Allison Floyd	hpowell@example.com	11	2025-04-01
1954	Scott Crawford	zholmes@example.org	10	2024-06-07
1955	Phillip Bennett	christopherpittman@example.org	8	2025-07-30
1956	Michael Miller	qshelton@example.com	9	2023-09-03
1957	William Giles	richard21@example.net	11	2023-01-17
1958	Angel Duncan	ashley79@example.org	5	2024-12-14
1959	Melanie Young	krista02@example.org	1	2024-09-02
1960	Gary Johnson	eileendaniels@example.net	4	2025-09-03
1961	Katie Carter	kennethjacobs@example.net	7	2024-10-17
1962	Andrea Miller	shannon88@example.com	10	2024-10-29
1963	Amanda Pena	kellyharold@example.net	1	2025-11-19
1964	Craig Hammond	anthonygilbert@example.com	1	2024-03-15
1965	Lucas Ball	isimpson@example.com	4	2024-02-21
1966	Marcus Herman	jhiggins@example.org	5	2024-02-25
1967	Kathleen Brady	erin06@example.net	4	2023-12-17
1968	Cynthia Williams	nicole56@example.com	13	2023-07-23
1969	Jesus Johnson	jacksonrachel@example.org	3	2025-03-07
1970	James King	zmurray@example.org	13	2025-05-02
1971	Lisa Lopez	cynthiaanderson@example.net	5	2023-06-03
1972	Rachel Greer	michellelee@example.net	5	2025-03-20
1973	Christopher Miller	jacob57@example.org	6	2025-10-20
1974	Christopher Johnston	oshah@example.net	2	2025-09-27
1975	Rachael Wood	michelleayers@example.org	1	2023-09-01
1976	Jacob Lynn	ystone@example.net	8	2024-09-05
1977	Nicole Mejia	mallory30@example.org	12	2023-12-22
1978	Sherry English	housedaniel@example.com	7	2023-12-02
1979	Curtis Whitaker	brandi40@example.org	3	2024-10-17
1980	Eric Nguyen	urodriguez@example.org	3	2025-07-07
1981	Holly Mercado	halvarez@example.org	7	2023-04-28
1982	Samuel Williams	stephanie21@example.com	9	2023-09-18
1983	Amanda Gomez	hreyes@example.org	12	2025-11-06
1984	Kristina Jacobs	katherinesmith@example.com	4	2025-02-01
1985	Kelsey Gates	richard25@example.net	9	2023-05-23
1986	Jessica Brown	michelle98@example.com	9	2025-06-04
1987	Jeremy Evans	devonmccarthy@example.net	14	2025-05-17
1988	Maureen Weaver	jessica65@example.com	11	2024-01-05
1989	Donna Shaw	susan11@example.net	13	2025-05-12
1990	Chad Rosales	williamslaurie@example.com	6	2024-04-13
1991	Sherry Jones	davidwiley@example.org	2	2024-11-30
1992	Andrea Smith	timothy83@example.net	7	2025-05-25
1993	Catherine Garcia	justin88@example.net	14	2024-11-24
1994	Whitney Henry	smccarty@example.org	12	2024-02-24
1995	Rachel Ball	dawn20@example.org	1	2024-04-08
1996	Nancy Jackson	keith18@example.org	7	2024-02-06
1997	Joshua Velasquez	jamesbrown@example.org	1	2025-05-31
1998	Maria Sims	brownjoanna@example.org	8	2024-10-26
1999	John Harris	icooper@example.org	2	2024-07-22
2000	Michael Ortega	kristinyoder@example.com	14	2025-04-19
2001	William Hart	timothy62@example.net	6	2024-05-23
2002	Luke Dixon	qreyes@example.net	10	2025-10-28
2003	Anthony Melton	phorne@example.com	7	2023-09-21
2004	Daniel Ramos	sararios@example.org	10	2023-07-12
2005	Erika Thompson	joycekeith@example.org	7	2025-11-13
2006	Mary Richards	joel82@example.org	12	2025-03-13
2007	Jack Brandt	lukecase@example.com	11	2025-09-08
2008	Matthew Mclaughlin PhD	evanlong@example.org	7	2024-04-02
2009	Debbie King	ucarr@example.org	5	2025-10-28
2010	Roger Valencia	ksmith@example.org	2	2023-07-17
2011	Gary Estrada	fwolf@example.net	7	2024-04-26
2012	Steven Murphy MD	davidjohnson@example.net	1	2023-05-04
2013	Ricky Sanders	kelleyglen@example.org	6	2025-04-04
2014	Lisa Case	nbailey@example.net	3	2023-10-18
2015	Jacqueline Robertson	joelnichols@example.org	13	2025-03-21
2016	Rachel Cervantes	harrisjoshua@example.com	10	2025-05-24
2017	Bradley Armstrong	daniel15@example.org	8	2023-09-16
2018	Laura Mcfarland	johnsonedward@example.net	14	2025-11-10
2019	Teresa Curry	davisjames@example.com	12	2023-07-03
2020	Cheryl Salazar	rhondaray@example.com	6	2024-12-16
2021	Kathryn Franklin	thomasbrandon@example.org	2	2023-04-01
2022	Christopher Delacruz	wortiz@example.net	7	2025-03-12
2023	Raymond Nunez	rodriguezrichard@example.org	14	2023-06-02
2024	Luis Johnson	jenniferstanley@example.net	2	2025-09-27
2025	Christina Dean	benjaminarmstrong@example.com	4	2025-04-12
2026	Adam White	kimberly12@example.com	7	2024-02-21
2027	Alexander Hansen	igarrett@example.com	10	2023-07-12
2028	Erin Taylor	nicholas09@example.org	7	2025-07-30
2029	Walter Griffith	cochranjill@example.org	9	2025-02-06
2030	Michael Carlson	kimberlysilva@example.org	2	2025-05-31
2031	Jesse Thomas	rodneyhoward@example.com	7	2025-04-30
2032	Phillip Anderson	greencharles@example.net	14	2024-08-13
2033	William Conrad	nmartinez@example.org	5	2025-05-02
2034	Diana Jackson	ramosjennifer@example.org	12	2024-06-08
2035	Alison Perez	michelleschmidt@example.org	6	2024-04-17
2036	Sean Carey	walkerjennifer@example.com	4	2024-01-10
2037	Alan Cox	kfrye@example.net	6	2023-02-05
2038	Richard Dean	scott55@example.com	13	2024-05-09
2039	David Mendoza	taylorlisa@example.com	3	2024-04-10
2040	Justin Hammond	williamsanthony@example.net	2	2024-04-20
2041	Ashlee Ross	burnsrodney@example.org	9	2025-05-17
2042	Robin Santiago	lrodriguez@example.org	11	2024-08-19
2043	Grant Brown	gonzalezbrad@example.com	2	2025-08-08
2044	Micheal Cook	hesskeith@example.net	9	2023-04-22
2045	Curtis Morales Jr.	angelcunningham@example.org	9	2025-11-10
2046	Megan Griffin	fcarlson@example.org	4	2024-01-18
2047	Felicia Cooke	catherinemoore@example.com	13	2023-08-12
2048	Stacy Kim	christianrichards@example.net	6	2025-10-06
2049	Scott Smith	whitneyrichard@example.com	6	2023-09-21
2050	Lori Johnson	popebrent@example.net	12	2023-04-20
2051	Thomas Johnson	brenda88@example.org	14	2024-06-15
2052	Melissa Zimmerman	audrey53@example.net	11	2025-06-17
2053	Richard Williams	mortonkenneth@example.net	14	2025-12-28
2054	Jennifer Obrien	pfowler@example.org	3	2025-06-18
2055	Melinda Cervantes	vmorrison@example.com	4	2023-08-06
2056	Tina Hernandez	dmitchell@example.com	2	2023-04-22
2057	David Thompson	samuel38@example.net	3	2024-06-09
2058	Keith Wilson	eroman@example.net	5	2024-10-09
2059	Stephen Charles	anthonymcdonald@example.net	4	2025-06-19
2060	Sarah Garcia	kbrown@example.net	3	2024-05-19
2061	Robert Burton	atkinsonrachel@example.net	10	2024-12-29
2062	Cynthia Cohen	hlester@example.org	3	2025-10-30
2063	Monica Medina	sarah80@example.org	13	2025-12-04
2064	Stephanie Torres	eugenemartinez@example.com	13	2025-11-28
2065	Crystal Mcgrath	samuel08@example.org	11	2024-07-25
2066	Joshua Barnes	thomas12@example.org	2	2023-03-09
2067	Kyle Davis	villawilliam@example.com	3	2024-02-21
2068	Rebecca Greene	gcastro@example.org	13	2025-01-08
2069	Lauren Duarte	dbeck@example.com	11	2024-05-22
2070	Micheal Green	tylerrodney@example.com	8	2023-02-17
2071	Juan Wright MD	mathewbennett@example.org	8	2024-04-12
2072	Robert Ballard	owhite@example.org	13	2025-05-03
2073	Michaela Campbell	preyes@example.net	10	2025-08-26
2074	Allison Chavez	edward70@example.org	13	2023-10-17
2075	Charles Zavala	bethany36@example.com	10	2024-09-06
2076	Jonathan Berry	josephross@example.net	8	2024-08-17
2077	Shirley Taylor	randall28@example.com	11	2024-07-03
2078	Alex Whitaker	evansjason@example.org	10	2024-10-21
2079	Misty Howard	yolandamarks@example.net	11	2024-10-04
2080	John Russell	petersontina@example.org	11	2024-03-22
2081	Jorge Morales	kentmichael@example.com	10	2025-10-02
2082	Dennis Jensen MD	marksheidi@example.com	6	2025-04-01
2083	Jennifer Brown	vmosley@example.org	14	2023-01-31
2084	David Medina	paynestephanie@example.net	11	2025-04-25
2085	Roy Thomas	christopher46@example.net	6	2023-01-04
2086	Darrell Nguyen	samanthasims@example.com	3	2025-07-17
2087	Kimberly Ballard	hollyperkins@example.net	8	2024-08-20
2088	Timothy James	haley15@example.com	2	2024-11-08
2089	Regina Williams	austinjennifer@example.net	8	2024-10-06
2090	Priscilla Vang	heidijames@example.net	8	2023-07-17
2091	John Henderson	perezcaitlin@example.net	11	2023-02-18
2092	Ernest Jenkins	craigriley@example.com	5	2025-06-03
2093	John Williams	lindsay48@example.net	13	2024-02-12
2094	Thomas Lutz	kristen89@example.com	5	2023-10-01
2095	Gabriel Graham	alexisgibbs@example.com	10	2024-04-17
2096	Katherine Ramos	duncankimberly@example.com	1	2023-12-11
2097	Cheryl Hunter	colemanjohn@example.com	6	2025-04-20
2098	James Anderson	kayleerogers@example.com	9	2023-10-10
2099	Geoffrey Franklin	sarasmith@example.net	2	2023-03-01
2100	Bailey Hernandez	sylviayates@example.com	5	2024-04-10
2101	Matthew Collins	kathrynaustin@example.com	8	2025-11-21
2102	Douglas Lucero	watsonteresa@example.net	8	2023-01-31
2103	Robert Fowler	smithrebecca@example.net	1	2025-06-11
2104	Jose Foster	ifrey@example.org	1	2023-01-17
2105	Kyle David	agalvan@example.com	6	2025-08-15
2106	Jennifer Baker MD	ujones@example.org	14	2024-05-03
2107	Joseph Perez	bpeterson@example.com	5	2025-10-03
2108	Sharon Patel	ospencer@example.org	2	2025-02-01
2109	Jose Collins	powersheather@example.org	11	2024-02-08
2110	Heidi Goodwin	brandon64@example.com	14	2024-07-05
2111	John Singh	meganjones@example.org	14	2024-12-15
2112	Micheal West	nfleming@example.net	2	2025-10-31
2113	Jeffrey Ayala	johncarter@example.net	10	2025-06-12
2114	Christopher Lee	ecohen@example.com	10	2025-01-12
2115	Joshua Solis	lawsonpaul@example.org	9	2024-01-23
2116	Miguel Lee	ylynch@example.org	7	2025-06-24
2117	Sandra Adams	markperez@example.com	8	2023-12-22
2118	Sharon French	robertsonjennifer@example.com	10	2023-01-13
2119	Kayla Jones	lreed@example.com	9	2024-04-27
2120	Tina Green	ibrown@example.org	13	2023-10-06
2121	Melissa Alvarez	shannonmueller@example.org	12	2025-06-16
2122	Nicole Mcbride	john91@example.org	1	2023-01-18
2123	Kayla Scott	klara@example.net	8	2024-08-10
2124	Kayla Moore	torrestricia@example.com	13	2024-04-11
2125	John Hill	qbecker@example.com	10	2024-09-25
2126	Shannon Downs	lpage@example.com	11	2023-09-12
2127	Justin Perez	pmartin@example.org	4	2023-05-25
2128	William Galloway	kjohnson@example.net	6	2024-09-13
2129	Sean Glass	garymartinez@example.org	10	2023-08-19
2130	Stephen Smith	ymurray@example.org	8	2023-01-17
2131	Ryan Carlson	hespinoza@example.org	9	2023-02-19
2132	Chelsey Reyes	robertssamantha@example.org	3	2024-08-22
2133	Francisco Sanchez	lawrencekari@example.com	1	2025-09-10
2134	Pamela Pierce	jamesparker@example.net	8	2023-10-30
2135	Anne Smith	bryantkaren@example.org	2	2023-12-13
2136	Diana Rivera	ekim@example.com	13	2023-01-04
2137	Jessica Compton	fhenderson@example.org	14	2023-01-22
2138	Sydney Evans	fletcherjanet@example.org	6	2023-01-15
2139	Jeremy Nguyen	lmendez@example.com	12	2025-12-16
2140	Joseph Smith	russellkelley@example.com	2	2025-04-25
2141	Nicholas Cunningham	mmoore@example.com	9	2024-08-29
2142	Kimberly Grant	kennedywanda@example.net	11	2025-05-09
2143	Angel Johnson	dwhite@example.org	3	2024-12-02
2144	Allison Wheeler	andrewmiller@example.com	1	2024-09-15
2145	Heather Sweeney	omarturner@example.org	4	2025-08-22
2146	Tony Merritt	sarah17@example.com	12	2024-08-28
2147	Tyler Murray	fcarter@example.net	8	2024-01-03
2148	James Lopez Jr.	juanfranklin@example.net	8	2025-03-30
2149	Derek Martin	lcook@example.org	9	2024-03-17
2150	Sierra Gentry	jennifer54@example.org	9	2024-05-06
2151	Melanie Watson	floreskimberly@example.org	10	2023-04-26
2152	Beth Kane	trivas@example.net	3	2023-01-04
2153	Amy Ross	robert07@example.org	6	2023-01-20
2154	Ryan Harrison	wesleycalhoun@example.net	6	2023-08-20
2155	Rachel Smith	washingtondenise@example.net	5	2023-12-26
2156	Michelle Allen	victoriajones@example.net	7	2023-07-20
2157	Jacqueline Olson	hartmansherry@example.net	7	2025-10-08
2158	Anna Andrews	bishopmegan@example.org	13	2025-02-03
2159	Emily Simmons	manningjeremy@example.com	6	2025-12-10
2160	Christina Johnson	pachecobrittney@example.net	11	2023-02-28
2161	Dawn Haynes	wileyaudrey@example.com	10	2023-01-17
2162	Edward Cochran	laurenboyd@example.com	1	2024-09-07
2163	Sharon Jenkins	brookeramirez@example.com	13	2024-10-11
2164	Nicholas Chung	tiffanyharris@example.com	11	2025-04-18
2165	Steven Swanson	johnsonmartin@example.org	11	2025-06-06
2166	Lisa Walker	caseystafford@example.org	6	2024-01-21
2167	Monica Kim	matthewhull@example.com	2	2025-11-29
2168	Don Gardner	mcgeeseth@example.net	6	2024-08-03
2169	Whitney Macdonald DVM	amyponce@example.com	2	2024-08-23
2170	William Velez	richard28@example.org	9	2025-05-26
2171	Robert Mcintosh	longshane@example.com	11	2023-12-29
2172	James Harris	jessicasmith@example.org	7	2024-01-21
2173	Ralph Rodriguez	tfuller@example.net	5	2024-08-15
2174	Ashley Hall DVM	fordwilliam@example.com	5	2023-01-31
2175	Mrs. Erin Phillips	dfleming@example.net	12	2023-04-14
2176	Alexander Love	samantha54@example.net	14	2025-02-08
2177	Yvette Orozco	iansantana@example.net	11	2025-10-26
2178	Alexandra Heath	millerdaniel@example.org	10	2024-01-27
2179	Susan Reed	scott95@example.org	14	2025-08-02
2180	Ruben Garcia	ipadilla@example.com	3	2024-04-24
2181	Hector Paul	dawn31@example.org	6	2024-10-13
2182	Tyler Howell	kendra03@example.net	2	2023-01-11
2183	Donald Martinez	johnsross@example.net	10	2025-09-09
2184	Diane Jones	courtney13@example.net	11	2024-10-31
2185	Stephanie Moyer	michael35@example.net	3	2024-01-04
2186	Isaiah Jones	russelltommy@example.net	6	2024-09-12
2187	Kenneth Hahn	jonespaul@example.com	5	2023-01-15
2188	Michael Allen	smason@example.net	11	2024-06-06
2189	Claudia Lee	kristopher53@example.org	12	2023-05-18
2190	James Charles Jr.	alan25@example.org	11	2023-01-04
2191	James Scott	gwhite@example.com	7	2023-03-21
2192	Antonio Lopez	jefferywalker@example.com	3	2024-08-11
2193	Omar Johnson	daypatricia@example.net	10	2025-07-26
2194	Mark Haley	pdixon@example.org	12	2023-02-20
2195	Anita Long	laurajensen@example.org	2	2023-06-15
2196	Tina Mclean	kcook@example.net	5	2023-11-05
2197	Erica Cunningham	christopherwatkins@example.net	9	2025-05-15
2198	James Hall	robertbrock@example.org	7	2025-04-24
2199	Brenda Wood	chrismurray@example.com	11	2025-05-23
2200	Beth Solomon	davismax@example.org	13	2025-09-01
2201	Abigail Lopez	coreypope@example.net	6	2023-09-05
2202	Terry Warren	boydrenee@example.net	14	2024-12-23
2203	Brandon Rodriguez	gordonjason@example.com	3	2023-01-05
2204	Monica Gilmore	evaughn@example.org	11	2023-12-30
2205	Justin Williams	christensenkendra@example.org	12	2025-02-09
2206	Melissa Hodge	kelleynicholas@example.org	14	2024-06-08
2207	Stephanie Lara	martin40@example.net	12	2024-07-10
2208	Carol Webster	aaronthompson@example.org	11	2023-04-16
2209	Lori Roberson	derekdougherty@example.org	9	2024-11-04
2210	John Ramirez	jessicamiddleton@example.net	2	2023-10-03
2211	William Frye	jacquelinenunez@example.net	11	2025-03-29
2212	Andrew Clark	hilljennifer@example.org	11	2024-11-17
2213	Mitchell Jimenez	heathergarcia@example.com	7	2023-08-28
2214	Ricardo Anderson	butlerolivia@example.com	9	2025-02-25
2215	Michael Summers	jennifer93@example.com	6	2023-10-05
2216	Steven Davis	davidjones@example.org	1	2024-05-15
2217	Ann Fleming PhD	harrisonnicholas@example.net	6	2024-12-14
2218	Lauren Sosa	davidglover@example.com	5	2023-02-14
2219	Kimberly Hill	jmyers@example.net	3	2023-09-29
2220	Teresa Barnes	masonmichael@example.net	4	2023-03-30
2221	Jennifer Booker	wstevens@example.org	6	2025-08-26
2222	Tara Miller	dcox@example.com	13	2024-02-24
2223	Rachel Turner	alexanderryan@example.org	8	2024-09-28
2224	Chelsea Walker	tcooper@example.net	4	2025-01-19
2225	Colton Bradford	htaylor@example.org	4	2024-10-23
2226	Daniel Jenkins	samantharodgers@example.net	3	2023-11-20
2227	Michael Garcia	fergusontrevor@example.net	3	2024-08-30
2228	Natalie Conrad	danielleramsey@example.net	2	2025-11-06
2229	Melanie Baker	anitaballard@example.org	5	2023-04-03
2230	Diane Murray	pamelaestrada@example.com	14	2025-02-27
2231	Dean Harris	lambjohn@example.org	13	2024-08-05
2232	Michael Porter	brooksjennifer@example.com	2	2025-02-12
2233	Jeanette Norris	victor76@example.net	9	2025-08-03
2234	Wanda Griffith	stacey53@example.com	13	2025-02-18
2235	Scott Long	erivers@example.com	9	2024-02-10
2236	Bob Cooper	andrew09@example.com	14	2023-08-17
2237	Sylvia Torres	briggsjacob@example.com	12	2025-10-10
2238	Todd Johnston	cturner@example.org	9	2024-10-14
2239	Alexis Berg	derrick59@example.org	1	2023-05-04
2240	Timothy Mitchell	debra93@example.org	11	2023-10-18
2241	Jason Wilson	olivia30@example.com	6	2025-05-17
2242	Randy Perez	johnsondebbie@example.net	13	2024-09-12
2243	Samantha Gillespie	sarahmiller@example.net	10	2023-05-14
2244	Timothy Campbell	jasonochoa@example.net	3	2024-08-24
2245	Jessica Bullock	rgreen@example.net	10	2023-11-02
2246	Mr. Cory Hanna PhD	holtrobert@example.com	7	2025-09-01
2247	Courtney Wallace	banderson@example.com	3	2025-08-16
2248	Cory Smith	rhonda05@example.org	3	2025-01-16
2249	Amy Pennington	mark80@example.org	3	2025-06-09
2250	Scott Thompson	cameronlopez@example.com	14	2023-01-28
2251	Barbara Johnson	jeremy91@example.org	12	2024-12-26
2252	Lori Miller	rebekahgonzalez@example.org	13	2025-04-15
2253	Michael Holmes	uthompson@example.org	10	2024-02-19
2254	Nicholas Chase	mauriceball@example.net	13	2024-10-20
2255	Mary Lewis	eddiehernandez@example.net	3	2024-01-21
2256	Michael Lee	aaroncox@example.com	12	2025-04-24
2257	Rachael Walker	jeremiah36@example.com	8	2025-01-26
2258	Andrew Sanders	arnoldstephen@example.net	1	2023-04-06
2259	Rachel Martinez	mariagonzalez@example.org	7	2023-07-25
2260	Christopher Garcia DDS	patriciagrant@example.net	6	2023-04-19
2261	Brandon Trevino	wleblanc@example.com	11	2024-11-23
2262	James Gonzalez	imolina@example.org	12	2024-08-07
2263	Claire Vazquez	donaldmartin@example.net	4	2023-08-18
2264	Nicole Carter	michaelmooney@example.net	8	2024-07-10
2265	Mary Jennings	gregorymullen@example.com	10	2024-09-11
2266	Stephen Haney	jason06@example.org	5	2023-03-04
2267	Miranda Lin	carlholland@example.net	13	2025-07-01
2268	Ricky Hill	adamcaldwell@example.org	12	2023-03-02
2269	Patricia Delgado	eddie13@example.com	13	2025-07-27
2270	Katie Mitchell	uperez@example.com	8	2023-07-11
2271	Erik Hill	lloydsharon@example.net	4	2024-12-20
2272	William Adams	knightsamantha@example.com	9	2023-03-15
2273	Keith Lambert	nvargas@example.net	4	2023-12-28
2274	Heather Lopez	kingryan@example.org	5	2023-12-18
2275	Sean Crawford	jessicadavis@example.com	13	2024-12-30
2276	David Moran	kford@example.net	13	2023-03-22
2277	Troy Wells	martintracy@example.com	8	2024-05-12
2278	Victoria Lopez	rpearson@example.org	14	2023-09-11
2279	Kenneth Moreno	awong@example.com	4	2024-05-19
2280	Christine Mccoy	james91@example.net	6	2023-09-17
2281	Colin Mckay	hunter12@example.org	11	2025-04-23
2282	Heather Johnson	tom64@example.com	10	2023-06-23
2283	Thomas Castillo	smithrobert@example.net	8	2024-09-08
2284	Joshua Farmer	kmorales@example.com	8	2024-05-23
2285	Stacey Davis	paulbailey@example.net	13	2024-10-11
2286	Gary Johnson	michaelhale@example.com	5	2025-12-20
2287	Jasmin Nelson	djensen@example.com	13	2023-08-07
2288	Krystal Howard	nwalker@example.org	7	2023-03-28
2289	Michelle White	daniel82@example.com	9	2025-01-30
2290	Elijah Archer	christina89@example.net	9	2024-03-28
2291	Lisa Bailey	karen43@example.com	7	2025-07-09
2292	Rebecca Torres	fostersarah@example.net	3	2025-02-15
2293	Sandra Duffy	joshua74@example.org	14	2023-09-25
2294	Jason Smith	dustinwilliams@example.com	4	2024-09-21
2295	Nathan Cummings	vanessacaldwell@example.net	13	2024-07-02
2296	Lauren Peck	sanderson@example.org	10	2024-12-04
2297	Andrew Murphy	james65@example.com	3	2023-05-07
2298	Shannon Martinez	alejandroturner@example.net	14	2024-06-01
2299	Timothy Hernandez	ashleymorrow@example.org	5	2024-04-18
2300	Ashley Maxwell	jessicamurray@example.com	1	2025-09-09
2301	Linda Lee	courtney70@example.net	11	2025-08-04
2302	Angela Berry	sherylgreen@example.com	8	2025-10-26
2303	Michael Sanders	christopherwalker@example.net	14	2024-08-28
2304	Daniel Zamora	mariamoore@example.net	6	2024-08-26
2305	David Collins	isaac63@example.net	9	2025-03-22
2306	Matthew Klein	sgordon@example.net	2	2023-04-29
2307	Roberto Guerra	arnoldrachel@example.net	12	2025-05-27
2308	Brenda Dalton	dmullins@example.org	14	2023-12-10
2309	Maria Compton	esmall@example.com	9	2025-08-28
2310	Elizabeth Skinner MD	amandamoody@example.com	14	2023-10-16
2311	Robert Lynch	robert52@example.com	2	2025-11-03
2312	Nicole Blake	jamesmeyer@example.org	5	2025-04-03
2313	Chad Taylor	gberry@example.org	2	2024-11-13
2314	Alex Gonzalez	emcdonald@example.net	13	2023-08-12
2315	Jessica Bryant	kimronald@example.com	3	2025-01-28
2316	Robert Wright	thompsondarlene@example.org	5	2024-10-29
2317	Carrie Hall	lisa23@example.org	8	2023-03-03
2318	Tiffany Anderson	amberellis@example.net	9	2023-08-26
2319	Sylvia Smith	krobbins@example.net	3	2025-06-05
2320	Stanley Brown	qhendricks@example.net	14	2025-05-22
2321	Ricardo Garcia	smay@example.com	7	2025-08-24
2322	Brian Buchanan	sarawilliams@example.com	2	2023-12-18
2323	Shane Alexander	vfuller@example.net	4	2024-12-01
2324	Christopher George	paul84@example.net	14	2025-08-13
2325	Nancy Valentine	mwright@example.com	8	2023-10-06
2326	Rebecca Garcia	millerbrandon@example.net	6	2024-09-19
2327	Cynthia Reed	vaguirre@example.net	1	2024-05-16
2328	Vanessa Jones	roytodd@example.net	7	2023-02-24
2329	Courtney Hernandez	matthewschristine@example.com	1	2023-02-09
2330	Fernando Blackwell	snydergerald@example.org	7	2025-01-30
2331	Nicole Wright	bwhite@example.com	9	2025-09-18
2332	Brian Thompson	gina49@example.net	6	2025-07-27
2333	Susan Singh	schwartzlisa@example.org	4	2024-02-23
2334	Jeremy Stein	torresmary@example.com	7	2025-12-04
2335	Erin Nelson	brockalex@example.com	2	2024-07-10
2336	Jordan Bailey	jake77@example.com	6	2024-11-03
2337	Jennifer Walters	ernestrich@example.net	4	2024-11-14
2338	Cody Morse	kflores@example.org	1	2023-12-13
2339	Alicia Miller	fbailey@example.org	6	2025-09-25
2340	Matthew Armstrong	edwardmitchell@example.org	2	2025-06-05
2341	Tanya Jenkins	hernandezlouis@example.net	14	2023-12-20
2342	Jeffrey Ford	debbiejackson@example.net	12	2025-02-06
2343	Tiffany Williams	qjones@example.com	11	2025-03-02
2344	Michael Morgan	jamierodriguez@example.net	6	2024-11-13
2345	Amanda Berry	janetmoore@example.net	13	2024-08-12
2346	Anna Poole	watsonkenneth@example.net	3	2023-04-02
2347	Jaime Hernandez	istephens@example.com	3	2025-09-25
2348	Adam Gallagher	schmidtjose@example.net	1	2025-12-21
2349	Eric Anderson	williamspaul@example.net	5	2023-03-06
2350	Kathleen Little	usanchez@example.net	14	2025-10-13
2351	Jasmine Morales	xcurry@example.net	8	2023-12-25
2352	Carl Phillips	danielthomas@example.com	12	2023-05-11
2353	Corey Smith	williamsfrank@example.com	14	2025-06-04
2354	Ashley Oconnor	davismichelle@example.com	3	2024-08-05
2355	Leah Wheeler	barbara81@example.net	13	2023-06-17
2356	Ashley Dunn	robinsonryan@example.com	12	2023-06-26
2357	Carol Smith	baileyjames@example.org	8	2023-01-23
2358	James Salas	morrisbrandon@example.org	8	2024-08-13
2359	Stephanie Pierce	mcconnellangela@example.org	10	2023-10-23
2360	Lisa Keller	brownraymond@example.net	1	2025-10-09
2361	Nicole Mahoney	gregorypeters@example.org	2	2024-04-18
2362	Stephanie Nunez	jasonwebb@example.net	1	2025-08-23
2363	Brian Welch	dthompson@example.org	5	2023-04-02
2364	Traci Rodriguez	leeelizabeth@example.org	4	2023-09-29
2365	Lee Garcia	michaellopez@example.net	14	2023-08-09
2366	Kelsey Nguyen	sullivanpaula@example.com	3	2024-10-19
2367	Jenny Soto	margaret20@example.net	9	2024-02-27
2368	Ashlee Pena	john19@example.org	12	2025-09-11
2369	Jason Murray	gomezbrittney@example.net	10	2024-05-26
2370	Kimberly Evans	rthompson@example.org	9	2025-07-23
2371	Brittany Myers	heather68@example.com	7	2025-12-20
2372	Heather Gallegos	marioharris@example.net	2	2025-04-16
2373	Tiffany Cooper	carrielambert@example.net	13	2024-07-09
2374	Nancy Tanner	wallacecourtney@example.org	5	2024-11-27
2375	Kevin Shea	duranaudrey@example.com	4	2025-04-17
2376	Kristen Larson	gina74@example.net	5	2024-06-14
2377	Laura Sullivan	mckayjames@example.net	2	2024-01-21
2378	Ashley Murray	iquinn@example.net	1	2025-05-28
2379	Ricardo Ferguson	kelly09@example.org	4	2023-04-27
2380	Jennifer Smith	davidclay@example.org	7	2024-12-26
2381	Jimmy Sanders	angela00@example.net	11	2023-06-29
2382	Dawn Meyer	aaronwiley@example.net	13	2023-07-16
2383	Regina Rivera	elizabeth88@example.org	10	2024-08-31
2384	Deborah Bond	tranrobert@example.org	8	2024-11-08
2385	Jillian Wood	williamsjason@example.net	2	2023-01-16
2386	Michael Garcia	deanna05@example.com	2	2024-01-13
2387	Pamela Lee	qirwin@example.com	14	2023-11-17
2388	Kathryn Castillo	valdezalyssa@example.org	8	2024-04-18
2389	Amanda Rodriguez	ronaldoneal@example.org	10	2024-03-29
2390	Edward Herring	david90@example.com	9	2023-02-22
2391	Tina Hansen	xcardenas@example.org	1	2024-06-13
2392	Charles Strickland	morrismax@example.net	11	2023-11-26
2393	Ethan Coleman	jackwyatt@example.org	9	2024-04-22
2394	Daniel Reid	scott04@example.com	10	2024-10-28
2395	Elizabeth Roberts	nathan39@example.com	4	2023-12-03
2396	Roger Hall	larryburns@example.org	12	2023-12-24
2397	Nicholas Robinson	jacquelineatkins@example.net	3	2025-11-27
2398	Jennifer Barrett	ariascarlos@example.net	5	2023-03-03
2399	Richard Thomas	bsimpson@example.com	7	2025-05-03
2400	Danielle Reed	jennifer58@example.com	1	2024-08-09
2401	Elizabeth Maldonado	donald51@example.com	10	2023-07-07
2402	Katherine Mendez	coxcarol@example.com	6	2023-05-07
2403	John Duran	michaelthomas@example.com	4	2024-05-05
2404	Sarah Phillips	lwilson@example.com	10	2025-08-14
2405	Julia Green	benjaminhall@example.net	7	2025-02-08
2406	Calvin Robinson	russocasey@example.org	3	2024-08-08
2407	Tamara Baird	gmayer@example.com	11	2023-09-20
2408	Robin Hawkins	laura78@example.com	11	2024-07-08
2409	Justin White	edwardsdavid@example.net	2	2023-08-03
2410	Matthew House	timothyshaffer@example.net	9	2023-12-01
2411	Sharon Kelly	rlopez@example.com	6	2023-02-24
2412	Jessica Gray	brittanysanders@example.org	2	2024-06-27
2413	Robert Taylor	pamela64@example.com	9	2025-12-16
2414	Laurie Johnson	rodriguezamanda@example.net	9	2023-02-27
2415	Alan Bullock	frank18@example.net	9	2024-01-08
2416	Summer Jackson	peter88@example.com	13	2024-03-24
2417	Sara Gilbert	caguilar@example.org	9	2024-11-09
2418	Samantha Wu	cynthia95@example.net	9	2024-09-06
2419	Ashley Vargas	douglasalexander@example.net	1	2023-05-19
2420	Mary Bates	wilkinskevin@example.net	7	2024-05-21
2421	Shannon Roach	ruth45@example.org	14	2023-07-25
2422	Christine Crawford	alexandramyers@example.net	8	2025-05-14
2423	Daniel Johnson	karen81@example.org	1	2023-04-25
2424	Victoria Flowers	hillsabrina@example.net	11	2024-09-25
2425	Nancy Williamson	marthagriffin@example.net	7	2023-01-13
2426	Justin Coleman	orichards@example.com	6	2023-02-21
2427	Emily Wagner	webstersteven@example.net	5	2023-04-08
2428	Emily Martinez	vsmith@example.org	12	2023-01-14
2429	Kevin Smith	melissarollins@example.com	1	2023-05-14
2430	Hannah Sanchez	dwilliams@example.net	6	2023-05-28
2431	Rebecca Foley	williamsmark@example.org	13	2024-08-04
2432	Christine Jones	sarah87@example.org	2	2023-11-24
2433	Thomas Miller	william96@example.net	6	2024-02-20
2434	Robert Brown	simsamy@example.com	4	2023-09-26
2435	Dorothy Wade	curtismichelle@example.com	12	2023-04-09
2436	Mr. Gregory Wiley	jamesjohn@example.net	11	2023-09-20
2437	Sara Bartlett	dtucker@example.org	11	2024-11-02
2438	Jennifer Cannon	vortiz@example.org	2	2025-07-25
2439	Jamie Scott	montoyafelicia@example.org	13	2023-11-20
2440	Zachary Murray	cynthia35@example.net	10	2023-02-08
2441	Elizabeth Clayton	hestertabitha@example.org	12	2025-08-13
2442	April Henry	alanthomas@example.com	13	2023-07-26
2443	Scott Brennan	cynthia47@example.org	6	2023-08-17
2444	Leslie Bauer	johnstonbarbara@example.org	3	2024-08-02
2445	Michael Valencia	hudsonglen@example.net	1	2024-04-03
2446	Louis Gibson	monica51@example.net	6	2025-04-16
2447	Erin Goodman	ftaylor@example.org	9	2023-09-17
2448	Alison Faulkner	mccormickkatherine@example.com	6	2024-05-11
2449	Amanda Torres	brittanywolf@example.org	14	2025-04-29
2450	John Pearson	suzanne33@example.org	11	2024-07-09
2451	Joanna Calderon	hallalan@example.org	3	2024-03-19
2452	Trevor Lee	lcosta@example.net	14	2024-11-12
2453	Dennis Jackson	bradshawcarlos@example.org	13	2023-05-20
2454	Bradley Johnson	shannon20@example.com	11	2025-08-02
2455	Anthony Vaughn	cory32@example.com	8	2025-04-09
2456	Sara Day	howelljennifer@example.com	12	2024-02-11
2457	Brianna Christensen	ujohnson@example.net	8	2023-04-19
2458	James Scott	lharris@example.com	11	2024-09-03
2459	Edwin Thomas IV	marisa32@example.com	3	2023-03-27
2460	Lisa Johnson	patrick61@example.net	13	2023-04-20
2461	Adam Payne	kbenson@example.org	3	2024-02-22
2462	Andrew Wheeler	peterlang@example.net	2	2025-10-20
2463	Christina Mullen	smithsteven@example.net	12	2023-05-29
2464	Johnny Taylor	johnsonsteven@example.net	13	2023-12-09
2465	Richard Pena	ethanrodriguez@example.net	8	2024-05-20
2466	Natalie Kennedy	riostyler@example.org	1	2025-06-09
2467	Dawn Berg	julia17@example.org	5	2023-05-12
2468	Wendy Jones	gibsonkirk@example.com	4	2024-09-15
2469	Samantha Malone	melissa22@example.com	1	2023-02-28
2470	Alexis Peterson	rhondanelson@example.org	13	2023-06-07
2471	Taylor Cross	kevin77@example.org	4	2023-06-05
2472	Michael Fisher	leslie32@example.com	1	2024-02-16
2473	Lindsey Evans	wallererica@example.com	6	2024-03-23
2474	Heather Fernandez	reyesdavid@example.org	5	2025-11-04
2475	Troy Herrera	jacksonrussell@example.com	9	2024-09-21
2476	Morgan Lang	jscott@example.com	7	2025-12-23
2477	Kayla Fisher	stevenkidd@example.org	14	2025-05-16
2478	Jesus Johnson	samuelsandoval@example.org	9	2024-07-01
2479	Andrew Carter	christopherturner@example.org	8	2025-12-05
2480	Pamela Mahoney	philliphayden@example.net	5	2024-03-18
2481	Gabriel Hall	william47@example.org	1	2023-05-21
2482	Kenneth Rose	joshua22@example.net	13	2024-07-06
2483	Zachary Gonzalez	vparks@example.org	11	2025-07-25
2484	Gary Johns	aaronsmith@example.net	4	2025-08-06
2485	Eddie Klein	lchavez@example.org	5	2024-07-22
2486	Joseph Tate	martinezdavid@example.org	6	2024-11-01
2487	Sarah Cruz	loritaylor@example.com	14	2023-01-26
2488	Ronald Nunez	nsingh@example.org	13	2023-08-09
2489	Morgan Evans	bendermichelle@example.net	1	2024-03-01
2490	Mrs. Amanda Johnson DDS	gabrielle36@example.org	14	2024-04-10
2491	Dana Griffin	millschristopher@example.org	11	2025-09-01
2492	Jaclyn Green	katherinemccarty@example.com	6	2024-12-26
2493	Mark Ballard	jonesjames@example.org	5	2023-06-14
2494	Jeremy Brooks	justin46@example.com	2	2023-11-01
2495	Anna Pierce	nicole02@example.net	13	2024-04-28
2496	Melissa Hernandez	denisepalmer@example.net	6	2025-04-23
2497	Aaron Woodward	htaylor@example.com	7	2025-10-07
2498	Dennis Nguyen	taylorclarke@example.com	7	2024-07-02
2499	Eric Tapia	maxwellgibson@example.org	12	2024-11-28
2500	Brandon Ingram	andrearivera@example.net	8	2023-11-19
2501	Benjamin Thompson	michael04@example.net	7	2023-05-08
2502	Stephen Brown	jefferybaker@example.com	6	2025-08-06
2503	Justin Boyd	fmiller@example.net	3	2023-01-26
2504	Christina Strong	fjones@example.org	8	2025-08-20
2505	Theresa Espinoza	jimenezruben@example.com	12	2023-02-02
2506	Stephanie Mcintyre	larry04@example.net	8	2023-09-03
2507	Jeremiah Huerta	patrick01@example.net	6	2023-07-14
2508	Jacob Ball	tamaraparker@example.org	13	2023-04-07
2509	Tyrone Miller	knichols@example.com	9	2023-10-12
2510	Beth Ellis	philliphatfield@example.net	5	2025-04-08
2511	Robert Donovan	icisneros@example.com	13	2024-03-05
2512	Lisa Ramos	cphelps@example.net	2	2025-12-13
2513	Marcus Kennedy	batesbelinda@example.net	12	2025-07-26
2514	Jason Cantu	vincent74@example.org	7	2023-08-16
2515	Dillon Clark	parkerrobert@example.net	2	2023-05-18
2516	Theresa Hernandez	krystal64@example.net	7	2025-04-05
2517	Howard Andrews	andreross@example.net	10	2025-03-19
2518	Robert Miranda	lambertcheyenne@example.org	14	2023-10-30
2519	Charles Wright	ohall@example.com	3	2024-08-21
2520	Kathryn Shields	zherrera@example.com	9	2025-01-11
2521	Hannah Garcia	kaiserhunter@example.org	5	2023-10-12
2522	Craig Brady	phamjacob@example.org	6	2025-06-11
2523	Eric Manning	psmith@example.com	2	2023-05-10
2524	Maria Wagner	archerjames@example.org	2	2023-06-05
2525	Kristopher Pierce	millerlindsey@example.org	6	2025-12-30
2526	Thomas Wells	allenkaren@example.com	11	2025-10-24
2527	Julie Pearson	jhenson@example.com	5	2025-03-29
2528	Nicole Williams	corey47@example.net	5	2025-01-18
2529	Adam Martinez	susanpeterson@example.com	8	2023-12-26
2530	Alison Livingston	amills@example.com	10	2024-08-03
2531	Philip Espinoza	arodriguez@example.org	12	2023-05-31
2532	Kayla Maxwell	jdaugherty@example.org	7	2024-04-12
2533	Sherry Chapman	fking@example.org	3	2025-09-05
2534	Dr. Andrew Johns	yoderadam@example.com	12	2024-08-09
2535	Michelle Diaz	steven80@example.org	8	2024-08-21
2536	Sean Lee	jasonfoster@example.org	6	2023-07-05
2537	Jeanette Johnson	wmorrison@example.com	8	2023-06-27
2538	Debbie Estrada	pricescott@example.net	1	2024-08-26
2539	Michael Sanchez	heidi21@example.com	12	2024-01-26
2540	Jason Evans	paulsmith@example.org	14	2023-03-02
2541	William Friedman	patricia24@example.org	6	2023-08-27
2542	Lisa Glenn	keithwyatt@example.net	10	2025-02-08
2543	Eric Rodriguez	zburke@example.org	7	2023-03-14
2544	Darryl Hernandez	rhonda67@example.net	5	2025-06-10
2545	Krista Price	richard33@example.net	11	2024-02-04
2546	Erin Collins	davismark@example.org	13	2025-08-08
2547	Jonathan Green	tracywilkins@example.net	1	2025-08-22
2548	Barbara Kennedy	manuel12@example.net	2	2025-05-12
2549	Susan Rivera	andersonbrittany@example.net	11	2025-04-23
2550	Jack Moore	farmerlisa@example.com	11	2024-06-29
2551	Alicia Phillips	ryan54@example.com	7	2023-06-26
2552	Andrew Brown	johnsonjames@example.net	6	2025-04-26
2553	Robert Fischer	pschmidt@example.org	9	2024-05-22
2554	Cindy Tucker	tiffany80@example.org	13	2024-06-10
2555	Benjamin Turner	janice26@example.org	12	2025-08-31
2556	David Walton	czavala@example.org	11	2023-06-27
2557	Yolanda West	aking@example.com	3	2024-08-30
2558	Daniel Mendoza	heathjasmine@example.com	1	2024-12-15
2559	Tammie Alvarez	michaelmartinez@example.net	3	2023-08-17
2560	Karen Williams	salinaszachary@example.net	14	2024-04-17
2561	Cynthia Brown	kimberly34@example.org	10	2025-12-24
2562	Joseph Flowers	thomaslane@example.net	11	2024-01-15
2563	Linda Cole	kimberly53@example.net	13	2023-04-02
2564	Jerry Doyle	vporter@example.com	8	2024-12-19
2565	Billy Bush	allenkimberly@example.com	1	2023-10-06
2566	Daniel Powell	stanleyclark@example.org	3	2023-06-11
2567	Mason Olson	juarezmary@example.com	2	2025-02-12
2568	Lawrence Novak Jr.	brianphillips@example.net	4	2024-12-14
2569	Dylan Hood	oray@example.org	13	2025-08-24
2570	Sara Moses	clarkmelissa@example.org	11	2024-02-15
2571	Nicole Cooley	davistiffany@example.com	6	2023-07-24
2572	Jon Jones	epayne@example.com	6	2023-07-21
2573	Alicia Robinson	rossjames@example.org	7	2024-05-23
2574	Teresa Carter	jasongutierrez@example.com	10	2025-08-30
2575	Jamie Walker	royscott@example.net	1	2023-07-20
2576	William Moon	fernandezsusan@example.org	10	2023-11-02
2577	Erika Brown	christina98@example.com	3	2025-03-22
2578	Nancy Walker	whaynes@example.com	11	2023-04-30
2579	Caitlin Armstrong	pwalker@example.org	8	2023-07-17
2580	Ruth Brown	chiggins@example.com	6	2023-11-23
2581	Jody Martin	michael39@example.com	6	2024-12-08
2582	Laurie Johnson	wagneramy@example.com	8	2023-10-17
2583	Jon Cox	bmathis@example.org	13	2025-06-12
2584	Miguel Garcia	brookemartin@example.org	2	2023-02-18
2585	Terry Macias	christineramirez@example.net	10	2025-09-17
2586	Danny Roach	susan33@example.org	3	2024-09-18
2587	Hunter Williams	rebecca55@example.org	9	2023-01-08
2588	Courtney Morgan	laura03@example.com	6	2023-05-05
2589	Rhonda Mitchell	cindyfischer@example.org	7	2024-09-28
2590	Samuel Long	brittanyanderson@example.net	6	2023-07-31
2591	Natalie Cooke	daviddecker@example.com	11	2023-01-30
2592	Shawn Brown	karen65@example.net	5	2025-04-04
2593	Anthony Thomas	emorales@example.com	4	2024-10-20
2594	Diana Jones	cruzcaitlin@example.com	2	2024-05-18
2595	Stephanie Peterson	willishenry@example.com	1	2024-12-02
2596	John Hall	qflores@example.net	12	2023-03-25
2597	James Merritt	jacquelinezamora@example.com	3	2024-11-20
2598	Crystal Smith	donnasuarez@example.com	8	2023-05-12
2599	Antonio Martin	brownhayley@example.com	9	2023-12-12
2600	Devin Cortez	craigbowman@example.com	7	2024-01-24
2601	Kelly Alexander	qlittle@example.com	9	2023-09-18
2602	Michael King	ericdavis@example.net	2	2024-10-24
2603	Lori Leonard	garzajill@example.org	5	2023-09-16
2604	Katherine Reynolds	mgallegos@example.org	13	2023-11-28
2605	Leah Andersen	wgomez@example.net	5	2025-08-22
2606	John Daniels	susan40@example.net	12	2025-10-29
2607	Rachel Moss	mariaweaver@example.com	8	2024-01-01
2608	Karen Sullivan	andrewromero@example.com	4	2025-02-04
2609	Peggy Cox	michellewalsh@example.com	10	2024-06-12
2610	Kevin Jackson	geraldkane@example.org	5	2025-03-18
2611	Heather Flynn	tjackson@example.com	12	2025-04-06
2612	Kevin King	debbiedavis@example.org	8	2023-07-08
2613	Donald Roberts	brookefrench@example.net	4	2025-05-18
2614	Christopher Steele	taylorraymond@example.com	2	2025-02-07
2615	Samantha Williams	russell21@example.com	3	2025-10-02
2616	Alicia Hall	williamskathleen@example.net	14	2025-07-04
2617	Curtis Harvey	ethanhuff@example.org	2	2023-08-29
2618	Janet Smith	barnesandrew@example.net	8	2023-04-06
2619	Mr. James Ross	dguerra@example.com	3	2023-06-07
2620	Jeanne Robinson	alex95@example.org	12	2025-12-04
2621	Jeff Wallace	ohopkins@example.net	8	2024-05-22
2622	Dr. Rachel Wilson	justin16@example.com	2	2023-05-02
2623	Brett Bailey	darren37@example.org	13	2023-05-31
2624	Jasmine Cox	wshannon@example.org	11	2024-05-22
2625	Rachel Munoz	cindywilliams@example.com	14	2024-04-07
2626	Kara Garrison	huntscott@example.org	6	2025-08-21
2627	Luis Lopez V	blakejackson@example.net	11	2025-07-04
2628	Raymond Miller	rjackson@example.com	6	2023-08-29
2629	Craig Holloway	shane02@example.com	12	2024-04-14
2630	Jacqueline Perez	robertbradley@example.com	2	2025-08-15
2631	Jose Gross	bryan00@example.net	9	2025-01-23
2632	Gabrielle Blackwell	rharmon@example.org	9	2024-01-07
2633	Cynthia Deleon	conleyantonio@example.org	5	2023-04-11
2634	Michael Williams	omathis@example.com	5	2024-06-06
2635	Jesus Blanchard	joshua70@example.com	14	2025-03-18
2636	Paul Bridges	natalie46@example.com	3	2025-03-07
2637	Nicole Powell	richardsonkenneth@example.net	12	2023-05-24
2638	Joseph Lynch	maysedward@example.com	12	2023-04-06
2639	Ryan Smith	matthew78@example.com	12	2025-10-09
2640	Heidi Mullins	cjohnson@example.org	11	2023-01-23
2641	Thomas Vargas	jasonsanders@example.net	3	2025-02-11
2642	Robert Ruiz	kelleyderek@example.net	13	2024-04-26
2643	Scott Pruitt	kimberly90@example.net	6	2023-07-20
2644	Jessica Robinson	erica06@example.com	9	2024-05-10
2645	Christine Frazier	heathersteele@example.net	4	2025-04-02
2646	Mrs. Sarah Lindsey	melanie49@example.org	2	2025-04-07
2647	Jesus Baker	whubbard@example.org	4	2023-06-02
2648	Nathaniel Johnson	dharris@example.org	13	2024-08-19
2649	Timothy Lowe	wellssherry@example.net	3	2024-03-16
2650	Katrina Gilbert	tracyhoffman@example.com	4	2024-09-28
2651	Patricia Barton	stevenellis@example.org	13	2025-02-08
2652	Elizabeth Baker	kmatthews@example.org	8	2024-08-07
2653	Kimberly Mckay	teresamiller@example.org	1	2023-08-14
2654	William Guzman	ycole@example.net	6	2025-11-14
2655	Sabrina Gonzales	richardsonwendy@example.net	9	2023-07-16
2656	Mrs. Susan Newton MD	lisaterry@example.net	10	2023-06-27
2657	Julie Ryan	aruiz@example.com	6	2025-01-12
2658	Denise Walker	cooperdeanna@example.net	8	2024-11-25
2659	Tammy Garcia	nicole92@example.net	13	2025-08-03
2660	Curtis Cole	wilsonbrian@example.net	9	2024-07-13
2661	Edwin Griffin	harriswilliam@example.net	3	2025-12-06
2662	Sharon Trevino	jmoore@example.net	10	2023-02-04
2663	Krista Curtis	marissa85@example.org	2	2023-07-01
2664	Charles Romero	stephanie27@example.net	2	2024-12-24
2665	Joshua Henderson	ballnicole@example.com	5	2023-10-29
2666	John Myers	grantalyssa@example.org	7	2025-07-29
2667	Anthony Todd	virginiafisher@example.net	12	2023-09-20
2668	Derrick Nguyen	lmccoy@example.net	12	2025-09-13
2669	Miss Sheri Yoder MD	fitzgeraldkenneth@example.net	8	2023-10-05
2670	Christopher Mcdowell	rickysmith@example.org	9	2025-10-15
2671	Daniel Diaz	whiteregina@example.net	7	2025-10-24
2672	Tammy Brown	cbanks@example.org	13	2024-05-09
2673	Dana Flores	bobby53@example.net	7	2023-05-25
2674	Paul Graves	xclarke@example.com	14	2025-04-16
2675	Shelly Wilcox	mary88@example.org	10	2025-01-14
2676	Laura Bolton	aprilhill@example.net	2	2023-05-11
2677	Craig Martinez	zjohnson@example.com	3	2024-03-14
2678	Kendra Campbell	andersonbonnie@example.net	6	2024-10-23
2679	Savannah Estrada	denniswilliams@example.com	11	2025-06-13
2680	Cathy Ali	alexbutler@example.org	2	2023-07-23
2681	Laura Russell	patriciabennett@example.net	8	2025-11-24
2682	Mary Moore	jasonwalton@example.net	8	2025-09-22
2683	Kristi Marshall	lhayes@example.com	11	2024-06-06
2684	Eric Wright	brandonmeza@example.com	9	2025-09-30
2685	Anna Gonzalez	theresagreene@example.org	6	2025-09-07
2686	Allen Prince	kenneth76@example.org	3	2025-12-21
2687	Terri Frye	joyce30@example.com	14	2025-07-08
2688	Claudia Wilson	zacharyandrews@example.com	13	2025-03-11
2689	Kimberly Anderson	qnewman@example.com	9	2023-06-16
2690	Mary Terry	regina59@example.net	11	2023-11-22
2691	Clayton Rogers	anthonyrandolph@example.com	10	2024-12-11
2692	Ashley Harding	kmartinez@example.net	3	2024-04-13
2693	Amanda Huerta	richard20@example.org	13	2025-10-05
2694	Mark Smith	hortiz@example.com	3	2024-06-02
2695	Brittany Duran	melissa04@example.org	7	2024-09-18
2696	David Page	jeremiah13@example.com	9	2025-05-20
2697	Jared Smith	mhenry@example.net	14	2024-12-24
2698	Wesley Brown MD	tammythomas@example.com	1	2023-07-05
2699	Lauren Bowen	zacharylee@example.com	14	2025-07-01
2700	Clinton Carter	joshua74@example.net	2	2023-02-14
2701	Katherine Johnson	xcline@example.org	9	2024-10-28
2702	Wayne Smith	egutierrez@example.net	3	2023-12-12
2703	Andrew Ellison	christopher32@example.net	5	2023-03-20
2704	Guy Lee	benjamin18@example.com	3	2024-10-11
2705	Joshua Miller	morrismary@example.com	3	2024-07-11
2706	Jenna Diaz	weeksbrandon@example.com	6	2023-10-25
2707	Dustin Matthews	loveluis@example.com	12	2025-06-18
2708	Albert Juarez	gregorybrock@example.org	4	2023-05-09
2709	Jennifer Martin	allennathan@example.net	6	2025-01-15
2710	Diana Stanton	kelleramanda@example.org	9	2024-08-30
2711	Lawrence Morgan	bcampbell@example.net	5	2023-06-15
2712	Miranda Cooper	danderson@example.org	14	2024-10-19
2713	Dennis Smith	gillmary@example.com	2	2024-10-24
2714	Lisa Webb	carlsonblake@example.net	5	2023-02-16
2715	Lisa Fernandez	michelle11@example.org	4	2025-02-22
2716	Rita Gray	rogersjoshua@example.com	11	2025-01-15
2717	Robert Allen	rodriguezdiana@example.org	9	2024-09-06
2718	Michael Huerta	andrewperez@example.com	5	2023-11-20
2719	Trevor Cox	kenneth08@example.net	3	2025-01-12
2720	Tamara Woodard	wallacebryan@example.com	11	2025-09-03
2721	Laura Daniel	robert76@example.com	5	2025-03-27
2722	David Warner	xlivingston@example.org	10	2023-05-25
2723	James Singh	allen57@example.net	9	2025-12-04
2724	Terry Black	riveralisa@example.com	2	2025-09-20
2725	David Calderon	bradley81@example.net	9	2023-09-16
2726	Adam Gardner	smithjavier@example.org	11	2024-11-24
2727	Amy Yang DDS	michaeljohnson@example.com	3	2024-10-10
2728	Pamela Stevens	ashley95@example.org	10	2024-01-07
2729	Samantha Costa	williamsjennifer@example.com	10	2025-07-27
2730	Julie Stark	qmichael@example.com	3	2023-02-17
2731	Mark Crane	floresjulie@example.net	3	2023-10-10
2732	Gary Palmer	grantcrystal@example.org	11	2023-11-05
2733	Hannah Bell	justincombs@example.com	10	2025-02-25
2734	Jared Camacho	edward79@example.com	12	2025-04-14
2735	Jamie Young	agarcia@example.org	10	2023-02-27
2736	Jermaine Phillips	katherinewinters@example.com	6	2023-12-06
2737	Robert Brown	anthony53@example.net	14	2023-01-18
2738	Michael Walters	hendersonlisa@example.com	10	2023-01-05
2739	Jeremiah Brown	haroldturner@example.org	1	2024-04-08
2740	Jeremy Baker	uschmitt@example.net	14	2023-09-26
2741	Robert Benson	usilva@example.net	14	2024-02-05
2742	Nancy Blake	vgraham@example.com	1	2024-05-18
2743	Daniel Rivera	spencerjames@example.com	2	2025-07-17
2744	Mark Hansen MD	brookstaylor@example.org	1	2025-02-20
2745	Melissa Abbott PhD	weaverjohn@example.org	11	2025-11-28
2746	Cody Johnson	ryan33@example.org	13	2025-06-01
2747	Michael Hale	kristianderson@example.net	10	2025-07-20
2748	David Lopez	marcohines@example.com	5	2025-12-29
2749	Julia Williamson	jonathangonzales@example.org	11	2025-10-20
2750	Courtney Nichols	denise02@example.org	4	2024-11-12
2751	Brandon Barker	brownchristina@example.org	13	2025-01-21
2752	Douglas Taylor	troy19@example.net	10	2025-04-13
2753	Alexa Chambers	lori15@example.com	7	2024-07-29
2754	James Melendez	kmorris@example.net	10	2025-01-25
2755	Juan Walker	smithmarisa@example.com	11	2024-10-29
2756	Christopher Ayala	uhaney@example.org	1	2025-12-14
2757	John Robinson DVM	gtanner@example.net	8	2025-09-27
2758	Jennifer Evans	clarkmichael@example.org	11	2025-11-17
2759	Lucas Jackson	derek41@example.net	9	2024-02-19
2760	Raven Evans	andersontyler@example.org	5	2025-06-21
2761	Kara Blake	ronniefisher@example.com	11	2025-01-09
2762	Timothy Greer	cameronjohn@example.com	5	2024-09-15
2763	Vickie Walters	yware@example.com	8	2023-07-29
2764	Diane West	brooke93@example.org	4	2025-11-01
2765	Kevin Carrillo	igoodman@example.net	13	2024-07-26
2766	Rachel Scott DVM	vjohnson@example.net	13	2023-11-01
2767	Alexis Campbell	douglasbutler@example.com	11	2025-08-31
2768	Patrick Hester	patricia12@example.org	7	2023-11-21
2769	Michele Gilmore	guerrerorenee@example.com	5	2023-06-21
2770	Gina King	lyonsian@example.com	8	2024-11-05
2771	Tamara Martin	lisastanton@example.net	2	2024-04-23
2772	Elizabeth Serrano	matthewespinoza@example.net	12	2025-09-29
2773	Ryan Schroeder MD	jamiefox@example.net	1	2024-07-05
2774	Matthew Kaufman	carlos80@example.com	3	2024-12-11
2775	Mrs. Miranda Johnston	richard79@example.net	8	2025-02-02
2776	Denise Johnson	zachary79@example.com	7	2024-08-10
2777	Cheryl Gregory	tashachase@example.com	8	2024-09-13
2778	Bryan Franco	berrydonald@example.org	8	2023-06-18
2779	Brett Morris	jessica86@example.com	4	2024-02-25
2780	Kelly Ross	karen57@example.com	6	2023-12-28
2781	Dawn Jordan	smithpaul@example.com	10	2023-04-20
2782	Jennifer Schmidt	kellybrown@example.org	3	2024-01-05
2783	Frederick Moore	michelle41@example.net	6	2024-03-30
2784	Edward Thomas	jamesrussell@example.net	14	2024-10-06
2785	Reginald Copeland	ucamacho@example.org	12	2025-12-28
2786	Jennifer Williams	lisa42@example.org	6	2024-05-10
2787	Christopher Salinas	anthonyfranklin@example.com	12	2024-07-15
2788	Michael Smith	mlittle@example.com	14	2025-03-28
2789	Tamara Woodard	rtaylor@example.com	6	2024-10-15
2790	Ashley Cox	alisha45@example.org	7	2025-12-20
2791	Randy Walton	gevans@example.org	3	2024-05-23
2792	Mr. Daniel King Jr.	breanna80@example.org	13	2024-09-19
2793	Christopher Jensen	dylan03@example.org	6	2024-12-21
2794	Vanessa Taylor	cheryl07@example.org	9	2024-01-23
2795	Darren Elliott	eortega@example.com	9	2025-07-13
2796	Leonard Sosa	douglascarl@example.com	2	2024-08-06
2797	Melissa Griffith MD	maryflores@example.net	6	2025-03-18
2798	Jose Pace	duncanerik@example.net	4	2024-07-23
2799	Steven Johnson	stephenroberson@example.com	8	2025-04-19
2800	Samuel Ramos	cruzhunter@example.net	2	2025-10-13
2801	Suzanne Miller	holdenalyssa@example.org	5	2023-08-22
2802	Elizabeth Thomas	vmorrow@example.net	8	2024-05-28
2803	Linda Johnson	preilly@example.org	4	2023-12-09
2804	Matthew Wilson	hoopernicole@example.org	3	2024-05-18
2805	Amy Erickson	rstewart@example.net	2	2024-05-31
2806	Amy Oneal	lisa79@example.com	1	2024-08-16
2807	Richard Fisher	lee98@example.org	5	2025-02-09
2808	Kimberly Weber	cameronkaitlyn@example.com	7	2025-12-18
2809	Austin Snyder	grantkevin@example.net	14	2024-07-17
2810	Lori Jackson	williampierce@example.com	10	2025-12-17
2811	Shannon Chung	jross@example.org	7	2024-03-26
2812	Catherine Walls	chenmatthew@example.org	4	2024-10-12
2813	Ariel Hebert	yboone@example.org	14	2024-08-22
2814	Robert Banks	zsmith@example.com	3	2024-07-13
2815	Linda Marks	gibsondavid@example.com	14	2025-02-22
2816	Brianna Tran	jeffreywhitehead@example.net	6	2025-05-03
2817	Mary Lawson	pmorse@example.net	10	2024-12-26
2818	Garrett Dixon	yatkins@example.net	12	2023-12-13
2819	Cheryl Gomez MD	vramos@example.org	6	2025-08-05
2820	Mary Hobbs	morrismatthew@example.org	4	2025-04-18
2821	Jessica Stein	david18@example.com	13	2025-01-16
2822	Nancy Black	jose45@example.net	3	2024-11-07
2823	Billy Brown	ptapia@example.net	8	2024-08-11
2824	Darrell Wong	melissa36@example.net	9	2023-04-23
2825	Mark Long	manningbrandi@example.com	8	2025-12-20
2826	Jeremy Brown	jessebeltran@example.net	8	2025-08-19
2827	Edgar Jenkins	sandrews@example.org	5	2023-10-20
2828	Sabrina Henderson DVM	lisa16@example.org	8	2025-09-28
2829	Karen Chang	mistykelly@example.com	1	2025-10-23
2830	Caitlin Kent	elainehall@example.net	2	2024-02-05
2831	Natalie Page	annettedavis@example.net	7	2024-03-06
2832	Elizabeth Martin	jeremyevans@example.com	9	2024-02-08
2833	Andrea Reed	amanda96@example.com	8	2025-07-24
2834	Daniel Carter	tbradford@example.com	4	2023-01-27
2835	Haley Chen	amy17@example.com	4	2024-03-01
2836	Lisa Coleman	asmith@example.org	10	2025-03-22
2837	Matthew Sullivan	brewersherri@example.org	6	2025-09-09
2838	Sara Contreras	dhale@example.net	1	2023-09-07
2839	Christina Tucker	vroberts@example.org	1	2024-10-08
2840	Beth Sullivan	tashatownsend@example.org	5	2024-10-09
2841	Samuel Bailey	andrewsdebbie@example.com	8	2025-06-08
2842	Justin Lopez	hchavez@example.net	10	2025-02-13
2843	Jennifer Cisneros MD	julie34@example.org	14	2025-03-28
2844	Brandy Sweeney	dennishale@example.org	11	2025-06-07
2845	Amanda Yoder	jessicastanton@example.net	11	2023-10-22
2846	Hunter Yang	wellsshaun@example.org	8	2023-08-30
2847	Desiree Powell	kelly92@example.org	5	2023-12-25
2848	Amy Torres	bvelez@example.com	9	2023-09-26
2849	Robin Rodriguez	wsanchez@example.org	1	2023-06-03
2850	Kevin Christensen	oenglish@example.com	14	2024-02-20
2851	Margaret Tucker	qbennett@example.org	2	2024-01-25
2852	Daniel Garrison	aaron25@example.com	7	2023-11-24
2853	Christine Zuniga	kimberly48@example.com	3	2023-03-11
2854	Thomas Perez	turnerkari@example.org	5	2024-06-10
2855	Desiree Simon	brookstimothy@example.net	12	2023-03-14
2856	Brandon Green	dfox@example.net	6	2025-06-27
2857	Cesar Watts	alexis54@example.org	13	2025-06-21
2858	Jessica Palmer	halelinda@example.net	7	2024-04-27
2859	Michael Castillo	christopherharris@example.org	6	2023-02-26
2860	Danielle Hamilton	gjackson@example.org	1	2023-12-22
2861	Kimberly Davis	umccoy@example.com	7	2024-06-16
2862	Jesse Brown	thomasronald@example.net	1	2023-11-26
2863	Robert Jones	harold30@example.com	10	2024-12-19
2864	Anthony Haley	psawyer@example.net	9	2023-02-06
2865	Alicia Nguyen	garyyang@example.org	4	2025-10-28
2866	Jamie Castillo	edwardsjonathan@example.net	6	2023-11-13
2867	Brandon Heath	norozco@example.net	9	2024-10-06
2868	Samuel Ramirez	esparzajesse@example.net	5	2024-07-22
2869	Amber Gray	daviselizabeth@example.net	2	2023-05-23
2870	Ashley Clark	jason91@example.org	7	2025-04-09
2871	Christopher Gray	hoganeric@example.net	9	2023-09-07
2872	Scott Shelton	david42@example.net	8	2024-10-16
2873	Elizabeth Ramos	thompsonbrandy@example.com	13	2024-03-13
2874	Patrick Blair	john77@example.net	9	2024-04-15
2875	Destiny Berry	gregory73@example.com	5	2025-09-17
2876	Felicia Thompson	zholden@example.com	14	2024-03-19
2877	Andrea Freeman	xhorne@example.org	10	2025-06-10
2878	Lisa Butler	daniel75@example.org	11	2025-08-13
2879	Melissa Moore	rwaters@example.com	10	2023-09-30
2880	David Clark	omartinez@example.net	2	2024-04-20
2881	David Roberts	lsnyder@example.org	3	2024-08-26
2882	Brad Davidson	vtapia@example.net	2	2023-11-23
2883	Devon Bentley	robert58@example.net	7	2024-08-22
2884	Allison Glover	jcross@example.com	6	2024-04-14
2885	Cynthia Franklin	perrymichael@example.org	13	2024-09-11
2886	Ashley Prince	heatherdavis@example.org	6	2025-01-07
2887	Kara Gray	xvazquez@example.org	9	2023-01-26
2888	Louis Olsen	petersdonald@example.net	6	2025-10-29
2889	Carlos Martinez	raymond39@example.com	13	2023-10-29
2890	Clinton Day	kaitlynfrey@example.net	3	2025-05-07
2891	Elizabeth Christensen	sallylee@example.org	4	2023-06-30
2892	Lauren Drake	alexander69@example.com	10	2024-05-18
2893	Wendy Rodriguez	ypark@example.net	9	2024-07-07
2894	Marc Hayes	jenkinspamela@example.org	7	2023-11-16
2895	Brian Garcia	wrodriguez@example.net	9	2023-08-28
2896	Nathan Bradley	jessica01@example.org	1	2023-01-31
2897	Dillon Alvarez	qwhitaker@example.org	1	2023-09-05
2898	Robert Campbell	christopher01@example.com	1	2025-11-13
2899	Benjamin King	garciaalex@example.com	3	2024-06-24
2900	Mary Miller	williamslarry@example.org	12	2024-09-25
2901	Joseph Rivas	hcastaneda@example.com	6	2025-09-05
2902	Dr. Andrea Oliver MD	drew34@example.net	13	2025-09-29
2903	Elizabeth Green	wendyclark@example.org	8	2025-09-07
2904	John Joyce	tuckersheila@example.net	9	2023-03-23
2905	Janet Miller	sgarcia@example.org	8	2023-04-20
2906	Shawn Patton	aguilarkyle@example.org	3	2025-05-15
2907	John Dillon	tarameyer@example.net	10	2025-12-27
2908	Casey Ferguson	logan71@example.net	9	2023-04-07
2909	Samuel Richardson	bphillips@example.org	3	2023-08-22
2910	Richard Miller	hturner@example.net	6	2024-10-24
2911	Kenneth Mitchell	darlenewilson@example.com	10	2025-12-15
2912	David Mora	martinjenkins@example.net	6	2025-08-18
2913	Jasmine Russell	lisa52@example.com	3	2024-04-19
2914	Nancy Barry	taylormichael@example.com	7	2023-07-12
2915	Michael Silva	abigail56@example.com	10	2025-02-28
2916	Vicki Harper	johnsondaniel@example.net	12	2024-10-23
2917	Jerry Crosby	xclark@example.net	14	2025-02-06
2918	William West	bryantpeter@example.org	5	2023-11-21
2919	Jacob Green	alvarezelizabeth@example.org	10	2025-04-12
2920	Dr. Ashley Walker DVM	ahicks@example.org	6	2023-11-18
2921	Kayla Strickland	mcdowelladam@example.net	9	2023-10-13
2922	Joshua Brown	vanessa17@example.org	14	2025-12-09
2923	Jason Lee	martinezmolly@example.net	9	2024-08-10
2924	Juan White	justinherrera@example.com	9	2023-06-26
2925	Corey Cooke	anthony41@example.org	8	2023-12-24
2926	Jodi Lang	nathancasey@example.net	12	2025-03-06
2927	Michael Mckenzie	james72@example.org	10	2023-05-07
2928	Bonnie Petersen	oroberts@example.net	5	2025-04-18
2929	John Hooper	bwarren@example.org	8	2025-10-21
2930	Benjamin Jacobson	howellrenee@example.net	14	2025-10-11
2931	Billy Cook	kristindixon@example.org	1	2025-10-29
2932	John Ortiz	oroberts@example.org	6	2025-10-15
2933	Martin Craig	andrewwalker@example.com	6	2024-08-25
2934	Maria Donaldson	stevenrichards@example.org	11	2024-06-29
2935	Rodney Oliver	pking@example.net	2	2025-01-01
2936	Emma Rivera	susan75@example.net	7	2024-03-16
2937	Alisha Malone	barbaradoyle@example.com	10	2024-09-18
2938	Mark Norris	patricia89@example.net	5	2024-10-22
2939	Nicholas Price	ostevens@example.com	13	2024-04-14
2940	Steven Miller	douglas61@example.org	12	2025-04-07
2941	Elizabeth Nolan	taylorjeffrey@example.org	14	2024-04-02
2942	Nathan Gilbert	daniellesweeney@example.com	12	2024-07-14
2943	Ryan Heath	marcuswalter@example.org	11	2023-10-22
2944	Cynthia Taylor	grant48@example.org	1	2024-08-04
2945	Jesse Martinez	cortezmatthew@example.com	10	2025-04-19
2946	George Ellis	cruzmary@example.net	8	2024-10-19
2947	Donald Wood	allenkathryn@example.org	5	2025-06-04
2948	Gail Greene	howard31@example.com	11	2024-12-20
2949	Brenda Hughes	ramirezrhonda@example.org	13	2024-12-01
2950	Taylor Vaughn	ramoscory@example.com	13	2024-10-24
2951	Sandra Johnson	russellamber@example.org	10	2025-11-07
2952	David Thompson	nreyes@example.com	10	2025-09-18
2953	Jennifer Andersen	karen31@example.org	4	2025-07-28
2954	Elizabeth Deleon	adrian20@example.com	12	2024-10-04
2955	Ashley Allen	jasonmontgomery@example.com	1	2023-04-15
2956	Antonio Brown	whitebonnie@example.com	10	2024-10-23
2957	Clinton Peterson	holly18@example.net	8	2024-04-16
2958	Ellen Acosta	jeremymitchell@example.com	3	2024-02-08
2959	Breanna Young	dcurtis@example.com	9	2025-03-07
2960	Angela Rivera	scott43@example.com	11	2025-09-30
2961	Lisa Landry	james91@example.org	12	2023-01-15
2962	Jessica Fisher	wmorgan@example.org	10	2025-01-03
2963	Olivia Jones	bowersethan@example.org	13	2024-12-22
2964	Karen Brown	roblescolleen@example.org	14	2025-06-18
2965	Brian Mendoza	ojohnson@example.com	7	2023-05-25
2966	David Hernandez	wmartinez@example.net	3	2024-11-23
2967	Jamie Reid	deborah56@example.org	14	2023-06-20
2968	Dustin Hernandez	james00@example.net	11	2025-09-25
2969	Patricia Sanchez	morganwarner@example.org	4	2023-09-26
2970	Gregory Hopkins	njames@example.org	1	2023-08-15
2971	Kimberly Scott	mhopkins@example.net	10	2025-11-29
2972	Benjamin Duke	samanthataylor@example.org	12	2024-06-28
2973	Seth Olsen	frank66@example.com	2	2023-04-18
2974	Ricky Robinson	bryce27@example.org	4	2023-07-21
2975	Gregory Rivers	tracydavenport@example.net	1	2025-12-23
2976	Jasmin Harrison	cgreen@example.net	8	2024-03-05
2977	Christopher Olsen	jean10@example.com	6	2023-11-18
2978	Aaron Gutierrez	tarabarnes@example.com	7	2024-03-21
2979	Brian Cardenas	clinekatie@example.com	3	2024-08-07
2980	Cassie Duffy	jacqueline97@example.net	7	2025-08-17
2981	Shawn Delacruz	andersondaniel@example.com	12	2025-05-01
2982	Stephanie Lopez	kellysnyder@example.net	4	2025-08-09
2983	Sarah Barnett	mitchellmichael@example.com	7	2025-12-13
2984	Shawn Brooks	helen07@example.org	9	2025-03-02
2985	Kendra Davis	jpeters@example.org	13	2023-08-11
2986	Shirley Steele	levi67@example.com	10	2023-07-31
2987	James Russell	emilyallison@example.net	8	2025-04-18
2988	Austin Taylor	anthonyavery@example.org	14	2024-04-11
2989	Kelly Gordon	david48@example.org	14	2025-09-03
2990	Jenny Hayes	yjohnson@example.net	12	2023-08-13
2991	Kimberly Sullivan	terrypatrick@example.com	12	2023-07-02
2992	Thomas Macdonald	andrewgalloway@example.com	1	2024-12-01
2993	Amber Camacho	josewood@example.org	12	2023-11-03
2994	Jacqueline Summers	jonesrachel@example.com	3	2025-09-21
2995	Richard Schmidt	fernandezbrandon@example.net	9	2024-03-04
2996	Nicole Moss	jonathan10@example.com	4	2025-03-14
2997	Gregory Cruz	charles35@example.org	9	2023-03-09
2998	Denise Brewer	ucollins@example.com	6	2024-07-26
2999	Marcus Smith	ublack@example.com	11	2024-07-07
3000	Ryan Hayes	barry90@example.org	8	2023-11-05
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: analyst; Owner: -
--

COPY analyst.orders (order_id, customer_id, order_date, status) FROM stdin;
1	758	2023-02-13	completed
2	1014	2023-02-08	completed
3	1034	2023-02-16	completed
4	1076	2023-02-18	completed
5	1162	2023-02-26	completed
6	1331	2023-02-15	completed
7	1343	2023-02-15	completed
8	1410	2023-02-23	completed
9	1504	2023-02-23	completed
10	1667	2023-02-26	cancelled
11	1800	2023-02-01	completed
12	2083	2023-02-24	completed
13	2102	2023-02-04	completed
14	2130	2023-02-20	completed
15	2138	2023-02-13	completed
16	2385	2023-02-21	completed
17	2425	2023-02-02	completed
18	2503	2023-02-07	cancelled
19	362	2023-03-24	completed
20	689	2023-03-28	completed
21	703	2023-03-09	completed
22	843	2023-03-15	completed
23	1213	2023-03-05	completed
24	1227	2023-03-27	completed
25	1323	2023-03-26	completed
26	1331	2023-03-12	completed
27	1343	2023-03-15	completed
28	1540	2023-03-09	completed
29	1611	2023-03-13	completed
30	1611	2023-03-10	completed
31	1825	2023-03-16	completed
32	2070	2023-03-08	completed
33	2085	2023-03-24	completed
34	2102	2023-03-23	completed
35	2161	2023-03-09	completed
36	2425	2023-03-04	completed
37	76	2023-04-10	completed
38	206	2023-04-28	completed
39	377	2023-04-14	completed
40	475	2023-04-09	completed
41	681	2023-04-26	completed
42	685	2023-04-09	completed
43	741	2023-04-07	completed
44	758	2023-04-27	completed
45	763	2023-04-10	completed
46	770	2023-04-15	completed
47	787	2023-04-25	completed
48	798	2023-04-29	completed
49	811	2023-04-01	completed
50	864	2023-04-09	completed
51	941	2023-04-20	completed
52	973	2023-04-19	completed
53	992	2023-04-23	refunded
54	1007	2023-04-11	completed
55	1076	2023-04-24	completed
56	1143	2023-04-02	completed
57	1295	2023-04-08	completed
58	1384	2023-04-05	completed
59	1424	2023-04-25	completed
60	1448	2023-04-25	completed
61	1535	2023-04-12	completed
62	1540	2023-04-15	completed
63	1588	2023-04-30	completed
64	1652	2023-04-06	completed
65	1697	2023-04-20	completed
66	1750	2023-04-23	completed
67	1795	2023-04-09	cancelled
68	1800	2023-04-08	completed
69	1825	2023-04-27	completed
70	1863	2023-04-11	completed
71	1879	2023-04-23	completed
72	1882	2023-04-05	completed
73	2021	2023-04-30	completed
74	2085	2023-04-23	cancelled
75	2104	2023-04-28	completed
76	2153	2023-04-07	completed
77	2160	2023-04-03	completed
78	2160	2023-04-29	completed
79	2182	2023-04-04	completed
80	2250	2023-04-23	cancelled
81	2266	2023-04-22	completed
82	2276	2023-04-19	completed
83	2459	2023-04-09	completed
84	2640	2023-04-30	completed
85	2853	2023-04-12	completed
86	47	2023-05-25	completed
87	145	2023-05-22	completed
88	216	2023-05-29	cancelled
89	468	2023-05-21	completed
90	480	2023-05-06	completed
91	583	2023-05-25	completed
92	628	2023-05-24	completed
93	628	2023-05-14	completed
94	647	2023-05-05	completed
95	702	2023-05-27	refunded
96	864	2023-05-04	completed
97	916	2023-05-29	cancelled
98	992	2023-05-15	completed
99	994	2023-05-16	completed
100	1014	2023-05-17	completed
101	1082	2023-05-06	completed
102	1180	2023-05-21	refunded
103	1220	2023-05-15	completed
104	1261	2023-05-05	completed
105	1264	2023-05-22	completed
106	1347	2023-05-20	completed
107	1369	2023-05-23	completed
108	1424	2023-05-16	completed
109	1464	2023-05-26	completed
110	1546	2023-05-20	completed
111	1652	2023-05-09	refunded
112	1737	2023-05-14	completed
113	1752	2023-05-15	completed
114	1830	2023-05-22	completed
115	1922	2023-05-11	cancelled
116	1941	2023-05-30	completed
117	1944	2023-05-02	completed
118	1957	2023-05-15	completed
119	2044	2023-05-24	completed
120	2102	2023-05-24	completed
121	2130	2023-05-26	completed
122	2153	2023-05-03	completed
123	2160	2023-05-01	completed
124	2161	2023-05-01	completed
125	2174	2023-05-02	completed
126	2288	2023-05-03	completed
127	2363	2023-05-19	completed
128	2379	2023-05-30	completed
129	2503	2023-05-28	completed
130	2578	2023-05-08	completed
131	2596	2023-05-18	completed
132	2700	2023-05-19	completed
133	2781	2023-05-04	completed
134	2824	2023-05-21	refunded
135	2908	2023-05-06	completed
136	2961	2023-05-01	completed
137	12	2023-06-30	completed
138	16	2023-06-17	completed
139	119	2023-06-03	completed
140	142	2023-06-08	completed
141	233	2023-06-30	completed
142	304	2023-06-19	completed
143	455	2023-06-05	completed
144	470	2023-06-28	completed
145	479	2023-06-15	completed
146	562	2023-06-08	completed
147	567	2023-06-09	completed
148	572	2023-06-29	completed
149	587	2023-06-30	completed
150	647	2023-06-14	completed
151	752	2023-06-17	completed
152	778	2023-06-01	completed
153	782	2023-06-07	completed
154	782	2023-06-02	completed
155	843	2023-06-07	completed
156	869	2023-06-01	completed
157	881	2023-06-05	completed
158	951	2023-06-16	completed
159	976	2023-06-10	completed
160	992	2023-06-27	completed
161	1007	2023-06-27	completed
162	1014	2023-06-07	completed
163	1045	2023-06-10	completed
164	1133	2023-06-12	completed
165	1228	2023-06-23	completed
166	1245	2023-06-19	completed
167	1331	2023-06-25	completed
168	1333	2023-06-05	completed
169	1347	2023-06-18	completed
170	1381	2023-06-12	completed
171	1422	2023-06-03	completed
172	1424	2023-06-04	completed
173	1535	2023-06-23	completed
174	1566	2023-06-21	completed
175	1591	2023-06-17	completed
176	1618	2023-06-13	completed
177	1636	2023-06-22	completed
178	1676	2023-06-25	completed
179	1697	2023-06-14	completed
180	1748	2023-06-25	completed
181	1752	2023-06-14	completed
182	1823	2023-06-17	completed
183	1829	2023-06-15	completed
184	1876	2023-06-21	completed
185	1881	2023-06-24	completed
186	1922	2023-06-07	refunded
187	1957	2023-06-08	completed
188	2037	2023-06-06	completed
189	2050	2023-06-12	completed
190	2056	2023-06-09	completed
191	2070	2023-06-20	completed
192	2083	2023-06-26	completed
193	2122	2023-06-18	completed
194	2153	2023-06-05	completed
195	2190	2023-06-21	completed
196	2203	2023-06-16	completed
197	2229	2023-06-17	completed
198	2243	2023-06-15	completed
199	2297	2023-06-20	completed
200	2363	2023-06-29	completed
201	2430	2023-06-30	completed
202	2457	2023-06-09	completed
203	2503	2023-06-03	completed
204	2563	2023-06-19	completed
205	2578	2023-06-10	completed
206	2588	2023-06-05	completed
207	2623	2023-06-17	completed
208	2623	2023-06-02	refunded
209	2703	2023-06-22	completed
210	2722	2023-06-26	completed
211	2738	2023-06-24	completed
212	2855	2023-06-03	completed
213	10	2023-07-05	completed
214	12	2023-07-06	completed
215	63	2023-07-13	completed
216	64	2023-07-15	completed
217	162	2023-07-03	refunded
218	162	2023-07-08	completed
219	202	2023-07-05	completed
220	231	2023-07-07	completed
221	261	2023-07-19	completed
222	279	2023-07-13	completed
223	300	2023-07-31	completed
224	359	2023-07-24	completed
225	360	2023-07-10	completed
226	378	2023-07-30	completed
227	384	2023-07-04	completed
228	416	2023-07-14	completed
229	432	2023-07-01	refunded
230	446	2023-07-09	completed
231	468	2023-07-04	completed
232	479	2023-07-05	completed
233	480	2023-07-30	completed
234	599	2023-07-28	completed
235	618	2023-07-15	completed
236	620	2023-07-14	completed
237	628	2023-07-16	completed
238	631	2023-07-28	completed
239	641	2023-07-25	completed
240	647	2023-07-31	completed
241	675	2023-07-25	completed
242	676	2023-07-24	completed
243	681	2023-07-18	completed
244	701	2023-07-15	completed
245	702	2023-07-06	completed
246	703	2023-07-07	completed
247	777	2023-07-06	completed
248	778	2023-07-31	completed
249	787	2023-07-02	completed
250	818	2023-07-11	completed
251	858	2023-07-04	completed
252	869	2023-07-22	completed
253	893	2023-07-13	completed
254	902	2023-07-15	completed
255	905	2023-07-16	completed
256	916	2023-07-13	completed
257	933	2023-07-21	completed
258	1007	2023-07-19	cancelled
259	1014	2023-07-21	completed
260	1017	2023-07-27	completed
261	1133	2023-07-01	completed
262	1139	2023-07-23	completed
263	1153	2023-07-16	completed
264	1153	2023-07-04	completed
265	1170	2023-07-31	completed
266	1193	2023-07-30	completed
267	1198	2023-07-05	completed
268	1245	2023-07-16	completed
269	1254	2023-07-13	completed
270	1264	2023-07-24	completed
271	1289	2023-07-27	cancelled
272	1336	2023-07-14	completed
273	1347	2023-07-22	completed
274	1384	2023-07-09	completed
275	1387	2023-07-26	completed
276	1456	2023-07-11	completed
277	1464	2023-07-11	completed
278	1540	2023-07-17	completed
279	1640	2023-07-15	completed
280	1652	2023-07-14	completed
281	1697	2023-07-05	refunded
282	1715	2023-07-28	cancelled
283	1722	2023-07-19	completed
284	1737	2023-07-09	completed
285	1756	2023-07-12	completed
286	1825	2023-07-28	completed
287	1882	2023-07-16	completed
288	1957	2023-07-10	completed
289	2161	2023-07-31	completed
290	2174	2023-07-07	completed
291	2190	2023-07-08	completed
292	2191	2023-07-23	completed
293	2195	2023-07-02	completed
294	2220	2023-07-20	completed
295	2250	2023-07-17	completed
296	2317	2023-07-22	completed
297	2355	2023-07-23	completed
298	2419	2023-07-22	completed
299	2425	2023-07-27	completed
300	2440	2023-07-11	completed
301	2460	2023-07-27	completed
302	2469	2023-07-12	completed
303	2471	2023-07-21	completed
304	2578	2023-07-15	completed
305	2640	2023-07-01	completed
306	2711	2023-07-04	completed
307	2711	2023-07-16	completed
308	2778	2023-07-21	completed
309	2778	2023-07-19	completed
310	2834	2023-07-07	completed
311	2853	2023-07-23	completed
312	2855	2023-07-06	completed
313	2904	2023-07-18	completed
314	2961	2023-07-20	completed
315	2997	2023-07-15	completed
316	10	2023-08-16	completed
317	12	2023-08-30	completed
318	32	2023-08-05	completed
319	74	2023-08-17	completed
320	142	2023-08-13	completed
321	162	2023-08-12	completed
322	289	2023-08-27	completed
323	296	2023-08-13	completed
324	354	2023-08-18	completed
325	360	2023-08-12	completed
326	377	2023-08-28	cancelled
327	378	2023-08-21	completed
328	387	2023-08-15	completed
329	392	2023-08-06	completed
330	437	2023-08-13	completed
331	446	2023-08-22	completed
332	452	2023-08-20	completed
333	496	2023-08-07	completed
334	560	2023-08-27	completed
335	579	2023-08-18	completed
336	618	2023-08-21	completed
337	620	2023-08-13	completed
338	662	2023-08-23	completed
339	702	2023-08-03	completed
340	736	2023-08-14	completed
341	758	2023-08-03	completed
342	777	2023-08-01	completed
343	778	2023-08-11	completed
344	800	2023-08-02	completed
345	818	2023-08-19	completed
346	893	2023-08-14	completed
347	894	2023-08-27	completed
348	908	2023-08-16	completed
349	992	2023-08-12	cancelled
350	992	2023-08-02	completed
351	1014	2023-08-05	completed
352	1045	2023-08-05	completed
353	1071	2023-08-07	completed
354	1082	2023-08-22	completed
355	1139	2023-08-07	completed
356	1154	2023-08-15	completed
357	1180	2023-08-09	completed
358	1184	2023-08-02	completed
359	1208	2023-08-27	completed
360	1245	2023-08-14	completed
361	1264	2023-08-30	completed
362	1280	2023-08-15	completed
363	1306	2023-08-17	refunded
364	1320	2023-08-28	completed
365	1343	2023-08-03	completed
366	1402	2023-08-02	completed
367	1456	2023-08-25	completed
368	1474	2023-08-23	completed
369	1503	2023-08-10	completed
370	1549	2023-08-25	completed
371	1549	2023-08-03	refunded
372	1596	2023-08-18	completed
373	1618	2023-08-14	completed
374	1630	2023-08-25	completed
375	1676	2023-08-10	completed
376	1690	2023-08-26	completed
377	1730	2023-08-31	completed
378	1756	2023-08-13	completed
379	1760	2023-08-28	completed
380	1794	2023-08-16	completed
381	1830	2023-08-13	completed
382	1863	2023-08-14	completed
383	1922	2023-08-21	completed
384	2004	2023-08-25	completed
385	2019	2023-08-23	completed
386	2056	2023-08-25	completed
387	2066	2023-08-01	completed
388	2070	2023-08-01	completed
389	2099	2023-08-13	completed
390	2153	2023-08-02	completed
391	2182	2023-08-03	completed
392	2187	2023-08-11	completed
393	2190	2023-08-28	completed
394	2194	2023-08-19	completed
395	2203	2023-08-19	completed
396	2218	2023-08-24	completed
397	2220	2023-08-05	completed
398	2266	2023-08-13	completed
399	2266	2023-08-28	completed
400	2268	2023-08-28	completed
401	2270	2023-08-11	completed
402	2329	2023-08-27	completed
403	2352	2023-08-19	completed
404	2357	2023-08-18	completed
405	2363	2023-08-07	completed
406	2379	2023-08-10	completed
407	2414	2023-08-05	completed
408	2442	2023-08-21	completed
409	2453	2023-08-04	completed
410	2459	2023-08-08	completed
411	2467	2023-08-19	completed
412	2493	2023-08-17	completed
413	2493	2023-08-26	completed
414	2507	2023-08-24	completed
415	2524	2023-08-22	completed
416	2588	2023-08-17	completed
417	2633	2023-08-13	completed
418	2647	2023-08-06	completed
419	2673	2023-08-09	completed
420	2689	2023-08-01	completed
421	2711	2023-08-01	completed
422	2763	2023-08-08	completed
423	2869	2023-08-07	completed
424	2967	2023-08-02	completed
425	2986	2023-08-18	completed
426	2986	2023-08-17	completed
427	2991	2023-08-04	cancelled
428	32	2023-09-16	completed
429	57	2023-09-17	completed
430	85	2023-09-02	completed
431	141	2023-09-18	completed
432	143	2023-09-24	completed
433	144	2023-09-13	completed
434	145	2023-09-24	completed
435	177	2023-09-06	completed
436	216	2023-09-03	completed
437	231	2023-09-18	completed
438	235	2023-09-04	completed
439	238	2023-09-11	completed
440	279	2023-09-15	completed
441	364	2023-09-01	completed
442	389	2023-09-23	completed
443	416	2023-09-05	completed
444	417	2023-09-24	completed
445	428	2023-09-17	completed
446	437	2023-09-17	completed
447	476	2023-09-20	completed
448	496	2023-09-19	completed
449	532	2023-09-24	completed
450	538	2023-09-23	completed
451	573	2023-09-20	completed
452	587	2023-09-18	completed
453	601	2023-09-25	completed
454	618	2023-09-28	completed
455	619	2023-09-02	completed
456	626	2023-09-03	completed
457	628	2023-09-13	completed
458	651	2023-09-16	completed
459	655	2023-09-26	completed
460	667	2023-09-03	completed
461	729	2023-09-27	completed
462	741	2023-09-07	completed
463	758	2023-09-15	completed
464	799	2023-09-20	completed
465	861	2023-09-04	completed
466	894	2023-09-12	completed
467	905	2023-09-24	completed
468	931	2023-09-03	completed
469	984	2023-09-05	completed
470	1042	2023-09-12	completed
471	1043	2023-09-17	completed
472	1043	2023-09-11	completed
473	1047	2023-09-21	completed
474	1071	2023-09-07	completed
475	1101	2023-09-14	completed
476	1102	2023-09-23	completed
477	1133	2023-09-14	completed
478	1184	2023-09-03	completed
479	1192	2023-09-15	completed
480	1221	2023-09-03	completed
481	1257	2023-09-28	completed
482	1260	2023-09-19	completed
483	1297	2023-09-24	completed
484	1333	2023-09-05	completed
485	1362	2023-09-08	completed
486	1369	2023-09-08	completed
487	1441	2023-09-29	completed
488	1464	2023-09-11	completed
489	1474	2023-09-08	completed
490	1490	2023-09-11	completed
491	1534	2023-09-20	completed
492	1535	2023-09-10	completed
493	1549	2023-09-29	completed
494	1566	2023-09-08	completed
495	1605	2023-09-23	completed
496	1636	2023-09-05	completed
497	1640	2023-09-21	completed
498	1657	2023-09-21	completed
499	1662	2023-09-29	completed
500	1674	2023-09-13	completed
501	1752	2023-09-14	completed
502	1800	2023-09-12	completed
503	1856	2023-09-24	completed
504	1884	2023-09-04	cancelled
505	1928	2023-09-22	completed
506	2050	2023-09-04	completed
507	2085	2023-09-10	completed
508	2091	2023-09-07	completed
509	2102	2023-09-26	completed
510	2131	2023-09-25	completed
511	2138	2023-09-18	completed
512	2152	2023-09-14	completed
513	2152	2023-09-02	completed
514	2203	2023-09-14	completed
515	2208	2023-09-15	completed
516	2213	2023-09-13	completed
517	2229	2023-09-18	completed
518	2268	2023-09-13	completed
519	2272	2023-09-18	completed
520	2317	2023-09-09	completed
521	2318	2023-09-28	completed
522	2329	2023-09-04	completed
523	2355	2023-09-26	completed
524	2357	2023-09-04	completed
525	2365	2023-09-21	completed
526	2385	2023-09-26	cancelled
527	2426	2023-09-03	completed
528	2430	2023-09-05	completed
529	2440	2023-09-30	completed
530	2443	2023-09-12	completed
531	2463	2023-09-19	completed
532	2488	2023-09-24	completed
533	2505	2023-09-09	completed
534	2508	2023-09-18	completed
535	2537	2023-09-28	completed
536	2591	2023-09-01	completed
537	2619	2023-09-20	completed
538	2633	2023-09-29	completed
539	2643	2023-09-27	completed
540	2647	2023-09-09	completed
541	2708	2023-09-26	completed
542	2737	2023-09-17	completed
543	2737	2023-09-08	cancelled
544	2763	2023-09-26	completed
545	2846	2023-09-13	completed
546	2853	2023-09-28	completed
547	2869	2023-09-20	completed
548	2914	2023-09-23	completed
549	2961	2023-09-06	completed
550	47	2023-10-07	completed
551	74	2023-10-24	completed
552	144	2023-10-05	completed
553	206	2023-10-07	completed
554	281	2023-10-21	completed
555	306	2023-10-29	completed
556	334	2023-10-28	completed
557	338	2023-10-23	completed
558	339	2023-10-27	completed
559	346	2023-10-08	completed
560	361	2023-10-12	completed
561	384	2023-10-09	completed
562	403	2023-10-29	refunded
563	453	2023-10-08	completed
564	456	2023-10-31	cancelled
565	484	2023-10-25	completed
566	517	2023-10-25	completed
567	532	2023-10-06	completed
568	540	2023-10-07	completed
569	542	2023-10-22	completed
570	558	2023-10-12	completed
571	562	2023-10-22	completed
572	565	2023-10-30	completed
573	572	2023-10-31	completed
574	572	2023-10-14	completed
575	582	2023-10-24	cancelled
576	586	2023-10-21	completed
577	619	2023-10-31	completed
578	626	2023-10-07	completed
579	631	2023-10-26	completed
580	642	2023-10-03	completed
581	667	2023-10-12	completed
582	701	2023-10-07	completed
583	752	2023-10-13	completed
584	763	2023-10-03	completed
585	801	2023-10-11	completed
586	811	2023-10-22	completed
587	869	2023-10-09	completed
588	915	2023-10-17	completed
589	920	2023-10-16	completed
590	980	2023-10-07	completed
591	995	2023-10-31	completed
592	1000	2023-10-15	completed
593	1016	2023-10-18	completed
594	1027	2023-10-20	completed
595	1082	2023-10-06	completed
596	1139	2023-10-20	completed
597	1180	2023-10-02	completed
598	1192	2023-10-13	completed
599	1208	2023-10-23	completed
600	1214	2023-10-24	completed
601	1241	2023-10-28	completed
602	1250	2023-10-14	completed
603	1267	2023-10-03	completed
604	1297	2023-10-27	completed
605	1343	2023-10-05	completed
606	1371	2023-10-07	completed
607	1441	2023-10-15	completed
608	1459	2023-10-30	completed
609	1464	2023-10-01	completed
610	1467	2023-10-13	completed
611	1474	2023-10-05	completed
612	1512	2023-10-22	completed
613	1546	2023-10-01	completed
614	1566	2023-10-08	completed
615	1583	2023-10-21	refunded
616	1601	2023-10-08	completed
617	1630	2023-10-22	completed
618	1691	2023-10-25	completed
619	1697	2023-10-15	completed
620	1714	2023-10-17	completed
621	1730	2023-10-21	completed
622	1734	2023-10-13	completed
623	1748	2023-10-05	completed
624	1763	2023-10-24	completed
625	1783	2023-10-15	completed
626	1804	2023-10-25	completed
627	1811	2023-10-23	completed
628	1835	2023-10-15	completed
629	1876	2023-10-21	completed
630	1882	2023-10-18	completed
631	1944	2023-10-30	completed
632	1957	2023-10-27	completed
633	1968	2023-10-23	completed
634	1971	2023-10-31	refunded
635	2023	2023-10-23	completed
636	2070	2023-10-01	completed
637	2090	2023-10-22	completed
638	2099	2023-10-14	completed
639	2122	2023-10-04	completed
640	2126	2023-10-07	completed
641	2131	2023-10-21	completed
642	2154	2023-10-01	completed
643	2189	2023-10-11	completed
644	2190	2023-10-30	completed
645	2195	2023-10-04	completed
646	2195	2023-10-07	completed
647	2250	2023-10-15	completed
648	2263	2023-10-29	completed
649	2270	2023-10-20	completed
650	2288	2023-10-02	completed
651	2293	2023-10-06	completed
652	2317	2023-10-07	completed
653	2355	2023-10-02	completed
654	2357	2023-10-31	completed
655	2365	2023-10-17	completed
656	2379	2023-10-17	completed
657	2390	2023-10-21	cancelled
658	2402	2023-10-12	completed
659	2411	2023-10-29	completed
660	2430	2023-10-08	completed
661	2457	2023-10-21	completed
662	2481	2023-10-08	completed
663	2493	2023-10-03	completed
664	2508	2023-10-11	completed
665	2515	2023-10-18	completed
666	2531	2023-10-25	cancelled
667	2540	2023-10-22	completed
668	2541	2023-10-31	completed
669	2559	2023-10-06	cancelled
670	2579	2023-10-30	completed
671	2587	2023-10-22	completed
672	2591	2023-10-28	completed
673	2623	2023-10-01	completed
674	2638	2023-10-11	completed
675	2663	2023-10-22	completed
676	2673	2023-10-14	completed
677	2722	2023-10-15	completed
678	2738	2023-10-14	completed
679	2769	2023-10-02	completed
680	2838	2023-10-06	completed
681	2859	2023-10-14	completed
682	2961	2023-10-17	completed
683	2965	2023-10-20	completed
684	2986	2023-10-24	completed
685	2	2023-11-11	completed
686	12	2023-11-11	completed
687	15	2023-11-19	completed
688	16	2023-11-06	completed
689	19	2023-11-03	completed
690	24	2023-11-01	cancelled
691	32	2023-11-02	completed
692	57	2023-11-20	completed
693	74	2023-11-13	completed
694	98	2023-11-27	completed
695	98	2023-11-20	completed
696	142	2023-11-07	completed
697	162	2023-11-24	completed
698	202	2023-11-03	completed
699	216	2023-11-29	cancelled
700	216	2023-11-26	completed
701	282	2023-11-29	completed
702	286	2023-11-17	completed
703	349	2023-11-15	completed
704	354	2023-11-22	completed
705	377	2023-11-02	completed
706	392	2023-11-16	completed
707	403	2023-11-11	completed
708	417	2023-11-03	completed
709	437	2023-11-11	completed
710	455	2023-11-05	completed
711	462	2023-11-29	completed
712	466	2023-11-18	completed
713	468	2023-11-10	completed
714	469	2023-11-16	completed
715	471	2023-11-28	completed
716	496	2023-11-28	completed
717	503	2023-11-26	completed
718	542	2023-11-09	completed
719	567	2023-11-23	completed
720	586	2023-11-07	completed
721	601	2023-11-29	completed
722	633	2023-11-13	completed
723	651	2023-11-14	completed
724	662	2023-11-09	completed
725	701	2023-11-25	completed
726	703	2023-11-14	completed
727	733	2023-11-23	completed
728	736	2023-11-07	completed
729	763	2023-11-13	completed
730	769	2023-11-08	completed
731	779	2023-11-03	completed
732	782	2023-11-28	completed
733	799	2023-11-03	completed
734	801	2023-11-11	completed
735	810	2023-11-28	completed
736	817	2023-11-01	completed
737	858	2023-11-12	completed
738	861	2023-11-25	refunded
739	864	2023-11-29	completed
740	870	2023-11-04	completed
741	881	2023-11-27	completed
742	885	2023-11-24	completed
743	937	2023-11-11	completed
744	941	2023-11-05	completed
745	941	2023-11-09	completed
746	956	2023-11-29	completed
747	994	2023-11-26	completed
748	1028	2023-11-14	completed
749	1063	2023-11-24	refunded
750	1071	2023-11-11	completed
751	1076	2023-11-05	cancelled
752	1120	2023-11-29	completed
753	1170	2023-11-26	completed
754	1211	2023-11-06	completed
755	1220	2023-11-02	completed
756	1260	2023-11-14	completed
757	1323	2023-11-08	completed
758	1333	2023-11-24	completed
759	1344	2023-11-24	completed
760	1348	2023-11-25	completed
761	1362	2023-11-09	completed
762	1371	2023-11-05	completed
763	1380	2023-11-25	completed
764	1381	2023-11-12	completed
765	1413	2023-11-26	completed
766	1468	2023-11-06	completed
767	1474	2023-11-11	completed
768	1480	2023-11-25	completed
769	1503	2023-11-24	cancelled
770	1504	2023-11-13	completed
771	1527	2023-11-16	completed
772	1534	2023-11-14	completed
773	1546	2023-11-05	completed
774	1567	2023-11-07	completed
775	1594	2023-11-07	completed
776	1605	2023-11-10	completed
777	1611	2023-11-16	completed
778	1626	2023-11-09	completed
779	1636	2023-11-24	completed
780	1640	2023-11-07	completed
781	1642	2023-11-19	completed
782	1648	2023-11-18	completed
783	1674	2023-11-20	completed
784	1676	2023-11-24	refunded
785	1714	2023-11-21	completed
786	1727	2023-11-06	completed
787	1756	2023-11-18	completed
788	1783	2023-11-13	completed
789	1804	2023-11-29	completed
790	1810	2023-11-03	completed
791	1816	2023-11-15	completed
792	1818	2023-11-25	completed
793	1840	2023-11-05	completed
794	1846	2023-11-01	cancelled
795	1879	2023-11-08	completed
796	1923	2023-11-26	cancelled
797	1975	2023-11-07	completed
798	1981	2023-11-20	completed
799	1985	2023-11-09	completed
800	2010	2023-11-08	completed
801	2056	2023-11-11	completed
802	2091	2023-11-25	completed
803	2094	2023-11-26	completed
804	2120	2023-11-21	completed
805	2156	2023-11-27	refunded
806	2160	2023-11-20	completed
807	2210	2023-11-26	completed
808	2213	2023-11-07	completed
809	2260	2023-11-04	completed
810	2266	2023-11-01	completed
811	2268	2023-11-16	completed
812	2270	2023-11-15	completed
813	2276	2023-11-12	completed
814	2352	2023-11-05	completed
815	2381	2023-11-26	completed
816	2382	2023-11-15	completed
817	2421	2023-11-25	refunded
818	2428	2023-11-12	completed
819	2435	2023-11-01	completed
820	2440	2023-11-18	completed
821	2453	2023-11-13	completed
822	2460	2023-11-13	completed
823	2487	2023-11-21	completed
824	2493	2023-11-29	completed
825	2514	2023-11-01	completed
826	2515	2023-11-13	completed
827	2524	2023-11-19	completed
828	2537	2023-11-02	completed
829	2571	2023-11-21	completed
830	2572	2023-11-24	completed
831	2579	2023-11-19	completed
832	2582	2023-11-06	completed
833	2591	2023-11-21	completed
834	2603	2023-11-25	completed
835	2619	2023-11-28	completed
836	2656	2023-11-12	completed
837	2665	2023-11-24	completed
838	2676	2023-11-11	completed
839	2700	2023-11-08	completed
840	2703	2023-11-18	completed
841	2740	2023-11-09	completed
842	2887	2023-11-20	completed
843	2889	2023-11-04	completed
844	2908	2023-11-09	completed
845	2909	2023-11-15	completed
846	2	2023-12-17	completed
847	13	2023-12-29	cancelled
848	20	2023-12-29	completed
849	63	2023-12-23	completed
850	67	2023-12-12	completed
851	67	2023-12-27	cancelled
852	72	2023-12-03	cancelled
853	74	2023-12-26	completed
854	76	2023-12-19	completed
855	80	2023-12-04	completed
856	108	2023-12-01	completed
857	119	2023-12-14	completed
858	138	2023-12-15	completed
859	150	2023-12-20	completed
860	202	2023-12-31	completed
861	231	2023-12-09	completed
862	249	2023-12-13	completed
863	257	2023-12-26	completed
864	279	2023-12-21	completed
865	281	2023-12-16	completed
866	284	2023-12-28	completed
867	286	2023-12-02	completed
868	300	2023-12-10	completed
869	308	2023-12-13	completed
870	339	2023-12-30	completed
871	346	2023-12-30	cancelled
872	354	2023-12-15	completed
873	359	2023-12-17	completed
874	361	2023-12-28	completed
875	387	2023-12-22	completed
876	392	2023-12-02	completed
877	400	2023-12-04	completed
878	400	2023-12-02	completed
879	417	2023-12-01	refunded
880	430	2023-12-01	completed
881	456	2023-12-22	completed
882	459	2023-12-25	completed
883	469	2023-12-15	completed
884	470	2023-12-31	cancelled
885	483	2023-12-26	refunded
886	538	2023-12-23	completed
887	573	2023-12-15	completed
888	582	2023-12-26	refunded
889	583	2023-12-29	completed
890	599	2023-12-03	completed
891	641	2023-12-14	completed
892	642	2023-12-10	completed
893	651	2023-12-19	completed
894	667	2023-12-16	completed
895	701	2023-12-24	completed
896	784	2023-12-23	completed
897	854	2023-12-09	completed
898	858	2023-12-22	completed
899	869	2023-12-11	completed
900	881	2023-12-19	completed
901	904	2023-12-09	completed
902	931	2023-12-28	completed
903	937	2023-12-14	completed
904	973	2023-12-23	completed
905	980	2023-12-18	refunded
906	994	2023-12-15	completed
907	1004	2023-12-27	completed
908	1016	2023-12-14	completed
909	1027	2023-12-21	completed
910	1042	2023-12-21	completed
911	1052	2023-12-23	completed
912	1080	2023-12-07	completed
913	1139	2023-12-22	completed
914	1143	2023-12-07	completed
915	1158	2023-12-30	completed
916	1161	2023-12-01	refunded
917	1162	2023-12-10	completed
918	1170	2023-12-02	completed
919	1184	2023-12-24	completed
920	1184	2023-12-12	completed
921	1189	2023-12-14	completed
922	1206	2023-12-12	completed
923	1222	2023-12-14	completed
924	1240	2023-12-05	refunded
925	1257	2023-12-25	completed
926	1267	2023-12-20	completed
927	1317	2023-12-31	completed
928	1324	2023-12-17	completed
929	1343	2023-12-27	completed
930	1344	2023-12-17	completed
931	1363	2023-12-18	completed
932	1369	2023-12-26	completed
933	1380	2023-12-29	completed
934	1402	2023-12-03	completed
935	1410	2023-12-10	completed
936	1459	2023-12-11	cancelled
937	1464	2023-12-24	completed
938	1490	2023-12-23	completed
939	1512	2023-12-25	completed
940	1559	2023-12-04	completed
941	1583	2023-12-04	refunded
942	1588	2023-12-21	completed
943	1610	2023-12-03	cancelled
944	1630	2023-12-15	completed
945	1653	2023-12-13	completed
946	1662	2023-12-13	completed
947	1667	2023-12-06	completed
948	1690	2023-12-18	completed
949	1697	2023-12-10	completed
950	1708	2023-12-19	completed
951	1709	2023-12-17	completed
952	1717	2023-12-23	completed
953	1718	2023-12-17	completed
954	1730	2023-12-11	completed
955	1752	2023-12-20	completed
956	1756	2023-12-10	completed
957	1763	2023-12-05	completed
958	1763	2023-12-23	completed
959	1793	2023-12-02	completed
960	1794	2023-12-01	completed
961	1808	2023-12-28	completed
962	1840	2023-12-13	completed
963	1846	2023-12-13	completed
964	1853	2023-12-13	completed
965	1860	2023-12-11	completed
966	1866	2023-12-10	completed
967	1879	2023-12-26	completed
968	1881	2023-12-09	completed
969	1941	2023-12-09	completed
970	1957	2023-12-25	completed
971	1971	2023-12-08	refunded
972	1975	2023-12-02	completed
973	2017	2023-12-29	refunded
974	2021	2023-12-22	completed
975	2047	2023-12-31	completed
976	2050	2023-12-21	completed
977	2056	2023-12-10	completed
978	2070	2023-12-25	completed
979	2104	2023-12-25	completed
980	2120	2023-12-28	completed
981	2134	2023-12-01	completed
982	2138	2023-12-28	completed
983	2194	2023-12-13	cancelled
984	2195	2023-12-27	completed
985	2213	2023-12-08	completed
986	2229	2023-12-26	completed
987	2240	2023-12-22	completed
988	2250	2023-12-26	completed
989	2259	2023-12-05	completed
990	2272	2023-12-16	completed
991	2278	2023-12-13	completed
992	2325	2023-12-25	completed
993	2328	2023-12-25	completed
994	2329	2023-12-18	completed
995	2355	2023-12-13	completed
996	2359	2023-12-13	completed
997	2365	2023-12-06	completed
998	2421	2023-12-20	completed
999	2430	2023-12-11	completed
1000	2447	2023-12-29	completed
1001	2447	2023-12-12	completed
1002	2457	2023-12-12	completed
1003	2463	2023-12-21	completed
1004	2488	2023-12-18	completed
1005	2494	2023-12-05	cancelled
1006	2501	2023-12-10	completed
1007	2505	2023-12-31	completed
1008	2506	2023-12-07	completed
1009	2507	2023-12-31	completed
1010	2509	2023-12-01	completed
1011	2523	2023-12-22	completed
1012	2537	2023-12-12	completed
1013	2543	2023-12-09	completed
1014	2543	2023-12-03	completed
1015	2590	2023-12-13	completed
1016	2638	2023-12-05	completed
1017	2640	2023-12-23	completed
1018	2655	2023-12-06	completed
1019	2656	2023-12-06	completed
1020	2665	2023-12-10	completed
1021	2680	2023-12-28	completed
1022	2706	2023-12-16	completed
1023	2718	2023-12-05	refunded
1024	2725	2023-12-25	completed
1025	2730	2023-12-20	completed
1026	2731	2023-12-04	completed
1027	2778	2023-12-04	completed
1028	2781	2023-12-30	completed
1029	2849	2023-12-30	completed
1030	2853	2023-12-20	completed
1031	2866	2023-12-15	completed
1032	2879	2023-12-01	cancelled
1033	2889	2023-12-11	completed
1034	2894	2023-12-26	completed
1035	2908	2023-12-14	completed
1036	2920	2023-12-08	completed
1037	2927	2023-12-28	completed
1038	2977	2023-12-25	completed
1039	2986	2023-12-20	completed
1040	2997	2023-12-24	completed
1041	16	2024-01-10	completed
1042	19	2024-01-20	completed
1043	79	2024-01-01	completed
1044	84	2024-01-02	completed
1045	104	2024-01-09	completed
1046	152	2024-01-15	completed
1047	202	2024-01-12	completed
1048	218	2024-01-30	completed
1049	231	2024-01-25	completed
1050	268	2024-01-12	completed
1051	279	2024-01-08	completed
1052	279	2024-01-11	completed
1053	296	2024-01-13	completed
1054	301	2024-01-16	completed
1055	322	2024-01-04	completed
1056	334	2024-01-10	completed
1057	349	2024-01-23	completed
1058	356	2024-01-27	completed
1059	361	2024-01-14	completed
1060	376	2024-01-24	completed
1061	384	2024-01-09	completed
1062	479	2024-01-15	completed
1063	509	2024-01-30	completed
1064	542	2024-01-08	completed
1065	567	2024-01-30	completed
1066	594	2024-01-04	completed
1067	601	2024-01-02	completed
1068	617	2024-01-07	completed
1069	643	2024-01-13	completed
1070	662	2024-01-14	completed
1071	687	2024-01-18	refunded
1072	702	2024-01-08	completed
1073	782	2024-01-07	refunded
1074	835	2024-01-08	completed
1075	843	2024-01-28	completed
1076	850	2024-01-09	cancelled
1077	857	2024-01-25	completed
1078	861	2024-01-18	completed
1079	869	2024-01-02	cancelled
1080	877	2024-01-23	completed
1081	894	2024-01-07	completed
1082	904	2024-01-07	completed
1083	908	2024-01-13	completed
1084	914	2024-01-08	completed
1085	916	2024-01-01	completed
1086	931	2024-01-24	completed
1087	934	2024-01-27	completed
1088	935	2024-01-18	completed
1089	973	2024-01-17	completed
1090	973	2024-01-04	completed
1091	999	2024-01-11	completed
1092	1009	2024-01-06	completed
1093	1021	2024-01-25	completed
1094	1025	2024-01-28	completed
1095	1043	2024-01-26	completed
1096	1043	2024-01-08	cancelled
1097	1076	2024-01-20	completed
1098	1085	2024-01-25	completed
1099	1101	2024-01-09	completed
1100	1102	2024-01-17	completed
1101	1112	2024-01-20	completed
1102	1113	2024-01-15	completed
1103	1115	2024-01-08	completed
1104	1117	2024-01-09	completed
1105	1139	2024-01-08	refunded
1106	1158	2024-01-31	completed
1107	1170	2024-01-29	completed
1108	1192	2024-01-04	completed
1109	1206	2024-01-03	completed
1110	1219	2024-01-08	refunded
1111	1221	2024-01-02	completed
1112	1230	2024-01-10	completed
1113	1240	2024-01-04	completed
1114	1242	2024-01-25	completed
1115	1281	2024-01-11	completed
1116	1292	2024-01-04	completed
1117	1306	2024-01-20	completed
1118	1317	2024-01-06	completed
1119	1334	2024-01-26	completed
1120	1336	2024-01-04	completed
1121	1347	2024-01-07	completed
1122	1362	2024-01-08	completed
1123	1375	2024-01-03	completed
1124	1441	2024-01-03	completed
1125	1455	2024-01-20	completed
1126	1470	2024-01-15	completed
1127	1496	2024-01-15	completed
1128	1504	2024-01-11	completed
1129	1527	2024-01-29	completed
1130	1540	2024-01-07	completed
1131	1542	2024-01-30	completed
1132	1543	2024-01-22	completed
1133	1557	2024-01-20	completed
1134	1582	2024-01-06	cancelled
1135	1601	2024-01-25	completed
1136	1611	2024-01-26	completed
1137	1626	2024-01-29	completed
1138	1655	2024-01-06	completed
1139	1659	2024-01-24	completed
1140	1700	2024-01-23	completed
1141	1715	2024-01-17	completed
1142	1733	2024-01-03	completed
1143	1750	2024-01-12	cancelled
1144	1752	2024-01-08	completed
1145	1777	2024-01-01	completed
1146	1786	2024-01-19	completed
1147	1795	2024-01-15	completed
1148	1825	2024-01-23	refunded
1149	1836	2024-01-28	completed
1150	1840	2024-01-10	completed
1151	1846	2024-01-05	completed
1152	1896	2024-01-23	completed
1153	1926	2024-01-01	completed
1154	1952	2024-01-06	completed
1155	1981	2024-01-09	completed
1156	1985	2024-01-03	cancelled
1157	2004	2024-01-15	completed
1158	2014	2024-01-28	completed
1159	2037	2024-01-04	completed
1160	2083	2024-01-15	completed
1161	2096	2024-01-14	completed
1162	2117	2024-01-18	completed
1163	2137	2024-01-02	completed
1164	2151	2024-01-17	completed
1165	2226	2024-01-29	completed
1166	2229	2024-01-11	cancelled
1167	2236	2024-01-08	completed
1168	2260	2024-01-14	completed
1169	2310	2024-01-26	completed
1170	2322	2024-01-22	completed
1171	2359	2024-01-27	completed
1172	2381	2024-01-30	refunded
1173	2392	2024-01-31	completed
1174	2411	2024-01-28	completed
1175	2426	2024-01-09	completed
1176	2434	2024-01-21	completed
1177	2443	2024-01-17	completed
1178	2459	2024-01-29	completed
1179	2460	2024-01-05	completed
1180	2507	2024-01-24	completed
1181	2507	2024-01-06	completed
1182	2509	2024-01-10	completed
1183	2524	2024-01-13	completed
1184	2540	2024-01-05	completed
1185	2559	2024-01-19	completed
1186	2623	2024-01-09	completed
1187	2628	2024-01-17	completed
1188	2638	2024-01-24	completed
1189	2640	2024-01-26	completed
1190	2647	2024-01-31	completed
1191	2656	2024-01-14	completed
1192	2662	2024-01-31	completed
1193	2663	2024-01-19	completed
1194	2667	2024-01-08	completed
1195	2669	2024-01-25	completed
1196	2689	2024-01-14	refunded
1197	2690	2024-01-31	completed
1198	2731	2024-01-16	refunded
1199	2732	2024-01-01	completed
1200	2736	2024-01-13	completed
1201	2769	2024-01-18	refunded
1202	2818	2024-01-07	completed
1203	2846	2024-01-22	completed
1204	2852	2024-01-13	completed
1205	2853	2024-01-09	completed
1206	2855	2024-01-10	completed
1207	2869	2024-01-08	completed
1208	2882	2024-01-17	completed
1209	2889	2024-01-21	completed
1210	2894	2024-01-06	completed
1211	2896	2024-01-06	completed
1212	2897	2024-01-15	completed
1213	2921	2024-01-18	completed
1214	2921	2024-01-05	completed
1215	2961	2024-01-03	completed
1216	2969	2024-01-04	completed
1217	2991	2024-01-09	completed
1218	2997	2024-01-03	completed
1219	24	2024-02-28	refunded
1220	30	2024-02-06	completed
1221	53	2024-02-22	completed
1222	67	2024-02-11	completed
1223	70	2024-02-11	completed
1224	76	2024-02-15	completed
1225	79	2024-02-10	completed
1226	80	2024-02-02	completed
1227	98	2024-02-09	refunded
1228	104	2024-02-23	completed
1229	111	2024-02-19	completed
1230	117	2024-02-23	completed
1231	119	2024-02-19	completed
1232	129	2024-02-04	completed
1233	199	2024-02-17	completed
1234	202	2024-02-28	completed
1235	221	2024-02-17	completed
1236	238	2024-02-19	completed
1237	282	2024-02-09	completed
1238	287	2024-02-13	completed
1239	296	2024-02-07	completed
1240	297	2024-02-08	completed
1241	297	2024-02-05	completed
1242	301	2024-02-19	refunded
1243	303	2024-02-05	completed
1244	338	2024-02-21	completed
1245	344	2024-02-14	refunded
1246	349	2024-02-19	completed
1247	364	2024-02-08	completed
1248	369	2024-02-07	completed
1249	377	2024-02-05	completed
1250	387	2024-02-05	completed
1251	399	2024-02-25	completed
1252	404	2024-02-14	completed
1253	417	2024-02-02	completed
1254	451	2024-02-22	completed
1255	456	2024-02-21	completed
1256	462	2024-02-23	completed
1257	509	2024-02-08	completed
1258	517	2024-02-11	completed
1259	562	2024-02-03	completed
1260	568	2024-02-13	completed
1261	619	2024-02-05	completed
1262	646	2024-02-03	completed
1263	654	2024-02-24	completed
1264	689	2024-02-09	completed
1265	699	2024-02-10	completed
1266	739	2024-02-19	completed
1267	757	2024-02-11	completed
1268	758	2024-02-05	completed
1269	769	2024-02-15	completed
1270	778	2024-02-13	completed
1271	801	2024-02-22	completed
1272	813	2024-02-07	completed
1273	817	2024-02-08	completed
1274	827	2024-02-10	completed
1275	853	2024-02-10	refunded
1276	854	2024-02-12	completed
1277	857	2024-02-03	completed
1278	863	2024-02-03	completed
1279	870	2024-02-27	cancelled
1280	874	2024-02-06	completed
1281	881	2024-02-01	completed
1282	885	2024-02-14	completed
1283	893	2024-02-28	completed
1284	894	2024-02-22	completed
1285	916	2024-02-08	completed
1286	930	2024-02-17	completed
1287	964	2024-02-13	completed
1288	976	2024-02-14	completed
1289	1013	2024-02-23	completed
1290	1043	2024-02-13	completed
1291	1076	2024-02-26	completed
1292	1094	2024-02-18	completed
1293	1152	2024-02-19	completed
1294	1182	2024-02-04	completed
1295	1201	2024-02-19	completed
1296	1206	2024-02-29	completed
1297	1219	2024-02-29	completed
1298	1228	2024-02-11	completed
1299	1230	2024-02-13	cancelled
1300	1235	2024-02-28	completed
1301	1250	2024-02-15	completed
1302	1267	2024-02-16	completed
1303	1279	2024-02-02	completed
1304	1289	2024-02-27	completed
1305	1297	2024-02-10	completed
1306	1336	2024-02-21	completed
1307	1342	2024-02-15	completed
1308	1363	2024-02-21	completed
1309	1375	2024-02-21	completed
1310	1375	2024-02-05	refunded
1311	1419	2024-02-02	completed
1312	1441	2024-02-17	completed
1313	1460	2024-02-28	completed
1314	1545	2024-02-20	completed
1315	1547	2024-02-06	completed
1316	1548	2024-02-15	completed
1317	1567	2024-02-21	refunded
1318	1591	2024-02-06	completed
1319	1594	2024-02-03	completed
1320	1611	2024-02-16	completed
1321	1655	2024-02-06	completed
1322	1690	2024-02-06	completed
1323	1691	2024-02-21	completed
1324	1709	2024-02-27	completed
1325	1713	2024-02-21	completed
1326	1733	2024-02-16	completed
1327	1737	2024-02-26	completed
1328	1750	2024-02-16	completed
1329	1756	2024-02-05	completed
1330	1762	2024-02-05	completed
1331	1786	2024-02-23	completed
1332	1819	2024-02-29	completed
1333	1893	2024-02-05	completed
1334	1898	2024-02-28	completed
1335	1912	2024-02-25	completed
1336	1945	2024-02-22	completed
1337	1957	2024-02-16	completed
1338	1968	2024-02-22	completed
1339	1971	2024-02-06	completed
1340	1975	2024-02-12	completed
1341	2003	2024-02-10	completed
1342	2019	2024-02-03	cancelled
1343	2027	2024-02-11	completed
1344	2049	2024-02-20	cancelled
1345	2055	2024-02-12	completed
1346	2091	2024-02-01	completed
1347	2104	2024-02-05	completed
1348	2115	2024-02-11	completed
1349	2120	2024-02-10	completed
1350	2126	2024-02-16	completed
1351	2134	2024-02-03	completed
1352	2208	2024-02-12	completed
1353	2226	2024-02-23	completed
1354	2226	2024-02-23	completed
1355	2229	2024-02-19	completed
1356	2239	2024-02-16	completed
1357	2250	2024-02-03	completed
1358	2255	2024-02-11	completed
1359	2259	2024-02-13	completed
1360	2297	2024-02-02	completed
1361	2310	2024-02-08	completed
1362	2317	2024-02-08	completed
1363	2318	2024-02-21	completed
1364	2351	2024-02-22	completed
1365	2363	2024-02-04	completed
1366	2379	2024-02-13	completed
1367	2395	2024-02-29	completed
1368	2401	2024-02-27	completed
1369	2419	2024-02-16	completed
1370	2423	2024-02-18	completed
1371	2440	2024-02-25	cancelled
1372	2442	2024-02-05	completed
1373	2443	2024-02-19	completed
1374	2460	2024-02-13	completed
1375	2503	2024-02-16	completed
1376	2579	2024-02-15	completed
1377	2598	2024-02-02	completed
1378	2628	2024-02-18	completed
1379	2633	2024-02-01	completed
1380	2643	2024-02-29	completed
1381	2663	2024-02-22	completed
1382	2690	2024-02-14	completed
1383	2698	2024-02-05	completed
1384	2714	2024-02-01	completed
1385	2718	2024-02-08	refunded
1386	2728	2024-02-23	completed
1387	2766	2024-02-27	completed
1388	2768	2024-02-16	completed
1389	2778	2024-02-09	completed
1390	2845	2024-02-05	completed
1391	2845	2024-02-26	cancelled
1392	2849	2024-02-08	completed
1393	2882	2024-02-02	completed
1394	2895	2024-02-10	completed
1395	2896	2024-02-02	completed
1396	2897	2024-02-18	completed
1397	2904	2024-02-02	completed
1398	2918	2024-02-07	completed
1399	2925	2024-02-22	completed
1400	2943	2024-02-19	completed
1401	2965	2024-02-18	completed
1402	2970	2024-02-21	completed
1403	2993	2024-02-17	completed
1404	2997	2024-02-25	completed
1405	4	2024-03-30	completed
1406	15	2024-03-25	completed
1407	24	2024-03-11	completed
1408	54	2024-03-16	completed
1409	59	2024-03-18	completed
1410	63	2024-03-15	completed
1411	72	2024-03-28	completed
1412	74	2024-03-22	completed
1413	85	2024-03-27	completed
1414	96	2024-03-29	completed
1415	107	2024-03-03	completed
1416	141	2024-03-09	completed
1417	144	2024-03-03	completed
1418	150	2024-03-25	completed
1419	199	2024-03-24	cancelled
1420	216	2024-03-08	completed
1421	225	2024-03-29	completed
1422	249	2024-03-26	completed
1423	268	2024-03-07	completed
1424	286	2024-03-25	completed
1425	301	2024-03-27	cancelled
1426	344	2024-03-26	completed
1427	349	2024-03-01	completed
1428	387	2024-03-13	completed
1429	426	2024-03-15	completed
1430	451	2024-03-14	completed
1431	465	2024-03-14	completed
1432	469	2024-03-28	completed
1433	503	2024-03-11	completed
1434	509	2024-03-13	completed
1435	560	2024-03-14	completed
1436	568	2024-03-31	completed
1437	586	2024-03-09	completed
1438	591	2024-03-30	completed
1439	609	2024-03-08	completed
1440	611	2024-03-12	completed
1441	620	2024-03-23	cancelled
1442	643	2024-03-02	completed
1443	667	2024-03-29	completed
1444	670	2024-03-16	completed
1445	675	2024-03-24	completed
1446	685	2024-03-03	completed
1447	701	2024-03-16	completed
1448	702	2024-03-15	completed
1449	729	2024-03-20	completed
1450	739	2024-03-22	completed
1451	743	2024-03-01	completed
1452	752	2024-03-11	completed
1453	758	2024-03-25	completed
1454	773	2024-03-07	completed
1455	784	2024-03-12	completed
1456	801	2024-03-10	completed
1457	854	2024-03-28	completed
1458	858	2024-03-30	completed
1459	862	2024-03-13	completed
1460	877	2024-03-09	completed
1461	881	2024-03-31	completed
1462	889	2024-03-10	completed
1463	913	2024-03-09	completed
1464	932	2024-03-31	cancelled
1465	935	2024-03-09	completed
1466	939	2024-03-19	completed
1467	951	2024-03-24	completed
1468	974	2024-03-17	completed
1469	994	2024-03-09	completed
1470	1021	2024-03-17	completed
1471	1045	2024-03-21	completed
1472	1053	2024-03-19	completed
1473	1054	2024-03-19	completed
1474	1058	2024-03-21	completed
1475	1071	2024-03-28	completed
1476	1073	2024-03-20	completed
1477	1080	2024-03-23	completed
1478	1085	2024-03-12	completed
1479	1108	2024-03-19	completed
1480	1113	2024-03-23	completed
1481	1117	2024-03-20	completed
1482	1121	2024-03-11	completed
1483	1121	2024-03-26	completed
1484	1138	2024-03-31	completed
1485	1172	2024-03-21	completed
1486	1205	2024-03-02	completed
1487	1250	2024-03-07	completed
1488	1261	2024-03-19	completed
1489	1274	2024-03-19	completed
1490	1306	2024-03-05	completed
1491	1315	2024-03-28	completed
1492	1363	2024-03-17	completed
1493	1365	2024-03-25	completed
1494	1366	2024-03-06	completed
1495	1422	2024-03-26	completed
1496	1425	2024-03-15	completed
1497	1434	2024-03-06	completed
1498	1443	2024-03-22	completed
1499	1445	2024-03-01	completed
1500	1476	2024-03-23	completed
1501	1502	2024-03-04	completed
1502	1512	2024-03-29	completed
1503	1515	2024-03-19	completed
1504	1527	2024-03-20	completed
1505	1534	2024-03-30	completed
1506	1556	2024-03-03	completed
1507	1580	2024-03-25	completed
1508	1597	2024-03-25	completed
1509	1623	2024-03-18	completed
1510	1623	2024-03-28	completed
1511	1632	2024-03-16	completed
1512	1672	2024-03-18	completed
1513	1673	2024-03-15	completed
1514	1714	2024-03-23	completed
1515	1722	2024-03-08	completed
1516	1737	2024-03-25	completed
1517	1760	2024-03-31	completed
1518	1762	2024-03-29	completed
1519	1763	2024-03-16	completed
1520	1786	2024-03-02	completed
1521	1810	2024-03-13	completed
1522	1824	2024-03-25	completed
1523	1832	2024-03-16	completed
1524	1841	2024-03-12	completed
1525	1856	2024-03-05	completed
1526	1876	2024-03-07	completed
1527	1881	2024-03-20	completed
1528	1912	2024-03-25	completed
1529	1921	2024-03-28	completed
1530	1946	2024-03-20	completed
1531	1966	2024-03-31	completed
1532	1971	2024-03-03	completed
1533	1971	2024-03-20	completed
1534	2010	2024-03-20	completed
1535	2023	2024-03-06	completed
1536	2067	2024-03-07	completed
1537	2102	2024-03-30	completed
1538	2117	2024-03-31	completed
1539	2118	2024-03-26	completed
1540	2131	2024-03-16	completed
1541	2135	2024-03-18	completed
1542	2154	2024-03-07	completed
1543	2160	2024-03-07	completed
1544	2185	2024-03-12	completed
1545	2190	2024-03-23	completed
1546	2236	2024-03-10	completed
1547	2243	2024-03-17	completed
1548	2245	2024-03-26	completed
1549	2250	2024-03-12	completed
1550	2255	2024-03-13	completed
1551	2259	2024-03-09	completed
1552	2273	2024-03-30	completed
1553	2278	2024-03-13	completed
1554	2280	2024-03-03	completed
1555	2322	2024-03-13	completed
1556	2328	2024-03-10	cancelled
1557	2341	2024-03-21	completed
1558	2355	2024-03-26	completed
1559	2365	2024-03-26	completed
1560	2381	2024-03-22	completed
1561	2382	2024-03-19	completed
1562	2387	2024-03-09	completed
1563	2396	2024-03-11	completed
1564	2396	2024-03-24	completed
1565	2407	2024-03-26	completed
1566	2427	2024-03-08	completed
1567	2436	2024-03-03	refunded
1568	2460	2024-03-21	completed
1569	2460	2024-03-26	completed
1570	2481	2024-03-03	completed
1571	2488	2024-03-12	completed
1572	2500	2024-03-01	completed
1573	2559	2024-03-30	completed
1574	2566	2024-03-27	completed
1575	2582	2024-03-21	completed
1576	2591	2024-03-21	cancelled
1577	2596	2024-03-31	completed
1578	2618	2024-03-28	completed
1579	2653	2024-03-07	completed
1580	2673	2024-03-17	completed
1581	2690	2024-03-21	completed
1582	2698	2024-03-22	cancelled
1583	2769	2024-03-08	completed
1584	2778	2024-03-23	completed
1585	2780	2024-03-24	completed
1586	2848	2024-03-27	completed
1587	2853	2024-03-02	completed
1588	2853	2024-03-31	completed
1589	2894	2024-03-28	refunded
1590	2908	2024-03-24	completed
1591	2920	2024-03-07	completed
1592	2921	2024-03-02	completed
1593	2924	2024-03-13	completed
1594	2970	2024-03-10	completed
1595	2973	2024-03-27	completed
1596	2991	2024-03-23	completed
1597	13	2024-04-23	completed
1598	15	2024-04-25	completed
1599	16	2024-04-15	completed
1600	19	2024-04-27	completed
1601	32	2024-04-12	completed
1602	64	2024-04-18	completed
1603	78	2024-04-09	completed
1604	79	2024-04-27	completed
1605	112	2024-04-19	refunded
1606	143	2024-04-15	completed
1607	163	2024-04-09	completed
1608	199	2024-04-10	completed
1609	211	2024-04-15	completed
1610	216	2024-04-23	completed
1611	252	2024-04-05	completed
1612	268	2024-04-04	completed
1613	285	2024-04-18	completed
1614	286	2024-04-10	completed
1615	304	2024-04-14	cancelled
1616	308	2024-04-11	completed
1617	314	2024-04-07	completed
1618	325	2024-04-03	completed
1619	338	2024-04-26	completed
1620	339	2024-04-02	completed
1621	360	2024-04-05	completed
1622	363	2024-04-27	completed
1623	392	2024-04-23	completed
1624	392	2024-04-17	completed
1625	403	2024-04-13	completed
1626	428	2024-04-21	completed
1627	432	2024-04-25	completed
1628	444	2024-04-20	completed
1629	453	2024-04-16	completed
1630	468	2024-04-14	completed
1631	470	2024-04-27	completed
1632	482	2024-04-06	completed
1633	508	2024-04-22	completed
1634	556	2024-04-13	completed
1635	565	2024-04-10	completed
1636	583	2024-04-18	completed
1637	586	2024-04-19	completed
1638	591	2024-04-14	completed
1639	617	2024-04-29	completed
1640	661	2024-04-11	completed
1641	699	2024-04-30	completed
1642	710	2024-04-09	completed
1643	714	2024-04-30	completed
1644	733	2024-04-23	completed
1645	741	2024-04-05	completed
1646	750	2024-04-03	completed
1647	759	2024-04-18	completed
1648	800	2024-04-08	completed
1649	801	2024-04-28	completed
1650	816	2024-04-13	completed
1651	857	2024-04-27	completed
1652	913	2024-04-14	completed
1653	956	2024-04-29	completed
1654	957	2024-04-23	cancelled
1655	984	2024-04-01	completed
1656	991	2024-04-13	completed
1657	1000	2024-04-29	completed
1658	1015	2024-04-22	completed
1659	1016	2024-04-25	completed
1660	1021	2024-04-10	completed
1661	1025	2024-04-03	completed
1662	1042	2024-04-08	completed
1663	1058	2024-04-25	completed
1664	1071	2024-04-01	completed
1665	1074	2024-04-17	completed
1666	1076	2024-04-11	completed
1667	1079	2024-04-23	completed
1668	1094	2024-04-16	completed
1669	1115	2024-04-28	completed
1670	1138	2024-04-15	refunded
1671	1149	2024-04-24	completed
1672	1180	2024-04-06	completed
1673	1222	2024-04-01	cancelled
1674	1226	2024-04-25	completed
1675	1235	2024-04-10	refunded
1676	1242	2024-04-07	completed
1677	1245	2024-04-01	completed
1678	1315	2024-04-28	completed
1679	1317	2024-04-25	completed
1680	1342	2024-04-30	completed
1681	1348	2024-04-06	completed
1682	1371	2024-04-17	refunded
1683	1378	2024-04-07	completed
1684	1384	2024-04-07	completed
1685	1402	2024-04-01	completed
1686	1413	2024-04-02	completed
1687	1447	2024-04-30	completed
1688	1450	2024-04-03	completed
1689	1455	2024-04-04	completed
1690	1511	2024-04-18	completed
1691	1513	2024-04-13	completed
1692	1543	2024-04-22	completed
1693	1543	2024-04-17	completed
1694	1545	2024-04-29	completed
1695	1554	2024-04-10	completed
1696	1567	2024-04-02	completed
1697	1568	2024-04-24	completed
1698	1594	2024-04-05	completed
1699	1601	2024-04-27	completed
1700	1607	2024-04-12	completed
1701	1623	2024-04-08	completed
1702	1632	2024-04-29	completed
1703	1633	2024-04-29	completed
1704	1667	2024-04-23	completed
1705	1700	2024-04-07	completed
1706	1709	2024-04-20	completed
1707	1744	2024-04-06	completed
1708	1756	2024-04-12	completed
1709	1758	2024-04-01	completed
1710	1767	2024-04-01	completed
1711	1804	2024-04-22	refunded
1712	1816	2024-04-25	completed
1713	1834	2024-04-29	completed
1714	1836	2024-04-18	completed
1715	1860	2024-04-11	cancelled
1716	1892	2024-04-02	completed
1717	1893	2024-04-26	cancelled
1718	1905	2024-04-25	completed
1719	1907	2024-04-10	completed
1720	1912	2024-04-06	completed
1721	1915	2024-04-30	completed
1722	1948	2024-04-22	completed
1723	1971	2024-04-23	completed
1724	1981	2024-04-28	completed
1725	1994	2024-04-18	refunded
1726	2003	2024-04-27	completed
1727	2010	2024-04-27	completed
1728	2026	2024-04-08	completed
1729	2080	2024-04-02	completed
1730	2091	2024-04-03	completed
1731	2096	2024-04-19	completed
1732	2099	2024-04-20	completed
1733	2102	2024-04-15	completed
1734	2117	2024-04-22	completed
1735	2147	2024-04-06	completed
1736	2160	2024-04-02	completed
1737	2172	2024-04-30	completed
1738	2175	2024-04-29	completed
1739	2204	2024-04-02	completed
1740	2219	2024-04-01	completed
1741	2235	2024-04-23	completed
1742	2239	2024-04-17	completed
1743	2258	2024-04-13	completed
1744	2263	2024-04-02	completed
1745	2272	2024-04-22	completed
1746	2273	2024-04-12	completed
1747	2274	2024-04-28	completed
1748	2282	2024-04-02	completed
1749	2290	2024-04-19	completed
1750	2322	2024-04-29	completed
1751	2341	2024-04-13	completed
1752	2355	2024-04-07	completed
1753	2379	2024-04-22	completed
1754	2381	2024-04-21	completed
1755	2382	2024-04-22	completed
1756	2407	2024-04-24	completed
1757	2436	2024-04-20	completed
1758	2443	2024-04-28	completed
1759	2451	2024-04-24	completed
1760	2453	2024-04-13	completed
1761	2461	2024-04-19	completed
1762	2464	2024-04-13	completed
1763	2480	2024-04-11	completed
1764	2500	2024-04-11	completed
1765	2556	2024-04-21	completed
1766	2559	2024-04-09	refunded
1767	2575	2024-04-27	completed
1768	2579	2024-04-13	completed
1769	2640	2024-04-25	completed
1770	2647	2024-04-04	completed
1771	2655	2024-04-09	completed
1772	2728	2024-04-09	completed
1773	2811	2024-04-09	completed
1774	2835	2024-04-17	completed
1775	2846	2024-04-12	completed
1776	2855	2024-04-15	completed
1777	2866	2024-04-07	completed
1778	2869	2024-04-02	completed
1779	2896	2024-04-18	completed
1780	2905	2024-04-04	completed
1781	2914	2024-04-19	cancelled
1782	2936	2024-04-01	completed
1783	2965	2024-04-01	completed
1784	2976	2024-04-25	completed
1785	2985	2024-04-23	completed
1786	2997	2024-04-11	completed
1787	2	2024-05-12	completed
1788	47	2024-05-24	completed
1789	59	2024-05-19	completed
1790	80	2024-05-12	completed
1791	107	2024-05-22	completed
1792	143	2024-05-08	completed
1793	143	2024-05-25	completed
1794	219	2024-05-01	completed
1795	233	2024-05-06	completed
1796	249	2024-05-23	cancelled
1797	285	2024-05-11	cancelled
1798	289	2024-05-22	completed
1799	294	2024-05-12	completed
1800	306	2024-05-04	refunded
1801	314	2024-05-20	completed
1802	325	2024-05-06	completed
1803	325	2024-05-21	completed
1804	333	2024-05-08	completed
1805	334	2024-05-26	completed
1806	343	2024-05-09	completed
1807	346	2024-05-04	refunded
1808	354	2024-05-28	completed
1809	363	2024-05-10	completed
1810	384	2024-05-03	completed
1811	404	2024-05-29	completed
1812	412	2024-05-09	completed
1813	433	2024-05-28	completed
1814	437	2024-05-08	completed
1815	442	2024-05-29	completed
1816	453	2024-05-06	completed
1817	469	2024-05-17	completed
1818	476	2024-05-19	completed
1819	479	2024-05-26	completed
1820	492	2024-05-06	completed
1821	508	2024-05-04	completed
1822	556	2024-05-03	completed
1823	558	2024-05-04	completed
1824	568	2024-05-24	completed
1825	572	2024-05-25	completed
1826	586	2024-05-03	completed
1827	617	2024-05-03	completed
1828	643	2024-05-11	completed
1829	647	2024-05-03	refunded
1830	655	2024-05-04	completed
1831	667	2024-05-25	completed
1832	675	2024-05-27	completed
1833	677	2024-05-03	completed
1834	699	2024-05-26	completed
1835	701	2024-05-30	completed
1836	727	2024-05-07	completed
1837	763	2024-05-19	completed
1838	773	2024-05-06	completed
1839	777	2024-05-17	completed
1840	778	2024-05-15	completed
1841	782	2024-05-21	refunded
1842	813	2024-05-24	completed
1843	816	2024-05-08	completed
1844	818	2024-05-07	completed
1845	827	2024-05-06	completed
1846	881	2024-05-26	completed
1847	887	2024-05-29	completed
1848	914	2024-05-16	completed
1849	914	2024-05-15	completed
1850	941	2024-05-03	completed
1851	956	2024-05-10	completed
1852	959	2024-05-05	completed
1853	960	2024-05-17	completed
1854	966	2024-05-31	completed
1855	968	2024-05-25	completed
1856	973	2024-05-10	completed
1857	974	2024-05-16	completed
1858	984	2024-05-03	completed
1859	999	2024-05-05	completed
1860	1004	2024-05-13	completed
1861	1027	2024-05-18	completed
1862	1028	2024-05-19	completed
1863	1045	2024-05-26	completed
1864	1053	2024-05-09	completed
1865	1056	2024-05-24	completed
1866	1064	2024-05-30	completed
1867	1071	2024-05-25	completed
1868	1074	2024-05-04	completed
1869	1084	2024-05-27	completed
1870	1094	2024-05-02	completed
1871	1103	2024-05-20	completed
1872	1126	2024-05-06	completed
1873	1149	2024-05-04	completed
1874	1156	2024-05-28	completed
1875	1189	2024-05-31	completed
1876	1193	2024-05-24	completed
1877	1198	2024-05-12	completed
1878	1201	2024-05-26	completed
1879	1219	2024-05-23	completed
1880	1227	2024-05-13	completed
1881	1254	2024-05-28	completed
1882	1254	2024-05-03	completed
1883	1257	2024-05-09	completed
1884	1295	2024-05-14	completed
1885	1315	2024-05-07	completed
1886	1324	2024-05-31	completed
1887	1331	2024-05-01	completed
1888	1333	2024-05-10	completed
1889	1365	2024-05-01	completed
1890	1410	2024-05-07	cancelled
1891	1412	2024-05-16	completed
1892	1425	2024-05-05	completed
1893	1434	2024-05-27	completed
1894	1450	2024-05-06	completed
1895	1456	2024-05-30	completed
1896	1464	2024-05-10	completed
1897	1468	2024-05-09	completed
1898	1503	2024-05-22	completed
1899	1507	2024-05-31	completed
1900	1512	2024-05-09	completed
1901	1531	2024-05-21	completed
1902	1540	2024-05-25	completed
1903	1545	2024-05-29	completed
1904	1546	2024-05-15	completed
1905	1567	2024-05-08	completed
1906	1586	2024-05-02	completed
1907	1603	2024-05-16	completed
1908	1606	2024-05-16	completed
1909	1614	2024-05-17	completed
1910	1640	2024-05-19	completed
1911	1653	2024-05-22	completed
1912	1673	2024-05-01	completed
1913	1717	2024-05-05	completed
1914	1718	2024-05-19	completed
1915	1749	2024-05-07	completed
1916	1761	2024-05-12	completed
1917	1778	2024-05-13	completed
1918	1784	2024-05-15	completed
1919	1794	2024-05-20	completed
1920	1797	2024-05-11	completed
1921	1809	2024-05-08	cancelled
1922	1811	2024-05-17	completed
1923	1830	2024-05-10	completed
1924	1834	2024-05-08	completed
1925	1855	2024-05-04	completed
1926	1857	2024-05-03	completed
1927	1882	2024-05-04	completed
1928	1898	2024-05-14	completed
1929	1911	2024-05-27	completed
1930	1923	2024-05-23	completed
1931	1935	2024-05-07	completed
1932	1938	2024-05-28	completed
1933	1946	2024-05-26	completed
1934	1982	2024-05-12	completed
1935	1985	2024-05-13	completed
1936	2008	2024-05-05	completed
1937	2010	2024-05-05	completed
1938	2023	2024-05-22	completed
1939	2035	2024-05-17	completed
1940	2039	2024-05-21	completed
1941	2056	2024-05-25	completed
1942	2096	2024-05-31	completed
1943	2109	2024-05-30	completed
1944	2117	2024-05-24	completed
1945	2122	2024-05-06	completed
1946	2127	2024-05-19	completed
1947	2135	2024-05-19	completed
1948	2136	2024-05-14	completed
1949	2137	2024-05-08	completed
1950	2152	2024-05-28	completed
1951	2161	2024-05-11	completed
1952	2174	2024-05-02	completed
1953	2182	2024-05-28	completed
1954	2194	2024-05-29	completed
1955	2213	2024-05-03	completed
1956	2229	2024-05-20	completed
1957	2250	2024-05-01	completed
1958	2290	2024-05-06	completed
1959	2299	2024-05-25	completed
1960	2310	2024-05-02	completed
1961	2314	2024-05-23	completed
1962	2329	2024-05-26	completed
1963	2351	2024-05-04	completed
1964	2355	2024-05-24	refunded
1965	2363	2024-05-22	completed
1966	2382	2024-05-12	completed
1967	2393	2024-05-08	completed
1968	2423	2024-05-28	completed
1969	2425	2024-05-14	completed
1970	2427	2024-05-07	completed
1971	2432	2024-05-21	completed
1972	2433	2024-05-09	completed
1973	2453	2024-05-04	completed
1974	2473	2024-05-01	cancelled
1975	2489	2024-05-27	completed
1976	2490	2024-05-05	completed
1977	2493	2024-05-03	completed
1978	2501	2024-05-03	completed
1979	2506	2024-05-06	completed
1980	2532	2024-05-18	completed
1981	2571	2024-05-27	completed
1982	2604	2024-05-16	completed
1983	2622	2024-05-26	completed
1984	2632	2024-05-07	completed
1985	2633	2024-05-28	completed
1986	2647	2024-05-29	completed
1987	2667	2024-05-26	completed
1988	2708	2024-05-08	completed
1989	2714	2024-05-05	completed
1990	2722	2024-05-14	completed
1991	2731	2024-05-16	completed
1992	2740	2024-05-31	completed
1993	2759	2024-05-08	completed
1994	2769	2024-05-30	completed
1995	2803	2024-05-13	completed
1996	2834	2024-05-13	completed
1997	2834	2024-05-24	completed
1998	2845	2024-05-27	completed
1999	2846	2024-05-26	completed
2000	2866	2024-05-19	completed
2001	2869	2024-05-31	completed
2002	2882	2024-05-13	completed
2003	2887	2024-05-11	completed
2004	2889	2024-05-14	completed
2005	2905	2024-05-13	completed
2006	2943	2024-05-12	completed
2007	2990	2024-05-08	cancelled
2008	2	2024-06-08	refunded
2009	7	2024-06-04	completed
2010	12	2024-06-22	completed
2011	22	2024-06-01	completed
2012	32	2024-06-26	completed
2013	37	2024-06-28	completed
2014	45	2024-06-20	cancelled
2015	57	2024-06-14	completed
2016	63	2024-06-12	completed
2017	72	2024-06-25	completed
2018	78	2024-06-17	completed
2019	79	2024-06-03	completed
2020	146	2024-06-12	completed
2021	151	2024-06-22	completed
2022	161	2024-06-29	completed
2023	162	2024-06-01	completed
2024	173	2024-06-19	completed
2025	202	2024-06-20	refunded
2026	204	2024-06-06	completed
2027	211	2024-06-03	completed
2028	211	2024-06-22	cancelled
2029	263	2024-06-01	completed
2030	276	2024-06-19	completed
2031	279	2024-06-22	completed
2032	284	2024-06-25	completed
2033	289	2024-06-27	completed
2034	325	2024-06-30	completed
2035	333	2024-06-17	completed
2036	346	2024-06-15	completed
2037	349	2024-06-17	completed
2038	377	2024-06-05	completed
2039	382	2024-06-10	completed
2040	437	2024-06-15	cancelled
2041	446	2024-06-26	completed
2042	469	2024-06-12	completed
2043	475	2024-06-06	completed
2044	476	2024-06-28	completed
2045	480	2024-06-06	completed
2046	489	2024-06-19	completed
2047	492	2024-06-28	completed
2048	496	2024-06-12	completed
2049	527	2024-06-24	completed
2050	538	2024-06-10	completed
2051	556	2024-06-18	completed
2052	560	2024-06-25	completed
2053	586	2024-06-13	completed
2054	611	2024-06-22	completed
2055	619	2024-06-03	completed
2056	626	2024-06-30	completed
2057	651	2024-06-17	completed
2058	657	2024-06-14	completed
2059	670	2024-06-10	completed
2060	742	2024-06-17	completed
2061	750	2024-06-27	completed
2062	764	2024-06-12	completed
2063	777	2024-06-29	completed
2064	782	2024-06-05	completed
2065	817	2024-06-18	cancelled
2066	830	2024-06-25	completed
2067	850	2024-06-26	completed
2068	853	2024-06-27	completed
2069	881	2024-06-29	completed
2070	904	2024-06-18	completed
2071	913	2024-06-27	completed
2072	923	2024-06-01	completed
2073	934	2024-06-19	completed
2074	939	2024-06-09	cancelled
2075	941	2024-06-20	completed
2076	995	2024-06-23	completed
2077	1003	2024-06-08	completed
2078	1004	2024-06-14	completed
2079	1013	2024-06-24	completed
2080	1014	2024-06-30	refunded
2081	1019	2024-06-10	completed
2082	1027	2024-06-26	completed
2083	1029	2024-06-23	completed
2084	1050	2024-06-04	completed
2085	1069	2024-06-08	completed
2086	1080	2024-06-24	completed
2087	1080	2024-06-18	completed
2088	1102	2024-06-11	completed
2089	1117	2024-06-15	completed
2090	1121	2024-06-09	completed
2091	1141	2024-06-28	completed
2092	1152	2024-06-09	cancelled
2093	1156	2024-06-26	completed
2094	1168	2024-06-04	completed
2095	1198	2024-06-19	completed
2096	1206	2024-06-23	completed
2097	1213	2024-06-03	completed
2098	1222	2024-06-19	completed
2099	1222	2024-06-22	completed
2100	1230	2024-06-08	refunded
2101	1260	2024-06-23	completed
2102	1264	2024-06-14	completed
2103	1266	2024-06-08	completed
2104	1267	2024-06-24	completed
2105	1274	2024-06-16	completed
2106	1278	2024-06-22	completed
2107	1279	2024-06-06	completed
2108	1289	2024-06-30	completed
2109	1315	2024-06-08	completed
2110	1331	2024-06-17	completed
2111	1389	2024-06-05	completed
2112	1419	2024-06-19	completed
2113	1421	2024-06-15	completed
2114	1448	2024-06-21	completed
2115	1470	2024-06-15	completed
2116	1482	2024-06-04	completed
2117	1504	2024-06-25	completed
2118	1510	2024-06-30	completed
2119	1510	2024-06-20	completed
2120	1511	2024-06-25	completed
2121	1515	2024-06-16	completed
2122	1527	2024-06-06	completed
2123	1540	2024-06-13	completed
2124	1555	2024-06-12	completed
2125	1582	2024-06-17	completed
2126	1583	2024-06-19	completed
2127	1586	2024-06-03	completed
2128	1588	2024-06-12	completed
2129	1597	2024-06-25	completed
2130	1606	2024-06-07	completed
2131	1610	2024-06-29	completed
2132	1614	2024-06-30	completed
2133	1618	2024-06-04	refunded
2134	1649	2024-06-30	completed
2135	1670	2024-06-01	completed
2136	1673	2024-06-19	completed
2137	1682	2024-06-16	completed
2138	1709	2024-06-21	completed
2139	1718	2024-06-09	completed
2140	1744	2024-06-30	cancelled
2141	1747	2024-06-10	completed
2142	1751	2024-06-14	completed
2143	1762	2024-06-23	completed
2144	1763	2024-06-16	completed
2145	1786	2024-06-02	completed
2146	1795	2024-06-30	completed
2147	1797	2024-06-08	refunded
2148	1800	2024-06-26	completed
2149	1802	2024-06-13	completed
2150	1808	2024-06-16	completed
2151	1811	2024-06-23	completed
2152	1841	2024-06-16	completed
2153	1857	2024-06-11	completed
2154	1863	2024-06-10	completed
2155	1863	2024-06-24	completed
2156	1867	2024-06-21	completed
2157	1875	2024-06-10	completed
2158	1879	2024-06-10	completed
2159	1888	2024-06-12	completed
2160	1922	2024-06-28	completed
2161	1923	2024-06-15	completed
2162	1925	2024-06-08	completed
2163	1928	2024-06-08	completed
2164	1952	2024-06-19	completed
2165	1965	2024-06-02	completed
2166	1967	2024-06-14	completed
2167	1985	2024-06-26	completed
2168	1996	2024-06-10	completed
2169	2001	2024-06-23	completed
2170	2003	2024-06-24	completed
2171	2010	2024-06-22	completed
2172	2010	2024-06-11	refunded
2173	2011	2024-06-03	completed
2174	2027	2024-06-05	completed
2175	2039	2024-06-10	completed
2176	2091	2024-06-04	completed
2177	2096	2024-06-18	cancelled
2178	2104	2024-06-25	completed
2179	2119	2024-06-25	completed
2180	2126	2024-06-11	completed
2181	2135	2024-06-20	completed
2182	2161	2024-06-08	completed
2183	2174	2024-06-05	refunded
2184	2201	2024-06-08	completed
2185	2203	2024-06-22	completed
2186	2222	2024-06-21	completed
2187	2250	2024-06-24	completed
2188	2253	2024-06-04	completed
2189	2259	2024-06-22	completed
2190	2270	2024-06-06	completed
2191	2279	2024-06-23	completed
2192	2280	2024-06-01	refunded
2193	2306	2024-06-30	completed
2194	2322	2024-06-02	completed
2195	2351	2024-06-30	completed
2196	2352	2024-06-17	completed
2197	2359	2024-06-01	completed
2198	2385	2024-06-15	completed
2199	2386	2024-06-08	completed
2200	2387	2024-06-21	completed
2201	2389	2024-06-09	completed
2202	2390	2024-06-03	completed
2203	2392	2024-06-10	completed
2204	2396	2024-06-16	completed
2205	2398	2024-06-14	completed
2206	2421	2024-06-17	completed
2207	2426	2024-06-26	completed
2208	2439	2024-06-30	completed
2209	2448	2024-06-09	cancelled
2210	2460	2024-06-06	completed
2211	2461	2024-06-23	completed
2212	2461	2024-06-04	completed
2213	2470	2024-06-06	cancelled
2214	2471	2024-06-11	completed
2215	2473	2024-06-12	completed
2216	2490	2024-06-08	completed
2217	2493	2024-06-11	completed
2218	2507	2024-06-25	completed
2219	2532	2024-06-17	refunded
2220	2559	2024-06-07	completed
2221	2571	2024-06-17	refunded
2222	2596	2024-06-13	completed
2223	2618	2024-06-20	completed
2224	2628	2024-06-04	completed
2225	2629	2024-06-30	completed
2226	2640	2024-06-06	completed
2227	2703	2024-06-16	completed
2228	2711	2024-06-01	completed
2229	2714	2024-06-01	completed
2230	2736	2024-06-14	completed
2231	2738	2024-06-04	completed
2232	2741	2024-06-20	refunded
2233	2763	2024-06-03	completed
2234	2766	2024-06-30	completed
2235	2781	2024-06-26	completed
2236	2850	2024-06-25	completed
2237	2855	2024-06-04	completed
2238	2864	2024-06-19	completed
2239	2873	2024-06-19	completed
2240	2876	2024-06-28	completed
2241	2884	2024-06-24	refunded
2242	2889	2024-06-20	completed
2243	2925	2024-06-11	completed
2244	2927	2024-06-23	completed
2245	2993	2024-06-20	completed
2246	1	2024-07-14	completed
2247	2	2024-07-03	completed
2248	10	2024-07-16	completed
2249	17	2024-07-19	completed
2250	21	2024-07-05	refunded
2251	74	2024-07-06	completed
2252	76	2024-07-12	completed
2253	78	2024-07-23	completed
2254	89	2024-07-15	completed
2255	98	2024-07-05	refunded
2256	104	2024-07-20	completed
2257	115	2024-07-07	completed
2258	134	2024-07-08	refunded
2259	143	2024-07-01	completed
2260	189	2024-07-23	completed
2261	211	2024-07-16	completed
2262	261	2024-07-16	completed
2263	301	2024-07-09	completed
2264	303	2024-07-17	completed
2265	336	2024-07-03	completed
2266	344	2024-07-09	completed
2267	354	2024-07-30	completed
2268	361	2024-07-05	completed
2269	363	2024-07-15	completed
2270	387	2024-07-25	completed
2271	399	2024-07-23	completed
2272	403	2024-07-15	completed
2273	426	2024-07-08	completed
2274	451	2024-07-30	completed
2275	467	2024-07-14	cancelled
2276	467	2024-07-10	completed
2277	470	2024-07-09	completed
2278	476	2024-07-30	completed
2279	480	2024-07-06	completed
2280	484	2024-07-03	completed
2281	491	2024-07-07	completed
2282	492	2024-07-05	refunded
2283	515	2024-07-22	completed
2284	534	2024-07-28	completed
2285	540	2024-07-14	completed
2286	596	2024-07-09	completed
2287	619	2024-07-01	refunded
2288	619	2024-07-05	completed
2289	621	2024-07-19	completed
2290	631	2024-07-17	completed
2291	631	2024-07-28	completed
2292	641	2024-07-22	completed
2293	695	2024-07-24	completed
2294	727	2024-07-29	completed
2295	730	2024-07-04	completed
2296	736	2024-07-20	completed
2297	738	2024-07-15	completed
2298	742	2024-07-22	completed
2299	759	2024-07-04	completed
2300	773	2024-07-09	completed
2301	799	2024-07-02	completed
2302	801	2024-07-03	completed
2303	803	2024-07-27	completed
2304	816	2024-07-16	completed
2305	820	2024-07-07	completed
2306	827	2024-07-22	completed
2307	831	2024-07-02	completed
2308	841	2024-07-22	completed
2309	846	2024-07-06	completed
2310	848	2024-07-11	completed
2311	853	2024-07-15	completed
2312	868	2024-07-29	completed
2313	869	2024-07-14	completed
2314	870	2024-07-05	completed
2315	897	2024-07-25	completed
2316	902	2024-07-07	completed
2317	904	2024-07-03	completed
2318	918	2024-07-28	refunded
2319	920	2024-07-05	completed
2320	929	2024-07-05	refunded
2321	958	2024-07-19	completed
2322	960	2024-07-26	completed
2323	974	2024-07-19	completed
2324	979	2024-07-24	completed
2325	994	2024-07-04	completed
2326	994	2024-07-23	refunded
2327	1021	2024-07-06	completed
2328	1023	2024-07-20	completed
2329	1027	2024-07-13	completed
2330	1038	2024-07-31	completed
2331	1042	2024-07-29	completed
2332	1047	2024-07-12	completed
2333	1047	2024-07-31	completed
2334	1075	2024-07-01	completed
2335	1084	2024-07-21	refunded
2336	1091	2024-07-14	completed
2337	1094	2024-07-16	completed
2338	1101	2024-07-09	completed
2339	1108	2024-07-13	completed
2340	1126	2024-07-15	completed
2341	1153	2024-07-28	completed
2342	1158	2024-07-06	completed
2343	1158	2024-07-21	completed
2344	1161	2024-07-21	completed
2345	1170	2024-07-29	completed
2346	1180	2024-07-20	cancelled
2347	1182	2024-07-25	completed
2348	1193	2024-07-28	completed
2349	1205	2024-07-11	completed
2350	1206	2024-07-26	completed
2351	1230	2024-07-28	completed
2352	1230	2024-07-23	completed
2353	1260	2024-07-28	completed
2354	1261	2024-07-16	completed
2355	1264	2024-07-19	completed
2356	1280	2024-07-12	completed
2357	1284	2024-07-12	completed
2358	1295	2024-07-10	completed
2359	1297	2024-07-19	completed
2360	1341	2024-07-30	completed
2361	1345	2024-07-24	completed
2362	1354	2024-07-19	completed
2363	1358	2024-07-16	completed
2364	1360	2024-07-06	completed
2365	1365	2024-07-14	completed
2366	1392	2024-07-02	completed
2367	1416	2024-07-25	completed
2368	1424	2024-07-12	completed
2369	1429	2024-07-01	completed
2370	1430	2024-07-28	completed
2371	1434	2024-07-03	completed
2372	1446	2024-07-09	completed
2373	1447	2024-07-12	cancelled
2374	1450	2024-07-19	completed
2375	1456	2024-07-05	refunded
2376	1468	2024-07-08	completed
2377	1476	2024-07-14	completed
2378	1482	2024-07-21	completed
2379	1502	2024-07-28	completed
2380	1507	2024-07-29	completed
2381	1529	2024-07-09	completed
2382	1533	2024-07-05	completed
2383	1547	2024-07-05	completed
2384	1548	2024-07-06	completed
2385	1551	2024-07-14	refunded
2386	1567	2024-07-10	completed
2387	1596	2024-07-25	completed
2388	1606	2024-07-12	cancelled
2389	1614	2024-07-22	completed
2390	1623	2024-07-04	completed
2391	1632	2024-07-08	completed
2392	1633	2024-07-04	completed
2393	1642	2024-07-31	completed
2394	1649	2024-07-21	completed
2395	1665	2024-07-21	completed
2396	1686	2024-07-24	completed
2397	1698	2024-07-17	completed
2398	1700	2024-07-18	completed
2399	1737	2024-07-13	completed
2400	1748	2024-07-22	completed
2401	1750	2024-07-05	completed
2402	1752	2024-07-18	completed
2403	1763	2024-07-21	completed
2404	1767	2024-07-30	completed
2405	1772	2024-07-03	completed
2406	1773	2024-07-22	completed
2407	1811	2024-07-25	completed
2408	1819	2024-07-27	completed
2409	1823	2024-07-03	completed
2410	1836	2024-07-26	completed
2411	1846	2024-07-16	completed
2412	1864	2024-07-31	completed
2413	1885	2024-07-09	completed
2414	1886	2024-07-17	completed
2415	1908	2024-07-09	completed
2416	1915	2024-07-28	completed
2417	1928	2024-07-13	completed
2418	1930	2024-07-30	completed
2419	1930	2024-07-25	refunded
2420	1947	2024-07-07	completed
2421	1957	2024-07-20	completed
2422	1965	2024-07-21	refunded
2423	1978	2024-07-20	completed
2424	1982	2024-07-28	completed
2425	1990	2024-07-31	completed
2426	2014	2024-07-09	completed
2427	2019	2024-07-27	completed
2428	2038	2024-07-13	completed
2429	2066	2024-07-10	completed
2430	2067	2024-07-03	cancelled
2431	2080	2024-07-26	refunded
2432	2094	2024-07-12	refunded
2433	2119	2024-07-25	completed
2434	2120	2024-07-07	completed
2435	2120	2024-07-09	completed
2436	2131	2024-07-13	completed
2437	2151	2024-07-06	completed
2438	2154	2024-07-15	completed
2439	2171	2024-07-09	completed
2440	2174	2024-07-03	refunded
2441	2188	2024-07-14	completed
2442	2195	2024-07-27	completed
2443	2218	2024-07-26	completed
2444	2235	2024-07-25	completed
2445	2250	2024-07-01	completed
2446	2259	2024-07-06	completed
2447	2270	2024-07-22	completed
2448	2272	2024-07-12	completed
2449	2274	2024-07-18	completed
2450	2277	2024-07-10	completed
2451	2290	2024-07-16	completed
2452	2299	2024-07-21	completed
2453	2306	2024-07-13	completed
2454	2314	2024-07-21	completed
2455	2325	2024-07-01	completed
2456	2328	2024-07-08	completed
2457	2346	2024-07-26	completed
2458	2349	2024-07-26	completed
2459	2351	2024-07-04	cancelled
2460	2352	2024-07-12	completed
2461	2356	2024-07-24	completed
2462	2369	2024-07-11	completed
2463	2369	2024-07-06	refunded
2464	2386	2024-07-16	completed
2465	2388	2024-07-06	completed
2466	2407	2024-07-12	completed
2467	2409	2024-07-13	completed
2468	2416	2024-07-30	completed
2469	2420	2024-07-14	completed
2470	2448	2024-07-13	cancelled
2471	2460	2024-07-13	completed
2472	2494	2024-07-24	completed
2473	2501	2024-07-09	completed
2474	2515	2024-07-13	completed
2475	2536	2024-07-18	completed
2476	2553	2024-07-27	completed
2477	2573	2024-07-03	completed
2478	2587	2024-07-26	completed
2479	2587	2024-07-04	completed
2480	2603	2024-07-19	completed
2481	2629	2024-07-15	completed
2482	2642	2024-07-09	completed
2483	2653	2024-07-13	completed
2484	2677	2024-07-18	completed
2485	2689	2024-07-28	completed
2486	2690	2024-07-19	completed
2487	2694	2024-07-12	completed
2488	2739	2024-07-25	completed
2489	2742	2024-07-08	completed
2490	2766	2024-07-20	completed
2491	2786	2024-07-09	completed
2492	2848	2024-07-21	completed
2493	2849	2024-07-05	completed
2494	2851	2024-07-13	completed
2495	2852	2024-07-30	completed
2496	2858	2024-07-16	completed
2497	2859	2024-07-01	completed
2498	2869	2024-07-09	completed
2499	2869	2024-07-11	completed
2500	2874	2024-07-18	completed
2501	2887	2024-07-12	completed
2502	2934	2024-07-29	completed
2503	2939	2024-07-04	completed
2504	2939	2024-07-20	completed
2505	2969	2024-07-03	completed
2506	2978	2024-07-28	completed
2507	1	2024-08-17	completed
2508	2	2024-08-25	completed
2509	9	2024-08-13	completed
2510	13	2024-08-03	cancelled
2511	38	2024-08-05	completed
2512	48	2024-08-26	completed
2513	57	2024-08-03	completed
2514	60	2024-08-21	completed
2515	70	2024-08-18	completed
2516	78	2024-08-12	completed
2517	101	2024-08-11	refunded
2518	107	2024-08-18	completed
2519	108	2024-08-02	completed
2520	111	2024-08-27	completed
2521	117	2024-08-05	completed
2522	118	2024-08-07	completed
2523	119	2024-08-11	completed
2524	151	2024-08-18	completed
2525	153	2024-08-30	completed
2526	173	2024-08-20	completed
2527	193	2024-08-22	refunded
2528	204	2024-08-21	completed
2529	209	2024-08-28	completed
2530	216	2024-08-06	completed
2531	235	2024-08-24	completed
2532	265	2024-08-12	completed
2533	284	2024-08-27	completed
2534	286	2024-08-03	completed
2535	297	2024-08-11	completed
2536	314	2024-08-21	completed
2537	322	2024-08-03	completed
2538	331	2024-08-16	completed
2539	333	2024-08-10	completed
2540	334	2024-08-10	cancelled
2541	336	2024-08-12	completed
2542	342	2024-08-31	completed
2543	344	2024-08-04	completed
2544	347	2024-08-23	completed
2545	349	2024-08-29	completed
2546	378	2024-08-30	completed
2547	378	2024-08-05	completed
2548	400	2024-08-25	completed
2549	403	2024-08-17	completed
2550	408	2024-08-29	completed
2551	432	2024-08-31	refunded
2552	453	2024-08-13	completed
2553	456	2024-08-14	completed
2554	492	2024-08-21	completed
2555	495	2024-08-16	completed
2556	500	2024-08-12	completed
2557	527	2024-08-09	completed
2558	529	2024-08-03	completed
2559	538	2024-08-01	completed
2560	542	2024-08-19	completed
2561	544	2024-08-17	completed
2562	568	2024-08-08	completed
2563	579	2024-08-02	completed
2564	582	2024-08-21	completed
2565	583	2024-08-16	completed
2566	586	2024-08-14	completed
2567	596	2024-08-24	completed
2568	621	2024-08-26	completed
2569	628	2024-08-29	completed
2570	628	2024-08-17	completed
2571	639	2024-08-25	completed
2572	640	2024-08-12	completed
2573	643	2024-08-07	completed
2574	646	2024-08-09	completed
2575	662	2024-08-21	completed
2576	670	2024-08-13	refunded
2577	675	2024-08-19	completed
2578	683	2024-08-16	completed
2579	749	2024-08-09	completed
2580	752	2024-08-24	completed
2581	757	2024-08-15	cancelled
2582	777	2024-08-25	completed
2583	798	2024-08-18	completed
2584	803	2024-08-24	completed
2585	818	2024-08-24	completed
2586	841	2024-08-21	completed
2587	854	2024-08-01	completed
2588	859	2024-08-27	completed
2589	877	2024-08-21	completed
2590	902	2024-08-31	completed
2591	921	2024-08-26	completed
2592	941	2024-08-31	completed
2593	944	2024-08-27	completed
2594	951	2024-08-09	completed
2595	964	2024-08-05	completed
2596	974	2024-08-01	completed
2597	976	2024-08-22	completed
2598	980	2024-08-09	completed
2599	999	2024-08-29	completed
2600	1005	2024-08-01	completed
2601	1027	2024-08-14	cancelled
2602	1058	2024-08-20	completed
2603	1069	2024-08-25	completed
2604	1071	2024-08-17	completed
2605	1071	2024-08-30	completed
2606	1079	2024-08-26	completed
2607	1084	2024-08-15	completed
2608	1086	2024-08-11	cancelled
2609	1089	2024-08-09	completed
2610	1093	2024-08-10	completed
2611	1095	2024-08-14	completed
2612	1098	2024-08-20	completed
2613	1099	2024-08-04	completed
2614	1103	2024-08-27	completed
2615	1133	2024-08-10	completed
2616	1154	2024-08-30	completed
2617	1158	2024-08-16	completed
2618	1169	2024-08-03	completed
2619	1172	2024-08-16	completed
2620	1184	2024-08-27	completed
2621	1189	2024-08-02	completed
2622	1192	2024-08-10	completed
2623	1193	2024-08-11	completed
2624	1213	2024-08-28	completed
2625	1218	2024-08-04	completed
2626	1222	2024-08-12	completed
2627	1223	2024-08-31	completed
2628	1225	2024-08-17	completed
2629	1228	2024-08-05	completed
2630	1250	2024-08-12	completed
2631	1279	2024-08-14	cancelled
2632	1320	2024-08-11	completed
2633	1326	2024-08-26	completed
2634	1328	2024-08-25	completed
2635	1356	2024-08-10	completed
2636	1361	2024-08-27	completed
2637	1362	2024-08-31	completed
2638	1378	2024-08-02	completed
2639	1384	2024-08-26	cancelled
2640	1422	2024-08-03	completed
2641	1444	2024-08-29	completed
2642	1445	2024-08-21	completed
2643	1462	2024-08-30	completed
2644	1465	2024-08-07	completed
2645	1467	2024-08-28	completed
2646	1496	2024-08-30	completed
2647	1513	2024-08-29	completed
2648	1529	2024-08-30	completed
2649	1542	2024-08-19	completed
2650	1547	2024-08-26	completed
2651	1568	2024-08-24	completed
2652	1581	2024-08-22	completed
2653	1586	2024-08-07	completed
2654	1586	2024-08-23	completed
2655	1597	2024-08-11	completed
2656	1606	2024-08-14	completed
2657	1607	2024-08-04	completed
2658	1632	2024-08-29	completed
2659	1640	2024-08-10	completed
2660	1643	2024-08-16	completed
2661	1648	2024-08-19	completed
2662	1655	2024-08-19	completed
2663	1686	2024-08-09	completed
2664	1691	2024-08-18	completed
2665	1697	2024-08-19	completed
2666	1713	2024-08-12	completed
2667	1715	2024-08-15	completed
2668	1728	2024-08-16	refunded
2669	1767	2024-08-04	completed
2670	1794	2024-08-11	completed
2671	1797	2024-08-21	completed
2672	1802	2024-08-29	completed
2673	1811	2024-08-04	completed
2674	1854	2024-08-23	completed
2675	1861	2024-08-12	completed
2676	1863	2024-08-16	completed
2677	1864	2024-08-31	completed
2678	1884	2024-08-09	completed
2679	1888	2024-08-10	completed
2680	1908	2024-08-07	completed
2681	1921	2024-08-18	completed
2682	1922	2024-08-02	completed
2683	1928	2024-08-16	completed
2684	1935	2024-08-06	completed
2685	1936	2024-08-15	completed
2686	1975	2024-08-17	completed
2687	2004	2024-08-16	completed
2688	2038	2024-08-30	completed
2689	2038	2024-08-27	completed
2690	2040	2024-08-24	completed
2691	2044	2024-08-02	completed
2692	2056	2024-08-13	completed
2693	2071	2024-08-06	completed
2694	2098	2024-08-14	completed
2695	2100	2024-08-21	refunded
2696	2104	2024-08-02	completed
2697	2119	2024-08-14	completed
2698	2134	2024-08-08	completed
2699	2171	2024-08-21	completed
2700	2182	2024-08-29	completed
2701	2189	2024-08-10	completed
2702	2190	2024-08-12	completed
2703	2264	2024-08-19	completed
2704	2295	2024-08-19	completed
2705	2297	2024-08-08	completed
2706	2314	2024-08-16	completed
2707	2341	2024-08-03	completed
2708	2349	2024-08-25	completed
2709	2359	2024-08-03	completed
2710	2373	2024-08-25	completed
2711	2379	2024-08-21	completed
2712	2388	2024-08-22	completed
2713	2389	2024-08-08	completed
2714	2393	2024-08-01	completed
2715	2403	2024-08-08	completed
2716	2410	2024-08-19	completed
2717	2427	2024-08-13	completed
2718	2432	2024-08-25	completed
2719	2434	2024-08-04	completed
2720	2440	2024-08-15	completed
2721	2456	2024-08-03	completed
2722	2469	2024-08-17	completed
2723	2473	2024-08-17	completed
2724	2478	2024-08-23	completed
2725	2511	2024-08-25	completed
2726	2515	2024-08-26	completed
2727	2524	2024-08-30	completed
2728	2529	2024-08-19	completed
2729	2532	2024-08-28	completed
2730	2537	2024-08-15	completed
2731	2541	2024-08-01	completed
2732	2556	2024-08-09	completed
2733	2563	2024-08-03	completed
2734	2573	2024-08-10	completed
2735	2579	2024-08-08	completed
2736	2617	2024-08-31	completed
2737	2618	2024-08-04	completed
2738	2621	2024-08-24	completed
2739	2621	2024-08-21	completed
2740	2624	2024-08-10	completed
2741	2633	2024-08-11	completed
2742	2642	2024-08-07	completed
2743	2669	2024-08-13	completed
2744	2692	2024-08-03	completed
2745	2694	2024-08-27	completed
2746	2722	2024-08-13	completed
2747	2730	2024-08-27	refunded
2748	2738	2024-08-24	cancelled
2749	2742	2024-08-15	completed
2750	2753	2024-08-04	completed
2751	2759	2024-08-28	completed
2752	2771	2024-08-28	completed
2753	2786	2024-08-25	completed
2754	2804	2024-08-13	completed
2755	2834	2024-08-20	cancelled
2756	2846	2024-08-26	completed
2757	2861	2024-08-29	completed
2758	2905	2024-08-01	completed
2759	2957	2024-08-20	completed
2760	2961	2024-08-21	completed
2761	2965	2024-08-03	completed
2762	2974	2024-08-15	completed
2763	2991	2024-08-03	cancelled
2764	2993	2024-08-13	completed
2765	2993	2024-08-30	completed
2766	2995	2024-08-11	completed
2767	3000	2024-08-17	completed
2768	26	2024-09-04	completed
2769	26	2024-09-23	completed
2770	30	2024-09-29	completed
2771	47	2024-09-06	completed
2772	53	2024-09-14	completed
2773	64	2024-09-12	completed
2774	76	2024-09-05	completed
2775	84	2024-09-28	completed
2776	108	2024-09-03	completed
2777	116	2024-09-06	completed
2778	117	2024-09-17	completed
2779	119	2024-09-29	completed
2780	129	2024-09-06	completed
2781	136	2024-09-23	completed
2782	142	2024-09-09	completed
2783	162	2024-09-18	completed
2784	189	2024-09-16	completed
2785	199	2024-09-17	completed
2786	207	2024-09-27	completed
2787	217	2024-09-24	completed
2788	218	2024-09-05	completed
2789	219	2024-09-18	completed
2790	221	2024-09-13	refunded
2791	233	2024-09-29	completed
2792	242	2024-09-02	completed
2793	249	2024-09-14	completed
2794	253	2024-09-06	completed
2795	263	2024-09-25	completed
2796	294	2024-09-29	completed
2797	296	2024-09-11	completed
2798	302	2024-09-30	completed
2799	312	2024-09-20	completed
2800	314	2024-09-28	completed
2801	333	2024-09-02	completed
2802	366	2024-09-19	completed
2803	369	2024-09-08	completed
2804	388	2024-09-30	cancelled
2805	398	2024-09-21	completed
2806	404	2024-09-29	completed
2807	417	2024-09-30	completed
2808	453	2024-09-19	completed
2809	459	2024-09-16	completed
2810	470	2024-09-08	completed
2811	472	2024-09-18	completed
2812	503	2024-09-08	completed
2813	508	2024-09-13	completed
2814	526	2024-09-05	completed
2815	535	2024-09-02	cancelled
2816	572	2024-09-15	completed
2817	582	2024-09-01	completed
2818	584	2024-09-14	completed
2819	603	2024-09-12	completed
2820	618	2024-09-13	completed
2821	619	2024-09-12	completed
2822	621	2024-09-23	completed
2823	634	2024-09-19	completed
2824	635	2024-09-01	completed
2825	653	2024-09-14	completed
2826	654	2024-09-15	completed
2827	654	2024-09-13	completed
2828	674	2024-09-09	completed
2829	685	2024-09-19	completed
2830	709	2024-09-27	completed
2831	717	2024-09-07	completed
2832	720	2024-09-18	completed
2833	730	2024-09-09	completed
2834	742	2024-09-29	completed
2835	756	2024-09-01	completed
2836	763	2024-09-12	refunded
2837	787	2024-09-28	completed
2838	793	2024-09-19	cancelled
2839	798	2024-09-18	completed
2840	831	2024-09-12	completed
2841	845	2024-09-16	completed
2842	850	2024-09-01	completed
2843	874	2024-09-09	completed
2844	914	2024-09-22	completed
2845	932	2024-09-03	completed
2846	940	2024-09-15	completed
2847	957	2024-09-17	cancelled
2848	966	2024-09-25	completed
2849	974	2024-09-20	completed
2850	986	2024-09-21	completed
2851	989	2024-09-29	completed
2852	995	2024-09-06	completed
2853	1000	2024-09-10	completed
2854	1009	2024-09-01	completed
2855	1009	2024-09-22	completed
2856	1014	2024-09-21	completed
2857	1027	2024-09-09	completed
2858	1028	2024-09-25	completed
2859	1030	2024-09-12	completed
2860	1043	2024-09-08	completed
2861	1050	2024-09-25	completed
2862	1074	2024-09-16	completed
2863	1098	2024-09-03	completed
2864	1120	2024-09-28	completed
2865	1127	2024-09-07	completed
2866	1139	2024-09-25	completed
2867	1141	2024-09-01	completed
2868	1145	2024-09-27	completed
2869	1149	2024-09-24	completed
2870	1169	2024-09-18	completed
2871	1192	2024-09-11	completed
2872	1197	2024-09-07	completed
2873	1199	2024-09-01	completed
2874	1206	2024-09-01	cancelled
2875	1219	2024-09-19	completed
2876	1222	2024-09-13	completed
2877	1231	2024-09-15	completed
2878	1250	2024-09-25	completed
2879	1254	2024-09-24	completed
2880	1272	2024-09-26	completed
2881	1278	2024-09-03	completed
2882	1279	2024-09-21	completed
2883	1306	2024-09-08	completed
2884	1319	2024-09-29	completed
2885	1328	2024-09-22	completed
2886	1342	2024-09-03	completed
2887	1347	2024-09-21	completed
2888	1401	2024-09-01	completed
2889	1410	2024-09-05	completed
2890	1422	2024-09-21	completed
2891	1455	2024-09-08	completed
2892	1468	2024-09-02	completed
2893	1476	2024-09-30	completed
2894	1476	2024-09-29	completed
2895	1490	2024-09-16	completed
2896	1493	2024-09-18	completed
2897	1513	2024-09-21	completed
2898	1526	2024-09-17	cancelled
2899	1526	2024-09-07	completed
2900	1528	2024-09-01	completed
2901	1542	2024-09-21	completed
2902	1558	2024-09-07	completed
2903	1567	2024-09-11	completed
2904	1578	2024-09-22	completed
2905	1603	2024-09-02	completed
2906	1611	2024-09-13	completed
2907	1633	2024-09-20	completed
2908	1677	2024-09-03	completed
2909	1677	2024-09-03	completed
2910	1682	2024-09-23	completed
2911	1682	2024-09-22	completed
2912	1714	2024-09-19	completed
2913	1722	2024-09-03	completed
2914	1735	2024-09-12	completed
2915	1757	2024-09-01	completed
2916	1760	2024-09-03	completed
2917	1774	2024-09-23	completed
2918	1779	2024-09-01	cancelled
2919	1779	2024-09-04	completed
2920	1780	2024-09-18	completed
2921	1783	2024-09-19	completed
2922	1819	2024-09-04	completed
2923	1834	2024-09-26	completed
2924	1835	2024-09-27	completed
2925	1888	2024-09-11	completed
2926	1923	2024-09-23	completed
2927	1926	2024-09-12	completed
2928	1930	2024-09-24	completed
2929	1935	2024-09-11	completed
2930	1938	2024-09-16	completed
2931	2027	2024-09-16	completed
2932	2049	2024-09-01	completed
2933	2077	2024-09-07	completed
2934	2100	2024-09-14	completed
2935	2109	2024-09-27	completed
2936	2130	2024-09-06	completed
2937	2132	2024-09-18	completed
2938	2135	2024-09-21	completed
2939	2160	2024-09-30	completed
2940	2166	2024-09-10	completed
2941	2173	2024-09-22	completed
2942	2185	2024-09-05	cancelled
2943	2191	2024-09-04	completed
2944	2222	2024-09-18	completed
2945	2229	2024-09-24	completed
2946	2236	2024-09-12	completed
2947	2244	2024-09-20	completed
2948	2259	2024-09-10	completed
2949	2264	2024-09-19	refunded
2950	2264	2024-09-12	cancelled
2951	2303	2024-09-21	completed
2952	2308	2024-09-03	completed
2953	2314	2024-09-19	completed
2954	2317	2024-09-28	completed
2955	2322	2024-09-11	cancelled
2956	2338	2024-09-29	completed
2957	2355	2024-09-14	completed
2958	2364	2024-09-17	completed
2959	2379	2024-09-08	completed
2960	2395	2024-09-16	completed
2961	2396	2024-09-20	completed
2962	2410	2024-09-21	completed
2963	2420	2024-09-04	completed
2964	2430	2024-09-18	completed
2965	2431	2024-09-26	completed
2966	2443	2024-09-05	completed
2967	2453	2024-09-14	completed
2968	2487	2024-09-14	completed
2969	2519	2024-09-27	completed
2970	2540	2024-09-25	completed
2971	2550	2024-09-03	completed
2972	2553	2024-09-10	cancelled
2973	2553	2024-09-10	completed
2974	2557	2024-09-27	completed
2975	2563	2024-09-25	completed
2976	2571	2024-09-24	completed
2977	2591	2024-09-22	completed
2978	2607	2024-09-14	completed
2979	2638	2024-09-11	cancelled
2980	2656	2024-09-27	completed
2981	2676	2024-09-23	completed
2982	2683	2024-09-07	completed
2983	2711	2024-09-25	completed
2984	2714	2024-09-21	completed
2985	2728	2024-09-03	completed
2986	2732	2024-09-16	completed
2987	2769	2024-09-08	completed
2988	2783	2024-09-10	completed
2989	2791	2024-09-14	completed
2990	2794	2024-09-07	completed
2991	2798	2024-09-02	completed
2992	2801	2024-09-02	cancelled
2993	2802	2024-09-04	completed
2994	2818	2024-09-08	completed
2995	2834	2024-09-30	completed
2996	2846	2024-09-30	completed
2997	2849	2024-09-12	completed
2998	2851	2024-09-22	completed
2999	2852	2024-09-18	completed
3000	2868	2024-09-07	completed
3001	2879	2024-09-10	completed
3002	2891	2024-09-19	completed
3003	2893	2024-09-12	completed
3004	2896	2024-09-04	completed
3005	2899	2024-09-10	completed
3006	2913	2024-09-18	completed
3007	2933	2024-09-04	refunded
3008	2934	2024-09-19	refunded
3009	2977	2024-09-18	completed
3010	2985	2024-09-18	completed
3011	2986	2024-09-21	completed
3012	2988	2024-09-12	completed
3013	2993	2024-09-22	completed
3014	1	2024-10-22	completed
3015	12	2024-10-03	completed
3016	18	2024-10-06	completed
3017	34	2024-10-11	completed
3018	60	2024-10-29	completed
3019	67	2024-10-21	completed
3020	72	2024-10-04	completed
3021	101	2024-10-14	completed
3022	104	2024-10-31	completed
3023	115	2024-10-13	completed
3024	117	2024-10-11	completed
3025	127	2024-10-27	completed
3026	128	2024-10-14	completed
3027	132	2024-10-05	completed
3028	142	2024-10-22	completed
3029	153	2024-10-29	completed
3030	173	2024-10-12	completed
3031	174	2024-10-10	completed
3032	175	2024-10-12	completed
3033	188	2024-10-14	completed
3034	206	2024-10-31	completed
3035	215	2024-10-27	completed
3036	216	2024-10-30	completed
3037	217	2024-10-18	completed
3038	219	2024-10-18	completed
3039	220	2024-10-23	completed
3040	225	2024-10-25	completed
3041	226	2024-10-26	completed
3042	235	2024-10-03	completed
3043	251	2024-10-05	cancelled
3044	257	2024-10-10	completed
3045	270	2024-10-20	completed
3046	272	2024-10-23	completed
3047	279	2024-10-28	completed
3048	297	2024-10-07	completed
3049	308	2024-10-25	completed
3050	357	2024-10-07	completed
3051	360	2024-10-07	completed
3052	364	2024-10-15	completed
3053	369	2024-10-21	completed
3054	375	2024-10-07	completed
3055	382	2024-10-23	completed
3056	404	2024-10-13	completed
3057	406	2024-10-05	completed
3058	416	2024-10-05	completed
3059	430	2024-10-27	completed
3060	444	2024-10-11	completed
3061	462	2024-10-09	completed
3062	468	2024-10-12	completed
3063	479	2024-10-20	completed
3064	498	2024-10-21	completed
3065	508	2024-10-16	completed
3066	517	2024-10-17	completed
3067	534	2024-10-10	completed
3068	541	2024-10-13	completed
3069	560	2024-10-30	completed
3070	569	2024-10-25	completed
3071	573	2024-10-13	cancelled
3072	587	2024-10-03	refunded
3073	590	2024-10-16	completed
3074	594	2024-10-06	completed
3075	633	2024-10-06	completed
3076	675	2024-10-10	completed
3077	683	2024-10-29	completed
3078	684	2024-10-01	completed
3079	685	2024-10-06	completed
3080	686	2024-10-06	completed
3081	687	2024-10-25	completed
3082	714	2024-10-24	completed
3083	723	2024-10-04	completed
3084	729	2024-10-22	completed
3085	749	2024-10-17	completed
3086	757	2024-10-18	completed
3087	772	2024-10-24	completed
3088	778	2024-10-20	completed
3089	787	2024-10-24	completed
3090	800	2024-10-23	completed
3091	811	2024-10-06	completed
3092	811	2024-10-26	completed
3093	835	2024-10-19	completed
3094	842	2024-10-30	completed
3095	870	2024-10-02	completed
3096	873	2024-10-17	completed
3097	880	2024-10-31	completed
3098	897	2024-10-30	completed
3099	906	2024-10-25	completed
3100	923	2024-10-02	completed
3101	923	2024-10-16	completed
3102	929	2024-10-20	completed
3103	953	2024-10-14	completed
3104	965	2024-10-20	completed
3105	976	2024-10-13	completed
3106	994	2024-10-28	completed
3107	1004	2024-10-16	completed
3108	1005	2024-10-13	completed
3109	1014	2024-10-02	completed
3110	1017	2024-10-12	completed
3111	1023	2024-10-25	completed
3112	1026	2024-10-18	completed
3113	1029	2024-10-29	completed
3114	1038	2024-10-27	completed
3115	1045	2024-10-18	refunded
3116	1050	2024-10-12	completed
3117	1053	2024-10-19	completed
3118	1058	2024-10-12	completed
3119	1085	2024-10-30	completed
3120	1086	2024-10-15	completed
3121	1112	2024-10-25	completed
3122	1149	2024-10-24	completed
3123	1155	2024-10-12	completed
3124	1182	2024-10-21	completed
3125	1192	2024-10-01	completed
3126	1199	2024-10-05	completed
3127	1201	2024-10-28	completed
3128	1205	2024-10-29	completed
3129	1214	2024-10-01	completed
3130	1217	2024-10-22	completed
3131	1232	2024-10-02	completed
3132	1241	2024-10-19	completed
3133	1242	2024-10-12	completed
3134	1255	2024-10-21	completed
3135	1261	2024-10-02	completed
3136	1264	2024-10-11	completed
3137	1274	2024-10-22	completed
3138	1284	2024-10-16	refunded
3139	1292	2024-10-10	completed
3140	1294	2024-10-07	completed
3141	1297	2024-10-14	completed
3142	1306	2024-10-04	completed
3143	1309	2024-10-19	completed
3144	1337	2024-10-16	completed
3145	1339	2024-10-15	completed
3146	1355	2024-10-08	completed
3147	1358	2024-10-03	completed
3148	1360	2024-10-31	completed
3149	1363	2024-10-16	completed
3150	1371	2024-10-11	refunded
3151	1371	2024-10-16	completed
3152	1373	2024-10-24	completed
3153	1387	2024-10-21	completed
3154	1392	2024-10-11	completed
3155	1395	2024-10-08	completed
3156	1410	2024-10-09	completed
3157	1430	2024-10-18	completed
3158	1441	2024-10-29	completed
3159	1455	2024-10-07	completed
3160	1468	2024-10-02	completed
3161	1476	2024-10-02	completed
3162	1483	2024-10-09	completed
3163	1493	2024-10-17	completed
3164	1501	2024-10-09	completed
3165	1522	2024-10-21	completed
3166	1535	2024-10-18	completed
3167	1551	2024-10-17	completed
3168	1557	2024-10-11	completed
3169	1567	2024-10-22	completed
3170	1572	2024-10-14	completed
3171	1586	2024-10-07	completed
3172	1597	2024-10-26	completed
3173	1611	2024-10-30	completed
3174	1657	2024-10-03	completed
3175	1660	2024-10-29	completed
3176	1676	2024-10-15	completed
3177	1677	2024-10-28	completed
3178	1707	2024-10-18	completed
3179	1709	2024-10-09	completed
3180	1715	2024-10-14	completed
3181	1722	2024-10-11	completed
3182	1737	2024-10-19	completed
3183	1744	2024-10-17	completed
3184	1748	2024-10-30	completed
3185	1774	2024-10-13	completed
3186	1784	2024-10-25	completed
3187	1794	2024-10-15	completed
3188	1796	2024-10-05	completed
3189	1797	2024-10-16	completed
3190	1801	2024-10-22	completed
3191	1801	2024-10-24	completed
3192	1806	2024-10-12	completed
3193	1810	2024-10-26	completed
3194	1830	2024-10-02	completed
3195	1834	2024-10-25	completed
3196	1846	2024-10-10	completed
3197	1854	2024-10-12	completed
3198	1866	2024-10-05	completed
3199	1882	2024-10-14	completed
3200	1885	2024-10-23	completed
3201	1888	2024-10-06	completed
3202	1896	2024-10-14	completed
3203	1905	2024-10-10	completed
3204	1908	2024-10-06	completed
3205	1911	2024-10-27	completed
3206	1945	2024-10-12	completed
3207	1946	2024-10-07	completed
3208	2017	2024-10-12	completed
3209	2019	2024-10-21	completed
3210	2027	2024-10-15	completed
3211	2038	2024-10-05	completed
3212	2046	2024-10-02	completed
3213	2071	2024-10-26	completed
3214	2102	2024-10-27	completed
3215	2109	2024-10-18	completed
3216	2118	2024-10-30	refunded
3217	2141	2024-10-29	completed
3218	2144	2024-10-21	completed
3219	2147	2024-10-12	completed
3220	2154	2024-10-06	completed
3221	2166	2024-10-11	completed
3222	2172	2024-10-22	completed
3223	2174	2024-10-22	completed
3224	2178	2024-10-03	completed
3225	2190	2024-10-12	completed
3226	2192	2024-10-23	completed
3227	2204	2024-10-16	completed
3228	2219	2024-10-17	completed
3229	2223	2024-10-06	completed
3230	2273	2024-10-20	completed
3231	2280	2024-10-21	completed
3232	2299	2024-10-26	completed
3233	2306	2024-10-17	completed
3234	2328	2024-10-18	completed
3235	2345	2024-10-28	completed
3236	2357	2024-10-28	completed
3237	2358	2024-10-01	refunded
3238	2363	2024-10-30	completed
3239	2382	2024-10-02	completed
3240	2387	2024-10-12	completed
3241	2419	2024-10-29	completed
3242	2420	2024-10-14	completed
3243	2423	2024-10-30	completed
3244	2424	2024-10-15	completed
3245	2426	2024-10-05	completed
3246	2430	2024-10-29	refunded
3247	2451	2024-10-26	completed
3248	2460	2024-10-27	completed
3249	2464	2024-10-02	completed
3250	2467	2024-10-15	completed
3251	2481	2024-10-29	completed
3252	2500	2024-10-09	completed
3253	2500	2024-10-28	completed
3254	2501	2024-10-28	completed
3255	2509	2024-10-04	completed
3256	2514	2024-10-26	completed
3257	2524	2024-10-02	completed
3258	2540	2024-10-02	completed
3259	2541	2024-10-26	completed
3260	2557	2024-10-27	completed
3261	2560	2024-10-02	completed
3262	2575	2024-10-30	completed
3263	2576	2024-10-11	completed
3264	2584	2024-10-07	completed
3265	2600	2024-10-26	completed
3266	2601	2024-10-19	completed
3267	2604	2024-10-17	completed
3268	2621	2024-10-08	completed
3269	2624	2024-10-15	completed
3270	2625	2024-10-25	completed
3271	2628	2024-10-27	completed
3272	2644	2024-10-21	completed
3273	2662	2024-10-18	completed
3274	2663	2024-10-09	completed
3275	2692	2024-10-24	completed
3276	2710	2024-10-15	completed
3277	2722	2024-10-07	completed
3278	2731	2024-10-30	completed
3279	2753	2024-10-08	completed
3280	2762	2024-10-02	completed
3281	2763	2024-10-09	completed
3282	2777	2024-10-23	completed
3283	2782	2024-10-22	completed
3284	2803	2024-10-28	cancelled
3285	2804	2024-10-30	completed
3286	2824	2024-10-11	completed
3287	2827	2024-10-13	completed
3288	2832	2024-10-08	completed
3289	2864	2024-10-11	completed
3290	2869	2024-10-16	cancelled
3291	2874	2024-10-20	completed
3292	2880	2024-10-08	completed
3293	2881	2024-10-05	completed
3294	2900	2024-10-06	completed
3295	2909	2024-10-16	completed
3296	2921	2024-10-12	completed
3297	2925	2024-10-17	completed
3298	2955	2024-10-21	completed
3299	2998	2024-10-29	completed
3300	3000	2024-10-04	cancelled
3301	3	2024-11-26	completed
3302	6	2024-11-02	cancelled
3303	15	2024-11-18	completed
3304	18	2024-11-12	completed
3305	22	2024-11-17	completed
3306	33	2024-11-09	completed
3307	37	2024-11-14	completed
3308	63	2024-11-05	completed
3309	80	2024-11-01	completed
3310	97	2024-11-08	completed
3311	107	2024-11-05	completed
3312	111	2024-11-08	completed
3313	112	2024-11-02	completed
3314	117	2024-11-06	completed
3315	124	2024-11-19	completed
3316	127	2024-11-02	completed
3317	128	2024-11-11	completed
3318	136	2024-11-17	completed
3319	140	2024-11-05	completed
3320	143	2024-11-09	completed
3321	143	2024-11-16	completed
3322	144	2024-11-25	completed
3323	166	2024-11-24	cancelled
3324	171	2024-11-16	completed
3325	173	2024-11-11	completed
3326	180	2024-11-09	completed
3327	188	2024-11-18	completed
3328	200	2024-11-21	completed
3329	215	2024-11-03	completed
3330	220	2024-11-23	completed
3331	230	2024-11-14	cancelled
3332	231	2024-11-13	completed
3333	256	2024-11-14	completed
3334	280	2024-11-20	completed
3335	299	2024-11-17	completed
3336	300	2024-11-07	completed
3337	304	2024-11-14	completed
3338	322	2024-11-11	completed
3339	325	2024-11-30	completed
3340	326	2024-11-06	completed
3341	327	2024-11-06	completed
3342	333	2024-11-06	completed
3343	343	2024-11-05	completed
3344	354	2024-11-13	completed
3345	355	2024-11-01	cancelled
3346	363	2024-11-03	completed
3347	363	2024-11-22	completed
3348	364	2024-11-23	completed
3349	368	2024-11-26	completed
3350	369	2024-11-26	completed
3351	389	2024-11-01	cancelled
3352	391	2024-11-21	completed
3353	394	2024-11-24	completed
3354	395	2024-11-30	completed
3355	395	2024-11-15	completed
3356	403	2024-11-09	completed
3357	406	2024-11-14	completed
3358	408	2024-11-10	completed
3359	409	2024-11-13	completed
3360	414	2024-11-01	completed
3361	417	2024-11-23	completed
3362	422	2024-11-09	completed
3363	425	2024-11-11	refunded
3364	433	2024-11-19	completed
3365	438	2024-11-02	completed
3366	447	2024-11-02	completed
3367	453	2024-11-13	completed
3368	456	2024-11-08	completed
3369	459	2024-11-09	cancelled
3370	468	2024-11-17	refunded
3371	469	2024-11-02	completed
3372	485	2024-11-29	completed
3373	491	2024-11-02	completed
3374	492	2024-11-22	completed
3375	500	2024-11-15	completed
3376	509	2024-11-25	cancelled
3377	515	2024-11-29	completed
3378	524	2024-11-09	completed
3379	540	2024-11-28	completed
3380	548	2024-11-17	completed
3381	569	2024-11-25	completed
3382	583	2024-11-26	completed
3383	584	2024-11-11	completed
3384	587	2024-11-13	completed
3385	591	2024-11-28	completed
3386	619	2024-11-11	completed
3387	628	2024-11-26	completed
3388	635	2024-11-20	completed
3389	647	2024-11-15	completed
3390	655	2024-11-01	completed
3391	670	2024-11-06	refunded
3392	674	2024-11-01	completed
3393	681	2024-11-02	completed
3394	682	2024-11-19	completed
3395	710	2024-11-18	completed
3396	723	2024-11-04	completed
3397	730	2024-11-04	completed
3398	749	2024-11-23	completed
3399	757	2024-11-23	completed
3400	759	2024-11-03	completed
3401	760	2024-11-15	completed
3402	778	2024-11-22	completed
3403	787	2024-11-19	completed
3404	787	2024-11-02	completed
3405	789	2024-11-10	completed
3406	801	2024-11-18	completed
3407	820	2024-11-14	completed
3408	829	2024-11-26	completed
3409	830	2024-11-16	completed
3410	831	2024-11-19	completed
3411	851	2024-11-07	cancelled
3412	857	2024-11-16	completed
3413	858	2024-11-16	cancelled
3414	859	2024-11-11	completed
3415	868	2024-11-08	completed
3416	894	2024-11-17	completed
3417	897	2024-11-22	completed
3418	909	2024-11-25	completed
3419	915	2024-11-12	cancelled
3420	917	2024-11-23	completed
3421	923	2024-11-04	completed
3422	929	2024-11-02	completed
3423	935	2024-11-27	completed
3424	941	2024-11-16	completed
3425	956	2024-11-04	completed
3426	960	2024-11-07	completed
3427	964	2024-11-14	completed
3428	968	2024-11-23	completed
3429	988	2024-11-22	completed
3430	992	2024-11-07	completed
3431	993	2024-11-19	completed
3432	1002	2024-11-18	completed
3433	1007	2024-11-26	completed
3434	1014	2024-11-08	completed
3435	1028	2024-11-20	completed
3436	1031	2024-11-09	completed
3437	1045	2024-11-13	completed
3438	1050	2024-11-18	completed
3439	1056	2024-11-26	completed
3440	1058	2024-11-04	completed
3441	1059	2024-11-05	refunded
3442	1069	2024-11-29	completed
3443	1088	2024-11-05	completed
3444	1089	2024-11-11	completed
3445	1098	2024-11-24	completed
3446	1099	2024-11-24	completed
3447	1101	2024-11-23	completed
3448	1103	2024-11-08	completed
3449	1107	2024-11-25	cancelled
3450	1135	2024-11-01	completed
3451	1137	2024-11-16	completed
3452	1141	2024-11-28	completed
3453	1143	2024-11-18	cancelled
3454	1148	2024-11-14	completed
3455	1168	2024-11-29	cancelled
3456	1169	2024-11-18	completed
3457	1182	2024-11-05	completed
3458	1183	2024-11-27	completed
3459	1201	2024-11-30	completed
3460	1211	2024-11-08	completed
3461	1222	2024-11-02	completed
3462	1226	2024-11-03	completed
3463	1233	2024-11-10	completed
3464	1234	2024-11-30	completed
3465	1240	2024-11-12	completed
3466	1242	2024-11-29	completed
3467	1250	2024-11-19	completed
3468	1265	2024-11-06	completed
3469	1265	2024-11-18	completed
3470	1272	2024-11-05	completed
3471	1279	2024-11-09	completed
3472	1284	2024-11-05	completed
3473	1287	2024-11-24	completed
3474	1300	2024-11-27	completed
3475	1319	2024-11-06	completed
3476	1328	2024-11-15	completed
3477	1339	2024-11-18	completed
3478	1343	2024-11-02	completed
3479	1345	2024-11-20	completed
3480	1348	2024-11-18	completed
3481	1356	2024-11-20	completed
3482	1363	2024-11-03	completed
3483	1363	2024-11-19	completed
3484	1370	2024-11-30	completed
3485	1371	2024-11-03	completed
3486	1373	2024-11-02	completed
3487	1400	2024-11-10	completed
3488	1402	2024-11-13	cancelled
3489	1425	2024-11-10	completed
3490	1430	2024-11-09	completed
3491	1436	2024-11-28	completed
3492	1441	2024-11-07	completed
3493	1444	2024-11-21	completed
3494	1446	2024-11-28	completed
3495	1448	2024-11-20	completed
3496	1450	2024-11-25	completed
3497	1456	2024-11-14	completed
3498	1463	2024-11-25	completed
3499	1464	2024-11-18	completed
3500	1471	2024-11-08	completed
3501	1481	2024-11-12	completed
3502	1482	2024-11-26	completed
3503	1484	2024-11-21	completed
3504	1503	2024-11-10	completed
3505	1507	2024-11-20	completed
3506	1511	2024-11-19	completed
3507	1522	2024-11-23	completed
3508	1526	2024-11-17	completed
3509	1543	2024-11-03	completed
3510	1550	2024-11-27	completed
3511	1561	2024-11-08	completed
3512	1572	2024-11-22	completed
3513	1583	2024-11-08	completed
3514	1586	2024-11-07	completed
3515	1594	2024-11-05	cancelled
3516	1594	2024-11-23	completed
3517	1596	2024-11-24	completed
3518	1623	2024-11-13	completed
3519	1640	2024-11-06	completed
3520	1642	2024-11-18	completed
3521	1642	2024-11-26	completed
3522	1650	2024-11-01	completed
3523	1655	2024-11-05	completed
3524	1659	2024-11-18	completed
3525	1660	2024-11-17	completed
3526	1668	2024-11-22	completed
3527	1673	2024-11-29	completed
3528	1677	2024-11-08	completed
3529	1677	2024-11-26	completed
3530	1691	2024-11-21	completed
3531	1697	2024-11-27	completed
3532	1707	2024-11-30	refunded
3533	1710	2024-11-18	completed
3534	1710	2024-11-05	completed
3535	1716	2024-11-15	completed
3536	1727	2024-11-01	completed
3537	1731	2024-11-18	completed
3538	1734	2024-11-14	completed
3539	1737	2024-11-11	completed
3540	1737	2024-11-11	completed
3541	1741	2024-11-14	completed
3542	1746	2024-11-09	cancelled
3543	1761	2024-11-11	completed
3544	1765	2024-11-08	completed
3545	1767	2024-11-28	completed
3546	1772	2024-11-11	completed
3547	1783	2024-11-10	completed
3548	1786	2024-11-21	completed
3549	1795	2024-11-20	completed
3550	1797	2024-11-14	completed
3551	1804	2024-11-27	completed
3552	1807	2024-11-03	completed
3553	1810	2024-11-08	completed
3554	1811	2024-11-24	completed
3555	1818	2024-11-26	completed
3556	1819	2024-11-13	completed
3557	1824	2024-11-13	completed
3558	1834	2024-11-25	completed
3559	1836	2024-11-23	completed
3560	1864	2024-11-26	completed
3561	1879	2024-11-24	completed
3562	1880	2024-11-18	completed
3563	1886	2024-11-01	completed
3564	1893	2024-11-13	completed
3565	1923	2024-11-19	completed
3566	1941	2024-11-15	completed
3567	1942	2024-11-09	completed
3568	1952	2024-11-27	completed
3569	1959	2024-11-06	completed
3570	1961	2024-11-01	completed
3571	1966	2024-11-17	completed
3572	1976	2024-11-19	completed
3573	1990	2024-11-04	completed
3574	1994	2024-11-03	completed
3575	1996	2024-11-20	completed
3576	1999	2024-11-17	completed
3577	2004	2024-11-14	completed
3578	2021	2024-11-01	completed
3579	2037	2024-11-06	completed
3580	2046	2024-11-08	completed
3581	2067	2024-11-12	completed
3582	2077	2024-11-25	completed
3583	2077	2024-11-25	completed
3584	2079	2024-11-07	completed
3585	2096	2024-11-04	completed
3586	2098	2024-11-19	completed
3587	2099	2024-11-16	completed
3588	2100	2024-11-30	completed
3589	2104	2024-11-06	completed
3590	2117	2024-11-24	completed
3591	2118	2024-11-04	refunded
3592	2126	2024-11-19	completed
3593	2129	2024-11-26	completed
3594	2163	2024-11-30	completed
3595	2180	2024-11-16	completed
3596	2181	2024-11-10	completed
3597	2182	2024-11-22	completed
3598	2184	2024-11-05	completed
3599	2189	2024-11-05	completed
3600	2196	2024-11-02	completed
3601	2220	2024-11-04	completed
3602	2231	2024-11-26	completed
3603	2244	2024-11-02	completed
3604	2253	2024-11-29	completed
3605	2255	2024-11-05	completed
3606	2260	2024-11-09	completed
3607	2266	2024-11-13	completed
3608	2272	2024-11-23	completed
3609	2273	2024-11-13	completed
3610	2287	2024-11-19	completed
3611	2295	2024-11-17	completed
3612	2297	2024-11-04	completed
3613	2299	2024-11-28	completed
3614	2318	2024-11-30	completed
3615	2335	2024-11-02	completed
3616	2341	2024-11-30	refunded
3617	2361	2024-11-30	completed
3618	2369	2024-11-20	refunded
3619	2376	2024-11-01	completed
3620	2385	2024-11-24	completed
3621	2388	2024-11-24	completed
3622	2396	2024-11-23	completed
3623	2398	2024-11-27	refunded
3624	2407	2024-11-06	completed
3625	2409	2024-11-21	completed
3626	2419	2024-11-23	completed
3627	2419	2024-11-29	completed
3628	2425	2024-11-03	completed
3629	2428	2024-11-15	completed
3630	2429	2024-11-24	completed
3631	2434	2024-11-02	completed
3632	2444	2024-11-09	completed
3633	2447	2024-11-18	completed
3634	2457	2024-11-08	completed
3635	2459	2024-11-12	completed
3636	2468	2024-11-13	completed
3637	2478	2024-11-11	completed
3638	2481	2024-11-08	completed
3639	2489	2024-11-14	completed
3640	2500	2024-11-28	completed
3641	2501	2024-11-04	completed
3642	2511	2024-11-20	completed
3643	2518	2024-11-01	completed
3644	2530	2024-11-09	completed
3645	2531	2024-11-11	completed
3646	2541	2024-11-08	completed
3647	2553	2024-11-05	cancelled
3648	2559	2024-11-01	completed
3649	2559	2024-11-04	completed
3650	2562	2024-11-12	completed
3651	2570	2024-11-22	completed
3652	2575	2024-11-15	completed
3653	2582	2024-11-15	completed
3654	2586	2024-11-13	completed
3655	2593	2024-11-23	completed
3656	2596	2024-11-05	completed
3657	2601	2024-11-23	completed
3658	2602	2024-11-24	completed
3659	2623	2024-11-17	completed
3660	2634	2024-11-25	completed
3661	2640	2024-11-15	completed
3662	2643	2024-11-16	completed
3663	2662	2024-11-15	completed
3664	2663	2024-11-20	completed
3665	2702	2024-11-17	refunded
3666	2712	2024-11-13	completed
3667	2717	2024-11-08	completed
3668	2722	2024-11-23	completed
3669	2728	2024-11-16	completed
3670	2741	2024-11-21	completed
3671	2742	2024-11-21	completed
3672	2766	2024-11-06	completed
3673	2778	2024-11-22	completed
3674	2787	2024-11-01	completed
3675	2798	2024-11-08	completed
3676	2831	2024-11-07	completed
3677	2847	2024-11-13	completed
3678	2854	2024-11-03	completed
3679	2855	2024-11-23	completed
3680	2862	2024-11-18	completed
3681	2873	2024-11-19	completed
3682	2874	2024-11-05	completed
3683	2884	2024-11-23	completed
3684	2897	2024-11-25	completed
3685	2899	2024-11-01	completed
3686	2914	2024-11-23	refunded
3687	2921	2024-11-24	completed
3688	2937	2024-11-21	completed
3689	2942	2024-11-20	completed
3690	2957	2024-11-01	completed
3691	2969	2024-11-25	completed
3692	2972	2024-11-27	completed
3693	2974	2024-11-26	completed
3694	2986	2024-11-28	completed
3695	2988	2024-11-21	completed
3696	2995	2024-11-04	completed
3697	2997	2024-11-10	completed
3698	2997	2024-11-01	completed
3699	2999	2024-11-15	completed
3700	13	2024-12-06	completed
3701	22	2024-12-16	completed
3702	33	2024-12-02	completed
3703	37	2024-12-02	completed
3704	38	2024-12-30	completed
3705	47	2024-12-04	cancelled
3706	49	2024-12-29	completed
3707	51	2024-12-05	completed
3708	54	2024-12-18	completed
3709	64	2024-12-27	completed
3710	78	2024-12-01	completed
3711	79	2024-12-19	completed
3712	85	2024-12-11	completed
3713	87	2024-12-08	completed
3714	94	2024-12-10	completed
3715	96	2024-12-13	completed
3716	101	2024-12-20	completed
3717	105	2024-12-29	completed
3718	112	2024-12-12	completed
3719	124	2024-12-18	completed
3720	125	2024-12-05	completed
3721	141	2024-12-17	completed
3722	161	2024-12-06	completed
3723	171	2024-12-24	completed
3724	175	2024-12-03	completed
3725	189	2024-12-02	completed
3726	197	2024-12-20	completed
3727	204	2024-12-29	refunded
3728	206	2024-12-21	completed
3729	207	2024-12-29	completed
3730	209	2024-12-12	completed
3731	213	2024-12-05	completed
3732	216	2024-12-14	completed
3733	227	2024-12-09	completed
3734	229	2024-12-16	completed
3735	230	2024-12-21	completed
3736	233	2024-12-26	completed
3737	235	2024-12-20	completed
3738	238	2024-12-30	completed
3739	266	2024-12-06	completed
3740	270	2024-12-15	completed
3741	279	2024-12-30	completed
3742	284	2024-12-12	completed
3743	290	2024-12-29	completed
3744	295	2024-12-28	completed
3745	295	2024-12-03	completed
3746	299	2024-12-02	completed
3747	300	2024-12-27	completed
3748	303	2024-12-28	completed
3749	312	2024-12-05	completed
3750	320	2024-12-17	completed
3751	332	2024-12-04	completed
3752	335	2024-12-10	completed
3753	343	2024-12-04	completed
3754	346	2024-12-17	completed
3755	349	2024-12-31	completed
3756	350	2024-12-06	completed
3757	355	2024-12-25	completed
3758	378	2024-12-05	completed
3759	383	2024-12-31	completed
3760	389	2024-12-24	completed
3761	391	2024-12-03	completed
3762	394	2024-12-23	completed
3763	414	2024-12-27	completed
3764	428	2024-12-01	completed
3765	430	2024-12-28	completed
3766	444	2024-12-08	completed
3767	447	2024-12-18	completed
3768	455	2024-12-25	refunded
3769	467	2024-12-14	completed
3770	469	2024-12-07	completed
3771	470	2024-12-14	completed
3772	476	2024-12-18	completed
3773	486	2024-12-05	completed
3774	493	2024-12-23	completed
3775	495	2024-12-02	completed
3776	498	2024-12-02	completed
3777	499	2024-12-21	completed
3778	503	2024-12-11	completed
3779	508	2024-12-23	completed
3780	524	2024-12-23	completed
3781	541	2024-12-30	completed
3782	553	2024-12-03	completed
3783	565	2024-12-28	completed
3784	569	2024-12-18	completed
3785	573	2024-12-19	completed
3786	587	2024-12-16	completed
3787	598	2024-12-20	completed
3788	601	2024-12-05	completed
3789	609	2024-12-09	completed
3790	611	2024-12-20	completed
3791	619	2024-12-17	completed
3792	623	2024-12-03	completed
3793	626	2024-12-08	completed
3794	635	2024-12-12	completed
3795	640	2024-12-19	completed
3796	641	2024-12-14	completed
3797	643	2024-12-09	completed
3798	646	2024-12-08	completed
3799	670	2024-12-28	completed
3800	671	2024-12-26	completed
3801	671	2024-12-09	completed
3802	673	2024-12-07	completed
3803	673	2024-12-24	completed
3804	681	2024-12-19	completed
3805	683	2024-12-03	completed
3806	686	2024-12-06	completed
3807	687	2024-12-23	completed
3808	701	2024-12-14	completed
3809	712	2024-12-17	completed
3810	717	2024-12-05	completed
3811	722	2024-12-09	completed
3812	744	2024-12-16	completed
3813	746	2024-12-27	completed
3814	750	2024-12-14	completed
3815	753	2024-12-30	completed
3816	764	2024-12-13	completed
3817	768	2024-12-08	completed
3818	772	2024-12-18	completed
3819	773	2024-12-21	completed
3820	777	2024-12-30	completed
3821	778	2024-12-02	completed
3822	782	2024-12-12	completed
3823	793	2024-12-29	completed
3824	803	2024-12-05	completed
3825	818	2024-12-06	refunded
3826	827	2024-12-31	completed
3827	842	2024-12-28	completed
3828	847	2024-12-05	completed
3829	857	2024-12-24	completed
3830	864	2024-12-22	completed
3831	875	2024-12-24	completed
3832	877	2024-12-10	completed
3833	892	2024-12-08	completed
3834	895	2024-12-12	completed
3835	895	2024-12-21	completed
3836	897	2024-12-24	refunded
3837	899	2024-12-26	completed
3838	900	2024-12-04	completed
3839	901	2024-12-12	completed
3840	909	2024-12-17	completed
3841	910	2024-12-22	completed
3842	914	2024-12-03	completed
3843	916	2024-12-30	refunded
3844	917	2024-12-27	completed
3845	931	2024-12-08	completed
3846	933	2024-12-11	completed
3847	939	2024-12-16	completed
3848	941	2024-12-25	completed
3849	946	2024-12-21	refunded
3850	947	2024-12-07	completed
3851	960	2024-12-10	completed
3852	968	2024-12-06	refunded
3853	973	2024-12-20	completed
3854	979	2024-12-31	completed
3855	986	2024-12-28	completed
3856	1005	2024-12-23	completed
3857	1016	2024-12-02	completed
3858	1021	2024-12-19	completed
3859	1031	2024-12-31	completed
3860	1033	2024-12-05	completed
3861	1034	2024-12-28	completed
3862	1040	2024-12-01	completed
3863	1046	2024-12-18	completed
3864	1050	2024-12-04	completed
3865	1053	2024-12-10	cancelled
3866	1063	2024-12-04	completed
3867	1064	2024-12-09	refunded
3868	1071	2024-12-17	completed
3869	1073	2024-12-18	refunded
3870	1074	2024-12-16	cancelled
3871	1079	2024-12-10	completed
3872	1080	2024-12-15	completed
3873	1084	2024-12-04	completed
3874	1089	2024-12-06	completed
3875	1095	2024-12-08	completed
3876	1107	2024-12-20	completed
3877	1108	2024-12-30	completed
3878	1143	2024-12-24	completed
3879	1149	2024-12-22	completed
3880	1153	2024-12-27	refunded
3881	1154	2024-12-07	completed
3882	1155	2024-12-31	completed
3883	1168	2024-12-10	refunded
3884	1170	2024-12-15	completed
3885	1170	2024-12-01	completed
3886	1180	2024-12-10	completed
3887	1183	2024-12-06	completed
3888	1185	2024-12-14	completed
3889	1198	2024-12-01	completed
3890	1200	2024-12-21	completed
3891	1201	2024-12-19	refunded
3892	1201	2024-12-17	completed
3893	1204	2024-12-03	completed
3894	1206	2024-12-14	completed
3895	1218	2024-12-27	completed
3896	1234	2024-12-27	cancelled
3897	1240	2024-12-22	completed
3898	1242	2024-12-25	completed
3899	1250	2024-12-10	completed
3900	1264	2024-12-30	cancelled
3901	1267	2024-12-28	completed
3902	1268	2024-12-05	completed
3903	1280	2024-12-18	completed
3904	1292	2024-12-16	completed
3905	1295	2024-12-11	completed
3906	1295	2024-12-23	completed
3907	1297	2024-12-10	completed
3908	1315	2024-12-21	completed
3909	1324	2024-12-23	completed
3910	1326	2024-12-16	completed
3911	1328	2024-12-15	completed
3912	1328	2024-12-09	completed
3913	1335	2024-12-01	completed
3914	1342	2024-12-24	completed
3915	1355	2024-12-11	completed
3916	1363	2024-12-02	completed
3917	1374	2024-12-18	completed
3918	1375	2024-12-22	completed
3919	1387	2024-12-04	cancelled
3920	1402	2024-12-12	completed
3921	1421	2024-12-22	completed
3922	1422	2024-12-02	completed
3923	1424	2024-12-17	completed
3924	1432	2024-12-14	completed
3925	1438	2024-12-19	completed
3926	1450	2024-12-20	completed
3927	1480	2024-12-28	completed
3928	1484	2024-12-05	completed
3929	1484	2024-12-21	completed
3930	1493	2024-12-15	cancelled
3931	1502	2024-12-04	completed
3932	1504	2024-12-24	completed
3933	1509	2024-12-06	completed
3934	1523	2024-12-18	completed
3935	1525	2024-12-24	completed
3936	1528	2024-12-21	completed
3937	1551	2024-12-26	completed
3938	1551	2024-12-24	completed
3939	1561	2024-12-22	completed
3940	1562	2024-12-26	completed
3941	1565	2024-12-22	cancelled
3942	1576	2024-12-01	completed
3943	1588	2024-12-11	completed
3944	1590	2024-12-20	completed
3945	1604	2024-12-30	completed
3946	1628	2024-12-09	completed
3947	1628	2024-12-28	completed
3948	1640	2024-12-09	completed
3949	1660	2024-12-21	completed
3950	1662	2024-12-23	completed
3951	1663	2024-12-06	completed
3952	1667	2024-12-25	completed
3953	1674	2024-12-13	cancelled
3954	1687	2024-12-13	completed
3955	1698	2024-12-24	completed
3956	1700	2024-12-09	completed
3957	1710	2024-12-05	completed
3958	1723	2024-12-10	cancelled
3959	1725	2024-12-17	completed
3960	1734	2024-12-24	completed
3961	1737	2024-12-08	completed
3962	1740	2024-12-13	completed
3963	1749	2024-12-24	completed
3964	1750	2024-12-27	refunded
3965	1756	2024-12-10	completed
3966	1763	2024-12-31	completed
3967	1777	2024-12-20	completed
3968	1781	2024-12-27	completed
3969	1782	2024-12-09	completed
3970	1793	2024-12-14	completed
3971	1802	2024-12-06	completed
3972	1808	2024-12-29	completed
3973	1816	2024-12-20	completed
3974	1825	2024-12-01	completed
3975	1834	2024-12-16	completed
3976	1835	2024-12-02	completed
3977	1876	2024-12-04	completed
3978	1888	2024-12-11	completed
3979	1901	2024-12-29	completed
3980	1901	2024-12-24	completed
3981	1904	2024-12-24	completed
3982	1905	2024-12-03	completed
3983	1926	2024-12-14	completed
3984	1936	2024-12-21	refunded
3985	1942	2024-12-05	completed
3986	1952	2024-12-30	completed
3987	1957	2024-12-30	completed
3988	1959	2024-12-22	completed
3989	1959	2024-12-18	cancelled
3990	1966	2024-12-02	completed
3991	1968	2024-12-07	refunded
3992	1971	2024-12-11	completed
3993	1979	2024-12-16	cancelled
3994	1991	2024-12-30	completed
3995	2004	2024-12-31	completed
3996	2019	2024-12-31	completed
3997	2023	2024-12-07	completed
3998	2036	2024-12-27	completed
3999	2039	2024-12-31	completed
4000	2044	2024-12-22	completed
4001	2055	2024-12-30	completed
4002	2056	2024-12-30	completed
4003	2065	2024-12-31	completed
4004	2079	2024-12-17	completed
4005	2080	2024-12-13	completed
4006	2085	2024-12-01	completed
4007	2094	2024-12-08	completed
4008	2098	2024-12-01	completed
4009	2100	2024-12-29	completed
4010	2106	2024-12-31	completed
4011	2120	2024-12-20	completed
4012	2124	2024-12-21	completed
4013	2125	2024-12-16	completed
4014	2131	2024-12-10	completed
4015	2138	2024-12-13	completed
4016	2141	2024-12-02	completed
4017	2141	2024-12-01	completed
4018	2144	2024-12-16	completed
4019	2169	2024-12-03	completed
4020	2173	2024-12-07	completed
4021	2174	2024-12-07	completed
4022	2175	2024-12-20	completed
4023	2180	2024-12-12	completed
4024	2218	2024-12-17	completed
4025	2219	2024-12-21	completed
4026	2220	2024-12-03	completed
4027	2223	2024-12-15	refunded
4028	2229	2024-12-03	completed
4029	2242	2024-12-15	completed
4030	2244	2024-12-10	completed
4031	2245	2024-12-01	completed
4032	2260	2024-12-30	completed
4033	2265	2024-12-09	completed
4034	2274	2024-12-24	completed
4035	2310	2024-12-29	completed
4036	2314	2024-12-17	completed
4037	2318	2024-12-27	completed
4038	2323	2024-12-03	completed
4039	2336	2024-12-17	completed
4040	2337	2024-12-03	completed
4041	2346	2024-12-01	completed
4042	2351	2024-12-15	completed
4043	2358	2024-12-28	completed
4044	2359	2024-12-21	completed
4045	2365	2024-12-13	completed
4046	2382	2024-12-30	completed
4047	2386	2024-12-27	completed
4048	2391	2024-12-24	completed
4049	2392	2024-12-24	completed
4050	2409	2024-12-05	completed
4051	2417	2024-12-10	completed
4052	2419	2024-12-22	completed
4053	2421	2024-12-25	completed
4054	2424	2024-12-01	completed
4055	2430	2024-12-02	completed
4056	2431	2024-12-18	completed
4057	2433	2024-12-21	completed
4058	2434	2024-12-17	completed
4059	2435	2024-12-07	completed
4060	2445	2024-12-13	completed
4061	2448	2024-12-21	completed
4062	2448	2024-12-19	completed
4063	2450	2024-12-19	completed
4064	2453	2024-12-18	completed
4065	2460	2024-12-07	completed
4066	2465	2024-12-14	completed
4067	2468	2024-12-30	completed
4068	2481	2024-12-21	completed
4069	2482	2024-12-08	completed
4070	2485	2024-12-24	completed
4071	2486	2024-12-07	completed
4072	2499	2024-12-01	completed
4073	2519	2024-12-31	refunded
4074	2529	2024-12-08	completed
4075	2535	2024-12-09	completed
4076	2538	2024-12-07	completed
4077	2550	2024-12-21	completed
4078	2554	2024-12-23	completed
4079	2560	2024-12-15	completed
4080	2565	2024-12-16	completed
4081	2572	2024-12-27	completed
4082	2573	2024-12-25	completed
4083	2586	2024-12-19	completed
4084	2589	2024-12-22	completed
4085	2591	2024-12-10	completed
4086	2599	2024-12-19	completed
4087	2601	2024-12-02	completed
4088	2607	2024-12-17	completed
4089	2609	2024-12-01	completed
4090	2621	2024-12-26	completed
4091	2622	2024-12-05	completed
4092	2653	2024-12-04	completed
4093	2658	2024-12-07	completed
4094	2669	2024-12-11	completed
4095	2676	2024-12-05	completed
4096	2680	2024-12-11	completed
4097	2683	2024-12-21	completed
4098	2689	2024-12-14	completed
4099	2700	2024-12-03	completed
4100	2702	2024-12-02	completed
4101	2710	2024-12-03	completed
4102	2717	2024-12-13	completed
4103	2726	2024-12-12	completed
4104	2736	2024-12-26	completed
4105	2742	2024-12-23	completed
4106	2755	2024-12-12	completed
4107	2762	2024-12-15	completed
4108	2770	2024-12-15	completed
4109	2776	2024-12-11	completed
4110	2778	2024-12-29	refunded
4111	2784	2024-12-18	completed
4112	2787	2024-12-03	completed
4113	2791	2024-12-04	completed
4114	2805	2024-12-24	refunded
4115	2809	2024-12-22	completed
4116	2818	2024-12-30	completed
4117	2838	2024-12-29	completed
4118	2840	2024-12-29	completed
4119	2846	2024-12-18	completed
4120	2849	2024-12-07	completed
4121	2853	2024-12-08	completed
4122	2864	2024-12-28	completed
4123	2866	2024-12-31	completed
4124	2867	2024-12-20	completed
4125	2868	2024-12-12	completed
4126	2873	2024-12-03	completed
4127	2876	2024-12-16	completed
4128	2913	2024-12-15	completed
4129	2916	2024-12-01	completed
4130	2916	2024-12-11	completed
4131	2923	2024-12-17	completed
4132	2939	2024-12-01	completed
4133	2961	2024-12-23	completed
4134	2965	2024-12-18	completed
4135	2967	2024-12-29	completed
4136	2999	2024-12-01	completed
4137	10	2025-01-18	completed
4138	44	2025-01-26	completed
4139	48	2025-01-17	completed
4140	58	2025-01-16	completed
4141	59	2025-01-25	completed
4142	60	2025-01-04	completed
4143	62	2025-01-01	completed
4144	63	2025-01-17	completed
4145	70	2025-01-06	completed
4146	76	2025-01-20	completed
4147	79	2025-01-08	completed
4148	98	2025-01-18	completed
4149	106	2025-01-14	completed
4150	115	2025-01-29	completed
4151	116	2025-01-30	completed
4152	119	2025-01-07	completed
4153	130	2025-01-27	completed
4154	137	2025-01-30	completed
4155	138	2025-01-26	completed
4156	140	2025-01-01	cancelled
4157	146	2025-01-08	completed
4158	151	2025-01-21	completed
4159	169	2025-01-24	completed
4160	176	2025-01-05	completed
4161	177	2025-01-22	completed
4162	199	2025-01-12	completed
4163	202	2025-01-08	completed
4164	204	2025-01-28	completed
4165	206	2025-01-14	completed
4166	207	2025-01-17	completed
4167	216	2025-01-07	completed
4168	224	2025-01-27	completed
4169	248	2025-01-07	completed
4170	251	2025-01-03	completed
4171	251	2025-01-17	completed
4172	254	2025-01-05	completed
4173	259	2025-01-06	completed
4174	276	2025-01-07	completed
4175	280	2025-01-25	completed
4176	298	2025-01-02	completed
4177	308	2025-01-12	completed
4178	314	2025-01-04	completed
4179	318	2025-01-29	cancelled
4180	325	2025-01-23	completed
4181	342	2025-01-01	completed
4182	348	2025-01-16	completed
4183	362	2025-01-18	completed
4184	364	2025-01-07	completed
4185	368	2025-01-30	completed
4186	383	2025-01-18	completed
4187	389	2025-01-09	completed
4188	408	2025-01-14	completed
4189	425	2025-01-06	completed
4190	428	2025-01-02	completed
4191	430	2025-01-10	completed
4192	447	2025-01-28	completed
4193	452	2025-01-13	completed
4194	454	2025-01-30	refunded
4195	469	2025-01-08	completed
4196	472	2025-01-07	completed
4197	476	2025-01-30	completed
4198	480	2025-01-14	completed
4199	488	2025-01-31	completed
4200	524	2025-01-17	completed
4201	527	2025-01-16	completed
4202	546	2025-01-02	completed
4203	554	2025-01-30	completed
4204	565	2025-01-18	completed
4205	566	2025-01-10	completed
4206	567	2025-01-05	completed
4207	569	2025-01-11	completed
4208	572	2025-01-05	completed
4209	572	2025-01-19	completed
4210	587	2025-01-26	completed
4211	643	2025-01-29	completed
4212	653	2025-01-01	completed
4213	676	2025-01-26	completed
4214	685	2025-01-27	completed
4215	686	2025-01-22	completed
4216	694	2025-01-02	completed
4217	733	2025-01-25	completed
4218	736	2025-01-31	completed
4219	736	2025-01-15	completed
4220	739	2025-01-12	completed
4221	746	2025-01-27	completed
4222	768	2025-01-19	completed
4223	769	2025-01-28	completed
4224	772	2025-01-27	completed
4225	811	2025-01-05	completed
4226	813	2025-01-18	completed
4227	817	2025-01-31	completed
4228	822	2025-01-07	completed
4229	829	2025-01-15	completed
4230	832	2025-01-16	completed
4231	835	2025-01-17	completed
4232	856	2025-01-14	completed
4233	857	2025-01-26	completed
4234	858	2025-01-02	completed
4235	861	2025-01-07	completed
4236	862	2025-01-15	completed
4237	873	2025-01-09	completed
4238	877	2025-01-10	completed
4239	886	2025-01-02	completed
4240	895	2025-01-29	completed
4241	897	2025-01-19	completed
4242	910	2025-01-13	completed
4243	913	2025-01-24	completed
4244	915	2025-01-06	completed
4245	921	2025-01-12	completed
4246	930	2025-01-24	completed
4247	939	2025-01-15	completed
4248	944	2025-01-22	refunded
4249	947	2025-01-01	refunded
4250	954	2025-01-08	completed
4251	960	2025-01-10	completed
4252	965	2025-01-04	completed
4253	973	2025-01-12	completed
4254	976	2025-01-24	completed
4255	986	2025-01-15	completed
4256	995	2025-01-31	completed
4257	1021	2025-01-21	completed
4258	1035	2025-01-19	completed
4259	1040	2025-01-21	completed
4260	1045	2025-01-08	cancelled
4261	1046	2025-01-28	completed
4262	1060	2025-01-22	completed
4263	1068	2025-01-25	completed
4264	1098	2025-01-10	completed
4265	1113	2025-01-02	completed
4266	1128	2025-01-10	completed
4267	1139	2025-01-15	completed
4268	1155	2025-01-14	cancelled
4269	1172	2025-01-18	completed
4270	1178	2025-01-17	completed
4271	1184	2025-01-29	completed
4272	1189	2025-01-14	completed
4273	1194	2025-01-21	completed
4274	1197	2025-01-22	completed
4275	1198	2025-01-31	completed
4276	1201	2025-01-27	completed
4277	1214	2025-01-21	completed
4278	1225	2025-01-22	refunded
4279	1234	2025-01-21	completed
4280	1240	2025-01-04	completed
4281	1248	2025-01-24	completed
4282	1262	2025-01-04	completed
4283	1284	2025-01-02	completed
4284	1294	2025-01-04	completed
4285	1314	2025-01-23	completed
4286	1315	2025-01-11	completed
4287	1319	2025-01-29	cancelled
4288	1337	2025-01-17	completed
4289	1338	2025-01-04	completed
4290	1351	2025-01-28	completed
4291	1358	2025-01-31	completed
4292	1360	2025-01-23	completed
4293	1366	2025-01-30	completed
4294	1371	2025-01-22	completed
4295	1373	2025-01-22	completed
4296	1374	2025-01-15	cancelled
4297	1374	2025-01-08	completed
4298	1378	2025-01-24	completed
4299	1387	2025-01-09	completed
4300	1389	2025-01-09	completed
4301	1397	2025-01-30	completed
4302	1420	2025-01-20	completed
4303	1425	2025-01-29	completed
4304	1436	2025-01-13	completed
4305	1441	2025-01-29	completed
4306	1443	2025-01-24	completed
4307	1444	2025-01-12	completed
4308	1461	2025-01-13	completed
4309	1465	2025-01-24	refunded
4310	1469	2025-01-03	completed
4311	1474	2025-01-26	completed
4312	1482	2025-01-25	completed
4313	1493	2025-01-30	completed
4314	1496	2025-01-02	completed
4315	1509	2025-01-27	completed
4316	1528	2025-01-06	completed
4317	1533	2025-01-06	completed
4318	1551	2025-01-30	refunded
4319	1556	2025-01-27	completed
4320	1565	2025-01-31	completed
4321	1581	2025-01-27	completed
4322	1594	2025-01-21	completed
4323	1596	2025-01-15	completed
4324	1603	2025-01-23	completed
4325	1605	2025-01-07	completed
4326	1611	2025-01-29	completed
4327	1623	2025-01-24	completed
4328	1633	2025-01-26	completed
4329	1643	2025-01-19	completed
4330	1645	2025-01-07	completed
4331	1649	2025-01-01	completed
4332	1650	2025-01-03	completed
4333	1672	2025-01-28	completed
4334	1674	2025-01-09	completed
4335	1691	2025-01-01	completed
4336	1697	2025-01-27	completed
4337	1710	2025-01-08	completed
4338	1724	2025-01-21	completed
4339	1727	2025-01-21	completed
4340	1731	2025-01-14	completed
4341	1734	2025-01-04	completed
4342	1737	2025-01-05	completed
4343	1744	2025-01-24	completed
4344	1746	2025-01-18	completed
4345	1747	2025-01-31	completed
4346	1748	2025-01-06	completed
4347	1749	2025-01-06	completed
4348	1760	2025-01-13	completed
4349	1761	2025-01-17	completed
4350	1765	2025-01-05	completed
4351	1769	2025-01-07	completed
4352	1770	2025-01-12	completed
4353	1770	2025-01-21	completed
4354	1776	2025-01-06	completed
4355	1780	2025-01-31	completed
4356	1784	2025-01-07	completed
4357	1804	2025-01-27	completed
4358	1811	2025-01-19	completed
4359	1824	2025-01-30	completed
4360	1829	2025-01-27	completed
4361	1834	2025-01-01	completed
4362	1852	2025-01-18	completed
4363	1863	2025-01-19	completed
4364	1867	2025-01-28	completed
4365	1875	2025-01-10	completed
4366	1877	2025-01-14	completed
4367	1879	2025-01-16	completed
4368	1904	2025-01-04	completed
4369	1912	2025-01-11	completed
4370	1921	2025-01-06	completed
4371	1935	2025-01-04	completed
4372	1935	2025-01-21	completed
4373	1941	2025-01-01	completed
4374	1950	2025-01-19	completed
4375	1958	2025-01-18	completed
4376	1982	2025-01-13	completed
4377	1994	2025-01-12	completed
4378	2011	2025-01-13	completed
4379	2032	2025-01-01	completed
4380	2036	2025-01-23	completed
4381	2037	2025-01-16	completed
4382	2040	2025-01-14	completed
4383	2042	2025-01-06	cancelled
4384	2056	2025-01-21	completed
4385	2067	2025-01-09	completed
4386	2070	2025-01-27	completed
4387	2077	2025-01-27	completed
4388	2078	2025-01-07	completed
4389	2080	2025-01-22	completed
4390	2085	2025-01-30	completed
4391	2091	2025-01-21	completed
4392	2094	2025-01-01	completed
4393	2111	2025-01-26	cancelled
4394	2120	2025-01-18	cancelled
4395	2126	2025-01-04	completed
4396	2129	2025-01-15	completed
4397	2131	2025-01-15	completed
4398	2137	2025-01-07	completed
4399	2144	2025-01-13	completed
4400	2149	2025-01-21	completed
4401	2178	2025-01-16	completed
4402	2182	2025-01-24	completed
4403	2187	2025-01-17	completed
4404	2194	2025-01-24	completed
4405	2204	2025-01-27	completed
4406	2206	2025-01-04	completed
4407	2208	2025-01-01	completed
4408	2219	2025-01-04	completed
4409	2226	2025-01-24	completed
4410	2229	2025-01-16	completed
4411	2255	2025-01-06	completed
4412	2263	2025-01-20	completed
4413	2265	2025-01-14	completed
4414	2280	2025-01-17	completed
4415	2287	2025-01-28	completed
4416	2304	2025-01-11	completed
4417	2317	2025-01-31	completed
4418	2318	2025-01-25	completed
4419	2322	2025-01-02	completed
4420	2326	2025-01-17	completed
4421	2328	2025-01-24	completed
4422	2329	2025-01-01	completed
4423	2335	2025-01-13	completed
4424	2336	2025-01-09	completed
4425	2341	2025-01-14	completed
4426	2344	2025-01-10	completed
4427	2351	2025-01-01	completed
4428	2357	2025-01-16	completed
4429	2369	2025-01-26	completed
4430	2384	2025-01-03	completed
4431	2385	2025-01-02	completed
4432	2392	2025-01-11	completed
4433	2394	2025-01-05	completed
4434	2398	2025-01-10	completed
4435	2401	2025-01-28	completed
4436	2406	2025-01-21	completed
4437	2411	2025-01-10	completed
4438	2418	2025-01-26	cancelled
4439	2419	2025-01-28	completed
4440	2447	2025-01-07	completed
4441	2447	2025-01-03	completed
4442	2459	2025-01-15	completed
4443	2461	2025-01-02	completed
4444	2469	2025-01-31	completed
4445	2478	2025-01-20	completed
4446	2495	2025-01-19	completed
4447	2495	2025-01-02	completed
4448	2498	2025-01-15	completed
4449	2500	2025-01-11	completed
4450	2508	2025-01-10	completed
4451	2511	2025-01-07	completed
4452	2518	2025-01-06	completed
4453	2529	2025-01-31	completed
4454	2530	2025-01-12	completed
4455	2532	2025-01-02	completed
4456	2551	2025-01-20	completed
4457	2557	2025-01-10	completed
4458	2558	2025-01-16	completed
4459	2559	2025-01-16	completed
4460	2562	2025-01-24	cancelled
4461	2570	2025-01-03	completed
4462	2590	2025-01-15	completed
4463	2596	2025-01-17	completed
4464	2601	2025-01-12	completed
4465	2621	2025-01-17	completed
4466	2623	2025-01-26	completed
4467	2625	2025-01-11	completed
4468	2650	2025-01-10	completed
4469	2652	2025-01-10	completed
4470	2656	2025-01-30	completed
4471	2658	2025-01-24	completed
4472	2662	2025-01-19	completed
4473	2665	2025-01-01	completed
4474	2669	2025-01-11	completed
4475	2677	2025-01-06	completed
4476	2683	2025-01-18	completed
4477	2700	2025-01-02	completed
4478	2702	2025-01-14	completed
4479	2706	2025-01-26	completed
4480	2717	2025-01-01	completed
4481	2732	2025-01-30	completed
4482	2740	2025-01-09	completed
4483	2777	2025-01-05	completed
4484	2792	2025-01-22	completed
4485	2824	2025-01-05	completed
4486	2839	2025-01-26	completed
4487	2852	2025-01-11	completed
4488	2853	2025-01-22	completed
4489	2854	2025-01-25	completed
4490	2859	2025-01-11	completed
4491	2860	2025-01-08	completed
4492	2894	2025-01-27	completed
4493	2895	2025-01-29	completed
4494	2896	2025-01-08	completed
4495	2904	2025-01-10	completed
4496	2909	2025-01-23	completed
4497	2913	2025-01-21	completed
4498	2913	2025-01-17	completed
4499	2914	2025-01-18	completed
4500	2920	2025-01-25	completed
4501	2925	2025-01-31	completed
4502	2942	2025-01-22	completed
4503	2946	2025-01-20	completed
4504	2969	2025-01-04	completed
4505	2978	2025-01-06	completed
4506	2979	2025-01-16	completed
4507	2999	2025-01-22	completed
4508	6	2025-02-16	completed
4509	10	2025-02-26	refunded
4510	13	2025-02-19	completed
4511	17	2025-02-07	completed
4512	22	2025-02-07	completed
4513	33	2025-02-18	cancelled
4514	34	2025-02-01	completed
4515	44	2025-02-05	completed
4516	48	2025-02-28	completed
4517	63	2025-02-11	completed
4518	64	2025-02-26	completed
4519	67	2025-02-04	cancelled
4520	72	2025-02-08	completed
4521	74	2025-02-09	completed
4522	76	2025-02-08	completed
4523	87	2025-02-13	refunded
4524	88	2025-02-28	completed
4525	89	2025-02-14	completed
4526	108	2025-02-13	completed
4527	109	2025-02-27	completed
4528	110	2025-02-05	completed
4529	116	2025-02-25	completed
4530	119	2025-02-24	cancelled
4531	121	2025-02-23	completed
4532	132	2025-02-08	completed
4533	145	2025-02-15	completed
4534	154	2025-02-13	completed
4535	162	2025-02-11	completed
4536	164	2025-02-07	completed
4537	169	2025-02-15	completed
4538	173	2025-02-21	completed
4539	176	2025-02-14	completed
4540	177	2025-02-17	completed
4541	180	2025-02-21	completed
4542	182	2025-02-23	completed
4543	216	2025-02-22	refunded
4544	220	2025-02-11	completed
4545	248	2025-02-25	completed
4546	254	2025-02-01	completed
4547	258	2025-02-23	completed
4548	262	2025-02-07	completed
4549	272	2025-02-26	completed
4550	295	2025-02-04	completed
4551	326	2025-02-11	completed
4552	327	2025-02-24	completed
4553	343	2025-02-25	completed
4554	346	2025-02-25	completed
4555	350	2025-02-18	completed
4556	361	2025-02-21	completed
4557	363	2025-02-26	completed
4558	379	2025-02-25	completed
4559	383	2025-02-23	completed
4560	388	2025-02-11	completed
4561	394	2025-02-09	completed
4562	398	2025-02-11	completed
4563	409	2025-02-16	completed
4564	416	2025-02-01	completed
4565	417	2025-02-04	completed
4566	425	2025-02-20	completed
4567	430	2025-02-15	completed
4568	431	2025-02-05	completed
4569	432	2025-02-11	completed
4570	437	2025-02-24	completed
4571	454	2025-02-03	completed
4572	459	2025-02-10	completed
4573	465	2025-02-08	completed
4574	467	2025-02-12	completed
4575	470	2025-02-28	completed
4576	471	2025-02-23	completed
4577	473	2025-02-23	completed
4578	484	2025-02-23	completed
4579	492	2025-02-02	completed
4580	498	2025-02-19	completed
4581	504	2025-02-19	completed
4582	526	2025-02-25	completed
4583	534	2025-02-15	completed
4584	544	2025-02-13	completed
4585	565	2025-02-04	completed
4586	569	2025-02-11	completed
4587	591	2025-02-20	completed
4588	608	2025-02-05	completed
4589	618	2025-02-21	completed
4590	619	2025-02-05	completed
4591	623	2025-02-08	completed
4592	634	2025-02-16	completed
4593	647	2025-02-27	completed
4594	657	2025-02-21	completed
4595	660	2025-02-06	completed
4596	661	2025-02-06	completed
4597	663	2025-02-27	completed
4598	696	2025-02-27	completed
4599	722	2025-02-27	completed
4600	729	2025-02-12	completed
4601	741	2025-02-03	completed
4602	746	2025-02-15	completed
4603	764	2025-02-22	cancelled
4604	772	2025-02-13	completed
4605	776	2025-02-19	completed
4606	778	2025-02-03	completed
4607	782	2025-02-22	completed
4608	799	2025-02-17	completed
4609	803	2025-02-26	completed
4610	815	2025-02-20	completed
4611	817	2025-02-15	completed
4612	820	2025-02-16	completed
4613	820	2025-02-09	completed
4614	831	2025-02-24	completed
4615	842	2025-02-07	completed
4616	846	2025-02-04	completed
4617	856	2025-02-27	completed
4618	884	2025-02-01	completed
4619	894	2025-02-15	completed
4620	902	2025-02-26	completed
4621	913	2025-02-17	completed
4622	916	2025-02-21	completed
4623	920	2025-02-22	completed
4624	930	2025-02-16	completed
4625	931	2025-02-17	completed
4626	933	2025-02-09	completed
4627	938	2025-02-16	completed
4628	940	2025-02-17	completed
4629	964	2025-02-26	completed
4630	977	2025-02-11	completed
4631	982	2025-02-07	completed
4632	987	2025-02-06	completed
4633	1023	2025-02-05	completed
4634	1029	2025-02-10	completed
4635	1042	2025-02-05	cancelled
4636	1045	2025-02-23	completed
4637	1057	2025-02-26	completed
4638	1058	2025-02-02	completed
4639	1059	2025-02-08	completed
4640	1074	2025-02-15	refunded
4641	1079	2025-02-09	completed
4642	1112	2025-02-23	completed
4643	1117	2025-02-28	completed
4644	1118	2025-02-28	completed
4645	1120	2025-02-15	completed
4646	1138	2025-02-20	completed
4647	1145	2025-02-22	completed
4648	1152	2025-02-28	completed
4649	1160	2025-02-04	completed
4650	1162	2025-02-21	completed
4651	1211	2025-02-02	completed
4652	1235	2025-02-14	completed
4653	1245	2025-02-23	cancelled
4654	1248	2025-02-10	completed
4655	1271	2025-02-10	completed
4656	1276	2025-02-09	completed
4657	1278	2025-02-01	completed
4658	1290	2025-02-19	completed
4659	1292	2025-02-26	completed
4660	1317	2025-02-05	completed
4661	1322	2025-02-16	cancelled
4662	1325	2025-02-27	cancelled
4663	1328	2025-02-06	completed
4664	1331	2025-02-03	completed
4665	1335	2025-02-03	completed
4666	1378	2025-02-27	completed
4667	1381	2025-02-11	completed
4668	1400	2025-02-18	completed
4669	1405	2025-02-21	completed
4670	1425	2025-02-14	completed
4671	1427	2025-02-03	completed
4672	1436	2025-02-28	completed
4673	1436	2025-02-20	completed
4674	1444	2025-02-16	completed
4675	1462	2025-02-18	completed
4676	1463	2025-02-06	completed
4677	1494	2025-02-28	completed
4678	1496	2025-02-14	completed
4679	1511	2025-02-27	completed
4680	1528	2025-02-11	completed
4681	1529	2025-02-10	completed
4682	1543	2025-02-12	completed
4683	1545	2025-02-27	completed
4684	1548	2025-02-03	completed
4685	1554	2025-02-22	completed
4686	1559	2025-02-10	completed
4687	1577	2025-02-14	completed
4688	1586	2025-02-02	completed
4689	1660	2025-02-14	completed
4690	1679	2025-02-24	completed
4691	1691	2025-02-25	completed
4692	1708	2025-02-05	completed
4693	1718	2025-02-07	completed
4694	1724	2025-02-23	completed
4695	1732	2025-02-19	completed
4696	1735	2025-02-21	refunded
4697	1738	2025-02-16	completed
4698	1740	2025-02-07	completed
4699	1757	2025-02-13	completed
4700	1773	2025-02-03	cancelled
4701	1774	2025-02-07	completed
4702	1778	2025-02-12	completed
4703	1786	2025-02-01	completed
4704	1808	2025-02-20	completed
4705	1818	2025-02-17	completed
4706	1823	2025-02-18	completed
4707	1851	2025-02-12	completed
4708	1861	2025-02-19	completed
4709	1866	2025-02-17	completed
4710	1871	2025-02-04	completed
4711	1880	2025-02-09	completed
4712	1885	2025-02-15	completed
4713	1901	2025-02-14	completed
4714	1937	2025-02-09	completed
4715	1947	2025-02-23	completed
4716	1956	2025-02-05	completed
4717	1966	2025-02-22	completed
4718	1976	2025-02-22	completed
4719	1982	2025-02-18	completed
4720	1991	2025-02-11	completed
4721	1994	2025-02-25	completed
4722	2010	2025-02-27	completed
4723	2012	2025-02-26	completed
4724	2021	2025-02-17	completed
4725	2032	2025-02-16	completed
4726	2035	2025-02-27	completed
4727	2039	2025-02-04	completed
4728	2040	2025-02-04	completed
4729	2046	2025-02-20	completed
4730	2060	2025-02-21	completed
4731	2071	2025-02-09	completed
4732	2083	2025-02-04	completed
4733	2085	2025-02-10	completed
4734	2109	2025-02-08	refunded
4735	2131	2025-02-21	completed
4736	2144	2025-02-02	completed
4737	2153	2025-02-23	completed
4738	2160	2025-02-13	completed
4739	2162	2025-02-10	completed
4740	2173	2025-02-17	completed
4741	2186	2025-02-17	completed
4742	2189	2025-02-23	completed
4743	2208	2025-02-07	completed
4744	2225	2025-02-22	completed
4745	2231	2025-02-13	completed
4746	2242	2025-02-10	completed
4747	2257	2025-02-22	completed
4748	2259	2025-02-21	completed
4749	2278	2025-02-14	completed
4750	2288	2025-02-24	completed
4751	2329	2025-02-13	cancelled
4752	2333	2025-02-01	completed
4753	2336	2025-02-22	completed
4754	2349	2025-02-13	completed
4755	2356	2025-02-25	completed
4756	2359	2025-02-09	completed
4757	2377	2025-02-14	completed
4758	2382	2025-02-20	completed
4759	2383	2025-02-11	completed
4760	2385	2025-02-21	completed
4761	2396	2025-02-18	completed
4762	2401	2025-02-12	completed
4763	2402	2025-02-06	completed
4764	2403	2025-02-23	completed
4765	2406	2025-02-13	completed
4766	2408	2025-02-21	completed
4767	2409	2025-02-25	completed
4768	2420	2025-02-24	completed
4769	2433	2025-02-16	completed
4770	2434	2025-02-05	completed
4771	2445	2025-02-27	completed
4772	2473	2025-02-07	completed
4773	2478	2025-02-06	completed
4774	2486	2025-02-06	completed
4775	2498	2025-02-18	completed
4776	2506	2025-02-09	completed
4777	2520	2025-02-14	completed
4778	2521	2025-02-01	completed
4779	2531	2025-02-16	completed
4780	2543	2025-02-22	completed
4781	2558	2025-02-25	completed
4782	2562	2025-02-06	refunded
4783	2564	2025-02-05	completed
4784	2572	2025-02-26	completed
4785	2591	2025-02-07	completed
4786	2594	2025-02-23	completed
4787	2597	2025-02-24	completed
4788	2625	2025-02-26	completed
4789	2640	2025-02-16	completed
4790	2658	2025-02-04	completed
4791	2675	2025-02-08	completed
4792	2689	2025-02-15	completed
4793	2692	2025-02-16	completed
4794	2694	2025-02-08	refunded
4795	2695	2025-02-02	completed
4796	2698	2025-02-14	completed
4797	2706	2025-02-25	completed
4798	2711	2025-02-18	completed
4799	2725	2025-02-27	completed
4800	2728	2025-02-04	completed
4801	2740	2025-02-12	completed
4802	2753	2025-02-16	completed
4803	2763	2025-02-06	completed
4804	2768	2025-02-23	completed
4805	2780	2025-02-28	completed
4806	2781	2025-02-16	completed
4807	2793	2025-02-09	completed
4808	2801	2025-02-23	completed
4809	2827	2025-02-15	completed
4810	2838	2025-02-16	completed
4811	2846	2025-02-28	completed
4812	2859	2025-02-18	completed
4813	2866	2025-02-19	completed
4814	2886	2025-02-16	completed
4815	2894	2025-02-06	completed
4816	2900	2025-02-20	completed
4817	2904	2025-02-22	completed
4818	2921	2025-02-26	completed
4819	2935	2025-02-04	completed
4820	2941	2025-02-03	completed
4821	2954	2025-02-24	completed
4822	2965	2025-02-07	completed
4823	2977	2025-02-15	completed
4824	2977	2025-02-26	completed
4825	3000	2025-02-08	completed
4826	13	2025-03-31	completed
4827	14	2025-03-31	refunded
4828	15	2025-03-18	completed
4829	20	2025-03-20	completed
4830	22	2025-03-03	completed
4831	30	2025-03-19	completed
4832	33	2025-03-08	completed
4833	43	2025-03-09	completed
4834	66	2025-03-25	completed
4835	79	2025-03-10	completed
4836	85	2025-03-02	completed
4837	89	2025-03-22	completed
4838	98	2025-03-02	completed
4839	107	2025-03-08	completed
4840	110	2025-03-01	completed
4841	116	2025-03-14	completed
4842	132	2025-03-27	completed
4843	151	2025-03-01	completed
4844	152	2025-03-28	completed
4845	161	2025-03-09	completed
4846	193	2025-03-08	cancelled
4847	211	2025-03-07	completed
4848	213	2025-03-21	completed
4849	221	2025-03-12	completed
4850	231	2025-03-28	completed
4851	238	2025-03-03	refunded
4852	249	2025-03-02	refunded
4853	258	2025-03-07	completed
4854	263	2025-03-10	completed
4855	266	2025-03-15	completed
4856	268	2025-03-30	completed
4857	281	2025-03-31	completed
4858	287	2025-03-10	completed
4859	289	2025-03-09	completed
4860	295	2025-03-13	completed
4861	302	2025-03-19	completed
4862	320	2025-03-21	completed
4863	332	2025-03-27	completed
4864	355	2025-03-22	completed
4865	356	2025-03-05	completed
4866	368	2025-03-27	completed
4867	382	2025-03-09	completed
4868	387	2025-03-18	completed
4869	399	2025-03-29	completed
4870	408	2025-03-12	refunded
4871	425	2025-03-14	completed
4872	431	2025-03-23	completed
4873	437	2025-03-14	completed
4874	440	2025-03-05	completed
4875	454	2025-03-11	completed
4876	459	2025-03-29	completed
4877	469	2025-03-09	completed
4878	471	2025-03-01	completed
4879	514	2025-03-12	completed
4880	537	2025-03-17	completed
4881	539	2025-03-02	completed
4882	542	2025-03-22	completed
4883	545	2025-03-16	completed
4884	554	2025-03-23	completed
4885	562	2025-03-04	completed
4886	565	2025-03-22	completed
4887	573	2025-03-11	refunded
4888	586	2025-03-31	completed
4889	628	2025-03-17	completed
4890	635	2025-03-05	cancelled
4891	640	2025-03-12	completed
4892	646	2025-03-25	completed
4893	651	2025-03-24	completed
4894	667	2025-03-14	completed
4895	670	2025-03-29	completed
4896	670	2025-03-22	cancelled
4897	671	2025-03-04	completed
4898	686	2025-03-27	completed
4899	698	2025-03-14	completed
4900	704	2025-03-16	completed
4901	715	2025-03-20	completed
4902	717	2025-03-12	completed
4903	722	2025-03-08	completed
4904	727	2025-03-12	completed
4905	752	2025-03-31	completed
4906	760	2025-03-22	completed
4907	787	2025-03-27	completed
4908	789	2025-03-16	completed
4909	791	2025-03-15	completed
4910	800	2025-03-02	completed
4911	813	2025-03-21	refunded
4912	814	2025-03-24	completed
4913	814	2025-03-31	completed
4914	830	2025-03-11	completed
4915	846	2025-03-09	completed
4916	858	2025-03-06	completed
4917	869	2025-03-28	cancelled
4918	869	2025-03-30	completed
4919	889	2025-03-12	completed
4920	905	2025-03-12	completed
4921	939	2025-03-24	completed
4922	948	2025-03-06	completed
4923	950	2025-03-19	completed
4924	951	2025-03-30	completed
4925	954	2025-03-16	completed
4926	962	2025-03-08	completed
4927	965	2025-03-08	completed
4928	999	2025-03-29	completed
4929	1020	2025-03-24	completed
4930	1023	2025-03-08	completed
4931	1025	2025-03-15	completed
4932	1031	2025-03-22	completed
4933	1033	2025-03-15	completed
4934	1046	2025-03-21	completed
4935	1050	2025-03-04	completed
4936	1054	2025-03-19	completed
4937	1057	2025-03-04	completed
4938	1064	2025-03-07	completed
4939	1072	2025-03-02	completed
4940	1073	2025-03-03	completed
4941	1075	2025-03-23	completed
4942	1081	2025-03-03	completed
4943	1082	2025-03-31	completed
4944	1085	2025-03-02	completed
4945	1097	2025-03-02	completed
4946	1103	2025-03-07	completed
4947	1114	2025-03-28	completed
4948	1115	2025-03-19	completed
4949	1135	2025-03-17	completed
4950	1141	2025-03-04	completed
4951	1143	2025-03-19	completed
4952	1149	2025-03-07	completed
4953	1166	2025-03-22	completed
4954	1174	2025-03-29	completed
4955	1184	2025-03-22	completed
4956	1187	2025-03-28	completed
4957	1206	2025-03-28	completed
4958	1211	2025-03-15	completed
4959	1230	2025-03-14	completed
4960	1232	2025-03-31	completed
4961	1241	2025-03-24	completed
4962	1265	2025-03-17	completed
4963	1274	2025-03-13	completed
4964	1290	2025-03-26	cancelled
4965	1297	2025-03-01	completed
4966	1323	2025-03-21	completed
4967	1325	2025-03-16	completed
4968	1326	2025-03-16	completed
4969	1339	2025-03-20	completed
4970	1369	2025-03-13	completed
4971	1389	2025-03-25	completed
4972	1392	2025-03-17	completed
4973	1394	2025-03-17	completed
4974	1410	2025-03-20	completed
4975	1422	2025-03-21	cancelled
4976	1436	2025-03-25	completed
4977	1436	2025-03-06	completed
4978	1450	2025-03-10	completed
4979	1456	2025-03-11	completed
4980	1474	2025-03-23	completed
4981	1507	2025-03-21	completed
4982	1520	2025-03-30	completed
4983	1534	2025-03-17	completed
4984	1535	2025-03-03	completed
4985	1537	2025-03-03	completed
4986	1545	2025-03-02	completed
4987	1547	2025-03-25	completed
4988	1557	2025-03-25	completed
4989	1565	2025-03-09	completed
4990	1568	2025-03-16	completed
4991	1583	2025-03-27	completed
4992	1594	2025-03-14	completed
4993	1610	2025-03-18	completed
4994	1611	2025-03-03	completed
4995	1622	2025-03-06	completed
4996	1641	2025-03-20	completed
4997	1661	2025-03-17	completed
4998	1664	2025-03-22	completed
4999	1669	2025-03-20	completed
5000	1674	2025-03-15	completed
5001	1681	2025-03-16	completed
5002	1687	2025-03-20	completed
5003	1697	2025-03-13	completed
5004	1699	2025-03-04	completed
5005	1701	2025-03-23	completed
5006	1707	2025-03-26	completed
5007	1708	2025-03-05	completed
5008	1709	2025-03-28	completed
5009	1715	2025-03-11	completed
5010	1716	2025-03-23	completed
5011	1749	2025-03-12	completed
5012	1750	2025-03-10	completed
5013	1765	2025-03-05	completed
5014	1768	2025-03-13	completed
5015	1770	2025-03-24	completed
5016	1784	2025-03-29	cancelled
5017	1792	2025-03-12	completed
5018	1794	2025-03-01	completed
5019	1829	2025-03-16	completed
5020	1851	2025-03-30	completed
5021	1855	2025-03-29	completed
5022	1860	2025-03-29	completed
5023	1867	2025-03-05	completed
5024	1876	2025-03-04	completed
5025	1882	2025-03-12	completed
5026	1884	2025-03-02	completed
5027	1885	2025-03-05	completed
5028	1896	2025-03-30	completed
5029	1907	2025-03-02	completed
5030	1916	2025-03-23	completed
5031	1919	2025-03-02	completed
5032	1926	2025-03-22	completed
5033	1964	2025-03-09	completed
5034	1967	2025-03-01	completed
5035	1988	2025-03-30	completed
5036	2011	2025-03-21	completed
5037	2021	2025-03-16	completed
5038	2055	2025-03-31	completed
5039	2057	2025-03-14	completed
5040	2079	2025-03-03	completed
5041	2083	2025-03-07	completed
5042	2091	2025-03-01	completed
5043	2093	2025-03-20	completed
5044	2106	2025-03-25	completed
5045	2120	2025-03-23	completed
5046	2124	2025-03-10	refunded
5047	2131	2025-03-08	completed
5048	2132	2025-03-08	completed
5049	2155	2025-03-08	completed
5050	2162	2025-03-07	completed
5051	2163	2025-03-12	completed
5052	2180	2025-03-16	completed
5053	2189	2025-03-30	completed
5054	2191	2025-03-27	completed
5055	2213	2025-03-07	completed
5056	2240	2025-03-14	completed
5057	2244	2025-03-27	completed
5058	2260	2025-03-01	completed
5059	2270	2025-03-03	completed
5060	2271	2025-03-26	completed
5061	2273	2025-03-24	completed
5062	2283	2025-03-31	completed
5063	2284	2025-03-09	completed
5064	2287	2025-03-02	completed
5065	2297	2025-03-13	completed
5066	2313	2025-03-16	completed
5067	2318	2025-03-14	completed
5068	2326	2025-03-24	completed
5069	2335	2025-03-07	completed
5070	2341	2025-03-02	completed
5071	2358	2025-03-29	completed
5072	2365	2025-03-31	completed
5073	2366	2025-03-07	completed
5074	2367	2025-03-18	completed
5075	2376	2025-03-09	completed
5076	2383	2025-03-28	completed
5077	2387	2025-03-21	completed
5078	2394	2025-03-09	completed
5079	2406	2025-03-30	completed
5080	2407	2025-03-24	completed
5081	2414	2025-03-28	completed
5082	2416	2025-03-06	completed
5083	2431	2025-03-07	completed
5084	2433	2025-03-30	completed
5085	2434	2025-03-24	completed
5086	2439	2025-03-05	completed
5087	2445	2025-03-09	completed
5088	2450	2025-03-23	completed
5089	2460	2025-03-28	completed
5090	2467	2025-03-25	completed
5091	2485	2025-03-15	completed
5092	2492	2025-03-04	completed
5093	2503	2025-03-29	completed
5094	2505	2025-03-04	completed
5095	2506	2025-03-05	completed
5096	2507	2025-03-13	completed
5097	2511	2025-03-20	completed
5098	2523	2025-03-04	cancelled
5099	2528	2025-03-28	completed
5100	2532	2025-03-08	completed
5101	2534	2025-03-24	cancelled
5102	2540	2025-03-12	refunded
5103	2550	2025-03-10	completed
5104	2558	2025-03-13	completed
5105	2566	2025-03-29	completed
5106	2570	2025-03-15	completed
5107	2579	2025-03-20	completed
5108	2595	2025-03-02	completed
5109	2597	2025-03-10	completed
5110	2601	2025-03-29	completed
5111	2604	2025-03-07	completed
5112	2608	2025-03-01	completed
5113	2625	2025-03-04	completed
5114	2629	2025-03-08	completed
5115	2649	2025-03-12	completed
5116	2656	2025-03-25	completed
5117	2672	2025-03-27	completed
5118	2683	2025-03-27	completed
5119	2690	2025-03-06	completed
5120	2701	2025-03-27	completed
5121	2714	2025-03-30	completed
5122	2725	2025-03-21	completed
5123	2735	2025-03-02	completed
5124	2750	2025-03-27	completed
5125	2761	2025-03-16	completed
5126	2770	2025-03-13	completed
5127	2776	2025-03-06	completed
5128	2804	2025-03-30	completed
5129	2815	2025-03-15	completed
5130	2832	2025-03-03	cancelled
5131	2862	2025-03-21	completed
5132	2866	2025-03-21	completed
5133	2874	2025-03-22	completed
5134	2879	2025-03-03	completed
5135	2882	2025-03-11	completed
5136	2886	2025-03-15	completed
5137	2892	2025-03-15	completed
5138	2910	2025-03-31	completed
5139	2913	2025-03-18	completed
5140	2918	2025-03-18	completed
5141	2933	2025-03-18	completed
5142	2937	2025-03-23	completed
5143	2950	2025-03-22	completed
5144	2956	2025-03-11	cancelled
5145	2961	2025-03-16	completed
5146	2963	2025-03-29	completed
5147	2967	2025-03-29	completed
5148	2969	2025-03-04	completed
5149	2972	2025-03-06	completed
5150	2976	2025-03-23	completed
5151	2986	2025-03-24	refunded
5152	7	2025-04-19	refunded
5153	13	2025-04-12	completed
5154	18	2025-04-17	completed
5155	21	2025-04-12	refunded
5156	22	2025-04-28	completed
5157	54	2025-04-02	completed
5158	60	2025-04-10	completed
5159	70	2025-04-10	completed
5160	84	2025-04-19	completed
5161	85	2025-04-02	completed
5162	94	2025-04-29	completed
5163	116	2025-04-14	completed
5164	136	2025-04-19	completed
5165	140	2025-04-26	completed
5166	145	2025-04-19	completed
5167	153	2025-04-19	completed
5168	154	2025-04-10	completed
5169	173	2025-04-20	completed
5170	192	2025-04-17	completed
5171	206	2025-04-14	completed
5172	209	2025-04-02	completed
5173	218	2025-04-06	completed
5174	219	2025-04-19	completed
5175	220	2025-04-29	completed
5176	246	2025-04-09	completed
5177	248	2025-04-19	completed
5178	249	2025-04-25	completed
5179	252	2025-04-13	completed
5180	265	2025-04-25	completed
5181	276	2025-04-25	completed
5182	278	2025-04-04	completed
5183	279	2025-04-10	completed
5184	285	2025-04-28	completed
5185	296	2025-04-20	completed
5186	314	2025-04-21	completed
5187	332	2025-04-20	completed
5188	338	2025-04-05	refunded
5189	349	2025-04-22	completed
5190	356	2025-04-12	completed
5191	364	2025-04-21	completed
5192	377	2025-04-18	completed
5193	422	2025-04-21	completed
5194	437	2025-04-07	cancelled
5195	441	2025-04-01	refunded
5196	442	2025-04-05	completed
5197	450	2025-04-14	completed
5198	465	2025-04-28	completed
5199	467	2025-04-21	completed
5200	470	2025-04-13	completed
5201	472	2025-04-21	completed
5202	472	2025-04-29	completed
5203	475	2025-04-02	completed
5204	476	2025-04-18	completed
5205	480	2025-04-02	completed
5206	485	2025-04-28	completed
5207	488	2025-04-18	completed
5208	498	2025-04-09	completed
5209	501	2025-04-27	completed
5210	511	2025-04-04	completed
5211	513	2025-04-03	completed
5212	541	2025-04-18	completed
5213	550	2025-04-06	completed
5214	555	2025-04-27	completed
5215	559	2025-04-14	completed
5216	560	2025-04-16	completed
5217	566	2025-04-21	completed
5218	583	2025-04-23	completed
5219	594	2025-04-18	completed
5220	596	2025-04-21	completed
5221	604	2025-04-04	completed
5222	615	2025-04-06	completed
5223	631	2025-04-17	cancelled
5224	638	2025-04-20	completed
5225	649	2025-04-17	refunded
5226	668	2025-04-10	refunded
5227	670	2025-04-09	cancelled
5228	672	2025-04-07	completed
5229	680	2025-04-04	completed
5230	696	2025-04-18	refunded
5231	713	2025-04-08	completed
5232	721	2025-04-05	completed
5233	729	2025-04-22	completed
5234	750	2025-04-28	completed
5235	760	2025-04-22	completed
5236	776	2025-04-13	completed
5237	778	2025-04-13	completed
5238	798	2025-04-23	refunded
5239	811	2025-04-23	completed
5240	814	2025-04-16	completed
5241	820	2025-04-01	completed
5242	831	2025-04-19	completed
5243	841	2025-04-15	completed
5244	845	2025-04-15	completed
5245	852	2025-04-21	completed
5246	853	2025-04-21	completed
5247	855	2025-04-21	completed
5248	856	2025-04-13	completed
5249	869	2025-04-17	completed
5250	871	2025-04-21	completed
5251	889	2025-04-11	completed
5252	892	2025-04-25	completed
5253	894	2025-04-29	completed
5254	902	2025-04-02	completed
5255	906	2025-04-08	completed
5256	914	2025-04-24	completed
5257	917	2025-04-18	completed
5258	921	2025-04-03	completed
5259	924	2025-04-11	completed
5260	926	2025-04-21	completed
5261	939	2025-04-07	completed
5262	941	2025-04-08	completed
5263	946	2025-04-27	completed
5264	951	2025-04-05	completed
5265	971	2025-04-16	completed
5266	976	2025-04-05	completed
5267	993	2025-04-28	cancelled
5268	1014	2025-04-05	completed
5269	1026	2025-04-18	completed
5270	1030	2025-04-19	completed
5271	1040	2025-04-07	completed
5272	1054	2025-04-30	completed
5273	1056	2025-04-02	completed
5274	1085	2025-04-30	completed
5275	1089	2025-04-19	completed
5276	1091	2025-04-21	completed
5277	1094	2025-04-30	completed
5278	1128	2025-04-02	completed
5279	1133	2025-04-07	completed
5280	1168	2025-04-06	completed
5281	1174	2025-04-21	completed
5282	1178	2025-04-08	completed
5283	1217	2025-04-08	completed
5284	1224	2025-04-28	completed
5285	1240	2025-04-17	completed
5286	1253	2025-04-07	completed
5287	1254	2025-04-21	completed
5288	1268	2025-04-01	completed
5289	1275	2025-04-29	completed
5290	1277	2025-04-10	completed
5291	1282	2025-04-16	completed
5292	1316	2025-04-17	completed
5293	1330	2025-04-29	refunded
5294	1344	2025-04-17	completed
5295	1365	2025-04-10	completed
5296	1374	2025-04-19	completed
5297	1374	2025-04-07	completed
5298	1419	2025-04-11	completed
5299	1434	2025-04-12	completed
5300	1449	2025-04-04	completed
5301	1450	2025-04-05	completed
5302	1482	2025-04-06	completed
5303	1513	2025-04-22	completed
5304	1515	2025-04-30	completed
5305	1523	2025-04-03	completed
5306	1531	2025-04-03	completed
5307	1543	2025-04-11	completed
5308	1547	2025-04-07	completed
5309	1548	2025-04-15	completed
5310	1551	2025-04-08	completed
5311	1554	2025-04-01	completed
5312	1558	2025-04-18	completed
5313	1559	2025-04-06	completed
5314	1577	2025-04-17	completed
5315	1578	2025-04-05	completed
5316	1611	2025-04-14	completed
5317	1638	2025-04-18	completed
5318	1643	2025-04-29	completed
5319	1643	2025-04-30	completed
5320	1653	2025-04-13	completed
5321	1657	2025-04-13	completed
5322	1665	2025-04-01	completed
5323	1670	2025-04-21	completed
5324	1693	2025-04-29	completed
5325	1707	2025-04-17	completed
5326	1710	2025-04-14	completed
5327	1728	2025-04-30	completed
5328	1752	2025-04-23	completed
5329	1761	2025-04-11	completed
5330	1763	2025-04-01	completed
5331	1786	2025-04-22	completed
5332	1810	2025-04-14	completed
5333	1815	2025-04-01	completed
5334	1815	2025-04-02	completed
5335	1830	2025-04-30	completed
5336	1833	2025-04-09	completed
5337	1842	2025-04-18	completed
5338	1850	2025-04-02	completed
5339	1852	2025-04-17	completed
5340	1856	2025-04-08	completed
5341	1884	2025-04-10	completed
5342	1896	2025-04-12	completed
5343	1897	2025-04-28	completed
5344	1901	2025-04-29	completed
5345	1915	2025-04-10	cancelled
5346	1919	2025-04-13	completed
5347	1950	2025-04-06	completed
5348	1956	2025-04-27	completed
5349	1961	2025-04-10	completed
5350	1971	2025-04-11	completed
5351	1977	2025-04-27	completed
5352	1981	2025-04-05	completed
5353	1982	2025-04-21	completed
5354	1985	2025-04-29	cancelled
5355	1991	2025-04-28	completed
5356	1999	2025-04-24	completed
5357	2001	2025-04-12	cancelled
5358	2004	2025-04-13	completed
5359	2040	2025-04-18	completed
5360	2057	2025-04-21	completed
5361	2074	2025-04-17	completed
5362	2077	2025-04-26	completed
5363	2080	2025-04-28	completed
5364	2082	2025-04-14	completed
5365	2088	2025-04-13	completed
5366	2089	2025-04-04	completed
5367	2090	2025-04-18	completed
5368	2091	2025-04-27	completed
5369	2093	2025-04-03	completed
5370	2096	2025-04-21	completed
5371	2122	2025-04-07	completed
5372	2127	2025-04-18	completed
5373	2128	2025-04-01	completed
5374	2129	2025-04-28	completed
5375	2136	2025-04-26	completed
5376	2153	2025-04-06	completed
5377	2163	2025-04-28	completed
5378	2185	2025-04-01	completed
5379	2192	2025-04-29	completed
5380	2196	2025-04-04	completed
5381	2211	2025-04-12	completed
5382	2213	2025-04-13	completed
5383	2214	2025-04-14	completed
5384	2220	2025-04-09	completed
5385	2224	2025-04-27	cancelled
5386	2230	2025-04-17	completed
5387	2234	2025-04-02	completed
5388	2235	2025-04-01	completed
5389	2236	2025-04-12	completed
5390	2263	2025-04-03	completed
5391	2275	2025-04-20	completed
5392	2282	2025-04-21	completed
5393	2285	2025-04-15	completed
5394	2293	2025-04-09	cancelled
5395	2313	2025-04-25	completed
5396	2315	2025-04-03	completed
5397	2326	2025-04-21	completed
5398	2327	2025-04-12	completed
5399	2328	2025-04-19	completed
5400	2329	2025-04-28	completed
5401	2335	2025-04-01	completed
5402	2357	2025-04-09	completed
5403	2358	2025-04-21	completed
5404	2374	2025-04-13	completed
5405	2376	2025-04-22	completed
5406	2381	2025-04-06	completed
5407	2405	2025-04-15	cancelled
5408	2409	2025-04-30	completed
5409	2415	2025-04-19	completed
5410	2427	2025-04-19	completed
5411	2442	2025-04-28	cancelled
5412	2464	2025-04-30	completed
5413	2472	2025-04-25	completed
5414	2480	2025-04-07	completed
5415	2490	2025-04-01	cancelled
5416	2498	2025-04-28	completed
5417	2501	2025-04-10	completed
5418	2505	2025-04-21	completed
5419	2518	2025-04-11	completed
5420	2521	2025-04-20	completed
5421	2534	2025-04-23	completed
5422	2565	2025-04-11	completed
5423	2567	2025-04-13	completed
5424	2576	2025-04-16	completed
5425	2582	2025-04-06	completed
5426	2589	2025-04-24	completed
5427	2591	2025-04-09	completed
5428	2596	2025-04-29	completed
5429	2614	2025-04-26	completed
5430	2633	2025-04-25	completed
5431	2635	2025-04-04	completed
5432	2641	2025-04-23	completed
5433	2647	2025-04-15	completed
5434	2672	2025-04-20	completed
5435	2673	2025-04-30	completed
5436	2691	2025-04-14	completed
5437	2695	2025-04-18	completed
5438	2706	2025-04-14	completed
5439	2708	2025-04-15	completed
5440	2711	2025-04-18	completed
5441	2712	2025-04-27	completed
5442	2736	2025-04-01	completed
5443	2739	2025-04-27	completed
5444	2740	2025-04-27	completed
5445	2741	2025-04-28	completed
5446	2744	2025-04-30	completed
5447	2750	2025-04-14	completed
5448	2755	2025-04-29	completed
5449	2763	2025-04-24	completed
5450	2769	2025-04-16	completed
5451	2773	2025-04-03	completed
5452	2777	2025-04-23	completed
5453	2782	2025-04-19	completed
5454	2784	2025-04-04	refunded
5455	2796	2025-04-30	completed
5456	2801	2025-04-18	completed
5457	2812	2025-04-23	completed
5458	2814	2025-04-18	completed
5459	2822	2025-04-19	completed
5460	2839	2025-04-05	completed
5461	2847	2025-04-07	completed
5462	2849	2025-04-10	completed
5463	2854	2025-04-08	completed
5464	2859	2025-04-06	completed
5465	2864	2025-04-30	completed
5466	2880	2025-04-22	completed
5467	2884	2025-04-30	cancelled
5468	2917	2025-04-08	completed
5469	2920	2025-04-08	completed
5470	2976	2025-04-21	completed
5471	2995	2025-04-27	completed
5472	2995	2025-04-13	completed
5473	2998	2025-04-14	completed
5474	2999	2025-04-06	completed
5475	5	2025-05-25	cancelled
5476	9	2025-05-14	completed
5477	21	2025-05-18	completed
5478	28	2025-05-25	completed
5479	30	2025-05-25	refunded
5480	45	2025-05-16	completed
5481	54	2025-05-15	completed
5482	64	2025-05-07	completed
5483	67	2025-05-12	completed
5484	79	2025-05-09	completed
5485	80	2025-05-09	completed
5486	85	2025-05-14	completed
5487	85	2025-05-15	completed
5488	97	2025-05-22	completed
5489	103	2025-05-10	completed
5490	111	2025-05-14	completed
5491	117	2025-05-27	completed
5492	119	2025-05-07	cancelled
5493	124	2025-05-28	completed
5494	126	2025-05-10	completed
5495	129	2025-05-07	completed
5496	134	2025-05-26	completed
5497	164	2025-05-25	cancelled
5498	168	2025-05-22	completed
5499	173	2025-05-24	completed
5500	200	2025-05-15	completed
5501	211	2025-05-15	completed
5502	215	2025-05-30	completed
5503	218	2025-05-07	completed
5504	226	2025-05-23	completed
5505	227	2025-05-04	completed
5506	257	2025-05-19	completed
5507	261	2025-05-10	completed
5508	274	2025-05-02	completed
5509	280	2025-05-29	completed
5510	293	2025-05-11	completed
5511	295	2025-05-15	completed
5512	297	2025-05-10	cancelled
5513	325	2025-05-10	completed
5514	328	2025-05-19	completed
5515	338	2025-05-28	completed
5516	348	2025-05-08	completed
5517	349	2025-05-10	completed
5518	356	2025-05-20	completed
5519	357	2025-05-15	completed
5520	363	2025-05-10	completed
5521	366	2025-05-29	cancelled
5522	374	2025-05-31	completed
5523	375	2025-05-09	completed
5524	388	2025-05-10	completed
5525	389	2025-05-28	completed
5526	415	2025-05-26	completed
5527	422	2025-05-18	completed
5528	426	2025-05-04	completed
5529	437	2025-05-18	cancelled
5530	438	2025-05-03	completed
5531	441	2025-05-27	completed
5532	454	2025-05-27	cancelled
5533	467	2025-05-09	completed
5534	468	2025-05-09	completed
5535	472	2025-05-03	completed
5536	478	2025-05-21	completed
5537	483	2025-05-02	completed
5538	486	2025-05-22	completed
5539	492	2025-05-06	completed
5540	495	2025-05-22	completed
5541	499	2025-05-28	completed
5542	504	2025-05-22	completed
5543	507	2025-05-16	completed
5544	524	2025-05-28	completed
5545	529	2025-05-14	completed
5546	535	2025-05-02	completed
5547	541	2025-05-30	completed
5548	550	2025-05-19	completed
5549	550	2025-05-16	completed
5550	551	2025-05-19	completed
5551	561	2025-05-07	completed
5552	580	2025-05-03	completed
5553	581	2025-05-20	completed
5554	584	2025-05-28	completed
5555	603	2025-05-01	completed
5556	624	2025-05-13	completed
5557	653	2025-05-24	completed
5558	661	2025-05-21	completed
5559	663	2025-05-24	completed
5560	668	2025-05-17	completed
5561	679	2025-05-27	completed
5562	681	2025-05-18	completed
5563	716	2025-05-13	completed
5564	726	2025-05-17	completed
5565	729	2025-05-14	completed
5566	739	2025-05-26	completed
5567	758	2025-05-05	completed
5568	771	2025-05-02	completed
5569	776	2025-05-15	completed
5570	779	2025-05-26	completed
5571	784	2025-05-17	cancelled
5572	788	2025-05-25	completed
5573	791	2025-05-29	completed
5574	792	2025-05-28	completed
5575	798	2025-05-03	completed
5576	817	2025-05-02	completed
5577	832	2025-05-02	completed
5578	842	2025-05-11	completed
5579	843	2025-05-28	completed
5580	859	2025-05-08	completed
5581	866	2025-05-17	completed
5582	872	2025-05-01	completed
5583	889	2025-05-24	completed
5584	900	2025-05-06	completed
5585	918	2025-05-28	completed
5586	930	2025-05-12	completed
5587	938	2025-05-29	completed
5588	947	2025-05-31	completed
5589	952	2025-05-01	completed
5590	957	2025-05-14	completed
5591	960	2025-05-11	completed
5592	976	2025-05-19	completed
5593	1000	2025-05-11	completed
5594	1025	2025-05-22	completed
5595	1034	2025-05-16	completed
5596	1040	2025-05-27	completed
5597	1053	2025-05-07	completed
5598	1059	2025-05-23	completed
5599	1066	2025-05-26	completed
5600	1084	2025-05-01	completed
5601	1104	2025-05-24	completed
5602	1115	2025-05-11	completed
5603	1122	2025-05-14	completed
5604	1127	2025-05-31	completed
5605	1128	2025-05-16	completed
5606	1135	2025-05-17	completed
5607	1156	2025-05-24	completed
5608	1159	2025-05-30	completed
5609	1166	2025-05-29	completed
5610	1193	2025-05-11	completed
5611	1195	2025-05-12	completed
5612	1222	2025-05-05	cancelled
5613	1228	2025-05-05	completed
5614	1272	2025-05-20	refunded
5615	1282	2025-05-24	completed
5616	1295	2025-05-27	completed
5617	1315	2025-05-13	completed
5618	1316	2025-05-23	completed
5619	1317	2025-05-13	completed
5620	1318	2025-05-05	completed
5621	1323	2025-05-22	completed
5622	1324	2025-05-25	completed
5623	1350	2025-05-05	completed
5624	1370	2025-05-11	completed
5625	1374	2025-05-03	completed
5626	1383	2025-05-29	completed
5627	1416	2025-05-14	completed
5628	1424	2025-05-13	completed
5629	1433	2025-05-03	completed
5630	1437	2025-05-04	completed
5631	1438	2025-05-29	completed
5632	1449	2025-05-28	cancelled
5633	1454	2025-05-04	completed
5634	1459	2025-05-24	completed
5635	1461	2025-05-15	cancelled
5636	1484	2025-05-12	completed
5637	1499	2025-05-16	completed
5638	1505	2025-05-13	completed
5639	1507	2025-05-10	completed
5640	1509	2025-05-24	completed
5641	1515	2025-05-20	completed
5642	1520	2025-05-16	completed
5643	1525	2025-05-02	completed
5644	1526	2025-05-07	completed
5645	1530	2025-05-26	completed
5646	1540	2025-05-31	completed
5647	1543	2025-05-08	completed
5648	1544	2025-05-06	completed
5649	1549	2025-05-26	completed
5650	1550	2025-05-02	completed
5651	1578	2025-05-25	completed
5652	1604	2025-05-06	completed
5653	1605	2025-05-02	completed
5654	1610	2025-05-30	completed
5655	1633	2025-05-18	completed
5656	1646	2025-05-12	completed
5657	1653	2025-05-15	completed
5658	1673	2025-05-10	completed
5659	1677	2025-05-14	completed
5660	1686	2025-05-22	completed
5661	1689	2025-05-26	completed
5662	1690	2025-05-16	completed
5663	1699	2025-05-18	refunded
5664	1701	2025-05-19	completed
5665	1714	2025-05-12	completed
5666	1718	2025-05-26	completed
5667	1723	2025-05-23	completed
5668	1730	2025-05-08	completed
5669	1732	2025-05-06	completed
5670	1735	2025-05-31	completed
5671	1739	2025-05-22	completed
5672	1748	2025-05-18	completed
5673	1758	2025-05-02	refunded
5674	1777	2025-05-24	completed
5675	1792	2025-05-21	cancelled
5676	1816	2025-05-21	completed
5677	1827	2025-05-04	refunded
5678	1833	2025-05-17	completed
5679	1838	2025-05-30	completed
5680	1845	2025-05-05	completed
5681	1856	2025-05-23	completed
5682	1871	2025-05-21	completed
5683	1885	2025-05-28	completed
5684	1888	2025-05-05	completed
5685	1891	2025-05-31	completed
5686	1893	2025-05-04	completed
5687	1907	2025-05-06	completed
5688	1940	2025-05-01	refunded
5689	1958	2025-05-15	completed
5690	1969	2025-05-07	completed
5691	1972	2025-05-29	completed
5692	1975	2025-05-26	completed
5693	1978	2025-05-21	completed
5694	1993	2025-05-20	completed
5695	2013	2025-05-11	completed
5696	2014	2025-05-27	completed
5697	2015	2025-05-31	completed
5698	2020	2025-05-29	completed
5699	2026	2025-05-28	cancelled
5700	2034	2025-05-15	completed
5701	2035	2025-05-30	completed
5702	2038	2025-05-05	completed
5703	2040	2025-05-24	completed
5704	2046	2025-05-09	completed
5705	2047	2025-05-12	completed
5706	2055	2025-05-05	completed
5707	2083	2025-05-08	completed
5708	2099	2025-05-20	completed
5709	2099	2025-05-21	completed
5710	2131	2025-05-26	completed
5711	2132	2025-05-16	completed
5712	2135	2025-05-19	completed
5713	2136	2025-05-18	completed
5714	2141	2025-05-14	completed
5715	2144	2025-05-25	completed
5716	2146	2025-05-24	completed
5717	2154	2025-05-22	completed
5718	2158	2025-05-05	completed
5719	2162	2025-05-18	completed
5720	2178	2025-05-26	completed
5721	2205	2025-05-02	completed
5722	2222	2025-05-26	completed
5723	2232	2025-05-26	completed
5724	2236	2025-05-03	completed
5725	2252	2025-05-17	completed
5726	2259	2025-05-31	completed
5727	2262	2025-05-08	completed
5728	2273	2025-05-01	completed
5729	2279	2025-05-31	completed
5730	2281	2025-05-09	completed
5731	2287	2025-05-25	completed
5732	2288	2025-05-18	completed
5733	2289	2025-05-13	completed
5734	2293	2025-05-03	completed
5735	2294	2025-05-08	completed
5736	2298	2025-05-29	completed
5737	2305	2025-05-06	completed
5738	2315	2025-05-23	completed
5739	2330	2025-05-29	completed
5740	2357	2025-05-11	completed
5741	2358	2025-05-28	completed
5742	2359	2025-05-04	completed
5743	2387	2025-05-24	completed
5744	2390	2025-05-31	completed
5745	2395	2025-05-19	completed
5746	2402	2025-05-26	completed
5747	2405	2025-05-07	refunded
5748	2406	2025-05-24	completed
5749	2421	2025-05-09	completed
5750	2432	2025-05-06	completed
5751	2439	2025-05-27	completed
5752	2448	2025-05-10	completed
5753	2463	2025-05-12	completed
5754	2469	2025-05-28	completed
5755	2508	2025-05-26	completed
5756	2515	2025-05-31	completed
5757	2517	2025-05-21	completed
5758	2518	2025-05-22	cancelled
5759	2528	2025-05-14	completed
5760	2536	2025-05-25	completed
5761	2538	2025-05-18	completed
5762	2540	2025-05-17	completed
5763	2563	2025-05-26	completed
5764	2576	2025-05-16	completed
5765	2576	2025-05-02	completed
5766	2581	2025-05-30	completed
5767	2588	2025-05-20	completed
5768	2591	2025-05-02	completed
5769	2593	2025-05-09	completed
5770	2595	2025-05-28	completed
5771	2600	2025-05-29	completed
5772	2602	2025-05-02	completed
5773	2611	2025-05-20	completed
5774	2612	2025-05-06	completed
5775	2622	2025-05-08	completed
5776	2625	2025-05-20	completed
5777	2657	2025-05-19	completed
5778	2664	2025-05-31	completed
5779	2665	2025-05-11	completed
5780	2672	2025-05-28	completed
5781	2673	2025-05-04	completed
5782	2694	2025-05-11	completed
5783	2703	2025-05-20	completed
5784	2704	2025-05-07	completed
5785	2706	2025-05-03	completed
5786	2708	2025-05-07	completed
5787	2711	2025-05-03	completed
5788	2714	2025-05-17	completed
5789	2731	2025-05-16	completed
5790	2736	2025-05-31	completed
5791	2753	2025-05-14	completed
5792	2779	2025-05-09	completed
5793	2805	2025-05-28	cancelled
5794	2814	2025-05-17	completed
5795	2815	2025-05-13	completed
5796	2843	2025-05-27	completed
5797	2847	2025-05-21	completed
5798	2849	2025-05-11	completed
5799	2868	2025-05-15	completed
5800	2876	2025-05-29	completed
5801	2876	2025-05-06	completed
5802	2882	2025-05-12	completed
5803	2884	2025-05-27	completed
5804	2909	2025-05-09	completed
5805	2914	2025-05-24	completed
5806	2926	2025-05-26	completed
5807	2936	2025-05-24	completed
5808	2944	2025-05-19	completed
5809	2950	2025-05-06	completed
5810	2966	2025-05-19	completed
5811	2970	2025-05-28	cancelled
5812	2977	2025-05-15	completed
5813	2988	2025-05-16	completed
5814	2996	2025-05-22	completed
5815	2997	2025-05-26	completed
5816	18	2025-06-11	completed
5817	20	2025-06-08	cancelled
5818	21	2025-06-22	completed
5819	22	2025-06-09	completed
5820	32	2025-06-27	completed
5821	65	2025-06-20	completed
5822	71	2025-06-22	completed
5823	108	2025-06-15	completed
5824	118	2025-06-23	completed
5825	122	2025-06-24	cancelled
5826	138	2025-06-11	completed
5827	140	2025-06-20	completed
5828	143	2025-06-03	completed
5829	145	2025-06-29	completed
5830	150	2025-06-14	completed
5831	156	2025-06-03	completed
5832	159	2025-06-18	completed
5833	160	2025-06-05	completed
5834	181	2025-06-23	completed
5835	181	2025-06-02	completed
5836	182	2025-06-08	completed
5837	188	2025-06-22	completed
5838	212	2025-06-26	completed
5839	226	2025-06-18	completed
5840	227	2025-06-04	completed
5841	229	2025-06-29	completed
5842	230	2025-06-22	completed
5843	254	2025-06-16	completed
5844	256	2025-06-04	completed
5845	298	2025-06-02	completed
5846	314	2025-06-13	completed
5847	318	2025-06-29	completed
5848	325	2025-06-12	completed
5849	326	2025-06-25	completed
5850	346	2025-06-23	completed
5851	348	2025-06-27	completed
5852	355	2025-06-24	completed
5853	362	2025-06-25	completed
5854	379	2025-06-07	completed
5855	388	2025-06-22	completed
5856	396	2025-06-29	completed
5857	412	2025-06-04	completed
5858	434	2025-06-19	completed
5859	438	2025-06-22	completed
5860	462	2025-06-09	completed
5861	465	2025-06-02	completed
5862	473	2025-06-12	completed
5863	477	2025-06-19	completed
5864	482	2025-06-11	completed
5865	486	2025-06-21	completed
5866	487	2025-06-22	completed
5867	492	2025-06-19	completed
5868	495	2025-06-06	completed
5869	497	2025-06-16	completed
5870	535	2025-06-02	completed
5871	536	2025-06-04	completed
5872	538	2025-06-06	completed
5873	544	2025-06-27	completed
5874	557	2025-06-24	completed
5875	583	2025-06-26	completed
5876	591	2025-06-19	completed
5877	613	2025-06-28	completed
5878	634	2025-06-20	completed
5879	634	2025-06-18	completed
5880	653	2025-06-29	completed
5881	657	2025-06-20	refunded
5882	662	2025-06-02	cancelled
5883	664	2025-06-14	completed
5884	676	2025-06-19	completed
5885	680	2025-06-27	cancelled
5886	685	2025-06-17	completed
5887	741	2025-06-08	completed
5888	743	2025-06-26	completed
5889	769	2025-06-26	completed
5890	770	2025-06-19	completed
5891	777	2025-06-16	completed
5892	785	2025-06-07	completed
5893	788	2025-06-14	completed
5894	816	2025-06-26	completed
5895	831	2025-06-07	completed
5896	834	2025-06-15	completed
5897	848	2025-06-11	completed
5898	849	2025-06-30	completed
5899	854	2025-06-23	completed
5900	861	2025-06-09	completed
5901	864	2025-06-29	completed
5902	865	2025-06-11	completed
5903	866	2025-06-25	cancelled
5904	869	2025-06-04	completed
5905	870	2025-06-05	completed
5906	894	2025-06-25	completed
5907	895	2025-06-21	completed
5908	901	2025-06-29	completed
5909	926	2025-06-07	completed
5910	931	2025-06-26	completed
5911	933	2025-06-24	completed
5912	938	2025-06-23	completed
5913	945	2025-06-19	completed
5914	951	2025-06-17	completed
5915	953	2025-06-02	completed
5916	961	2025-06-13	completed
5917	984	2025-06-06	completed
5918	988	2025-06-08	completed
5919	992	2025-06-02	completed
5920	1002	2025-06-20	completed
5921	1014	2025-06-11	refunded
5922	1036	2025-06-08	completed
5923	1038	2025-06-27	completed
5924	1050	2025-06-27	cancelled
5925	1052	2025-06-26	completed
5926	1056	2025-06-29	completed
5927	1057	2025-06-04	completed
5928	1060	2025-06-17	completed
5929	1070	2025-06-06	completed
5930	1071	2025-06-05	completed
5931	1073	2025-06-12	completed
5932	1076	2025-06-10	completed
5933	1088	2025-06-30	completed
5934	1096	2025-06-06	completed
5935	1101	2025-06-30	completed
5936	1106	2025-06-24	completed
5937	1108	2025-06-24	completed
5938	1113	2025-06-18	completed
5939	1120	2025-06-27	completed
5940	1121	2025-06-03	completed
5941	1133	2025-06-30	completed
5942	1134	2025-06-13	completed
5943	1141	2025-06-05	completed
5944	1143	2025-06-11	completed
5945	1160	2025-06-01	completed
5946	1162	2025-06-24	completed
5947	1175	2025-06-20	completed
5948	1181	2025-06-26	completed
5949	1187	2025-06-04	completed
5950	1189	2025-06-23	completed
5951	1191	2025-06-25	completed
5952	1206	2025-06-20	completed
5953	1214	2025-06-20	completed
5954	1218	2025-06-05	completed
5955	1222	2025-06-05	refunded
5956	1236	2025-06-18	completed
5957	1238	2025-06-05	completed
5958	1242	2025-06-10	completed
5959	1268	2025-06-05	completed
5960	1271	2025-06-01	completed
5961	1276	2025-06-24	completed
5962	1276	2025-06-19	completed
5963	1280	2025-06-11	completed
5964	1287	2025-06-20	refunded
5965	1292	2025-06-27	completed
5966	1307	2025-06-29	completed
5967	1316	2025-06-20	completed
5968	1320	2025-06-14	completed
5969	1334	2025-06-23	completed
5970	1334	2025-06-03	completed
5971	1342	2025-06-25	cancelled
5972	1348	2025-06-23	completed
5973	1353	2025-06-28	completed
5974	1357	2025-06-23	completed
5975	1361	2025-06-15	completed
5976	1377	2025-06-27	completed
5977	1388	2025-06-27	completed
5978	1406	2025-06-29	completed
5979	1423	2025-06-13	completed
5980	1442	2025-06-01	completed
5981	1444	2025-06-20	completed
5982	1449	2025-06-24	completed
5983	1468	2025-06-19	completed
5984	1474	2025-06-04	completed
5985	1480	2025-06-29	completed
5986	1492	2025-06-30	completed
5987	1501	2025-06-30	completed
5988	1512	2025-06-06	completed
5989	1526	2025-06-02	completed
5990	1534	2025-06-28	completed
5991	1562	2025-06-08	completed
5992	1576	2025-06-02	completed
5993	1579	2025-06-30	completed
5994	1580	2025-06-07	completed
5995	1581	2025-06-06	completed
5996	1583	2025-06-15	completed
5997	1586	2025-06-07	completed
5998	1597	2025-06-24	completed
5999	1601	2025-06-15	completed
6000	1603	2025-06-04	completed
6001	1606	2025-06-01	completed
6002	1619	2025-06-27	completed
6003	1622	2025-06-17	completed
6004	1633	2025-06-10	completed
6005	1638	2025-06-01	completed
6006	1640	2025-06-05	completed
6007	1662	2025-06-14	completed
6008	1690	2025-06-18	completed
6009	1693	2025-06-29	completed
6010	1699	2025-06-02	completed
6011	1701	2025-06-25	completed
6012	1725	2025-06-21	completed
6013	1738	2025-06-14	completed
6014	1756	2025-06-03	completed
6015	1761	2025-06-30	cancelled
6016	1763	2025-06-22	completed
6017	1772	2025-06-05	completed
6018	1776	2025-06-04	refunded
6019	1790	2025-06-10	completed
6020	1810	2025-06-02	completed
6021	1816	2025-06-19	refunded
6022	1818	2025-06-20	completed
6023	1823	2025-06-22	completed
6024	1832	2025-06-06	completed
6025	1837	2025-06-07	completed
6026	1844	2025-06-02	completed
6027	1855	2025-06-15	completed
6028	1857	2025-06-16	completed
6029	1864	2025-06-05	completed
6030	1897	2025-06-27	completed
6031	1911	2025-06-07	completed
6032	1915	2025-06-05	completed
6033	1925	2025-06-11	completed
6034	1928	2025-06-10	completed
6035	1930	2025-06-28	completed
6036	1932	2025-06-15	completed
6037	1938	2025-06-28	completed
6038	1940	2025-06-23	completed
6039	1946	2025-06-11	completed
6040	1949	2025-06-11	completed
6041	1975	2025-06-28	completed
6042	1978	2025-06-13	completed
6043	2013	2025-06-02	completed
6044	2019	2025-06-07	completed
6045	2023	2025-06-23	completed
6046	2029	2025-06-13	completed
6047	2038	2025-06-03	cancelled
6048	2051	2025-06-10	completed
6049	2068	2025-06-12	completed
6050	2072	2025-06-21	refunded
6051	2077	2025-06-27	completed
6052	2088	2025-06-30	completed
6053	2091	2025-06-20	completed
6054	2111	2025-06-01	completed
6055	2115	2025-06-16	completed
6056	2138	2025-06-08	completed
6057	2148	2025-06-17	completed
6058	2154	2025-06-22	completed
6059	2175	2025-06-30	completed
6060	2192	2025-06-09	completed
6061	2199	2025-06-29	completed
6062	2215	2025-06-09	completed
6063	2218	2025-06-02	completed
6064	2223	2025-06-25	completed
6065	2232	2025-06-02	completed
6066	2242	2025-06-08	completed
6067	2248	2025-06-13	completed
6068	2280	2025-06-13	completed
6069	2294	2025-06-28	completed
6070	2303	2025-06-19	completed
6071	2304	2025-06-07	completed
6072	2342	2025-06-25	completed
6073	2355	2025-06-14	completed
6074	2356	2025-06-06	completed
6075	2367	2025-06-13	completed
6076	2377	2025-06-19	completed
6077	2380	2025-06-28	cancelled
6078	2382	2025-06-10	completed
6079	2385	2025-06-07	completed
6080	2400	2025-06-28	completed
6081	2414	2025-06-26	completed
6082	2419	2025-06-14	completed
6083	2430	2025-06-17	completed
6084	2432	2025-06-17	completed
6085	2434	2025-06-05	completed
6086	2437	2025-06-21	completed
6087	2445	2025-06-13	completed
6088	2448	2025-06-21	completed
6089	2464	2025-06-13	completed
6090	2467	2025-06-04	completed
6091	2469	2025-06-15	completed
6092	2473	2025-06-25	completed
6093	2482	2025-06-27	completed
6094	2494	2025-06-05	completed
6095	2499	2025-06-13	completed
6096	2507	2025-06-04	completed
6097	2517	2025-06-03	completed
6098	2535	2025-06-19	completed
6099	2537	2025-06-07	completed
6100	2539	2025-06-30	completed
6101	2541	2025-06-03	completed
6102	2543	2025-06-21	completed
6103	2551	2025-06-24	completed
6104	2568	2025-06-07	completed
6105	2576	2025-06-10	completed
6106	2580	2025-06-24	completed
6107	2587	2025-06-26	completed
6108	2595	2025-06-25	completed
6109	2608	2025-06-27	completed
6110	2614	2025-06-04	completed
6111	2642	2025-06-29	completed
6112	2677	2025-06-01	completed
6113	2680	2025-06-03	completed
6114	2692	2025-06-03	completed
6115	2703	2025-06-09	completed
6116	2704	2025-06-11	completed
6117	2704	2025-06-16	completed
6118	2706	2025-06-18	completed
6119	2710	2025-06-10	completed
6120	2726	2025-06-25	cancelled
6121	2728	2025-06-11	completed
6122	2736	2025-06-08	completed
6123	2765	2025-06-06	completed
6124	2778	2025-06-03	completed
6125	2779	2025-06-30	completed
6126	2781	2025-06-01	completed
6127	2786	2025-06-12	completed
6128	2797	2025-06-15	completed
6129	2804	2025-06-19	completed
6130	2830	2025-06-18	cancelled
6131	2847	2025-06-02	completed
6132	2851	2025-06-10	completed
6133	2861	2025-06-16	completed
6134	2864	2025-06-10	completed
6135	2891	2025-06-11	completed
6136	2894	2025-06-16	completed
6137	2895	2025-06-26	completed
6138	2909	2025-06-27	completed
6139	2926	2025-06-28	completed
6140	2944	2025-06-11	completed
6141	2958	2025-06-08	cancelled
6142	2961	2025-06-29	completed
6143	2992	2025-06-06	refunded
6144	2995	2025-06-26	completed
6145	2997	2025-06-18	completed
6146	1	2025-07-05	completed
6147	3	2025-07-13	completed
6148	15	2025-07-02	completed
6149	17	2025-07-26	completed
6150	38	2025-07-29	completed
6151	49	2025-07-16	completed
6152	69	2025-07-02	completed
6153	72	2025-07-24	completed
6154	74	2025-07-01	completed
6155	74	2025-07-08	completed
6156	83	2025-07-07	completed
6157	85	2025-07-05	completed
6158	92	2025-07-07	completed
6159	94	2025-07-07	completed
6160	103	2025-07-02	completed
6161	106	2025-07-27	completed
6162	107	2025-07-24	completed
6163	108	2025-07-03	completed
6164	124	2025-07-19	completed
6165	129	2025-07-13	completed
6166	131	2025-07-25	completed
6167	134	2025-07-28	completed
6168	140	2025-07-13	completed
6169	141	2025-07-12	completed
6170	146	2025-07-07	completed
6171	153	2025-07-20	completed
6172	168	2025-07-08	completed
6173	179	2025-07-03	completed
6174	182	2025-07-19	completed
6175	197	2025-07-06	completed
6176	201	2025-07-03	completed
6177	215	2025-07-04	completed
6178	226	2025-07-13	completed
6179	249	2025-07-24	completed
6180	250	2025-07-07	completed
6181	250	2025-07-16	cancelled
6182	259	2025-07-01	completed
6183	274	2025-07-03	completed
6184	282	2025-07-14	completed
6185	287	2025-07-30	completed
6186	293	2025-07-21	completed
6187	294	2025-07-07	completed
6188	296	2025-07-07	completed
6189	300	2025-07-07	completed
6190	304	2025-07-09	completed
6191	316	2025-07-16	completed
6192	343	2025-07-31	completed
6193	344	2025-07-27	completed
6194	355	2025-07-09	completed
6195	360	2025-07-23	completed
6196	369	2025-07-16	completed
6197	377	2025-07-29	completed
6198	384	2025-07-07	completed
6199	388	2025-07-31	completed
6200	390	2025-07-04	completed
6201	413	2025-07-12	completed
6202	416	2025-07-19	completed
6203	422	2025-07-25	completed
6204	430	2025-07-12	completed
6205	448	2025-07-12	completed
6206	458	2025-07-23	completed
6207	460	2025-07-15	completed
6208	462	2025-07-15	completed
6209	470	2025-07-09	refunded
6210	502	2025-07-03	completed
6211	507	2025-07-09	refunded
6212	516	2025-07-04	completed
6213	517	2025-07-29	completed
6214	523	2025-07-20	completed
6215	529	2025-07-28	completed
6216	532	2025-07-22	completed
6217	533	2025-07-07	completed
6218	536	2025-07-11	completed
6219	556	2025-07-21	completed
6220	563	2025-07-31	completed
6221	587	2025-07-26	completed
6222	596	2025-07-20	completed
6223	597	2025-07-11	completed
6224	608	2025-07-11	completed
6225	617	2025-07-29	completed
6226	628	2025-07-03	completed
6227	633	2025-07-06	completed
6228	642	2025-07-02	cancelled
6229	647	2025-07-02	completed
6230	660	2025-07-23	completed
6231	661	2025-07-24	completed
6232	667	2025-07-01	completed
6233	685	2025-07-16	completed
6234	704	2025-07-30	completed
6235	709	2025-07-08	completed
6236	714	2025-07-04	completed
6237	720	2025-07-03	completed
6238	725	2025-07-11	completed
6239	727	2025-07-01	completed
6240	730	2025-07-26	completed
6241	733	2025-07-15	completed
6242	739	2025-07-14	completed
6243	744	2025-07-14	completed
6244	763	2025-07-04	completed
6245	791	2025-07-01	completed
6246	792	2025-07-10	completed
6247	801	2025-07-11	completed
6248	804	2025-07-09	completed
6249	806	2025-07-07	completed
6250	828	2025-07-02	completed
6251	831	2025-07-21	completed
6252	839	2025-07-16	completed
6253	841	2025-07-29	completed
6254	847	2025-07-05	completed
6255	861	2025-07-11	completed
6256	868	2025-07-10	completed
6257	875	2025-07-06	completed
6258	876	2025-07-12	completed
6259	880	2025-07-10	refunded
6260	884	2025-07-12	completed
6261	894	2025-07-28	completed
6262	905	2025-07-04	completed
6263	906	2025-07-01	completed
6264	937	2025-07-29	cancelled
6265	937	2025-07-20	completed
6266	941	2025-07-01	completed
6267	945	2025-07-18	completed
6268	952	2025-07-08	completed
6269	957	2025-07-23	completed
6270	960	2025-07-25	completed
6271	971	2025-07-29	completed
6272	1002	2025-07-12	completed
6273	1007	2025-07-02	refunded
6274	1016	2025-07-19	completed
6275	1020	2025-07-31	completed
6276	1021	2025-07-01	completed
6277	1026	2025-07-21	refunded
6278	1029	2025-07-14	completed
6279	1030	2025-07-26	completed
6280	1033	2025-07-13	completed
6281	1034	2025-07-18	cancelled
6282	1035	2025-07-29	cancelled
6283	1037	2025-07-16	completed
6284	1050	2025-07-07	completed
6285	1057	2025-07-17	completed
6286	1070	2025-07-21	completed
6287	1088	2025-07-28	cancelled
6288	1100	2025-07-22	completed
6289	1104	2025-07-03	completed
6290	1112	2025-07-18	completed
6291	1130	2025-07-03	cancelled
6292	1134	2025-07-23	completed
6293	1135	2025-07-25	completed
6294	1138	2025-07-27	completed
6295	1143	2025-07-02	completed
6296	1144	2025-07-08	completed
6297	1151	2025-07-17	completed
6298	1158	2025-07-09	completed
6299	1159	2025-07-12	completed
6300	1167	2025-07-28	completed
6301	1171	2025-07-04	completed
6302	1171	2025-07-26	completed
6303	1181	2025-07-27	completed
6304	1183	2025-07-30	refunded
6305	1192	2025-07-10	completed
6306	1200	2025-07-22	completed
6307	1216	2025-07-20	completed
6308	1227	2025-07-28	completed
6309	1232	2025-07-03	refunded
6310	1234	2025-07-04	completed
6311	1242	2025-07-06	completed
6312	1248	2025-07-20	completed
6313	1253	2025-07-14	completed
6314	1257	2025-07-28	completed
6315	1272	2025-07-02	completed
6316	1282	2025-07-11	completed
6317	1323	2025-07-15	completed
6318	1325	2025-07-29	completed
6319	1331	2025-07-01	completed
6320	1332	2025-07-28	completed
6321	1349	2025-07-18	completed
6322	1350	2025-07-06	completed
6323	1354	2025-07-23	completed
6324	1357	2025-07-04	completed
6325	1360	2025-07-07	completed
6326	1361	2025-07-31	completed
6327	1363	2025-07-12	completed
6328	1363	2025-07-20	completed
6329	1369	2025-07-27	completed
6330	1377	2025-07-08	completed
6331	1400	2025-07-09	completed
6332	1402	2025-07-08	completed
6333	1430	2025-07-24	completed
6334	1441	2025-07-14	completed
6335	1443	2025-07-12	completed
6336	1446	2025-07-28	completed
6337	1447	2025-07-10	completed
6338	1454	2025-07-12	completed
6339	1456	2025-07-19	completed
6340	1458	2025-07-30	completed
6341	1460	2025-07-06	completed
6342	1475	2025-07-20	completed
6343	1475	2025-07-07	completed
6344	1482	2025-07-31	completed
6345	1500	2025-07-22	completed
6346	1500	2025-07-02	completed
6347	1505	2025-07-02	completed
6348	1507	2025-07-17	completed
6349	1520	2025-07-29	completed
6350	1526	2025-07-23	completed
6351	1527	2025-07-31	completed
6352	1531	2025-07-05	completed
6353	1533	2025-07-25	completed
6354	1540	2025-07-21	completed
6355	1545	2025-07-24	completed
6356	1547	2025-07-21	completed
6357	1548	2025-07-05	completed
6358	1558	2025-07-16	completed
6359	1561	2025-07-04	completed
6360	1565	2025-07-26	completed
6361	1567	2025-07-25	completed
6362	1579	2025-07-29	cancelled
6363	1582	2025-07-10	completed
6364	1583	2025-07-19	completed
6365	1590	2025-07-29	completed
6366	1609	2025-07-16	completed
6367	1611	2025-07-16	completed
6368	1612	2025-07-04	completed
6369	1616	2025-07-12	completed
6370	1621	2025-07-18	completed
6371	1624	2025-07-04	completed
6372	1634	2025-07-30	completed
6373	1645	2025-07-10	completed
6374	1646	2025-07-09	completed
6375	1648	2025-07-20	completed
6376	1648	2025-07-28	completed
6377	1649	2025-07-09	completed
6378	1653	2025-07-26	completed
6379	1661	2025-07-29	completed
6380	1663	2025-07-26	completed
6381	1669	2025-07-26	completed
6382	1677	2025-07-14	completed
6383	1679	2025-07-07	completed
6384	1684	2025-07-26	completed
6385	1691	2025-07-21	completed
6386	1698	2025-07-27	completed
6387	1700	2025-07-03	completed
6388	1707	2025-07-11	completed
6389	1713	2025-07-28	completed
6390	1714	2025-07-07	refunded
6391	1728	2025-07-27	completed
6392	1737	2025-07-06	completed
6393	1751	2025-07-28	completed
6394	1754	2025-07-22	completed
6395	1761	2025-07-27	completed
6396	1769	2025-07-17	completed
6397	1779	2025-07-12	completed
6398	1782	2025-07-03	completed
6399	1793	2025-07-07	cancelled
6400	1794	2025-07-06	completed
6401	1798	2025-07-25	completed
6402	1808	2025-07-10	completed
6403	1816	2025-07-28	completed
6404	1830	2025-07-21	completed
6405	1839	2025-07-21	completed
6406	1851	2025-07-06	completed
6407	1854	2025-07-26	completed
6408	1855	2025-07-17	completed
6409	1860	2025-07-29	completed
6410	1861	2025-07-17	completed
6411	1871	2025-07-28	completed
6412	1880	2025-07-09	completed
6413	1901	2025-07-04	completed
6414	1911	2025-07-28	completed
6415	1924	2025-07-13	completed
6416	1932	2025-07-11	completed
6417	1936	2025-07-26	completed
6418	1947	2025-07-11	completed
6419	1949	2025-07-02	completed
6420	1953	2025-07-18	completed
6421	1964	2025-07-19	completed
6422	1985	2025-07-25	completed
6423	1988	2025-07-11	completed
6424	1999	2025-07-04	completed
6425	2000	2025-07-20	completed
6426	2001	2025-07-18	cancelled
6427	2004	2025-07-31	completed
6428	2006	2025-07-30	completed
6429	2032	2025-07-13	completed
6430	2046	2025-07-31	completed
6431	2059	2025-07-06	completed
6432	2059	2025-07-17	completed
6433	2071	2025-07-28	completed
6434	2091	2025-07-18	completed
6435	2096	2025-07-29	completed
6436	2100	2025-07-22	completed
6437	2103	2025-07-03	completed
6438	2109	2025-07-26	completed
6439	2110	2025-07-01	completed
6440	2115	2025-07-06	completed
6441	2116	2025-07-12	refunded
6442	2118	2025-07-27	completed
6443	2121	2025-07-03	completed
6444	2128	2025-07-31	completed
6445	2142	2025-07-26	completed
6446	2143	2025-07-27	completed
6447	2150	2025-07-27	completed
6448	2151	2025-07-18	completed
6449	2154	2025-07-13	completed
6450	2163	2025-07-02	completed
6451	2164	2025-07-02	completed
6452	2165	2025-07-17	completed
6453	2170	2025-07-15	completed
6454	2201	2025-07-10	completed
6455	2207	2025-07-07	completed
6456	2219	2025-07-21	completed
6457	2222	2025-07-29	completed
6458	2223	2025-07-26	refunded
6459	2226	2025-07-08	completed
6460	2248	2025-07-01	completed
6461	2249	2025-07-31	completed
6462	2254	2025-07-27	cancelled
6463	2262	2025-07-20	completed
6464	2263	2025-07-08	completed
6465	2270	2025-07-16	completed
6466	2274	2025-07-04	completed
6467	2276	2025-07-08	completed
6468	2282	2025-07-02	completed
6469	2290	2025-07-14	completed
6470	2297	2025-07-06	completed
6471	2318	2025-07-29	completed
6472	2319	2025-07-15	completed
6473	2320	2025-07-07	completed
6474	2326	2025-07-05	completed
6475	2340	2025-07-16	completed
6476	2343	2025-07-22	completed
6477	2351	2025-07-06	completed
6478	2361	2025-07-11	refunded
6479	2374	2025-07-16	completed
6480	2383	2025-07-02	completed
6481	2387	2025-07-12	completed
6482	2394	2025-07-12	completed
6483	2395	2025-07-05	completed
6484	2409	2025-07-15	refunded
6485	2410	2025-07-30	completed
6486	2412	2025-07-27	completed
6487	2421	2025-07-20	completed
6488	2424	2025-07-28	completed
6489	2444	2025-07-17	completed
6490	2458	2025-07-29	completed
6491	2459	2025-07-31	completed
6492	2480	2025-07-03	completed
6493	2481	2025-07-20	completed
6494	2495	2025-07-16	completed
6495	2518	2025-07-21	completed
6496	2541	2025-07-02	completed
6497	2550	2025-07-30	completed
6498	2562	2025-07-15	completed
6499	2563	2025-07-04	completed
6500	2566	2025-07-31	cancelled
6501	2571	2025-07-14	completed
6502	2583	2025-07-16	completed
6503	2597	2025-07-17	completed
6504	2631	2025-07-02	refunded
6505	2632	2025-07-14	completed
6506	2633	2025-07-16	completed
6507	2635	2025-07-09	completed
6508	2637	2025-07-25	completed
6509	2645	2025-07-21	completed
6510	2647	2025-07-03	completed
6511	2650	2025-07-16	completed
6512	2651	2025-07-21	completed
6513	2655	2025-07-21	completed
6514	2660	2025-07-09	completed
6515	2690	2025-07-26	completed
6516	2691	2025-07-22	completed
6517	2695	2025-07-03	completed
6518	2698	2025-07-23	completed
6519	2703	2025-07-17	completed
6520	2709	2025-07-30	completed
6521	2725	2025-07-12	completed
6522	2746	2025-07-11	completed
6523	2770	2025-07-06	completed
6524	2774	2025-07-24	completed
6525	2780	2025-07-10	completed
6526	2782	2025-07-13	completed
6527	2786	2025-07-23	completed
6528	2787	2025-07-21	cancelled
6529	2792	2025-07-19	completed
6530	2793	2025-07-18	completed
6531	2801	2025-07-25	completed
6532	2809	2025-07-09	completed
6533	2827	2025-07-26	completed
6534	2853	2025-07-09	completed
6535	2858	2025-07-04	completed
6536	2863	2025-07-15	completed
6537	2876	2025-07-15	completed
6538	2894	2025-07-15	completed
6539	2926	2025-07-24	completed
6540	2935	2025-07-23	refunded
6541	2944	2025-07-11	completed
6542	2949	2025-07-01	completed
6543	2969	2025-07-17	cancelled
6544	2973	2025-07-17	completed
6545	2979	2025-07-10	completed
6546	3	2025-08-03	refunded
6547	15	2025-08-28	completed
6548	18	2025-08-05	completed
6549	20	2025-08-08	completed
6550	43	2025-08-06	completed
6551	45	2025-08-09	completed
6552	47	2025-08-26	completed
6553	48	2025-08-19	completed
6554	54	2025-08-09	cancelled
6555	79	2025-08-25	completed
6556	91	2025-08-18	completed
6557	101	2025-08-25	completed
6558	110	2025-08-07	completed
6559	111	2025-08-23	completed
6560	112	2025-08-23	completed
6561	127	2025-08-31	cancelled
6562	132	2025-08-03	completed
6563	134	2025-08-08	completed
6564	138	2025-08-12	cancelled
6565	148	2025-08-13	completed
6566	152	2025-08-16	cancelled
6567	159	2025-08-24	completed
6568	166	2025-08-24	completed
6569	169	2025-08-09	refunded
6570	171	2025-08-28	completed
6571	176	2025-08-08	completed
6572	177	2025-08-04	completed
6573	189	2025-08-24	completed
6574	207	2025-08-19	completed
6575	212	2025-08-04	completed
6576	213	2025-08-08	completed
6577	217	2025-08-05	completed
6578	219	2025-08-26	refunded
6579	223	2025-08-05	completed
6580	225	2025-08-14	completed
6581	226	2025-08-16	completed
6582	234	2025-08-06	completed
6583	248	2025-08-17	completed
6584	265	2025-08-22	completed
6585	286	2025-08-02	completed
6586	289	2025-08-03	completed
6587	302	2025-08-10	completed
6588	303	2025-08-21	completed
6589	304	2025-08-25	completed
6590	308	2025-08-28	completed
6591	310	2025-08-30	completed
6592	314	2025-08-27	completed
6593	316	2025-08-05	cancelled
6594	331	2025-08-28	completed
6595	332	2025-08-15	completed
6596	355	2025-08-07	cancelled
6597	359	2025-08-21	completed
6598	361	2025-08-07	completed
6599	366	2025-08-30	completed
6600	368	2025-08-03	completed
6601	378	2025-08-04	completed
6602	379	2025-08-17	completed
6603	383	2025-08-22	completed
6604	384	2025-08-02	completed
6605	387	2025-08-12	completed
6606	394	2025-08-29	completed
6607	406	2025-08-17	completed
6608	408	2025-08-12	completed
6609	412	2025-08-09	completed
6610	430	2025-08-19	completed
6611	433	2025-08-01	completed
6612	450	2025-08-25	completed
6613	451	2025-08-14	completed
6614	452	2025-08-23	completed
6615	454	2025-08-25	completed
6616	455	2025-08-05	completed
6617	466	2025-08-30	completed
6618	472	2025-08-04	completed
6619	481	2025-08-25	completed
6620	501	2025-08-09	completed
6621	513	2025-08-15	completed
6622	514	2025-08-18	completed
6623	516	2025-08-14	completed
6624	517	2025-08-10	completed
6625	520	2025-08-30	completed
6626	532	2025-08-09	completed
6627	565	2025-08-14	completed
6628	566	2025-08-16	completed
6629	567	2025-08-23	completed
6630	569	2025-08-21	completed
6631	571	2025-08-19	completed
6632	583	2025-08-27	completed
6633	609	2025-08-02	completed
6634	615	2025-08-16	completed
6635	620	2025-08-10	completed
6636	623	2025-08-18	completed
6637	624	2025-08-24	completed
6638	626	2025-08-09	cancelled
6639	631	2025-08-20	completed
6640	644	2025-08-19	completed
6641	645	2025-08-27	completed
6642	656	2025-08-24	completed
6643	667	2025-08-10	completed
6644	668	2025-08-08	completed
6645	678	2025-08-18	completed
6646	681	2025-08-18	completed
6647	689	2025-08-19	completed
6648	697	2025-08-25	completed
6649	713	2025-08-07	completed
6650	715	2025-08-20	completed
6651	721	2025-08-11	cancelled
6652	727	2025-08-27	completed
6653	758	2025-08-13	completed
6654	768	2025-08-31	completed
6655	779	2025-08-29	completed
6656	785	2025-08-19	completed
6657	805	2025-08-08	completed
6658	806	2025-08-23	completed
6659	812	2025-08-17	completed
6660	816	2025-08-29	completed
6661	818	2025-08-08	completed
6662	829	2025-08-10	completed
6663	833	2025-08-10	completed
6664	836	2025-08-09	refunded
6665	847	2025-08-31	completed
6666	858	2025-08-28	cancelled
6667	895	2025-08-24	completed
6668	898	2025-08-29	completed
6669	904	2025-08-28	completed
6670	906	2025-08-15	completed
6671	913	2025-08-26	completed
6672	925	2025-08-23	completed
6673	927	2025-08-21	completed
6674	940	2025-08-26	completed
6675	942	2025-08-30	completed
6676	945	2025-08-16	completed
6677	952	2025-08-19	completed
6678	954	2025-08-07	refunded
6679	956	2025-08-11	completed
6680	958	2025-08-22	completed
6681	962	2025-08-07	completed
6682	964	2025-08-12	completed
6683	980	2025-08-06	refunded
6684	988	2025-08-11	completed
6685	995	2025-08-25	completed
6686	1032	2025-08-23	completed
6687	1036	2025-08-07	completed
6688	1066	2025-08-14	completed
6689	1069	2025-08-19	completed
6690	1072	2025-08-12	refunded
6691	1081	2025-08-11	completed
6692	1088	2025-08-30	completed
6693	1093	2025-08-09	completed
6694	1095	2025-08-17	completed
6695	1100	2025-08-23	completed
6696	1112	2025-08-06	completed
6697	1113	2025-08-23	refunded
6698	1118	2025-08-04	completed
6699	1126	2025-08-26	completed
6700	1151	2025-08-19	completed
6701	1158	2025-08-09	completed
6702	1167	2025-08-16	completed
6703	1192	2025-08-26	completed
6704	1201	2025-08-17	completed
6705	1208	2025-08-16	completed
6706	1216	2025-08-10	completed
6707	1226	2025-08-13	completed
6708	1227	2025-08-20	completed
6709	1232	2025-08-23	refunded
6710	1243	2025-08-18	completed
6711	1257	2025-08-28	completed
6712	1274	2025-08-09	completed
6713	1276	2025-08-26	completed
6714	1284	2025-08-26	completed
6715	1297	2025-08-04	completed
6716	1303	2025-08-18	completed
6717	1312	2025-08-18	completed
6718	1317	2025-08-06	refunded
6719	1320	2025-08-28	completed
6720	1325	2025-08-15	completed
6721	1326	2025-08-03	completed
6722	1336	2025-08-04	completed
6723	1343	2025-08-29	completed
6724	1344	2025-08-26	completed
6725	1347	2025-08-18	completed
6726	1364	2025-08-04	completed
6727	1369	2025-08-05	completed
6728	1371	2025-08-20	completed
6729	1378	2025-08-19	cancelled
6730	1384	2025-08-06	completed
6731	1392	2025-08-08	completed
6732	1398	2025-08-09	completed
6733	1401	2025-08-23	completed
6734	1421	2025-08-05	completed
6735	1424	2025-08-24	completed
6736	1430	2025-08-04	completed
6737	1471	2025-08-22	completed
6738	1479	2025-08-10	completed
6739	1479	2025-08-17	completed
6740	1503	2025-08-30	completed
6741	1510	2025-08-18	completed
6742	1543	2025-08-30	completed
6743	1558	2025-08-26	completed
6744	1576	2025-08-22	completed
6745	1581	2025-08-03	completed
6746	1587	2025-08-26	completed
6747	1598	2025-08-12	completed
6748	1604	2025-08-24	cancelled
6749	1604	2025-08-28	completed
6750	1630	2025-08-25	completed
6751	1641	2025-08-14	completed
6752	1643	2025-08-20	completed
6753	1649	2025-08-27	completed
6754	1671	2025-08-09	completed
6755	1677	2025-08-09	completed
6756	1682	2025-08-12	completed
6757	1695	2025-08-26	completed
6758	1698	2025-08-04	completed
6759	1703	2025-08-17	completed
6760	1722	2025-08-17	completed
6761	1746	2025-08-10	cancelled
6762	1747	2025-08-31	completed
6763	1751	2025-08-03	completed
6764	1757	2025-08-30	completed
6765	1767	2025-08-19	completed
6766	1770	2025-08-06	completed
6767	1772	2025-08-09	completed
6768	1772	2025-08-30	completed
6769	1792	2025-08-08	refunded
6770	1796	2025-08-18	completed
6771	1803	2025-08-18	completed
6772	1819	2025-08-24	completed
6773	1824	2025-08-26	completed
6774	1833	2025-08-10	completed
6775	1842	2025-08-02	completed
6776	1843	2025-08-26	completed
6777	1852	2025-08-05	completed
6778	1861	2025-08-29	completed
6779	1867	2025-08-20	completed
6780	1873	2025-08-22	completed
6781	1875	2025-08-05	refunded
6782	1881	2025-08-15	completed
6783	1884	2025-08-07	completed
6784	1893	2025-08-19	completed
6785	1896	2025-08-03	completed
6786	1901	2025-08-27	completed
6787	1917	2025-08-23	completed
6788	1928	2025-08-30	cancelled
6789	1940	2025-08-08	completed
6790	1946	2025-08-23	completed
6791	1948	2025-08-27	completed
6792	1966	2025-08-30	completed
6793	1968	2025-08-08	completed
6794	1971	2025-08-22	completed
6795	1980	2025-08-05	completed
6796	1989	2025-08-28	completed
6797	1990	2025-08-19	completed
6798	1993	2025-08-28	completed
6799	1995	2025-08-17	completed
6800	1998	2025-08-21	completed
6801	1999	2025-08-24	completed
6802	2010	2025-08-12	completed
6803	2016	2025-08-16	completed
6804	2022	2025-08-25	completed
6805	2023	2025-08-10	completed
6806	2052	2025-08-17	completed
6807	2052	2025-08-17	completed
6808	2072	2025-08-10	completed
6809	2086	2025-08-20	completed
6810	2097	2025-08-22	refunded
6811	2099	2025-08-28	completed
6812	2127	2025-08-30	completed
6813	2131	2025-08-28	completed
6814	2142	2025-08-21	completed
6815	2143	2025-08-12	completed
6816	2155	2025-08-24	completed
6817	2176	2025-08-01	completed
6818	2181	2025-08-31	completed
6819	2189	2025-08-02	completed
6820	2194	2025-08-10	completed
6821	2211	2025-08-14	completed
6822	2215	2025-08-30	completed
6823	2216	2025-08-31	completed
6824	2225	2025-08-24	completed
6825	2226	2025-08-31	completed
6826	2229	2025-08-05	completed
6827	2232	2025-08-20	completed
6828	2242	2025-08-17	completed
6829	2248	2025-08-28	completed
6830	2252	2025-08-03	completed
6831	2252	2025-08-30	completed
6832	2254	2025-08-29	completed
6833	2259	2025-08-31	completed
6834	2261	2025-08-30	completed
6835	2271	2025-08-20	completed
6836	2272	2025-08-15	completed
6837	2279	2025-08-04	completed
6838	2281	2025-08-06	completed
6839	2282	2025-08-16	completed
6840	2287	2025-08-01	completed
6841	2299	2025-08-07	completed
6842	2305	2025-08-17	completed
6843	2310	2025-08-03	completed
6844	2315	2025-08-20	completed
6845	2345	2025-08-19	cancelled
6846	2349	2025-08-14	completed
6847	2351	2025-08-01	completed
6848	2358	2025-08-06	cancelled
6849	2375	2025-08-15	completed
6850	2384	2025-08-23	completed
6851	2387	2025-08-29	completed
6852	2388	2025-08-02	completed
6853	2390	2025-08-16	completed
6854	2393	2025-08-26	completed
6855	2394	2025-08-24	completed
6856	2403	2025-08-04	completed
6857	2405	2025-08-28	completed
6858	2418	2025-08-25	completed
6859	2432	2025-08-06	completed
6860	2437	2025-08-31	completed
6861	2438	2025-08-05	completed
6862	2443	2025-08-12	completed
6863	2444	2025-08-27	completed
6864	2448	2025-08-26	completed
6865	2449	2025-08-08	completed
6866	2460	2025-08-11	completed
6867	2461	2025-08-05	completed
6868	2466	2025-08-03	completed
6869	2469	2025-08-10	completed
6870	2470	2025-08-18	completed
6871	2473	2025-08-22	completed
6872	2478	2025-08-24	completed
6873	2482	2025-08-31	completed
6874	2483	2025-08-18	completed
6875	2486	2025-08-24	completed
6876	2488	2025-08-13	completed
6877	2494	2025-08-07	completed
6878	2503	2025-08-16	completed
6879	2507	2025-08-20	completed
6880	2511	2025-08-03	completed
6881	2514	2025-08-21	completed
6882	2520	2025-08-05	completed
6883	2521	2025-08-12	completed
6884	2531	2025-08-17	completed
6885	2534	2025-08-15	completed
6886	2537	2025-08-05	completed
6887	2541	2025-08-10	completed
6888	2542	2025-08-02	completed
6889	2549	2025-08-12	completed
6890	2554	2025-08-30	completed
6891	2566	2025-08-09	completed
6892	2582	2025-08-21	completed
6893	2590	2025-08-27	completed
6894	2595	2025-08-29	completed
6895	2614	2025-08-13	completed
6896	2622	2025-08-10	completed
6897	2633	2025-08-20	completed
6898	2640	2025-08-29	completed
6899	2649	2025-08-15	completed
6900	2656	2025-08-03	completed
6901	2676	2025-08-22	completed
6902	2678	2025-08-22	refunded
6903	2683	2025-08-18	cancelled
6904	2687	2025-08-28	cancelled
6905	2697	2025-08-23	completed
6906	2701	2025-08-13	completed
6907	2714	2025-08-19	completed
6908	2716	2025-08-21	cancelled
6909	2725	2025-08-07	completed
6910	2726	2025-08-03	refunded
6911	2729	2025-08-30	completed
6912	2738	2025-08-02	completed
6913	2746	2025-08-20	completed
6914	2774	2025-08-25	completed
6915	2776	2025-08-06	refunded
6916	2778	2025-08-29	completed
6917	2801	2025-08-09	completed
6918	2803	2025-08-29	completed
6919	2805	2025-08-27	cancelled
6920	2815	2025-08-20	completed
6921	2816	2025-08-09	completed
6922	2818	2025-08-06	refunded
6923	2831	2025-08-10	completed
6924	2847	2025-08-30	completed
6925	2853	2025-08-22	completed
6926	2868	2025-08-10	completed
6927	2869	2025-08-26	completed
6928	2872	2025-08-09	completed
6929	2873	2025-08-12	completed
6930	2882	2025-08-15	completed
6931	2884	2025-08-12	completed
6932	2886	2025-08-09	completed
6933	2893	2025-08-26	completed
6934	2900	2025-08-27	completed
6935	2900	2025-08-08	completed
6936	2918	2025-08-30	completed
6937	2921	2025-08-27	completed
6938	2934	2025-08-07	completed
6939	2945	2025-08-16	completed
6940	2947	2025-08-10	completed
6941	2953	2025-08-26	completed
6942	2964	2025-08-08	completed
6943	2979	2025-08-27	completed
6944	2984	2025-08-06	completed
6945	2988	2025-08-18	completed
6946	2997	2025-08-09	completed
6947	12	2025-09-07	completed
6948	15	2025-09-12	completed
6949	32	2025-09-28	completed
6950	35	2025-09-17	completed
6951	38	2025-09-27	completed
6952	40	2025-09-14	completed
6953	44	2025-09-29	completed
6954	49	2025-09-16	completed
6955	53	2025-09-11	completed
6956	63	2025-09-10	cancelled
6957	67	2025-09-24	completed
6958	79	2025-09-18	completed
6959	81	2025-09-07	completed
6960	84	2025-09-04	completed
6961	92	2025-09-26	completed
6962	97	2025-09-08	completed
6963	108	2025-09-18	completed
6964	111	2025-09-27	completed
6965	116	2025-09-02	completed
6966	119	2025-09-25	completed
6967	149	2025-09-12	completed
6968	150	2025-09-19	completed
6969	154	2025-09-10	completed
6970	156	2025-09-29	completed
6971	160	2025-09-19	completed
6972	174	2025-09-24	completed
6973	175	2025-09-28	completed
6974	181	2025-09-04	completed
6975	186	2025-09-24	refunded
6976	189	2025-09-01	completed
6977	200	2025-09-14	completed
6978	214	2025-09-26	completed
6979	226	2025-09-30	completed
6980	227	2025-09-11	completed
6981	237	2025-09-04	completed
6982	239	2025-09-28	completed
6983	244	2025-09-01	completed
6984	259	2025-09-21	completed
6985	260	2025-09-25	completed
6986	262	2025-09-23	completed
6987	265	2025-09-24	completed
6988	283	2025-09-09	completed
6989	287	2025-09-04	completed
6990	312	2025-09-10	completed
6991	316	2025-09-14	completed
6992	317	2025-09-10	completed
6993	321	2025-09-11	completed
6994	322	2025-09-04	completed
6995	334	2025-09-21	completed
6996	335	2025-09-07	completed
6997	336	2025-09-20	completed
6998	338	2025-09-20	completed
6999	346	2025-09-13	completed
7000	349	2025-09-13	completed
7001	356	2025-09-30	completed
7002	359	2025-09-10	completed
7003	360	2025-09-06	completed
7004	366	2025-09-19	refunded
7005	397	2025-09-21	completed
7006	401	2025-09-08	completed
7007	419	2025-09-26	completed
7008	424	2025-09-29	completed
7009	434	2025-09-12	completed
7010	442	2025-09-21	completed
7011	449	2025-09-11	completed
7012	453	2025-09-23	completed
7013	459	2025-09-17	completed
7014	490	2025-09-22	completed
7015	491	2025-09-23	completed
7016	499	2025-09-14	completed
7017	501	2025-09-06	completed
7018	511	2025-09-30	completed
7019	514	2025-09-27	completed
7020	517	2025-09-14	completed
7021	536	2025-09-21	completed
7022	539	2025-09-02	completed
7023	540	2025-09-19	completed
7024	550	2025-09-27	completed
7025	564	2025-09-13	completed
7026	577	2025-09-13	completed
7027	578	2025-09-10	completed
7028	582	2025-09-17	completed
7029	606	2025-09-11	completed
7030	623	2025-09-20	completed
7031	626	2025-09-06	completed
7032	635	2025-09-06	completed
7033	639	2025-09-02	completed
7034	645	2025-09-08	completed
7035	653	2025-09-17	completed
7036	662	2025-09-29	completed
7037	675	2025-09-04	completed
7038	691	2025-09-11	completed
7039	694	2025-09-02	completed
7040	697	2025-09-24	completed
7041	703	2025-09-26	completed
7042	703	2025-09-11	completed
7043	709	2025-09-25	completed
7044	712	2025-09-10	refunded
7045	712	2025-09-22	completed
7046	717	2025-09-29	completed
7047	718	2025-09-29	completed
7048	735	2025-09-29	completed
7049	744	2025-09-11	completed
7050	753	2025-09-27	completed
7051	762	2025-09-06	completed
7052	763	2025-09-29	completed
7053	764	2025-09-03	completed
7054	771	2025-09-04	completed
7055	771	2025-09-23	completed
7056	778	2025-09-03	completed
7057	782	2025-09-10	refunded
7058	787	2025-09-03	completed
7059	789	2025-09-15	completed
7060	791	2025-09-29	completed
7061	793	2025-09-28	completed
7062	798	2025-09-20	completed
7063	806	2025-09-04	completed
7064	808	2025-09-25	refunded
7065	809	2025-09-04	completed
7066	831	2025-09-09	completed
7067	834	2025-09-23	completed
7068	839	2025-09-20	completed
7069	842	2025-09-03	completed
7070	843	2025-09-02	cancelled
7071	852	2025-09-18	completed
7072	854	2025-09-01	completed
7073	870	2025-09-16	completed
7074	874	2025-09-01	completed
7075	892	2025-09-10	completed
7076	894	2025-09-25	completed
7077	895	2025-09-17	completed
7078	898	2025-09-09	completed
7079	902	2025-09-20	completed
7080	905	2025-09-08	completed
7081	909	2025-09-28	completed
7082	911	2025-09-04	completed
7083	913	2025-09-10	completed
7084	924	2025-09-12	completed
7085	926	2025-09-20	completed
7086	928	2025-09-09	completed
7087	938	2025-09-05	completed
7088	940	2025-09-26	completed
7089	942	2025-09-10	completed
7090	961	2025-09-12	completed
7091	970	2025-09-21	completed
7092	971	2025-09-03	completed
7093	972	2025-09-14	completed
7094	973	2025-09-23	completed
7095	980	2025-09-04	completed
7096	993	2025-09-18	completed
7097	1005	2025-09-04	completed
7098	1010	2025-09-01	completed
7099	1025	2025-09-16	completed
7100	1025	2025-09-23	completed
7101	1027	2025-09-29	completed
7102	1029	2025-09-14	completed
7103	1030	2025-09-02	cancelled
7104	1031	2025-09-28	completed
7105	1035	2025-09-17	completed
7106	1042	2025-09-13	completed
7107	1047	2025-09-24	completed
7108	1050	2025-09-24	completed
7109	1052	2025-09-06	completed
7110	1059	2025-09-26	completed
7111	1081	2025-09-21	completed
7112	1090	2025-09-28	completed
7113	1110	2025-09-16	completed
7114	1111	2025-09-05	completed
7115	1117	2025-09-05	completed
7116	1118	2025-09-06	completed
7117	1121	2025-09-29	completed
7118	1126	2025-09-04	completed
7119	1130	2025-09-01	completed
7120	1132	2025-09-26	completed
7121	1137	2025-09-17	completed
7122	1152	2025-09-01	completed
7123	1161	2025-09-30	completed
7124	1167	2025-09-06	completed
7125	1184	2025-09-16	completed
7126	1194	2025-09-11	cancelled
7127	1204	2025-09-20	completed
7128	1221	2025-09-10	completed
7129	1231	2025-09-15	refunded
7130	1235	2025-09-08	completed
7131	1247	2025-09-27	completed
7132	1258	2025-09-04	completed
7133	1261	2025-09-08	completed
7134	1264	2025-09-25	completed
7135	1267	2025-09-14	completed
7136	1273	2025-09-24	completed
7137	1274	2025-09-14	completed
7138	1283	2025-09-11	completed
7139	1286	2025-09-24	completed
7140	1287	2025-09-15	completed
7141	1292	2025-09-14	completed
7142	1296	2025-09-22	completed
7143	1303	2025-09-21	completed
7144	1307	2025-09-22	completed
7145	1308	2025-09-01	completed
7146	1309	2025-09-09	completed
7147	1314	2025-09-04	completed
7148	1317	2025-09-17	completed
7149	1318	2025-09-27	completed
7150	1328	2025-09-25	completed
7151	1337	2025-09-14	completed
7152	1340	2025-09-01	completed
7153	1343	2025-09-21	completed
7154	1348	2025-09-02	completed
7155	1348	2025-09-09	completed
7156	1349	2025-09-07	cancelled
7157	1351	2025-09-09	completed
7158	1357	2025-09-03	completed
7159	1363	2025-09-10	completed
7160	1368	2025-09-20	refunded
7161	1375	2025-09-16	completed
7162	1381	2025-09-17	completed
7163	1382	2025-09-19	cancelled
7164	1388	2025-09-10	completed
7165	1392	2025-09-24	completed
7166	1395	2025-09-19	completed
7167	1405	2025-09-27	completed
7168	1407	2025-09-26	completed
7169	1421	2025-09-26	completed
7170	1423	2025-09-06	completed
7171	1427	2025-09-21	refunded
7172	1429	2025-09-28	completed
7173	1431	2025-09-12	completed
7174	1433	2025-09-21	completed
7175	1434	2025-09-01	completed
7176	1453	2025-09-11	completed
7177	1456	2025-09-21	completed
7178	1466	2025-09-23	completed
7179	1470	2025-09-26	completed
7180	1475	2025-09-19	completed
7181	1490	2025-09-18	completed
7182	1495	2025-09-20	completed
7183	1496	2025-09-03	completed
7184	1507	2025-09-30	completed
7185	1531	2025-09-07	completed
7186	1532	2025-09-25	completed
7187	1545	2025-09-26	completed
7188	1551	2025-09-25	completed
7189	1571	2025-09-07	completed
7190	1578	2025-09-07	completed
7191	1580	2025-09-06	completed
7192	1581	2025-09-08	completed
7193	1588	2025-09-25	completed
7194	1595	2025-09-28	completed
7195	1599	2025-09-30	completed
7196	1606	2025-09-01	completed
7197	1609	2025-09-26	completed
7198	1611	2025-09-20	completed
7199	1633	2025-09-23	completed
7200	1639	2025-09-16	completed
7201	1649	2025-09-12	cancelled
7202	1664	2025-09-20	completed
7203	1665	2025-09-09	completed
7204	1671	2025-09-03	completed
7205	1675	2025-09-28	completed
7206	1681	2025-09-02	completed
7207	1692	2025-09-23	completed
7208	1693	2025-09-13	completed
7209	1695	2025-09-10	completed
7210	1699	2025-09-14	completed
7211	1701	2025-09-07	completed
7212	1709	2025-09-13	completed
7213	1710	2025-09-26	refunded
7214	1715	2025-09-19	completed
7215	1728	2025-09-27	completed
7216	1730	2025-09-06	completed
7217	1737	2025-09-14	completed
7218	1738	2025-09-02	cancelled
7219	1749	2025-09-25	refunded
7220	1751	2025-09-29	completed
7221	1754	2025-09-19	completed
7222	1755	2025-09-27	completed
7223	1758	2025-09-09	completed
7224	1764	2025-09-14	completed
7225	1772	2025-09-14	completed
7226	1772	2025-09-04	completed
7227	1773	2025-09-14	completed
7228	1775	2025-09-14	completed
7229	1786	2025-09-29	completed
7230	1790	2025-09-18	completed
7231	1795	2025-09-15	completed
7232	1809	2025-09-25	completed
7233	1814	2025-09-19	completed
7234	1816	2025-09-04	completed
7235	1819	2025-09-19	completed
7236	1830	2025-09-15	completed
7237	1833	2025-09-14	completed
7238	1840	2025-09-13	completed
7239	1851	2025-09-05	completed
7240	1858	2025-09-07	completed
7241	1876	2025-09-19	completed
7242	1877	2025-09-13	cancelled
7243	1880	2025-09-27	completed
7244	1882	2025-09-01	completed
7245	1885	2025-09-16	completed
7246	1887	2025-09-02	completed
7247	1914	2025-09-28	completed
7248	1919	2025-09-01	completed
7249	1919	2025-09-26	completed
7250	1923	2025-09-10	completed
7251	1929	2025-09-30	completed
7252	1932	2025-09-03	completed
7253	1949	2025-09-05	cancelled
7254	1951	2025-09-04	completed
7255	1955	2025-09-30	completed
7256	1961	2025-09-03	completed
7257	1968	2025-09-24	completed
7258	1969	2025-09-17	completed
7259	1971	2025-09-18	completed
7260	1975	2025-09-11	completed
7261	1978	2025-09-15	completed
7262	1986	2025-09-24	completed
7263	1988	2025-09-11	completed
7264	1993	2025-09-26	completed
7265	1996	2025-09-12	completed
7266	1996	2025-09-22	completed
7267	2000	2025-09-22	completed
7268	2014	2025-09-01	cancelled
7269	2046	2025-09-18	completed
7270	2047	2025-09-16	completed
7271	2071	2025-09-25	completed
7272	2076	2025-09-08	completed
7273	2077	2025-09-01	completed
7274	2083	2025-09-27	completed
7275	2091	2025-09-13	cancelled
7276	2095	2025-09-14	completed
7277	2098	2025-09-14	completed
7278	2103	2025-09-03	completed
7279	2108	2025-09-03	completed
7280	2114	2025-09-13	completed
7281	2116	2025-09-02	completed
7282	2122	2025-09-12	completed
7283	2141	2025-09-26	completed
7284	2145	2025-09-17	completed
7285	2146	2025-09-25	completed
7286	2152	2025-09-11	completed
7287	2154	2025-09-06	refunded
7288	2169	2025-09-04	completed
7289	2176	2025-09-10	completed
7290	2180	2025-09-15	refunded
7291	2188	2025-09-11	completed
7292	2190	2025-09-21	completed
7293	2198	2025-09-19	completed
7294	2199	2025-09-14	completed
7295	2205	2025-09-01	completed
7296	2211	2025-09-16	completed
7297	2216	2025-09-09	completed
7298	2222	2025-09-13	completed
7299	2225	2025-09-30	completed
7300	2242	2025-09-05	completed
7301	2243	2025-09-17	completed
7302	2247	2025-09-23	completed
7303	2248	2025-09-15	refunded
7304	2257	2025-09-15	completed
7305	2265	2025-09-27	completed
7306	2270	2025-09-24	completed
7307	2274	2025-09-26	completed
7308	2299	2025-09-09	completed
7309	2301	2025-09-07	cancelled
7310	2303	2025-09-07	completed
7311	2307	2025-09-04	completed
7312	2321	2025-09-04	completed
7313	2322	2025-09-01	completed
7314	2323	2025-09-08	completed
7315	2338	2025-09-17	completed
7316	2343	2025-09-27	completed
7317	2346	2025-09-12	completed
7318	2356	2025-09-16	completed
7319	2369	2025-09-28	completed
7320	2372	2025-09-22	completed
7321	2374	2025-09-20	completed
7322	2385	2025-09-05	completed
7323	2393	2025-09-04	completed
7324	2394	2025-09-17	completed
7325	2398	2025-09-01	completed
7326	2400	2025-09-17	completed
7327	2406	2025-09-03	cancelled
7328	2407	2025-09-11	completed
7329	2412	2025-09-02	completed
7330	2419	2025-09-04	completed
7331	2421	2025-09-10	refunded
7332	2422	2025-09-10	completed
7333	2429	2025-09-10	completed
7334	2449	2025-09-07	completed
7335	2469	2025-09-12	completed
7336	2473	2025-09-07	completed
7337	2480	2025-09-29	completed
7338	2481	2025-09-27	completed
7339	2485	2025-09-06	cancelled
7340	2494	2025-09-27	completed
7341	2500	2025-09-21	completed
7342	2507	2025-09-27	completed
7343	2507	2025-09-15	completed
7344	2514	2025-09-09	completed
7345	2527	2025-09-03	completed
7346	2532	2025-09-20	completed
7347	2545	2025-09-22	completed
7348	2568	2025-09-20	completed
7349	2578	2025-09-03	completed
7350	2583	2025-09-03	completed
7351	2603	2025-09-09	completed
7352	2609	2025-09-03	completed
7353	2629	2025-09-15	completed
7354	2636	2025-09-09	completed
7355	2665	2025-09-03	completed
7356	2667	2025-09-30	cancelled
7357	2669	2025-09-01	completed
7358	2669	2025-09-13	refunded
7359	2672	2025-09-22	completed
7360	2679	2025-09-21	completed
7361	2683	2025-09-30	completed
7362	2687	2025-09-24	completed
7363	2688	2025-09-03	completed
7364	2699	2025-09-09	completed
7365	2718	2025-09-15	completed
7366	2728	2025-09-17	completed
7367	2737	2025-09-03	completed
7368	2738	2025-09-25	completed
7369	2739	2025-09-05	completed
7370	2741	2025-09-21	completed
7371	2763	2025-09-14	completed
7372	2768	2025-09-11	completed
7373	2769	2025-09-13	completed
7374	2773	2025-09-29	completed
7375	2775	2025-09-01	completed
7376	2788	2025-09-22	completed
7377	2805	2025-09-18	completed
7378	2820	2025-09-22	completed
7379	2836	2025-09-06	completed
7380	2841	2025-09-23	completed
7381	2846	2025-09-11	completed
7382	2871	2025-09-02	refunded
7383	2879	2025-09-01	completed
7384	2882	2025-09-18	completed
7385	2885	2025-09-27	completed
7386	2920	2025-09-12	completed
7387	2928	2025-09-21	completed
7388	2935	2025-09-12	completed
7389	2935	2025-09-12	completed
7390	2937	2025-09-02	completed
7391	2941	2025-09-21	completed
7392	2942	2025-09-23	completed
7393	2943	2025-09-04	completed
7394	2947	2025-09-10	completed
7395	2967	2025-09-02	completed
7396	2990	2025-09-07	completed
7397	2993	2025-09-30	completed
7398	3000	2025-09-06	completed
7399	2	2025-10-27	completed
7400	4	2025-10-25	completed
7401	30	2025-10-28	completed
7402	33	2025-10-02	completed
7403	41	2025-10-13	completed
7404	43	2025-10-20	completed
7405	44	2025-10-26	completed
7406	49	2025-10-20	completed
7407	52	2025-10-01	completed
7408	56	2025-10-15	completed
7409	57	2025-10-25	completed
7410	68	2025-10-10	completed
7411	69	2025-10-25	completed
7412	71	2025-10-04	completed
7413	98	2025-10-16	completed
7414	100	2025-10-26	completed
7415	125	2025-10-31	completed
7416	129	2025-10-05	completed
7417	132	2025-10-29	completed
7418	134	2025-10-05	completed
7419	143	2025-10-24	completed
7420	144	2025-10-31	completed
7421	149	2025-10-27	completed
7422	170	2025-10-30	completed
7423	189	2025-10-06	completed
7424	192	2025-10-15	completed
7425	207	2025-10-16	completed
7426	212	2025-10-14	completed
7427	215	2025-10-08	completed
7428	242	2025-10-22	cancelled
7429	258	2025-10-25	completed
7430	279	2025-10-29	completed
7431	280	2025-10-15	completed
7432	298	2025-10-07	completed
7433	317	2025-10-16	completed
7434	318	2025-10-31	completed
7435	319	2025-10-26	completed
7436	322	2025-10-10	completed
7437	325	2025-10-23	completed
7438	331	2025-10-14	completed
7439	335	2025-10-17	completed
7440	347	2025-10-11	completed
7441	348	2025-10-17	completed
7442	354	2025-10-20	completed
7443	368	2025-10-17	completed
7444	374	2025-10-09	completed
7445	386	2025-10-13	completed
7446	400	2025-10-24	completed
7447	409	2025-10-28	completed
7448	417	2025-10-16	completed
7449	448	2025-10-14	completed
7450	464	2025-10-24	completed
7451	470	2025-10-02	completed
7452	476	2025-10-17	completed
7453	484	2025-10-30	completed
7454	494	2025-10-10	completed
7455	496	2025-10-18	cancelled
7456	515	2025-10-26	completed
7457	519	2025-10-22	completed
7458	539	2025-10-12	completed
7459	542	2025-10-29	completed
7460	552	2025-10-28	completed
7461	555	2025-10-27	completed
7462	562	2025-10-30	completed
7463	574	2025-10-18	completed
7464	580	2025-10-21	completed
7465	582	2025-10-14	completed
7466	593	2025-10-26	completed
7467	605	2025-10-26	completed
7468	623	2025-10-12	completed
7469	625	2025-10-26	completed
7470	641	2025-10-29	completed
7471	650	2025-10-31	completed
7472	657	2025-10-21	completed
7473	665	2025-10-24	completed
7474	670	2025-10-24	completed
7475	674	2025-10-16	completed
7476	678	2025-10-07	completed
7477	685	2025-10-12	completed
7478	686	2025-10-31	completed
7479	687	2025-10-06	completed
7480	688	2025-10-13	completed
7481	695	2025-10-13	completed
7482	703	2025-10-24	completed
7483	704	2025-10-01	completed
7484	709	2025-10-11	completed
7485	717	2025-10-09	completed
7486	719	2025-10-02	completed
7487	725	2025-10-03	refunded
7488	728	2025-10-10	completed
7489	729	2025-10-16	refunded
7490	736	2025-10-20	completed
7491	738	2025-10-23	completed
7492	740	2025-10-28	completed
7493	750	2025-10-20	completed
7494	758	2025-10-30	completed
7495	768	2025-10-23	completed
7496	789	2025-10-20	completed
7497	791	2025-10-28	completed
7498	807	2025-10-08	completed
7499	809	2025-10-14	completed
7500	814	2025-10-15	completed
7501	816	2025-10-03	completed
7502	822	2025-10-16	completed
7503	826	2025-10-18	completed
7504	836	2025-10-12	completed
7505	839	2025-10-31	cancelled
7506	847	2025-10-02	completed
7507	848	2025-10-30	completed
7508	859	2025-10-07	cancelled
7509	867	2025-10-11	completed
7510	874	2025-10-21	cancelled
7511	875	2025-10-28	completed
7512	885	2025-10-07	completed
7513	886	2025-10-11	completed
7514	892	2025-10-30	completed
7515	897	2025-10-07	completed
7516	902	2025-10-23	completed
7517	911	2025-10-14	completed
7518	913	2025-10-26	completed
7519	919	2025-10-12	completed
7520	925	2025-10-16	completed
7521	938	2025-10-09	completed
7522	943	2025-10-20	completed
7523	958	2025-10-15	completed
7524	959	2025-10-13	completed
7525	962	2025-10-11	completed
7526	968	2025-10-04	completed
7527	974	2025-10-21	completed
7528	982	2025-10-06	completed
7529	1010	2025-10-21	completed
7530	1016	2025-10-03	completed
7531	1018	2025-10-01	completed
7532	1019	2025-10-20	completed
7533	1021	2025-10-11	refunded
7534	1025	2025-10-15	completed
7535	1032	2025-10-07	completed
7536	1033	2025-10-25	completed
7537	1046	2025-10-29	completed
7538	1053	2025-10-27	completed
7539	1056	2025-10-08	completed
7540	1079	2025-10-03	completed
7541	1087	2025-10-15	completed
7542	1097	2025-10-30	completed
7543	1099	2025-10-18	completed
7544	1101	2025-10-18	completed
7545	1104	2025-10-29	completed
7546	1113	2025-10-29	completed
7547	1121	2025-10-04	completed
7548	1125	2025-10-27	completed
7549	1142	2025-10-27	cancelled
7550	1143	2025-10-12	completed
7551	1156	2025-10-12	completed
7552	1157	2025-10-09	completed
7553	1158	2025-10-11	completed
7554	1161	2025-10-29	completed
7555	1172	2025-10-24	completed
7556	1174	2025-10-02	completed
7557	1174	2025-10-24	completed
7558	1184	2025-10-09	completed
7559	1197	2025-10-07	completed
7560	1208	2025-10-05	completed
7561	1235	2025-10-16	completed
7562	1248	2025-10-26	completed
7563	1257	2025-10-10	completed
7564	1275	2025-10-23	refunded
7565	1297	2025-10-19	completed
7566	1308	2025-10-20	completed
7567	1316	2025-10-01	completed
7568	1318	2025-10-21	completed
7569	1331	2025-10-03	completed
7570	1338	2025-10-24	completed
7571	1340	2025-10-22	completed
7572	1344	2025-10-07	cancelled
7573	1351	2025-10-29	completed
7574	1352	2025-10-02	completed
7575	1363	2025-10-18	completed
7576	1365	2025-10-21	completed
7577	1366	2025-10-01	completed
7578	1367	2025-10-02	completed
7579	1368	2025-10-04	completed
7580	1376	2025-10-24	completed
7581	1387	2025-10-26	cancelled
7582	1389	2025-10-01	completed
7583	1391	2025-10-06	completed
7584	1397	2025-10-25	completed
7585	1405	2025-10-19	completed
7586	1410	2025-10-02	completed
7587	1423	2025-10-26	completed
7588	1427	2025-10-11	completed
7589	1433	2025-10-20	completed
7590	1439	2025-10-31	completed
7591	1444	2025-10-21	completed
7592	1450	2025-10-30	completed
7593	1455	2025-10-30	completed
7594	1459	2025-10-01	completed
7595	1466	2025-10-17	completed
7596	1475	2025-10-24	completed
7597	1479	2025-10-07	completed
7598	1484	2025-10-21	completed
7599	1490	2025-10-17	completed
7600	1491	2025-10-13	completed
7601	1499	2025-10-05	completed
7602	1504	2025-10-13	completed
7603	1512	2025-10-22	completed
7604	1513	2025-10-26	completed
7605	1537	2025-10-31	completed
7606	1541	2025-10-12	completed
7607	1563	2025-10-06	completed
7608	1568	2025-10-06	completed
7609	1582	2025-10-27	completed
7610	1583	2025-10-17	completed
7611	1585	2025-10-23	completed
7612	1588	2025-10-17	completed
7613	1590	2025-10-06	completed
7614	1605	2025-10-03	completed
7615	1616	2025-10-17	completed
7616	1619	2025-10-07	completed
7617	1627	2025-10-04	completed
7618	1634	2025-10-29	refunded
7619	1640	2025-10-22	completed
7620	1649	2025-10-27	completed
7621	1650	2025-10-24	completed
7622	1653	2025-10-08	completed
7623	1656	2025-10-13	completed
7624	1657	2025-10-18	completed
7625	1683	2025-10-27	completed
7626	1687	2025-10-09	completed
7627	1693	2025-10-24	completed
7628	1695	2025-10-09	completed
7629	1701	2025-10-23	completed
7630	1715	2025-10-11	completed
7631	1722	2025-10-30	completed
7632	1725	2025-10-03	refunded
7633	1727	2025-10-19	completed
7634	1728	2025-10-07	completed
7635	1735	2025-10-10	completed
7636	1735	2025-10-02	completed
7637	1761	2025-10-30	completed
7638	1763	2025-10-08	completed
7639	1769	2025-10-17	cancelled
7640	1770	2025-10-06	completed
7641	1775	2025-10-29	completed
7642	1777	2025-10-20	completed
7643	1782	2025-10-21	completed
7644	1786	2025-10-16	completed
7645	1790	2025-10-01	completed
7646	1796	2025-10-04	completed
7647	1805	2025-10-08	completed
7648	1807	2025-10-07	completed
7649	1808	2025-10-05	completed
7650	1818	2025-10-27	completed
7651	1829	2025-10-05	completed
7652	1835	2025-10-31	completed
7653	1841	2025-10-24	completed
7654	1843	2025-10-01	completed
7655	1851	2025-10-07	completed
7656	1853	2025-10-31	completed
7657	1855	2025-10-23	completed
7658	1870	2025-10-08	cancelled
7659	1872	2025-10-19	completed
7660	1873	2025-10-08	completed
7661	1877	2025-10-18	cancelled
7662	1892	2025-10-22	completed
7663	1899	2025-10-03	completed
7664	1903	2025-10-26	cancelled
7665	1907	2025-10-08	completed
7666	1919	2025-10-18	completed
7667	1924	2025-10-19	completed
7668	1941	2025-10-18	completed
7669	1944	2025-10-11	completed
7670	1949	2025-10-25	completed
7671	1951	2025-10-16	completed
7672	1957	2025-10-06	completed
7673	1979	2025-10-03	completed
7674	1981	2025-10-11	completed
7675	1981	2025-10-17	completed
7676	1987	2025-10-29	completed
7677	1989	2025-10-02	completed
7678	1992	2025-10-03	completed
7679	1993	2025-10-12	completed
7680	2000	2025-10-08	completed
7681	2015	2025-10-19	completed
7682	2019	2025-10-12	completed
7683	2021	2025-10-11	completed
7684	2033	2025-10-26	completed
7685	2058	2025-10-05	completed
7686	2079	2025-10-13	completed
7687	2080	2025-10-30	completed
7688	2094	2025-10-15	completed
7689	2098	2025-10-25	completed
7690	2099	2025-10-23	completed
7691	2100	2025-10-24	completed
7692	2116	2025-10-14	completed
7693	2120	2025-10-29	completed
7694	2121	2025-10-03	completed
7695	2129	2025-10-07	completed
7696	2132	2025-10-19	completed
7697	2138	2025-10-08	completed
7698	2142	2025-10-22	refunded
7699	2144	2025-10-15	completed
7700	2144	2025-10-05	completed
7701	2150	2025-10-18	refunded
7702	2169	2025-10-09	completed
7703	2182	2025-10-03	completed
7704	2184	2025-10-28	completed
7705	2185	2025-10-27	completed
7706	2190	2025-10-10	completed
7707	2197	2025-10-24	completed
7708	2201	2025-10-14	completed
7709	2211	2025-10-02	completed
7710	2216	2025-10-26	completed
7711	2218	2025-10-30	completed
7712	2223	2025-10-12	completed
7713	2230	2025-10-23	refunded
7714	2233	2025-10-19	completed
7715	2242	2025-10-22	completed
7716	2250	2025-10-21	completed
7717	2257	2025-10-10	completed
7718	2270	2025-10-06	completed
7719	2316	2025-10-19	completed
7720	2317	2025-10-11	refunded
7721	2320	2025-10-02	completed
7722	2332	2025-10-24	completed
7723	2337	2025-10-28	completed
7724	2347	2025-10-19	completed
7725	2349	2025-10-03	completed
7726	2357	2025-10-05	completed
7727	2364	2025-10-05	completed
7728	2382	2025-10-08	completed
7729	2393	2025-10-25	completed
7730	2409	2025-10-24	completed
7731	2420	2025-10-14	completed
7732	2453	2025-10-30	completed
7733	2458	2025-10-26	completed
7734	2461	2025-10-25	completed
7735	2481	2025-10-28	refunded
7736	2484	2025-10-04	completed
7737	2484	2025-10-21	completed
7738	2488	2025-10-03	completed
7739	2489	2025-10-13	completed
7740	2489	2025-10-19	completed
7741	2493	2025-10-06	completed
7742	2503	2025-10-26	completed
7743	2508	2025-10-21	completed
7744	2509	2025-10-02	completed
7745	2510	2025-10-21	completed
7746	2514	2025-10-01	completed
7747	2520	2025-10-30	completed
7748	2522	2025-10-06	completed
7749	2543	2025-10-11	completed
7750	2548	2025-10-19	completed
7751	2550	2025-10-27	completed
7752	2559	2025-10-11	completed
7753	2563	2025-10-16	completed
7754	2565	2025-10-31	completed
7755	2568	2025-10-09	refunded
7756	2571	2025-10-26	completed
7757	2571	2025-10-10	completed
7758	2574	2025-10-17	completed
7759	2576	2025-10-02	completed
7760	2579	2025-10-20	completed
7761	2579	2025-10-19	completed
7762	2590	2025-10-25	completed
7763	2590	2025-10-05	completed
7764	2596	2025-10-28	completed
7765	2598	2025-10-22	completed
7766	2603	2025-10-02	completed
7767	2607	2025-10-09	completed
7768	2610	2025-10-04	completed
7769	2614	2025-10-11	completed
7770	2625	2025-10-28	completed
7771	2631	2025-10-23	completed
7772	2632	2025-10-17	completed
7773	2640	2025-10-23	cancelled
7774	2642	2025-10-10	completed
7775	2648	2025-10-12	completed
7776	2658	2025-10-15	completed
7777	2662	2025-10-01	cancelled
7778	2664	2025-10-30	completed
7779	2679	2025-10-26	completed
7780	2696	2025-10-13	completed
7781	2712	2025-10-16	completed
7782	2717	2025-10-26	completed
7783	2731	2025-10-21	completed
7784	2732	2025-10-11	completed
7785	2733	2025-10-31	cancelled
7786	2761	2025-10-27	completed
7787	2767	2025-10-28	completed
7788	2784	2025-10-07	completed
7789	2796	2025-10-06	completed
7790	2799	2025-10-20	completed
7791	2818	2025-10-03	completed
7792	2821	2025-10-30	completed
7793	2836	2025-10-29	completed
7794	2854	2025-10-30	completed
7795	2856	2025-10-19	completed
7796	2875	2025-10-05	completed
7797	2879	2025-10-15	completed
7798	2883	2025-10-09	completed
7799	2883	2025-10-19	completed
7800	2885	2025-10-05	completed
7801	2886	2025-10-08	completed
7802	2895	2025-10-09	completed
7803	2897	2025-10-20	completed
7804	2920	2025-10-02	completed
7805	2921	2025-10-07	completed
7806	2925	2025-10-13	refunded
7807	2927	2025-10-05	completed
7808	2938	2025-10-12	completed
7809	2943	2025-10-04	completed
7810	2943	2025-10-13	completed
7811	2954	2025-10-11	completed
7812	2958	2025-10-05	refunded
7813	2977	2025-10-01	completed
7814	2979	2025-10-21	completed
7815	2979	2025-10-06	completed
7816	2992	2025-10-01	completed
7817	2993	2025-10-01	completed
7818	2995	2025-10-18	refunded
7819	2997	2025-10-12	completed
7820	2	2025-11-23	completed
7821	4	2025-11-10	completed
7822	5	2025-11-28	completed
7823	6	2025-11-27	completed
7824	14	2025-11-25	completed
7825	15	2025-11-05	completed
7826	17	2025-11-09	completed
7827	18	2025-11-19	completed
7828	25	2025-11-18	completed
7829	28	2025-11-17	completed
7830	33	2025-11-02	completed
7831	44	2025-11-14	completed
7832	46	2025-11-12	completed
7833	55	2025-11-20	completed
7834	59	2025-11-16	completed
7835	69	2025-11-19	completed
7836	79	2025-11-20	completed
7837	97	2025-11-07	completed
7838	101	2025-11-20	completed
7839	105	2025-11-16	cancelled
7840	111	2025-11-03	completed
7841	114	2025-11-18	completed
7842	120	2025-11-11	completed
7843	121	2025-11-04	completed
7844	122	2025-11-11	completed
7845	134	2025-11-11	completed
7846	137	2025-11-10	completed
7847	149	2025-11-24	completed
7848	151	2025-11-16	completed
7849	152	2025-11-22	completed
7850	157	2025-11-14	completed
7851	169	2025-11-26	completed
7852	182	2025-11-09	completed
7853	190	2025-11-30	completed
7854	206	2025-11-16	completed
7855	211	2025-11-22	completed
7856	214	2025-11-16	completed
7857	214	2025-11-24	completed
7858	217	2025-11-26	completed
7859	218	2025-11-26	completed
7860	229	2025-11-23	completed
7861	232	2025-11-03	completed
7862	234	2025-11-28	completed
7863	241	2025-11-18	completed
7864	249	2025-11-08	completed
7865	253	2025-11-23	refunded
7866	256	2025-11-07	completed
7867	260	2025-11-12	completed
7868	263	2025-11-07	completed
7869	272	2025-11-21	completed
7870	290	2025-11-24	completed
7871	297	2025-11-05	completed
7872	298	2025-11-03	completed
7873	311	2025-11-18	completed
7874	312	2025-11-19	completed
7875	320	2025-11-17	completed
7876	328	2025-11-02	completed
7877	329	2025-11-16	completed
7878	335	2025-11-18	completed
7879	336	2025-11-28	completed
7880	338	2025-11-15	completed
7881	342	2025-11-09	completed
7882	344	2025-11-19	completed
7883	355	2025-11-13	completed
7884	360	2025-11-12	cancelled
7885	364	2025-11-30	completed
7886	413	2025-11-11	completed
7887	416	2025-11-17	completed
7888	426	2025-11-22	completed
7889	442	2025-11-20	completed
7890	443	2025-11-15	completed
7891	443	2025-11-09	completed
7892	446	2025-11-08	completed
7893	451	2025-11-21	completed
7894	456	2025-11-13	completed
7895	459	2025-11-15	completed
7896	461	2025-11-15	completed
7897	463	2025-11-23	completed
7898	468	2025-11-03	completed
7899	472	2025-11-21	completed
7900	473	2025-11-18	completed
7901	475	2025-11-07	completed
7902	476	2025-11-09	completed
7903	480	2025-11-17	cancelled
7904	487	2025-11-22	completed
7905	500	2025-11-26	completed
7906	501	2025-11-13	completed
7907	504	2025-11-05	cancelled
7908	507	2025-11-23	completed
7909	517	2025-11-14	completed
7910	524	2025-11-13	completed
7911	526	2025-11-26	refunded
7912	528	2025-11-23	completed
7913	538	2025-11-25	completed
7914	542	2025-11-24	completed
7915	546	2025-11-01	completed
7916	555	2025-11-13	completed
7917	559	2025-11-18	completed
7918	564	2025-11-28	completed
7919	566	2025-11-25	completed
7920	569	2025-11-16	completed
7921	571	2025-11-10	completed
7922	575	2025-11-01	cancelled
7923	583	2025-11-06	completed
7924	584	2025-11-11	completed
7925	603	2025-11-23	completed
7926	614	2025-11-16	completed
7927	617	2025-11-17	cancelled
7928	626	2025-11-12	completed
7929	639	2025-11-03	completed
7930	643	2025-11-05	completed
7931	651	2025-11-08	refunded
7932	655	2025-11-16	refunded
7933	660	2025-11-11	completed
7934	663	2025-11-18	completed
7935	665	2025-11-04	completed
7936	672	2025-11-11	completed
7937	679	2025-11-14	completed
7938	685	2025-11-24	completed
7939	687	2025-11-08	completed
7940	690	2025-11-29	completed
7941	691	2025-11-21	refunded
7942	694	2025-11-25	completed
7943	699	2025-11-14	completed
7944	703	2025-11-17	completed
7945	708	2025-11-12	completed
7946	709	2025-11-05	completed
7947	717	2025-11-18	completed
7948	719	2025-11-07	completed
7949	723	2025-11-01	completed
7950	725	2025-11-22	completed
7951	727	2025-11-16	completed
7952	733	2025-11-26	completed
7953	743	2025-11-25	completed
7954	744	2025-11-17	completed
7955	746	2025-11-21	completed
7956	748	2025-11-23	completed
7957	756	2025-11-15	completed
7958	759	2025-11-27	completed
7959	766	2025-11-28	completed
7960	768	2025-11-15	completed
7961	779	2025-11-11	completed
7962	784	2025-11-25	completed
7963	798	2025-11-29	completed
7964	805	2025-11-24	completed
7965	814	2025-11-30	completed
7966	815	2025-11-28	completed
7967	816	2025-11-05	completed
7968	817	2025-11-26	completed
7969	821	2025-11-11	completed
7970	825	2025-11-11	completed
7971	828	2025-11-17	refunded
7972	829	2025-11-26	completed
7973	832	2025-11-11	completed
7974	839	2025-11-05	completed
7975	842	2025-11-04	completed
7976	844	2025-11-30	completed
7977	846	2025-11-26	completed
7978	850	2025-11-19	completed
7979	854	2025-11-06	completed
7980	857	2025-11-03	completed
7981	869	2025-11-03	refunded
7982	871	2025-11-30	refunded
7983	884	2025-11-06	completed
7984	887	2025-11-19	completed
7985	888	2025-11-23	completed
7986	896	2025-11-12	refunded
7987	897	2025-11-25	completed
7988	905	2025-11-22	completed
7989	907	2025-11-06	completed
7990	916	2025-11-03	completed
7991	920	2025-11-26	completed
7992	924	2025-11-03	completed
7993	949	2025-11-25	completed
7994	951	2025-11-04	completed
7995	955	2025-11-28	completed
7996	966	2025-11-22	completed
7997	974	2025-11-20	completed
7998	975	2025-11-18	completed
7999	1000	2025-11-27	completed
8000	1004	2025-11-09	completed
8001	1009	2025-11-21	completed
8002	1014	2025-11-08	cancelled
8003	1016	2025-11-10	completed
8004	1026	2025-11-03	completed
8005	1029	2025-11-28	completed
8006	1030	2025-11-09	completed
8007	1033	2025-11-01	completed
8008	1047	2025-11-21	completed
8009	1057	2025-11-21	completed
8010	1058	2025-11-23	completed
8011	1058	2025-11-18	refunded
8012	1061	2025-11-24	completed
8013	1086	2025-11-29	completed
8014	1088	2025-11-22	cancelled
8015	1089	2025-11-02	completed
8016	1089	2025-11-06	completed
8017	1096	2025-11-09	completed
8018	1100	2025-11-18	completed
8019	1103	2025-11-15	completed
8020	1108	2025-11-20	completed
8021	1111	2025-11-01	completed
8022	1119	2025-11-21	completed
8023	1122	2025-11-21	cancelled
8024	1123	2025-11-03	completed
8025	1130	2025-11-26	completed
8026	1132	2025-11-21	completed
8027	1142	2025-11-06	completed
8028	1144	2025-11-25	completed
8029	1144	2025-11-06	completed
8030	1145	2025-11-11	completed
8031	1153	2025-11-23	completed
8032	1161	2025-11-16	completed
8033	1163	2025-11-22	completed
8034	1164	2025-11-07	completed
8035	1171	2025-11-20	completed
8036	1174	2025-11-11	completed
8037	1176	2025-11-23	completed
8038	1176	2025-11-19	completed
8039	1178	2025-11-16	completed
8040	1180	2025-11-14	completed
8041	1181	2025-11-02	completed
8042	1181	2025-11-03	completed
8043	1182	2025-11-19	completed
8044	1183	2025-11-09	completed
8045	1206	2025-11-12	completed
8046	1208	2025-11-02	refunded
8047	1209	2025-11-21	completed
8048	1210	2025-11-04	completed
8049	1218	2025-11-25	completed
8050	1222	2025-11-21	completed
8051	1227	2025-11-06	completed
8052	1237	2025-11-30	completed
8053	1247	2025-11-09	completed
8054	1248	2025-11-22	completed
8055	1250	2025-11-15	completed
8056	1252	2025-11-18	completed
8057	1255	2025-11-18	completed
8058	1257	2025-11-25	completed
8059	1271	2025-11-26	completed
8060	1275	2025-11-26	completed
8061	1276	2025-11-29	completed
8062	1282	2025-11-05	completed
8063	1287	2025-11-13	completed
8064	1294	2025-11-06	completed
8065	1296	2025-11-25	completed
8066	1297	2025-11-11	completed
8067	1298	2025-11-11	completed
8068	1299	2025-11-23	completed
8069	1300	2025-11-13	completed
8070	1301	2025-11-06	completed
8071	1306	2025-11-23	completed
8072	1311	2025-11-13	completed
8073	1316	2025-11-26	completed
8074	1321	2025-11-01	completed
8075	1326	2025-11-25	completed
8076	1328	2025-11-11	completed
8077	1329	2025-11-03	completed
8078	1339	2025-11-27	completed
8079	1348	2025-11-26	completed
8080	1349	2025-11-09	completed
8081	1350	2025-11-02	completed
8082	1352	2025-11-20	completed
8083	1353	2025-11-28	completed
8084	1355	2025-11-06	completed
8085	1358	2025-11-16	completed
8086	1360	2025-11-12	completed
8087	1363	2025-11-21	completed
8088	1366	2025-11-02	cancelled
8089	1370	2025-11-10	completed
8090	1375	2025-11-05	completed
8091	1384	2025-11-28	completed
8092	1401	2025-11-07	completed
8093	1402	2025-11-17	completed
8094	1412	2025-11-02	completed
8095	1427	2025-11-20	completed
8096	1430	2025-11-01	completed
8097	1432	2025-11-10	completed
8098	1433	2025-11-17	completed
8099	1441	2025-11-29	completed
8100	1450	2025-11-14	completed
8101	1451	2025-11-11	cancelled
8102	1453	2025-11-04	completed
8103	1455	2025-11-23	completed
8104	1459	2025-11-09	completed
8105	1474	2025-11-29	completed
8106	1477	2025-11-13	completed
8107	1482	2025-11-16	completed
8108	1487	2025-11-06	completed
8109	1488	2025-11-09	completed
8110	1496	2025-11-14	completed
8111	1498	2025-11-03	completed
8112	1502	2025-11-04	completed
8113	1502	2025-11-26	completed
8114	1503	2025-11-03	completed
8115	1504	2025-11-08	completed
8116	1505	2025-11-07	completed
8117	1509	2025-11-02	refunded
8118	1511	2025-11-05	completed
8119	1527	2025-11-18	completed
8120	1528	2025-11-07	completed
8121	1539	2025-11-06	completed
8122	1540	2025-11-25	completed
8123	1543	2025-11-04	completed
8124	1544	2025-11-25	completed
8125	1561	2025-11-06	completed
8126	1564	2025-11-29	completed
8127	1566	2025-11-18	completed
8128	1567	2025-11-28	completed
8129	1573	2025-11-30	completed
8130	1585	2025-11-12	cancelled
8131	1589	2025-11-19	completed
8132	1590	2025-11-17	refunded
8133	1591	2025-11-03	completed
8134	1596	2025-11-09	completed
8135	1599	2025-11-15	completed
8136	1601	2025-11-21	completed
8137	1613	2025-11-12	completed
8138	1613	2025-11-08	refunded
8139	1622	2025-11-17	cancelled
8140	1623	2025-11-10	completed
8141	1629	2025-11-28	completed
8142	1635	2025-11-18	completed
8143	1641	2025-11-13	completed
8144	1648	2025-11-10	completed
8145	1662	2025-11-27	completed
8146	1673	2025-11-23	cancelled
8147	1682	2025-11-14	completed
8148	1682	2025-11-20	completed
8149	1688	2025-11-18	completed
8150	1693	2025-11-03	completed
8151	1705	2025-11-18	completed
8152	1709	2025-11-16	completed
8153	1723	2025-11-03	completed
8154	1725	2025-11-18	completed
8155	1730	2025-11-09	completed
8156	1731	2025-11-26	completed
8157	1738	2025-11-09	completed
8158	1740	2025-11-22	completed
8159	1741	2025-11-29	completed
8160	1742	2025-11-15	completed
8161	1743	2025-11-07	completed
8162	1750	2025-11-30	completed
8163	1751	2025-11-03	completed
8164	1759	2025-11-21	completed
8165	1764	2025-11-21	completed
8166	1769	2025-11-04	completed
8167	1770	2025-11-13	completed
8168	1779	2025-11-27	completed
8169	1781	2025-11-23	completed
8170	1782	2025-11-13	completed
8171	1787	2025-11-19	completed
8172	1788	2025-11-10	cancelled
8173	1790	2025-11-13	cancelled
8174	1792	2025-11-04	completed
8175	1796	2025-11-22	completed
8176	1798	2025-11-08	completed
8177	1807	2025-11-11	completed
8178	1814	2025-11-23	completed
8179	1817	2025-11-13	completed
8180	1827	2025-11-18	completed
8181	1831	2025-11-04	completed
8182	1846	2025-11-26	completed
8183	1850	2025-11-26	completed
8184	1856	2025-11-29	completed
8185	1865	2025-11-21	completed
8186	1874	2025-11-20	completed
8187	1882	2025-11-13	completed
8188	1884	2025-11-16	completed
8189	1886	2025-11-16	completed
8190	1889	2025-11-25	completed
8191	1893	2025-11-01	completed
8192	1897	2025-11-14	completed
8193	1900	2025-11-07	completed
8194	1905	2025-11-23	completed
8195	1908	2025-11-21	completed
8196	1912	2025-11-26	completed
8197	1914	2025-11-04	completed
8198	1921	2025-11-16	completed
8199	1926	2025-11-22	completed
8200	1929	2025-11-19	completed
8201	1939	2025-11-21	refunded
8202	1941	2025-11-23	completed
8203	1946	2025-11-02	completed
8204	1953	2025-11-19	completed
8205	1958	2025-11-08	completed
8206	1969	2025-11-15	refunded
8207	1971	2025-11-23	completed
8208	1972	2025-11-09	completed
8209	1975	2025-11-06	completed
8210	1979	2025-11-23	completed
8211	1982	2025-11-21	completed
8212	1995	2025-11-01	completed
8213	2007	2025-11-27	completed
8214	2009	2025-11-19	completed
8215	2010	2025-11-03	completed
8216	2010	2025-11-20	completed
8217	2013	2025-11-09	completed
8218	2016	2025-11-23	completed
8219	2016	2025-11-02	completed
8220	2030	2025-11-30	completed
8221	2033	2025-11-20	completed
8222	2040	2025-11-01	completed
8223	2055	2025-11-02	refunded
8224	2056	2025-11-18	completed
8225	2057	2025-11-15	completed
8226	2086	2025-11-25	completed
8227	2091	2025-11-19	completed
8228	2095	2025-11-25	completed
8229	2098	2025-11-15	completed
8230	2099	2025-11-22	completed
8231	2105	2025-11-22	completed
8232	2112	2025-11-10	completed
8233	2115	2025-11-14	completed
8234	2116	2025-11-27	completed
8235	2121	2025-11-13	completed
8236	2123	2025-11-01	completed
8237	2127	2025-11-12	completed
8238	2128	2025-11-21	completed
8239	2129	2025-11-16	completed
8240	2130	2025-11-14	completed
8241	2136	2025-11-18	completed
8242	2138	2025-11-04	completed
8243	2140	2025-11-26	completed
8244	2146	2025-11-08	completed
8245	2149	2025-11-09	completed
8246	2150	2025-11-03	completed
8247	2156	2025-11-06	completed
8248	2157	2025-11-05	completed
8249	2158	2025-11-12	completed
8250	2163	2025-11-30	completed
8251	2171	2025-11-23	refunded
8252	2173	2025-11-15	refunded
8253	2180	2025-11-04	completed
8254	2181	2025-11-19	completed
8255	2187	2025-11-18	completed
8256	2188	2025-11-30	completed
8257	2193	2025-11-22	completed
8258	2196	2025-11-15	completed
8259	2199	2025-11-25	completed
8260	2200	2025-11-16	cancelled
8261	2202	2025-11-13	completed
8262	2204	2025-11-23	completed
8263	2206	2025-11-30	completed
8264	2211	2025-11-28	completed
8265	2212	2025-11-30	completed
8266	2217	2025-11-28	refunded
8267	2221	2025-11-06	completed
8268	2226	2025-11-18	completed
8269	2231	2025-11-10	completed
8270	2237	2025-11-04	completed
8271	2244	2025-11-22	completed
8272	2247	2025-11-30	completed
8273	2249	2025-11-24	completed
8274	2250	2025-11-19	completed
8275	2256	2025-11-12	completed
8276	2264	2025-11-15	completed
8277	2267	2025-11-13	completed
8278	2268	2025-11-07	completed
8279	2274	2025-11-29	completed
8280	2276	2025-11-01	completed
8281	2277	2025-11-09	completed
8282	2281	2025-11-18	completed
8283	2282	2025-11-12	completed
8284	2283	2025-11-12	completed
8285	2284	2025-11-05	completed
8286	2291	2025-11-26	completed
8287	2293	2025-11-04	completed
8288	2298	2025-11-12	completed
8289	2299	2025-11-09	completed
8290	2310	2025-11-08	completed
8291	2320	2025-11-04	completed
8292	2321	2025-11-03	completed
8293	2332	2025-11-03	completed
8294	2339	2025-11-25	completed
8295	2346	2025-11-08	completed
8296	2349	2025-11-09	refunded
8297	2353	2025-11-29	completed
8298	2368	2025-11-27	completed
8299	2373	2025-11-06	completed
8300	2377	2025-11-22	completed
8301	2384	2025-11-12	completed
8302	2385	2025-11-04	completed
8303	2389	2025-11-01	completed
8304	2394	2025-11-17	completed
8305	2396	2025-11-09	completed
8306	2402	2025-11-25	completed
8307	2407	2025-11-24	completed
8308	2412	2025-11-09	completed
8309	2417	2025-11-24	completed
8310	2422	2025-11-07	completed
8311	2425	2025-11-01	completed
8312	2434	2025-11-12	completed
8313	2439	2025-11-08	completed
8314	2456	2025-11-09	completed
8315	2458	2025-11-30	completed
8316	2472	2025-11-06	completed
8317	2481	2025-11-23	completed
8318	2481	2025-11-12	refunded
8319	2484	2025-11-08	completed
8320	2489	2025-11-19	completed
8321	2492	2025-11-26	completed
8322	2494	2025-11-27	completed
8323	2497	2025-11-26	completed
8324	2499	2025-11-14	completed
8325	2500	2025-11-26	completed
8326	2500	2025-11-02	completed
8327	2515	2025-11-19	completed
8328	2527	2025-11-06	completed
8329	2529	2025-11-02	completed
8330	2539	2025-11-01	completed
8331	2539	2025-11-22	completed
8332	2541	2025-11-22	refunded
8333	2542	2025-11-02	completed
8334	2543	2025-11-25	completed
8335	2549	2025-11-06	completed
8336	2554	2025-11-21	completed
8337	2555	2025-11-29	completed
8338	2573	2025-11-28	completed
8339	2588	2025-11-08	completed
8340	2606	2025-11-02	completed
8341	2614	2025-11-16	completed
8342	2627	2025-11-29	completed
8343	2633	2025-11-25	completed
8344	2633	2025-11-06	completed
8345	2636	2025-11-03	completed
8346	2639	2025-11-22	completed
8347	2645	2025-11-09	completed
8348	2646	2025-11-24	completed
8349	2672	2025-11-10	completed
8350	2675	2025-11-18	completed
8351	2697	2025-11-01	completed
8352	2716	2025-11-04	completed
8353	2729	2025-11-21	completed
8354	2732	2025-11-12	cancelled
8355	2738	2025-11-06	completed
8356	2750	2025-11-02	completed
8357	2751	2025-11-16	completed
8358	2753	2025-11-06	completed
8359	2760	2025-11-30	completed
8360	2761	2025-11-18	completed
8361	2763	2025-11-21	completed
8362	2764	2025-11-28	completed
8363	2773	2025-11-08	completed
8364	2774	2025-11-01	completed
8365	2779	2025-11-23	completed
8366	2784	2025-11-22	completed
8367	2789	2025-11-17	completed
8368	2794	2025-11-14	completed
8369	2795	2025-11-16	completed
8370	2798	2025-11-13	completed
8371	2806	2025-11-16	cancelled
8372	2816	2025-11-21	completed
8373	2817	2025-11-17	completed
8374	2827	2025-11-29	completed
8375	2830	2025-11-06	completed
8376	2838	2025-11-20	completed
8377	2847	2025-11-15	completed
8378	2850	2025-11-10	completed
8379	2852	2025-11-10	completed
8380	2858	2025-11-14	completed
8381	2862	2025-11-05	completed
8382	2864	2025-11-05	completed
8383	2865	2025-11-30	completed
8384	2873	2025-11-03	completed
8385	2874	2025-11-26	completed
8386	2875	2025-11-07	completed
8387	2879	2025-11-25	completed
8388	2887	2025-11-28	cancelled
8389	2887	2025-11-20	completed
8390	2888	2025-11-01	completed
8391	2889	2025-11-29	completed
8392	2901	2025-11-14	completed
8393	2910	2025-11-15	completed
8394	2913	2025-11-12	refunded
8395	2925	2025-11-05	completed
8396	2932	2025-11-11	completed
8397	2934	2025-11-05	completed
8398	2942	2025-11-02	completed
8399	2947	2025-11-18	completed
8400	2954	2025-11-24	completed
8401	2959	2025-11-08	completed
8402	2976	2025-11-03	completed
8403	2980	2025-11-07	completed
8404	2981	2025-11-12	completed
8405	2982	2025-11-05	completed
8406	2984	2025-11-23	completed
8407	2989	2025-11-23	completed
8408	2991	2025-11-26	completed
8409	2998	2025-11-19	cancelled
8410	9	2025-12-10	completed
8411	10	2025-12-15	completed
8412	18	2025-12-23	refunded
8413	26	2025-12-03	completed
8414	31	2025-12-22	completed
8415	46	2025-12-08	completed
8416	51	2025-12-18	completed
8417	55	2025-12-10	completed
8418	56	2025-12-03	completed
8419	59	2025-12-04	completed
8420	61	2025-12-28	completed
8421	63	2025-12-13	completed
8422	65	2025-12-24	completed
8423	71	2025-12-28	completed
8424	71	2025-12-13	completed
8425	74	2025-12-06	completed
8426	76	2025-12-17	completed
8427	78	2025-12-15	completed
8428	89	2025-12-07	completed
8429	93	2025-12-05	completed
8430	96	2025-12-27	completed
8431	98	2025-12-19	completed
8432	111	2025-12-26	completed
8433	118	2025-12-31	completed
8434	122	2025-12-04	completed
8435	124	2025-12-23	completed
8436	127	2025-12-07	completed
8437	128	2025-12-06	completed
8438	143	2025-12-12	completed
8439	148	2025-12-11	completed
8440	150	2025-12-07	completed
8441	155	2025-12-20	completed
8442	156	2025-12-30	completed
8443	160	2025-12-11	completed
8444	163	2025-12-26	completed
8445	163	2025-12-19	cancelled
8446	170	2025-12-17	completed
8447	181	2025-12-26	cancelled
8448	182	2025-12-05	cancelled
8449	186	2025-12-27	completed
8450	188	2025-12-29	completed
8451	205	2025-12-09	completed
8452	207	2025-12-05	completed
8453	220	2025-12-31	completed
8454	229	2025-12-28	completed
8455	232	2025-12-03	completed
8456	232	2025-12-06	completed
8457	237	2025-12-27	refunded
8458	244	2025-12-30	completed
8459	248	2025-12-02	completed
8460	249	2025-12-05	completed
8461	252	2025-12-25	completed
8462	257	2025-12-30	completed
8463	264	2025-12-02	completed
8464	284	2025-12-17	completed
8465	286	2025-12-24	completed
8466	305	2025-12-21	completed
8467	307	2025-12-09	completed
8468	307	2025-12-07	completed
8469	321	2025-12-28	completed
8470	322	2025-12-01	completed
8471	342	2025-12-20	completed
8472	347	2025-12-22	completed
8473	348	2025-12-26	completed
8474	351	2025-12-07	completed
8475	351	2025-12-07	cancelled
8476	354	2025-12-24	completed
8477	362	2025-12-27	completed
8478	377	2025-12-19	completed
8479	406	2025-12-31	completed
8480	407	2025-12-07	completed
8481	415	2025-12-29	completed
8482	419	2025-12-07	completed
8483	426	2025-12-31	completed
8484	431	2025-12-22	completed
8485	438	2025-12-04	completed
8486	450	2025-12-02	completed
8487	452	2025-12-21	completed
8488	452	2025-12-20	completed
8489	453	2025-12-13	completed
8490	458	2025-12-09	completed
8491	458	2025-12-21	completed
8492	459	2025-12-10	completed
8493	467	2025-12-15	completed
8494	470	2025-12-06	completed
8495	474	2025-12-21	completed
8496	475	2025-12-05	completed
8497	479	2025-12-13	completed
8498	480	2025-12-11	completed
8499	480	2025-12-25	completed
8500	485	2025-12-15	completed
8501	489	2025-12-09	completed
8502	494	2025-12-01	completed
8503	496	2025-12-16	completed
8504	501	2025-12-08	completed
8505	502	2025-12-16	completed
8506	503	2025-12-29	completed
8507	505	2025-12-24	completed
8508	528	2025-12-07	completed
8509	530	2025-12-28	completed
8510	534	2025-12-11	completed
8511	535	2025-12-01	completed
8512	536	2025-12-23	completed
8513	537	2025-12-01	cancelled
8514	539	2025-12-28	completed
8515	540	2025-12-10	completed
8516	561	2025-12-19	completed
8517	567	2025-12-20	completed
8518	577	2025-12-07	completed
8519	581	2025-12-31	completed
8520	595	2025-12-30	completed
8521	597	2025-12-01	completed
8522	602	2025-12-29	completed
8523	603	2025-12-22	refunded
8524	606	2025-12-29	completed
8525	611	2025-12-28	completed
8526	613	2025-12-19	completed
8527	617	2025-12-14	refunded
8528	620	2025-12-19	completed
8529	621	2025-12-18	completed
8530	622	2025-12-08	completed
8531	642	2025-12-10	completed
8532	644	2025-12-30	completed
8533	648	2025-12-08	completed
8534	681	2025-12-07	completed
8535	691	2025-12-13	completed
8536	692	2025-12-22	cancelled
8537	707	2025-12-08	completed
8538	712	2025-12-01	completed
8539	713	2025-12-02	completed
8540	716	2025-12-27	completed
8541	723	2025-12-23	completed
8542	726	2025-12-07	cancelled
8543	727	2025-12-26	completed
8544	739	2025-12-10	completed
8545	744	2025-12-11	completed
8546	748	2025-12-24	cancelled
8547	754	2025-12-16	completed
8548	756	2025-12-09	completed
8549	760	2025-12-20	completed
8550	762	2025-12-31	completed
8551	765	2025-12-27	completed
8552	765	2025-12-04	completed
8553	770	2025-12-21	completed
8554	772	2025-12-25	refunded
8555	783	2025-12-09	completed
8556	792	2025-12-08	completed
8557	793	2025-12-29	completed
8558	799	2025-12-10	completed
8559	801	2025-12-13	completed
8560	807	2025-12-11	completed
8561	814	2025-12-04	completed
8562	815	2025-12-03	completed
8563	816	2025-12-01	completed
8564	829	2025-12-09	completed
8565	834	2025-12-23	completed
8566	841	2025-12-17	completed
8567	845	2025-12-02	completed
8568	848	2025-12-26	completed
8569	853	2025-12-18	completed
8570	857	2025-12-01	completed
8571	857	2025-12-21	completed
8572	862	2025-12-23	completed
8573	872	2025-12-24	completed
8574	873	2025-12-17	completed
8575	876	2025-12-02	completed
8576	880	2025-12-03	completed
8577	881	2025-12-27	completed
8578	887	2025-12-14	completed
8579	888	2025-12-31	completed
8580	892	2025-12-05	completed
8581	893	2025-12-01	completed
8582	895	2025-12-12	completed
8583	899	2025-12-01	completed
8584	907	2025-12-27	completed
8585	911	2025-12-04	completed
8586	922	2025-12-22	completed
8587	923	2025-12-03	completed
8588	925	2025-12-03	completed
8589	927	2025-12-11	completed
8590	936	2025-12-03	completed
8591	938	2025-12-04	completed
8592	943	2025-12-24	completed
8593	947	2025-12-19	completed
8594	948	2025-12-17	completed
8595	950	2025-12-11	completed
8596	951	2025-12-06	completed
8597	952	2025-12-27	completed
8598	953	2025-12-21	completed
8599	954	2025-12-11	completed
8600	958	2025-12-07	completed
8601	961	2025-12-12	completed
8602	961	2025-12-20	completed
8603	974	2025-12-24	completed
8604	980	2025-12-12	completed
8605	998	2025-12-15	completed
8606	1014	2025-12-23	completed
8607	1016	2025-12-25	completed
8608	1020	2025-12-20	completed
8609	1023	2025-12-17	completed
8610	1025	2025-12-01	cancelled
8611	1038	2025-12-21	completed
8612	1038	2025-12-04	completed
8613	1049	2025-12-30	completed
8614	1058	2025-12-15	completed
8615	1058	2025-12-26	completed
8616	1066	2025-12-23	cancelled
8617	1067	2025-12-25	completed
8618	1070	2025-12-29	completed
8619	1074	2025-12-28	completed
8620	1080	2025-12-11	completed
8621	1102	2025-12-07	completed
8622	1104	2025-12-19	completed
8623	1107	2025-12-08	completed
8624	1118	2025-12-21	completed
8625	1121	2025-12-19	completed
8626	1123	2025-12-06	completed
8627	1131	2025-12-13	completed
8628	1133	2025-12-24	refunded
8629	1140	2025-12-01	completed
8630	1142	2025-12-08	completed
8631	1144	2025-12-25	completed
8632	1151	2025-12-23	completed
8633	1164	2025-12-01	completed
8634	1170	2025-12-17	completed
8635	1174	2025-12-01	completed
8636	1176	2025-12-31	completed
8637	1181	2025-12-26	completed
8638	1186	2025-12-10	completed
8639	1192	2025-12-07	completed
8640	1193	2025-12-20	completed
8641	1195	2025-12-25	completed
8642	1200	2025-12-10	completed
8643	1201	2025-12-13	completed
8644	1204	2025-12-13	completed
8645	1204	2025-12-04	completed
8646	1207	2025-12-23	completed
8647	1207	2025-12-14	completed
8648	1214	2025-12-24	completed
8649	1215	2025-12-26	completed
8650	1220	2025-12-07	completed
8651	1221	2025-12-13	completed
8652	1227	2025-12-25	completed
8653	1233	2025-12-19	completed
8654	1236	2025-12-20	completed
8655	1237	2025-12-13	completed
8656	1239	2025-12-26	completed
8657	1244	2025-12-02	completed
8658	1248	2025-12-09	completed
8659	1250	2025-12-10	completed
8660	1254	2025-12-14	cancelled
8661	1261	2025-12-30	completed
8662	1262	2025-12-04	completed
8663	1266	2025-12-26	cancelled
8664	1268	2025-12-20	completed
8665	1272	2025-12-30	completed
8666	1278	2025-12-10	completed
8667	1279	2025-12-21	cancelled
8668	1280	2025-12-19	completed
8669	1281	2025-12-23	completed
8670	1282	2025-12-31	completed
8671	1287	2025-12-16	completed
8672	1294	2025-12-13	completed
8673	1303	2025-12-16	completed
8674	1317	2025-12-24	completed
8675	1325	2025-12-11	completed
8676	1327	2025-12-16	completed
8677	1332	2025-12-25	completed
8678	1333	2025-12-07	completed
8679	1335	2025-12-11	completed
8680	1346	2025-12-06	completed
8681	1350	2025-12-04	completed
8682	1351	2025-12-18	completed
8683	1354	2025-12-15	completed
8684	1358	2025-12-11	completed
8685	1359	2025-12-18	completed
8686	1361	2025-12-20	completed
8687	1365	2025-12-09	completed
8688	1370	2025-12-13	completed
8689	1378	2025-12-13	completed
8690	1379	2025-12-22	completed
8691	1395	2025-12-23	completed
8692	1413	2025-12-11	refunded
8693	1422	2025-12-17	completed
8694	1430	2025-12-21	cancelled
8695	1436	2025-12-10	completed
8696	1437	2025-12-04	completed
8697	1438	2025-12-07	completed
8698	1442	2025-12-23	completed
8699	1447	2025-12-28	completed
8700	1448	2025-12-22	completed
8701	1450	2025-12-28	completed
8702	1452	2025-12-20	completed
8703	1455	2025-12-25	completed
8704	1456	2025-12-27	completed
8705	1457	2025-12-11	completed
8706	1460	2025-12-13	completed
8707	1468	2025-12-10	completed
8708	1471	2025-12-02	completed
8709	1477	2025-12-12	refunded
8710	1479	2025-12-24	completed
8711	1481	2025-12-24	completed
8712	1491	2025-12-27	completed
8713	1493	2025-12-23	completed
8714	1494	2025-12-23	completed
8715	1497	2025-12-26	completed
8716	1501	2025-12-30	completed
8717	1503	2025-12-11	completed
8718	1506	2025-12-23	refunded
8719	1515	2025-12-18	completed
8720	1520	2025-12-28	completed
8721	1524	2025-12-27	completed
8722	1528	2025-12-27	completed
8723	1540	2025-12-28	completed
8724	1549	2025-12-21	completed
8725	1554	2025-12-21	completed
8726	1559	2025-12-20	completed
8727	1565	2025-12-16	completed
8728	1572	2025-12-14	completed
8729	1578	2025-12-11	completed
8730	1581	2025-12-16	completed
8731	1581	2025-12-20	completed
8732	1593	2025-12-21	completed
8733	1603	2025-12-22	completed
8734	1610	2025-12-19	completed
8735	1613	2025-12-25	completed
8736	1614	2025-12-27	completed
8737	1621	2025-12-17	completed
8738	1622	2025-12-12	completed
8739	1632	2025-12-31	completed
8740	1633	2025-12-06	completed
8741	1634	2025-12-10	completed
8742	1636	2025-12-20	completed
8743	1637	2025-12-09	completed
8744	1654	2025-12-18	completed
8745	1659	2025-12-08	completed
8746	1660	2025-12-06	completed
8747	1663	2025-12-17	completed
8748	1666	2025-12-18	refunded
8749	1671	2025-12-21	completed
8750	1672	2025-12-31	completed
8751	1676	2025-12-30	completed
8752	1677	2025-12-12	completed
8753	1682	2025-12-11	completed
8754	1688	2025-12-30	completed
8755	1692	2025-12-14	completed
8756	1693	2025-12-20	completed
8757	1709	2025-12-04	completed
8758	1712	2025-12-07	completed
8759	1724	2025-12-11	completed
8760	1727	2025-12-21	completed
8761	1727	2025-12-17	cancelled
8762	1734	2025-12-03	completed
8763	1752	2025-12-07	completed
8764	1753	2025-12-27	completed
8765	1757	2025-12-04	completed
8766	1763	2025-12-21	completed
8767	1772	2025-12-31	completed
8768	1774	2025-12-22	completed
8769	1779	2025-12-12	completed
8770	1781	2025-12-23	completed
8771	1784	2025-12-02	completed
8772	1798	2025-12-05	completed
8773	1801	2025-12-10	completed
8774	1806	2025-12-12	cancelled
8775	1814	2025-12-07	completed
8776	1815	2025-12-06	completed
8777	1816	2025-12-11	completed
8778	1825	2025-12-31	completed
8779	1828	2025-12-26	completed
8780	1829	2025-12-19	completed
8781	1832	2025-12-04	completed
8782	1835	2025-12-25	completed
8783	1841	2025-12-14	refunded
8784	1844	2025-12-20	completed
8785	1850	2025-12-07	completed
8786	1852	2025-12-11	completed
8787	1857	2025-12-30	refunded
8788	1871	2025-12-16	cancelled
8789	1887	2025-12-21	completed
8790	1890	2025-12-26	completed
8791	1892	2025-12-26	completed
8792	1895	2025-12-16	completed
8793	1910	2025-12-27	completed
8794	1911	2025-12-16	completed
8795	1912	2025-12-30	completed
8796	1915	2025-12-13	completed
8797	1918	2025-12-24	completed
8798	1920	2025-12-01	completed
8799	1921	2025-12-19	completed
8800	1925	2025-12-25	completed
8801	1927	2025-12-09	completed
8802	1930	2025-12-30	completed
8803	1933	2025-12-04	completed
8804	1938	2025-12-24	completed
8805	1943	2025-12-20	completed
8806	1951	2025-12-16	completed
8807	1964	2025-12-22	completed
8808	1969	2025-12-16	completed
8809	1975	2025-12-03	completed
8810	1982	2025-12-10	completed
8811	1984	2025-12-04	completed
8812	1990	2025-12-09	completed
8813	1998	2025-12-15	completed
8814	2005	2025-12-09	completed
8815	2007	2025-12-24	completed
8816	2013	2025-12-16	completed
8817	2014	2025-12-19	completed
8818	2017	2025-12-15	completed
8819	2018	2025-12-08	completed
8820	2020	2025-12-11	completed
8821	2022	2025-12-28	completed
8822	2027	2025-12-05	completed
8823	2034	2025-12-24	completed
8824	2042	2025-12-20	completed
8825	2055	2025-12-05	completed
8826	2056	2025-12-01	completed
8827	2057	2025-12-27	completed
8828	2066	2025-12-09	completed
8829	2070	2025-12-26	completed
8830	2073	2025-12-30	refunded
8831	2075	2025-12-09	completed
8832	2078	2025-12-21	completed
8833	2088	2025-12-25	completed
8834	2097	2025-12-22	completed
8835	2107	2025-12-19	completed
8836	2120	2025-12-12	completed
8837	2121	2025-12-31	cancelled
8838	2129	2025-12-25	completed
8839	2130	2025-12-21	completed
8840	2136	2025-12-20	completed
8841	2143	2025-12-29	completed
8842	2148	2025-12-25	completed
8843	2152	2025-12-14	completed
8844	2169	2025-12-18	completed
8845	2184	2025-12-09	completed
8846	2185	2025-12-12	completed
8847	2189	2025-12-06	completed
8848	2190	2025-12-26	completed
8849	2196	2025-12-01	completed
8850	2199	2025-12-08	completed
8851	2204	2025-12-20	completed
8852	2206	2025-12-02	completed
8853	2207	2025-12-22	refunded
8854	2208	2025-12-30	completed
8855	2212	2025-12-16	completed
8856	2216	2025-12-20	completed
8857	2221	2025-12-11	completed
8858	2222	2025-12-27	completed
8859	2223	2025-12-22	completed
8860	2226	2025-12-16	completed
8861	2227	2025-12-22	completed
8862	2228	2025-12-06	completed
8863	2237	2025-12-30	completed
8864	2238	2025-12-14	completed
8865	2241	2025-12-17	completed
8866	2243	2025-12-15	completed
8867	2249	2025-12-05	cancelled
8868	2250	2025-12-02	completed
8869	2253	2025-12-15	completed
8870	2256	2025-12-22	completed
8871	2261	2025-12-06	refunded
8872	2262	2025-12-27	completed
8873	2265	2025-12-18	completed
8874	2267	2025-12-30	completed
8875	2270	2025-12-08	completed
8876	2277	2025-12-05	completed
8877	2281	2025-12-26	completed
8878	2287	2025-12-29	refunded
8879	2289	2025-12-27	completed
8880	2300	2025-12-17	completed
8881	2301	2025-12-24	completed
8882	2306	2025-12-11	completed
8883	2309	2025-12-25	completed
8884	2310	2025-12-26	completed
8885	2316	2025-12-16	completed
8886	2318	2025-12-11	completed
8887	2324	2025-12-20	completed
8888	2332	2025-12-14	cancelled
8889	2333	2025-12-15	completed
8890	2341	2025-12-22	completed
8891	2342	2025-12-06	completed
8892	2347	2025-12-30	completed
8893	2349	2025-12-05	cancelled
8894	2352	2025-12-18	completed
8895	2358	2025-12-21	completed
8896	2364	2025-12-25	completed
8897	2368	2025-12-23	completed
8898	2374	2025-12-24	completed
8899	2379	2025-12-27	completed
8900	2380	2025-12-18	completed
8901	2387	2025-12-21	cancelled
8902	2388	2025-12-30	completed
8903	2389	2025-12-31	completed
8904	2392	2025-12-12	completed
8905	2396	2025-12-31	completed
8906	2398	2025-12-28	cancelled
8907	2399	2025-12-08	completed
8908	2401	2025-12-21	completed
8909	2402	2025-12-01	completed
8910	2416	2025-12-23	completed
8911	2422	2025-12-07	completed
8912	2422	2025-12-03	cancelled
8913	2430	2025-12-10	completed
8914	2434	2025-12-25	cancelled
8915	2439	2025-12-29	completed
8916	2440	2025-12-29	completed
8917	2441	2025-12-05	completed
8918	2447	2025-12-13	completed
8919	2448	2025-12-31	completed
8920	2456	2025-12-23	completed
8921	2458	2025-12-11	completed
8922	2460	2025-12-09	completed
8923	2466	2025-12-13	completed
8924	2470	2025-12-04	completed
8925	2481	2025-12-31	completed
8926	2483	2025-12-16	completed
8927	2484	2025-12-28	completed
8928	2490	2025-12-14	completed
8929	2494	2025-12-26	completed
8930	2505	2025-12-07	completed
8931	2509	2025-12-08	completed
8932	2513	2025-12-22	completed
8933	2518	2025-12-30	completed
8934	2527	2025-12-16	completed
8935	2532	2025-12-23	completed
8936	2533	2025-12-01	completed
8937	2534	2025-12-08	completed
8938	2535	2025-12-21	completed
8939	2565	2025-12-13	completed
8940	2567	2025-12-13	completed
8941	2569	2025-12-30	completed
8942	2575	2025-12-30	completed
8943	2579	2025-12-03	completed
8944	2583	2025-12-29	completed
8945	2584	2025-12-09	completed
8946	2585	2025-12-24	completed
8947	2594	2025-12-29	completed
8948	2598	2025-12-25	completed
8949	2599	2025-12-26	completed
8950	2610	2025-12-12	cancelled
8951	2613	2025-12-24	completed
8952	2617	2025-12-08	completed
8953	2628	2025-12-11	completed
8954	2639	2025-12-23	completed
8955	2639	2025-12-11	completed
8956	2642	2025-12-03	completed
8957	2644	2025-12-15	completed
8958	2645	2025-12-14	completed
8959	2646	2025-12-12	completed
8960	2647	2025-12-16	completed
8961	2648	2025-12-20	completed
8962	2650	2025-12-29	completed
8963	2652	2025-12-28	completed
8964	2653	2025-12-04	completed
8965	2657	2025-12-30	completed
8966	2665	2025-12-31	completed
8967	2668	2025-12-18	completed
8968	2677	2025-12-14	completed
8969	2683	2025-12-22	completed
8970	2684	2025-12-14	completed
8971	2692	2025-12-02	completed
8972	2701	2025-12-11	completed
8973	2703	2025-12-19	completed
8974	2706	2025-12-15	refunded
8975	2716	2025-12-02	completed
8976	2741	2025-12-24	completed
8977	2742	2025-12-21	completed
8978	2745	2025-12-02	completed
8979	2750	2025-12-01	completed
8980	2765	2025-12-02	completed
8981	2766	2025-12-29	completed
8982	2768	2025-12-10	completed
8983	2783	2025-12-22	completed
8984	2783	2025-12-31	completed
8985	2789	2025-12-28	completed
8986	2794	2025-12-21	completed
8987	2799	2025-12-16	completed
8988	2802	2025-12-08	completed
8989	2818	2025-12-30	completed
8990	2820	2025-12-31	completed
8991	2823	2025-12-01	completed
8992	2824	2025-12-13	completed
8993	2828	2025-12-09	completed
8994	2831	2025-12-13	completed
8995	2833	2025-12-29	completed
8996	2836	2025-12-16	completed
8997	2836	2025-12-18	completed
8998	2842	2025-12-22	completed
8999	2847	2025-12-20	cancelled
9000	2854	2025-12-12	completed
9001	2860	2025-12-20	completed
9002	2862	2025-12-18	completed
9003	2867	2025-12-25	refunded
9004	2869	2025-12-02	completed
9005	2872	2025-12-04	completed
9006	2872	2025-12-19	completed
9007	2877	2025-12-23	completed
9008	2877	2025-12-23	completed
9009	2885	2025-12-15	completed
9010	2888	2025-12-26	completed
9011	2889	2025-12-20	completed
9012	2893	2025-12-07	completed
9013	2899	2025-12-14	completed
9014	2912	2025-12-26	completed
9015	2920	2025-12-07	completed
9016	2924	2025-12-29	completed
9017	2925	2025-12-05	completed
9018	2928	2025-12-26	completed
9019	2932	2025-12-08	completed
9020	2934	2025-12-31	completed
9021	2939	2025-12-27	completed
9022	2941	2025-12-30	completed
9023	2941	2025-12-05	completed
9024	2949	2025-12-31	completed
9025	2954	2025-12-16	completed
9026	2959	2025-12-14	completed
9027	2961	2025-12-08	completed
9028	2965	2025-12-05	completed
9029	2966	2025-12-16	completed
9030	2972	2025-12-28	completed
9031	2978	2025-12-29	completed
9032	2985	2025-12-30	completed
9033	2986	2025-12-01	completed
9034	2988	2025-12-29	completed
9035	2990	2025-12-09	completed
9036	2992	2025-12-05	completed
9037	2994	2025-12-10	completed
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: analyst; Owner: -
--

COPY analyst.products (product_id, product_name, category_id, unit_price, is_discontinued, discontinued_date) FROM stdin;
1	Electronics Purpose Brother	1	584.50	f	\N
2	Electronics Ago Site	1	46.88	f	\N
3	Electronics Face Election	1	265.65	f	\N
4	Electronics Dog Chair	1	220.31	f	\N
6	Electronics Require Sit	1	617.11	f	\N
7	Home Wait Offer	2	224.12	f	\N
8	Home Begin Performance	2	30.87	f	\N
9	Home Knowledge Almost	2	111.26	f	\N
10	Home All Better	2	17.15	f	\N
11	Home Discover Early	2	62.47	f	\N
12	Home Mouth Play	2	131.29	f	\N
13	Apparel Agreement Option	3	11.77	f	\N
14	Apparel Decide Sense	3	36.23	f	\N
15	Apparel Rate Science	3	100.28	f	\N
16	Apparel Offer Kind	3	85.38	f	\N
17	Apparel Discussion List	3	39.30	f	\N
18	Apparel Perform Fall	3	91.68	f	\N
19	Sports Table True	4	244.73	f	\N
20	Sports According Song	4	11.88	f	\N
21	Sports Sure Collection	4	243.69	f	\N
22	Sports Save Knowledge	4	212.46	f	\N
23	Sports Grow Fall	4	108.67	f	\N
24	Sports Clearly Dinner	4	55.09	f	\N
25	Beauty Source Great	5	76.79	f	\N
26	Beauty Blue Best	5	30.24	f	\N
27	Beauty Husband Bill	5	11.96	f	\N
28	Beauty Her Throw	5	12.25	f	\N
29	Beauty Guy Pm	5	68.56	f	\N
30	Beauty Everything Surface	5	50.28	f	\N
31	Office Animal Show	6	97.43	f	\N
32	Office Machine Not	6	88.38	f	\N
33	Office Capital Win	6	65.74	f	\N
34	Office Human Bar	6	116.85	f	\N
35	Office Old Finally	6	47.29	f	\N
36	Office Themselves Production	6	67.59	f	\N
37	Toys Present Value	7	75.50	f	\N
38	Toys Training High	7	57.57	f	\N
39	Toys Participant Dark	7	78.25	f	\N
40	Toys Sea Available	7	54.07	f	\N
41	Toys Answer Recently	7	64.89	f	\N
42	Toys Drive Spring	7	8.90	f	\N
43	Books Figure Base	8	14.89	f	\N
44	Books Top Early	8	17.29	f	\N
45	Books Trial Blood	8	9.11	f	\N
46	Books Husband Fall	8	15.08	f	\N
47	Books Long Prove	8	9.94	f	\N
48	Books They His	8	16.84	f	\N
5	Electronics Since Blue	1	669.41	t	2025-03-15
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: analyst; Owner: -
--

COPY analyst.order_items (order_item_id, order_id, product_id, quantity, unit_price, discount) FROM stdin;
1	1	23	2	102.54	0.000
2	1	46	1	14.36	0.050
3	2	34	2	116.35	0.000
4	2	7	4	212.81	0.050
5	2	44	2	15.57	0.100
6	3	19	3	230.73	0.000
7	4	12	4	135.54	0.000
8	5	19	1	220.60	0.100
9	5	39	1	81.32	0.000
10	5	30	5	49.21	0.000
11	6	48	3	17.15	0.100
12	6	13	2	11.67	0.150
13	6	28	5	11.63	0.050
14	6	12	2	127.56	0.000
15	7	20	5	11.98	0.000
16	7	17	3	39.45	0.000
17	8	19	3	242.82	0.000
18	8	31	2	94.34	0.100
19	8	45	5	9.45	0.100
20	8	14	2	36.30	0.100
21	9	8	1	31.62	0.100
22	9	13	5	11.54	0.000
23	9	21	5	235.47	0.150
24	10	33	4	63.67	0.000
25	11	5	1	645.01	0.150
26	11	35	1	49.19	0.000
27	12	24	4	53.29	0.050
28	12	25	1	76.98	0.150
29	13	9	2	114.07	0.000
30	13	30	5	48.45	0.050
31	13	16	4	81.28	0.000
32	14	5	1	662.11	0.050
33	15	14	1	33.37	0.000
34	15	15	5	95.05	0.100
35	15	44	3	16.18	0.000
36	16	21	4	234.24	0.000
37	16	25	2	77.80	0.050
38	16	16	2	80.69	0.150
39	17	36	5	62.19	0.000
40	17	17	2	37.32	0.000
41	18	44	5	17.12	0.000
42	18	13	5	11.87	0.100
43	19	38	5	58.03	0.000
44	19	22	2	203.32	0.000
45	20	5	1	643.88	0.150
46	20	46	2	13.59	0.100
47	20	4	5	219.35	0.100
48	20	43	4	13.44	0.100
49	21	2	5	47.91	0.150
50	21	28	2	11.22	0.000
51	22	15	3	100.54	0.000
52	22	42	1	8.13	0.050
53	22	25	5	74.59	0.150
54	22	1	2	533.30	0.050
55	23	26	1	28.57	0.100
56	23	16	5	87.53	0.050
57	23	44	5	16.42	0.150
58	23	9	1	108.49	0.000
59	24	40	5	51.88	0.000
60	24	2	3	47.70	0.050
61	24	32	2	84.26	0.050
62	25	5	2	640.63	0.150
63	26	29	3	69.53	0.000
64	27	27	1	10.81	0.000
65	27	36	1	66.88	0.000
66	27	25	1	72.47	0.050
67	28	5	3	627.74	0.000
68	28	47	4	9.83	0.000
69	29	22	4	201.88	0.150
70	29	9	3	105.49	0.150
71	29	21	2	254.58	0.000
72	30	37	2	71.64	0.000
73	30	26	3	27.73	0.100
74	30	35	2	47.40	0.100
75	30	5	4	697.15	0.000
76	31	33	4	64.53	0.000
77	31	45	5	9.01	0.000
78	31	7	2	223.82	0.000
79	32	45	5	8.50	0.000
80	32	44	5	17.35	0.000
81	32	2	4	42.93	0.050
82	33	22	4	216.21	0.100
83	33	31	3	94.65	0.050
84	34	44	2	17.97	0.150
85	34	12	5	121.31	0.100
86	35	35	2	45.16	0.000
87	36	12	3	131.82	0.100
88	37	32	5	86.31	0.100
89	37	35	3	46.41	0.000
90	38	8	2	28.75	0.150
91	38	23	5	108.12	0.000
92	39	42	2	8.95	0.000
93	39	16	2	85.95	0.000
94	40	30	4	47.72	0.000
95	40	47	1	10.04	0.050
96	41	4	1	201.57	0.050
97	41	2	1	48.73	0.000
98	41	29	4	61.71	0.050
99	41	13	2	12.15	0.000
100	42	17	1	37.56	0.150
101	42	11	1	59.94	0.000
102	43	38	2	56.30	0.050
103	44	45	2	8.85	0.000
104	44	25	1	77.53	0.000
105	45	44	2	15.74	0.100
106	46	41	2	67.35	0.100
107	47	25	3	80.21	0.000
108	47	9	2	104.76	0.000
109	47	16	5	84.54	0.150
110	47	39	3	79.57	0.150
111	48	39	5	72.64	0.050
112	48	19	1	249.03	0.000
113	48	32	4	81.04	0.050
114	49	9	4	114.50	0.100
115	49	27	3	11.74	0.000
116	50	26	5	28.52	0.150
117	51	20	1	11.60	0.000
118	52	44	1	16.37	0.050
119	52	47	2	9.03	0.000
120	52	28	1	11.86	0.100
121	52	4	3	220.29	0.150
122	53	34	5	118.89	0.150
123	53	24	2	55.78	0.000
124	54	34	1	109.77	0.100
125	54	41	1	63.23	0.100
126	55	3	1	248.83	0.050
127	55	10	2	17.83	0.000
128	55	46	4	14.08	0.000
129	55	47	3	9.35	0.000
130	56	3	4	241.83	0.050
131	56	19	3	232.27	0.100
132	56	30	1	48.03	0.000
133	57	1	3	526.18	0.150
134	57	48	3	15.42	0.100
135	57	27	4	12.49	0.000
136	57	6	1	640.68	0.100
137	58	21	4	244.93	0.150
138	59	10	1	15.86	0.050
139	60	30	3	51.68	0.000
140	60	11	3	63.97	0.150
141	61	44	3	16.24	0.000
142	62	16	1	82.76	0.000
143	62	8	1	28.07	0.000
144	62	9	2	113.88	0.000
145	63	13	4	12.02	0.000
146	64	47	4	9.69	0.050
147	64	44	4	16.01	0.000
148	65	32	4	91.24	0.050
149	65	4	1	207.52	0.000
150	66	32	3	91.64	0.100
151	66	21	4	229.21	0.000
152	67	38	2	60.22	0.000
153	67	16	3	83.68	0.150
154	68	23	2	100.67	0.100
155	68	21	3	252.73	0.000
156	69	35	3	43.81	0.000
157	69	6	1	576.93	0.000
158	70	9	3	112.10	0.000
159	71	24	1	52.67	0.150
160	72	41	4	64.72	0.000
161	72	36	5	68.81	0.000
162	72	12	4	124.20	0.150
163	73	15	5	91.82	0.050
164	73	10	3	17.35	0.000
165	73	23	3	100.54	0.000
166	74	7	1	203.33	0.050
167	74	47	4	10.39	0.050
168	75	15	2	97.04	0.000
169	75	19	1	231.96	0.000
170	75	5	3	619.55	0.050
171	75	11	1	61.35	0.000
172	76	47	5	9.34	0.000
173	76	20	2	10.86	0.050
174	76	37	5	77.46	0.000
175	77	31	2	89.10	0.000
176	77	19	1	237.64	0.000
177	77	26	4	29.43	0.150
178	77	42	5	8.53	0.000
179	78	17	4	38.11	0.000
180	79	35	4	49.45	0.100
181	79	15	5	91.17	0.050
182	80	34	5	117.04	0.100
183	80	10	1	17.88	0.050
184	80	12	2	137.31	0.000
185	81	10	5	16.10	0.150
186	81	5	1	641.44	0.050
187	81	36	3	69.52	0.100
188	81	30	1	51.18	0.100
189	82	7	5	227.91	0.000
190	83	22	3	201.12	0.050
191	84	34	3	119.56	0.100
192	84	5	3	673.72	0.050
193	84	2	2	43.55	0.000
194	85	12	4	129.72	0.000
195	85	23	2	111.46	0.000
196	86	42	2	8.81	0.000
197	86	39	3	78.79	0.150
198	87	36	5	67.01	0.000
199	87	44	1	16.81	0.000
200	88	21	2	245.69	0.150
201	88	19	3	253.55	0.050
202	88	3	5	267.30	0.100
203	89	5	4	691.78	0.100
204	89	8	4	30.24	0.050
205	89	4	2	202.82	0.000
206	90	22	2	201.20	0.000
207	90	1	4	550.03	0.000
208	91	28	4	11.77	0.050
209	91	25	1	69.55	0.000
210	91	47	3	10.36	0.000
211	92	23	3	99.90	0.050
212	92	33	5	62.18	0.000
213	92	3	3	276.88	0.050
214	92	47	5	9.84	0.000
215	93	22	4	202.66	0.000
216	94	38	5	53.27	0.000
217	95	8	4	29.84	0.000
218	95	36	3	65.64	0.000
219	95	14	1	34.24	0.150
220	95	7	5	210.78	0.100
221	96	32	2	92.13	0.100
222	96	5	1	693.32	0.150
223	96	15	4	105.12	0.000
224	96	17	4	35.67	0.000
225	97	11	3	59.57	0.050
226	98	31	4	97.17	0.000
227	98	45	1	9.54	0.000
228	99	29	2	67.99	0.000
229	99	40	1	55.66	0.150
230	99	9	4	115.49	0.000
231	99	27	4	10.85	0.000
232	100	47	5	9.28	0.150
233	100	22	5	207.88	0.150
234	100	40	1	52.17	0.150
235	101	11	1	63.26	0.000
236	101	18	1	89.48	0.100
237	102	27	1	11.76	0.000
238	102	6	5	644.56	0.150
239	103	39	4	78.84	0.000
240	103	46	4	13.83	0.150
241	103	15	1	95.39	0.150
242	104	47	4	9.11	0.100
243	104	13	2	10.81	0.050
244	104	14	4	37.09	0.000
245	104	46	3	13.82	0.050
246	105	38	5	52.98	0.050
247	105	5	1	658.02	0.050
248	106	33	4	63.29	0.100
249	106	45	2	8.57	0.000
250	107	20	5	12.23	0.150
251	107	48	5	16.75	0.000
252	107	14	5	36.49	0.150
253	108	46	4	15.10	0.100
254	108	19	4	249.93	0.100
255	108	7	1	214.51	0.000
256	108	43	1	13.85	0.000
257	109	5	4	612.76	0.150
258	109	15	5	96.10	0.100
259	109	45	3	9.15	0.000
260	110	15	3	101.61	0.100
261	110	48	5	15.65	0.150
262	111	46	2	13.66	0.000
263	111	39	1	79.51	0.150
264	112	15	2	100.23	0.000
265	112	14	5	35.49	0.100
266	113	40	2	56.44	0.150
267	113	25	1	73.56	0.100
268	113	2	5	47.97	0.000
269	113	33	4	63.97	0.000
270	114	44	4	17.73	0.000
271	115	4	2	224.53	0.100
272	116	26	4	28.65	0.050
273	116	35	1	47.11	0.100
274	117	23	5	99.53	0.150
275	118	5	2	656.04	0.000
276	118	35	3	49.37	0.000
277	118	47	3	10.37	0.000
278	118	36	2	62.08	0.000
279	119	42	5	8.20	0.000
280	119	17	2	36.05	0.150
281	120	43	2	13.62	0.100
282	120	5	2	634.38	0.050
283	121	21	2	248.04	0.150
284	121	28	3	12.57	0.000
285	122	35	2	44.43	0.150
286	123	5	5	660.60	0.100
287	123	3	5	249.47	0.100
288	123	10	3	16.44	0.100
289	123	19	2	237.32	0.100
290	124	33	2	63.57	0.000
291	124	37	2	76.28	0.050
292	124	3	2	269.43	0.000
293	125	24	4	53.46	0.050
294	125	3	1	278.16	0.000
295	125	7	5	223.01	0.000
296	126	14	2	33.62	0.000
297	126	39	1	78.18	0.050
298	127	41	5	58.78	0.100
299	128	39	5	77.91	0.150
300	128	47	3	10.36	0.000
301	129	27	2	11.85	0.000
302	129	31	5	96.45	0.100
303	129	33	1	60.08	0.150
304	129	9	5	109.13	0.000
305	130	25	3	75.90	0.150
306	130	45	5	8.33	0.000
307	131	1	1	576.73	0.000
308	132	28	5	11.70	0.000
309	132	44	4	17.52	0.050
310	132	36	5	65.72	0.000
311	133	11	1	58.23	0.050
312	133	36	5	67.90	0.150
313	134	31	5	94.05	0.000
314	135	5	5	631.19	0.000
315	135	33	5	66.05	0.100
316	136	18	4	87.37	0.050
317	137	36	5	64.36	0.000
318	137	13	4	12.23	0.100
319	138	33	3	62.52	0.000
320	139	44	2	17.64	0.050
321	140	44	3	15.76	0.000
322	140	31	3	92.85	0.100
323	141	1	5	610.04	0.050
324	141	21	4	252.15	0.100
325	141	32	2	92.59	0.100
326	141	15	5	92.18	0.100
327	142	40	3	50.18	0.000
328	142	16	3	82.88	0.100
329	143	47	3	10.12	0.000
330	143	37	1	72.46	0.150
331	143	14	3	35.20	0.150
332	143	48	3	15.81	0.000
333	144	13	5	11.61	0.150
334	144	35	2	49.51	0.000
335	144	23	3	108.78	0.050
336	145	41	3	62.51	0.100
337	146	19	3	242.48	0.050
338	146	18	4	93.25	0.000
339	146	48	5	16.47	0.050
340	146	27	2	11.09	0.000
341	147	48	1	15.69	0.050
342	147	7	1	203.85	0.050
343	147	36	1	61.10	0.050
344	147	34	1	106.99	0.100
345	148	19	4	243.25	0.000
346	149	35	3	46.45	0.000
347	149	45	5	8.44	0.100
348	150	1	1	571.93	0.000
349	150	23	3	105.45	0.000
350	151	45	3	8.59	0.150
351	151	35	3	45.49	0.000
352	151	12	2	123.86	0.150
353	152	9	4	112.27	0.000
354	153	32	3	85.69	0.000
355	153	22	1	218.10	0.000
356	154	5	5	649.68	0.000
357	154	17	4	40.25	0.000
358	155	20	3	10.97	0.150
359	155	3	5	259.84	0.000
360	155	31	3	90.59	0.000
361	155	43	2	15.57	0.000
362	156	45	4	9.14	0.000
363	156	24	1	51.64	0.050
364	156	6	5	586.73	0.150
365	157	9	4	104.02	0.100
366	158	19	5	245.84	0.000
367	158	37	2	74.11	0.000
368	158	47	4	9.36	0.100
369	159	24	4	49.59	0.150
370	159	33	4	66.40	0.000
371	159	40	3	54.96	0.000
372	160	36	2	67.05	0.000
373	160	21	1	222.84	0.150
374	160	5	2	620.41	0.000
375	161	34	5	117.46	0.000
376	161	4	3	205.57	0.150
377	162	30	1	47.97	0.150
378	163	34	1	106.94	0.000
379	164	7	2	228.35	0.100
380	164	22	2	208.23	0.100
381	164	23	3	106.77	0.000
382	164	27	4	12.25	0.000
383	165	33	5	64.79	0.100
384	165	10	1	15.53	0.000
385	166	20	1	11.71	0.100
386	166	14	1	36.54	0.050
387	167	8	2	31.25	0.100
388	167	41	4	58.93	0.100
389	168	4	4	230.37	0.100
390	168	6	2	595.38	0.050
391	168	22	1	206.38	0.150
392	168	5	4	628.83	0.050
393	169	42	5	8.27	0.100
394	169	48	5	15.78	0.000
395	170	23	5	108.49	0.000
396	170	11	3	62.00	0.050
397	171	40	2	55.71	0.000
398	172	2	3	43.66	0.100
399	172	14	2	35.58	0.000
400	173	30	1	45.75	0.150
401	174	33	1	68.08	0.050
402	174	39	5	71.46	0.000
403	175	26	2	27.30	0.150
404	175	23	3	107.99	0.000
405	176	18	2	84.60	0.050
406	177	44	2	16.64	0.100
407	177	10	4	17.93	0.100
408	177	22	4	208.49	0.000
409	177	42	2	8.79	0.150
410	178	11	3	56.86	0.100
411	178	47	1	9.22	0.000
412	179	29	3	63.27	0.000
413	179	7	2	207.92	0.100
414	180	39	4	78.78	0.000
415	180	12	4	127.84	0.000
416	180	11	2	58.34	0.050
417	181	14	1	33.57	0.050
418	181	32	3	91.03	0.000
419	181	3	5	268.39	0.050
420	181	26	5	31.48	0.100
421	182	3	5	254.52	0.150
422	182	4	2	207.90	0.050
423	182	20	3	11.51	0.050
424	182	19	5	253.99	0.150
425	183	8	2	31.39	0.150
426	183	35	2	45.35	0.000
427	183	29	1	63.54	0.100
428	184	8	1	28.31	0.050
429	185	11	4	61.38	0.000
430	185	22	5	218.98	0.000
431	185	10	2	17.41	0.000
432	186	1	4	569.68	0.050
433	186	35	1	46.87	0.050
434	187	36	2	61.33	0.000
435	187	5	3	606.16	0.000
436	188	40	5	53.30	0.100
437	188	12	4	132.92	0.000
438	189	28	5	11.14	0.050
439	190	34	2	117.36	0.100
440	190	4	1	217.16	0.150
441	191	39	3	73.47	0.100
442	191	23	2	107.82	0.050
443	191	41	4	63.19	0.000
444	191	15	3	104.98	0.000
445	192	40	4	52.02	0.000
446	193	8	3	29.36	0.150
447	194	22	4	216.20	0.050
448	194	48	1	17.27	0.000
449	194	37	3	74.24	0.000
450	195	25	2	75.97	0.000
451	196	29	3	63.93	0.000
452	196	12	1	125.53	0.000
453	197	31	5	92.22	0.000
454	197	10	1	17.55	0.100
455	198	20	1	11.92	0.100
456	198	22	4	219.55	0.000
457	198	43	3	13.45	0.000
458	199	14	5	34.51	0.000
459	200	25	1	70.10	0.050
460	201	30	3	50.41	0.150
461	202	43	3	15.16	0.000
462	202	2	1	45.53	0.000
463	203	30	4	49.71	0.000
464	203	40	2	53.11	0.050
465	203	25	1	73.04	0.150
466	204	38	5	55.81	0.100
467	205	44	5	17.56	0.050
468	206	1	2	583.99	0.050
469	206	35	3	45.33	0.100
470	206	29	2	63.82	0.000
471	206	20	5	12.11	0.150
472	207	19	1	233.81	0.100
473	208	23	1	111.84	0.000
474	208	16	4	85.84	0.050
475	208	41	3	65.33	0.050
476	209	5	1	616.93	0.050
477	210	45	5	9.47	0.100
478	210	33	4	64.61	0.050
479	211	35	5	45.16	0.000
480	211	46	3	13.83	0.050
481	211	6	2	622.99	0.100
482	212	48	1	16.88	0.100
483	212	38	3	57.11	0.000
484	212	35	1	45.89	0.100
485	212	31	5	98.41	0.050
486	213	17	2	39.00	0.000
487	214	29	3	70.01	0.000
488	214	16	4	79.16	0.100
489	214	22	1	222.04	0.100
490	214	10	4	17.37	0.050
491	215	35	2	45.26	0.150
492	215	17	2	38.50	0.050
493	216	34	1	106.87	0.100
494	216	41	3	67.71	0.050
495	217	34	1	117.18	0.000
496	218	13	1	10.63	0.000
497	218	4	5	219.98	0.000
498	219	12	1	131.86	0.000
499	219	43	1	14.83	0.000
500	219	45	3	8.55	0.000
501	219	4	4	211.12	0.000
502	220	7	2	219.88	0.050
503	221	2	4	43.24	0.150
504	221	1	1	584.32	0.000
505	222	46	4	14.65	0.050
506	222	47	1	9.75	0.000
507	222	25	4	70.51	0.100
508	223	19	2	226.74	0.000
509	223	43	2	14.07	0.050
510	224	47	5	9.30	0.050
511	225	2	1	44.58	0.000
512	225	47	1	9.55	0.000
513	226	42	1	8.64	0.100
514	226	5	2	603.91	0.150
515	226	7	4	222.26	0.100
516	227	15	1	102.35	0.050
517	227	22	4	201.55	0.150
518	227	37	5	69.51	0.000
519	228	36	2	65.28	0.100
520	228	3	2	243.07	0.150
521	229	46	5	15.58	0.050
522	230	16	2	84.66	0.000
523	230	39	2	78.84	0.100
524	231	40	3	55.66	0.100
525	232	11	1	56.73	0.000
526	232	28	3	11.64	0.050
527	233	2	4	45.81	0.000
528	234	5	5	651.11	0.050
529	235	47	2	9.89	0.000
530	235	9	1	111.69	0.000
531	236	19	5	226.01	0.150
532	236	11	5	65.31	0.000
533	237	38	4	59.04	0.000
534	238	28	5	11.43	0.100
535	238	10	5	17.75	0.050
536	239	34	4	113.57	0.150
537	239	7	4	218.36	0.000
538	240	19	2	244.03	0.000
539	240	2	4	46.90	0.000
540	241	24	4	55.40	0.000
541	241	5	4	692.18	0.000
542	241	19	4	247.90	0.150
543	241	35	5	48.20	0.150
544	242	44	3	17.86	0.000
545	242	30	5	45.56	0.000
546	242	36	1	66.52	0.000
547	243	48	5	17.36	0.150
548	243	14	2	34.35	0.000
549	244	8	4	31.07	0.150
550	244	35	3	45.77	0.000
551	244	44	1	16.05	0.050
552	245	7	2	210.98	0.150
553	246	2	3	45.12	0.150
554	246	35	2	45.92	0.050
555	246	29	1	64.70	0.000
556	247	31	3	101.87	0.000
557	248	19	2	255.98	0.150
558	249	9	4	104.48	0.000
559	249	14	5	36.45	0.150
560	249	21	3	224.73	0.050
561	250	35	5	44.91	0.150
562	250	19	4	253.15	0.100
563	250	43	2	15.19	0.150
564	250	29	3	68.79	0.150
565	251	15	4	95.63	0.000
566	251	5	2	661.05	0.000
567	252	33	4	61.08	0.000
568	253	24	4	52.66	0.000
569	253	23	3	102.82	0.050
570	254	19	2	249.83	0.050
571	254	27	2	12.26	0.100
572	255	22	1	220.95	0.100
573	255	25	1	69.19	0.150
574	255	18	4	84.92	0.050
575	256	5	3	686.27	0.000
576	256	48	4	15.72	0.000
577	257	43	3	14.33	0.050
578	257	42	2	8.05	0.000
579	258	30	2	47.95	0.000
580	258	18	3	88.28	0.000
581	259	13	2	11.94	0.100
582	259	11	5	59.25	0.000
583	259	44	3	16.27	0.150
584	260	34	3	111.70	0.050
585	261	9	4	114.98	0.100
586	261	22	2	213.84	0.000
587	262	20	2	11.07	0.000
588	263	3	5	262.72	0.050
589	264	5	1	678.23	0.000
590	265	23	3	100.42	0.100
591	265	47	5	9.31	0.100
592	265	5	1	684.76	0.000
593	266	31	3	97.89	0.000
594	266	7	2	229.77	0.050
595	266	33	2	63.19	0.000
596	267	46	3	14.83	0.000
597	267	6	3	601.10	0.050
598	268	12	1	137.83	0.050
599	268	44	1	16.59	0.100
600	269	48	2	15.32	0.000
601	270	38	3	58.34	0.150
602	270	23	4	108.67	0.050
603	270	33	3	60.62	0.050
604	270	17	4	38.30	0.150
605	271	2	2	44.88	0.150
606	271	21	2	230.39	0.100
607	271	7	1	223.93	0.100
608	271	32	4	82.22	0.150
609	272	25	4	72.73	0.050
610	273	46	2	14.68	0.000
611	273	20	4	11.56	0.000
612	274	40	3	54.88	0.000
613	274	21	1	220.35	0.000
614	275	41	3	62.11	0.050
615	276	30	4	49.54	0.050
616	276	45	4	9.00	0.000
617	276	25	3	75.71	0.050
618	277	40	3	51.61	0.050
619	277	41	1	66.58	0.100
620	277	17	1	37.12	0.100
621	277	15	5	101.43	0.000
622	278	43	5	14.10	0.050
623	278	26	3	30.05	0.050
624	279	48	3	17.29	0.050
625	280	42	2	8.35	0.100
626	280	16	4	79.90	0.000
627	281	43	5	13.79	0.000
628	281	47	4	10.11	0.000
629	282	24	1	52.86	0.150
630	282	9	2	102.00	0.150
631	283	17	4	40.58	0.000
632	283	39	1	79.50	0.000
633	283	22	5	214.71	0.150
634	284	4	4	215.91	0.150
635	284	21	5	234.81	0.150
636	285	42	5	8.06	0.150
637	286	26	3	28.58	0.000
638	287	22	4	219.16	0.000
639	287	45	3	8.89	0.000
640	288	16	5	85.98	0.150
641	289	28	4	12.55	0.050
642	290	19	4	234.28	0.050
643	290	14	5	33.78	0.000
644	291	44	4	15.78	0.050
645	292	46	4	15.17	0.150
646	293	31	3	102.25	0.150
647	294	43	3	13.70	0.100
648	294	3	5	246.23	0.000
649	295	8	3	27.99	0.000
650	295	32	3	89.46	0.050
651	296	5	2	607.95	0.000
652	297	32	1	90.76	0.000
653	297	8	3	28.22	0.000
654	298	2	3	46.98	0.150
655	298	8	4	29.51	0.000
656	299	30	3	49.73	0.000
657	299	22	1	212.13	0.050
658	300	5	5	640.77	0.050
659	300	16	4	77.98	0.000
660	300	26	3	30.15	0.150
661	300	20	4	12.12	0.150
662	301	32	4	91.28	0.050
663	302	41	4	59.31	0.100
664	302	22	4	212.77	0.150
665	303	19	4	236.31	0.050
666	304	3	1	255.67	0.150
667	305	31	4	97.80	0.150
668	306	13	1	10.96	0.150
669	306	10	2	16.56	0.150
670	306	35	2	43.17	0.050
671	307	11	2	63.15	0.050
672	308	32	5	87.44	0.100
673	308	3	4	255.01	0.100
674	309	32	2	89.01	0.100
675	309	5	5	634.18	0.000
676	309	42	4	9.20	0.000
677	310	15	5	93.56	0.150
678	310	22	5	218.41	0.150
679	311	44	3	17.63	0.000
680	311	40	2	50.95	0.150
681	312	32	1	90.06	0.050
682	312	20	2	11.07	0.000
683	312	2	3	48.39	0.000
684	313	23	1	110.36	0.100
685	313	10	5	16.99	0.000
686	314	36	1	65.97	0.000
687	315	7	2	223.46	0.000
688	315	8	2	29.82	0.050
689	316	11	1	58.72	0.150
690	316	27	3	11.89	0.000
691	316	10	5	16.52	0.000
692	317	34	3	121.71	0.050
693	317	1	5	608.78	0.000
694	318	41	5	67.87	0.050
695	319	45	4	8.81	0.000
696	320	9	5	116.69	0.000
697	320	14	1	35.39	0.000
698	320	34	3	118.43	0.000
699	320	2	1	48.45	0.100
700	321	23	1	98.58	0.150
701	321	8	4	29.16	0.150
702	321	1	4	555.77	0.000
703	322	4	4	227.64	0.050
704	323	26	3	29.87	0.150
705	323	28	4	12.29	0.050
706	323	47	4	10.17	0.000
707	324	39	4	71.72	0.000
708	325	20	3	11.56	0.000
709	325	10	5	16.52	0.000
710	326	37	3	74.36	0.000
711	326	25	4	78.72	0.100
712	327	10	3	15.66	0.100
713	327	27	4	11.18	0.050
714	328	11	1	61.58	0.150
715	328	42	1	8.87	0.000
716	328	40	5	53.34	0.000
717	328	34	2	118.32	0.100
718	329	14	2	37.12	0.100
719	329	29	1	70.00	0.100
720	330	7	5	207.36	0.000
721	331	21	2	220.31	0.000
722	331	20	4	10.87	0.000
723	331	27	3	11.23	0.000
724	332	33	5	62.96	0.000
725	332	18	1	86.89	0.100
726	333	24	5	57.72	0.000
727	334	11	1	56.79	0.050
728	334	18	5	85.96	0.150
729	334	25	3	78.81	0.000
730	334	38	5	54.24	0.000
731	335	14	5	35.35	0.000
732	335	44	3	17.21	0.150
733	336	1	2	562.27	0.150
734	336	26	5	27.58	0.150
735	336	35	1	48.89	0.150
736	337	45	1	8.37	0.000
737	337	29	1	63.98	0.000
738	338	1	2	612.35	0.150
739	339	15	5	101.22	0.000
740	339	13	1	12.34	0.150
741	339	44	5	17.15	0.150
742	340	18	1	91.87	0.050
743	340	32	3	86.40	0.000
744	341	48	2	17.63	0.050
745	342	38	3	59.07	0.000
746	343	16	1	86.78	0.100
747	343	7	4	221.17	0.000
748	344	7	1	220.51	0.000
749	344	26	1	30.02	0.050
750	344	39	5	70.55	0.050
751	344	28	5	12.16	0.000
752	345	1	5	588.59	0.100
753	346	23	3	107.32	0.100
754	346	10	2	16.64	0.100
755	346	22	3	202.97	0.000
756	346	34	5	116.69	0.000
757	347	28	3	11.38	0.000
758	348	22	5	209.25	0.000
759	348	27	3	11.06	0.050
760	349	29	2	68.20	0.000
761	350	12	2	135.60	0.150
762	351	22	2	200.94	0.000
763	352	35	4	47.49	0.000
764	353	10	3	16.07	0.150
765	353	18	2	94.22	0.100
766	354	42	5	8.51	0.100
767	355	26	2	28.60	0.050
768	356	38	1	55.83	0.100
769	357	6	3	633.40	0.100
770	357	35	1	48.14	0.000
771	358	13	3	11.03	0.150
772	358	44	3	16.06	0.100
773	359	26	5	30.65	0.000
774	359	31	5	102.14	0.000
775	360	27	2	11.55	0.100
776	360	2	3	43.17	0.000
777	360	20	1	11.58	0.150
778	360	23	3	101.48	0.050
779	361	39	5	77.16	0.050
780	361	14	4	32.95	0.050
781	362	7	5	207.68	0.150
782	362	2	2	43.59	0.050
783	363	27	4	11.05	0.000
784	363	9	5	107.12	0.150
785	364	46	4	13.93	0.100
786	365	16	5	81.05	0.100
787	365	32	4	85.68	0.000
788	365	48	1	15.88	0.050
789	366	41	5	61.24	0.000
790	367	17	2	38.35	0.050
791	367	5	4	640.74	0.150
792	368	30	4	48.73	0.000
793	368	16	4	78.64	0.000
794	369	26	2	27.57	0.000
795	369	44	3	15.96	0.000
796	369	12	2	132.23	0.150
797	369	35	2	45.70	0.000
798	370	16	3	88.48	0.000
799	371	1	3	597.99	0.150
800	372	35	4	49.22	0.000
801	372	7	3	212.58	0.000
802	372	21	1	233.55	0.050
803	373	7	5	228.31	0.100
804	373	41	4	65.00	0.150
805	374	43	4	13.55	0.000
806	374	39	5	75.69	0.100
807	375	14	1	33.90	0.150
808	375	39	4	79.10	0.000
809	376	27	3	12.11	0.000
810	376	47	3	9.46	0.000
811	376	35	1	48.99	0.150
812	377	10	2	15.76	0.000
813	377	38	5	58.99	0.000
814	377	16	5	77.84	0.150
815	377	30	3	46.49	0.000
816	378	29	4	66.90	0.150
817	378	28	2	12.53	0.050
818	379	39	5	72.22	0.150
819	379	12	3	125.65	0.000
820	380	5	5	675.81	0.000
821	381	13	4	12.28	0.150
822	382	31	1	101.15	0.000
823	383	26	5	31.63	0.000
824	383	34	2	120.52	0.000
825	384	14	4	36.41	0.000
826	385	42	3	8.99	0.000
827	385	12	3	121.83	0.000
828	386	29	5	62.83	0.150
829	386	11	1	58.97	0.050
830	387	32	1	79.67	0.000
831	387	1	5	595.24	0.000
832	388	18	4	89.02	0.000
833	388	22	3	212.94	0.000
834	388	16	3	85.36	0.050
835	389	2	5	43.06	0.100
836	390	21	4	227.86	0.050
837	390	26	5	30.82	0.000
838	390	28	4	12.84	0.150
839	390	7	4	211.59	0.000
840	391	36	4	62.53	0.050
841	391	8	4	30.85	0.000
842	391	16	2	79.02	0.150
843	391	45	1	8.34	0.150
844	392	15	3	100.27	0.150
845	392	8	2	32.06	0.150
846	393	39	1	77.98	0.050
847	393	48	4	16.81	0.100
848	393	28	2	11.44	0.000
849	394	8	5	29.49	0.000
850	394	25	5	77.60	0.000
851	394	4	5	215.98	0.050
852	394	28	3	12.44	0.150
853	395	1	5	600.78	0.000
854	395	10	3	17.59	0.050
855	396	3	5	251.84	0.100
856	396	45	1	8.57	0.150
857	396	37	4	75.10	0.000
858	396	32	3	88.88	0.050
859	397	47	2	9.99	0.000
860	398	31	3	98.76	0.050
861	398	5	5	675.44	0.000
862	398	45	2	9.16	0.100
863	398	26	1	27.81	0.100
864	399	20	4	11.86	0.100
865	399	9	4	111.75	0.000
866	399	10	2	16.00	0.150
867	399	13	1	11.23	0.100
868	400	44	2	17.96	0.000
869	400	23	4	100.73	0.000
870	401	26	2	27.37	0.000
871	402	41	4	61.98	0.000
872	402	8	1	28.35	0.150
873	403	48	1	17.16	0.000
874	403	25	4	80.63	0.150
875	403	28	3	12.07	0.000
876	403	21	1	245.41	0.100
877	404	34	5	114.61	0.150
878	404	14	1	33.59	0.100
879	404	1	5	565.26	0.000
880	405	36	3	69.46	0.000
881	406	11	4	65.38	0.150
882	406	1	2	552.41	0.100
883	406	19	5	236.59	0.100
884	407	39	5	72.96	0.000
885	408	45	2	9.18	0.100
886	408	43	5	14.75	0.050
887	408	10	3	17.99	0.050
888	408	25	1	80.22	0.000
889	409	5	3	666.75	0.000
890	409	22	3	195.88	0.000
891	410	8	2	30.22	0.000
892	411	18	5	83.87	0.000
893	411	11	3	65.09	0.050
894	411	12	3	134.04	0.150
895	412	9	2	106.46	0.150
896	412	18	1	95.14	0.150
897	412	24	2	55.19	0.050
898	412	46	4	13.99	0.000
899	413	18	4	89.67	0.150
900	413	15	3	99.81	0.000
901	414	11	5	56.76	0.150
902	415	9	4	108.44	0.150
903	415	44	5	17.37	0.050
904	415	1	5	542.72	0.150
905	416	28	4	11.72	0.000
906	417	42	5	9.11	0.000
907	417	30	5	51.65	0.000
908	418	7	4	218.25	0.000
909	419	24	3	52.59	0.000
910	419	35	3	43.33	0.050
911	420	13	3	10.66	0.050
912	420	22	1	196.32	0.000
913	420	43	3	13.67	0.050
914	420	44	2	16.40	0.050
915	421	33	1	66.73	0.000
916	421	4	3	212.48	0.100
917	422	45	2	9.11	0.050
918	423	2	5	43.60	0.000
919	423	25	4	75.16	0.150
920	424	14	3	35.17	0.100
921	424	7	4	207.92	0.050
922	425	48	3	17.03	0.100
923	426	14	5	34.69	0.000
924	427	13	2	11.84	0.000
925	427	5	5	664.62	0.000
926	427	47	4	10.42	0.000
927	427	35	2	42.87	0.000
928	428	2	2	46.41	0.150
929	428	9	3	100.89	0.100
930	428	4	2	222.76	0.050
931	429	18	2	85.04	0.000
932	429	38	1	59.40	0.100
933	430	18	1	91.35	0.000
934	430	14	5	33.24	0.150
935	431	27	5	11.29	0.000
936	432	17	1	38.54	0.100
937	433	41	5	63.76	0.050
938	433	18	2	90.51	0.050
939	434	31	1	94.94	0.050
940	435	5	2	609.70	0.000
941	435	42	4	8.14	0.100
942	435	1	5	534.79	0.050
943	436	1	1	573.60	0.000
944	436	6	2	568.29	0.100
945	436	11	3	59.33	0.000
946	436	35	3	47.01	0.000
947	437	27	2	10.77	0.000
948	437	5	4	641.17	0.000
949	437	15	4	100.58	0.150
950	438	23	1	107.84	0.000
951	438	24	1	56.98	0.100
952	439	28	2	12.67	0.150
953	439	20	5	12.15	0.000
954	439	7	3	232.51	0.150
955	439	24	3	56.28	0.150
956	440	5	1	660.49	0.150
957	440	18	2	83.76	0.000
958	441	8	1	32.00	0.000
959	441	9	3	107.82	0.100
960	442	47	1	9.98	0.050
961	442	24	1	55.38	0.150
962	443	1	5	598.91	0.050
963	444	45	3	8.84	0.150
964	444	22	4	216.12	0.150
965	444	1	3	535.81	0.000
966	445	28	4	12.04	0.000
967	445	37	5	71.42	0.000
968	446	48	2	16.17	0.000
969	447	2	2	44.18	0.100
970	447	7	1	208.83	0.000
971	448	31	1	88.39	0.000
972	448	20	1	12.44	0.000
973	448	26	5	28.10	0.050
974	449	10	1	16.95	0.050
975	449	31	5	100.38	0.000
976	449	19	2	225.82	0.050
977	450	42	2	9.04	0.000
978	451	3	4	248.61	0.100
979	451	39	1	81.67	0.100
980	452	30	3	46.53	0.000
981	453	29	2	71.37	0.100
982	453	24	3	52.89	0.100
983	454	44	4	16.87	0.000
984	455	36	1	62.40	0.000
985	456	23	4	105.44	0.100
986	456	30	1	45.90	0.150
987	457	26	3	27.51	0.000
988	458	21	5	220.47	0.100
989	459	14	1	33.76	0.000
990	459	44	4	16.26	0.150
991	460	29	4	67.10	0.150
992	460	17	2	40.27	0.000
993	460	28	3	12.80	0.000
994	460	11	2	59.50	0.050
995	461	48	3	15.19	0.050
996	461	10	4	17.66	0.000
997	461	44	4	16.24	0.150
998	461	1	4	608.76	0.000
999	462	11	5	59.76	0.000
1000	462	14	2	37.89	0.100
1001	462	1	3	597.40	0.000
1002	463	23	5	104.74	0.000
1003	463	8	2	29.91	0.000
1004	464	32	5	91.83	0.000
1005	465	27	4	10.78	0.000
1006	465	15	5	94.52	0.150
1007	466	48	5	15.96	0.000
1008	466	37	4	70.69	0.050
1009	466	13	5	11.73	0.000
1010	467	34	2	112.83	0.000
1011	467	46	2	14.71	0.150
1012	468	5	5	617.84	0.100
1013	468	6	5	590.80	0.150
1014	469	7	1	217.14	0.100
1015	469	10	3	16.11	0.000
1016	469	32	3	91.64	0.000
1017	470	39	5	70.48	0.100
1018	470	48	3	17.50	0.000
1019	471	24	1	57.01	0.000
1020	472	47	2	9.34	0.050
1021	473	28	5	12.76	0.000
1022	473	13	3	12.29	0.000
1023	473	38	3	53.24	0.000
1024	473	32	4	91.25	0.050
1025	474	41	1	62.78	0.000
1026	474	33	3	64.95	0.000
1027	475	16	1	79.60	0.000
1028	475	24	2	56.02	0.000
1029	476	21	2	239.85	0.050
1030	476	14	5	33.79	0.100
1031	477	21	2	226.53	0.050
1032	477	18	4	84.15	0.050
1033	478	47	3	9.36	0.000
1034	478	26	1	29.74	0.000
1035	479	8	3	32.13	0.000
1036	479	2	2	42.53	0.000
1037	479	9	1	116.72	0.150
1038	479	47	4	9.28	0.000
1039	480	40	4	50.85	0.000
1040	480	9	5	107.82	0.000
1041	480	21	2	246.85	0.050
1042	480	41	4	64.91	0.100
1043	481	48	2	16.91	0.000
1044	481	32	1	82.36	0.150
1045	481	14	4	37.06	0.000
1046	482	20	4	11.86	0.100
1047	482	9	2	115.43	0.050
1048	482	40	5	50.31	0.050
1049	483	30	2	47.26	0.050
1050	484	4	4	207.29	0.000
1051	484	5	4	675.97	0.050
1052	485	8	1	31.93	0.100
1053	486	46	4	14.46	0.000
1054	486	15	3	97.70	0.000
1055	486	14	3	36.07	0.150
1056	486	39	3	79.04	0.000
1057	487	1	5	556.92	0.050
1058	487	38	1	56.03	0.000
1059	487	31	1	88.35	0.000
1060	487	37	3	77.41	0.100
1061	488	35	3	47.27	0.000
1062	488	1	3	552.45	0.000
1063	488	43	5	14.48	0.000
1064	488	47	1	9.17	0.050
1065	489	24	2	55.73	0.000
1066	489	25	1	80.23	0.150
1067	489	29	5	63.50	0.150
1068	489	22	4	209.99	0.000
1069	490	30	5	52.55	0.000
1070	491	20	4	11.21	0.000
1071	492	4	4	208.39	0.050
1072	493	43	5	13.75	0.000
1073	493	46	3	13.89	0.150
1074	493	13	4	11.63	0.000
1075	494	25	4	73.71	0.000
1076	494	17	3	38.89	0.000
1077	494	37	4	75.64	0.000
1078	494	38	2	57.71	0.000
1079	495	46	3	14.63	0.050
1080	495	30	4	52.50	0.050
1081	495	2	5	42.38	0.050
1082	495	6	2	612.35	0.000
1083	496	30	5	48.72	0.000
1084	497	7	3	220.72	0.150
1085	497	22	1	195.08	0.100
1086	497	44	5	17.48	0.000
1087	498	41	3	65.40	0.000
1088	498	32	5	88.66	0.000
1089	499	16	2	78.17	0.000
1090	500	16	5	80.18	0.100
1091	501	37	4	68.07	0.000
1092	501	5	5	647.10	0.000
1093	502	22	4	214.01	0.000
1094	502	18	3	95.21	0.000
1095	502	42	4	8.51	0.050
1096	503	32	4	83.83	0.000
1097	504	5	4	679.12	0.100
1098	504	41	1	67.39	0.000
1099	504	7	4	214.40	0.150
1100	504	37	5	70.21	0.000
1101	505	9	1	106.13	0.050
1102	506	4	5	216.14	0.000
1103	507	16	5	88.78	0.100
1104	507	20	4	11.79	0.100
1105	507	45	1	9.00	0.000
1106	508	36	3	70.20	0.150
1107	509	3	3	278.18	0.050
1108	509	40	1	55.86	0.050
1109	509	18	1	83.94	0.050
1110	510	25	1	75.47	0.000
1111	511	8	5	32.33	0.000
1112	511	23	2	103.40	0.000
1113	512	37	1	79.17	0.000
1114	512	47	2	10.16	0.000
1115	512	4	2	212.77	0.000
1116	513	42	2	9.34	0.000
1117	513	39	4	76.04	0.000
1118	513	43	1	13.57	0.100
1119	514	32	3	80.58	0.000
1120	514	34	2	110.51	0.100
1121	514	14	1	34.63	0.000
1122	515	2	4	48.07	0.000
1123	515	25	3	78.64	0.000
1124	516	25	4	69.62	0.000
1125	517	39	3	81.26	0.000
1126	518	19	5	237.27	0.100
1127	518	47	5	10.09	0.000
1128	518	11	4	60.60	0.000
1129	518	9	1	104.82	0.150
1130	519	40	3	51.60	0.150
1131	519	42	5	8.03	0.000
1132	519	21	3	250.30	0.050
1133	520	5	4	620.52	0.000
1134	520	32	2	82.56	0.000
1135	520	40	1	50.55	0.150
1136	521	5	2	608.58	0.150
1137	521	17	1	39.37	0.000
1138	522	8	5	28.14	0.000
1139	522	21	5	232.90	0.150
1140	523	42	3	8.64	0.000
1141	523	40	1	49.96	0.000
1142	524	48	5	17.14	0.150
1143	524	14	4	37.12	0.000
1144	525	15	5	97.83	0.100
1145	526	43	5	14.56	0.000
1146	526	18	2	94.01	0.000
1147	527	31	5	91.05	0.050
1148	527	15	5	102.70	0.000
1149	527	35	2	48.07	0.050
1150	527	44	5	17.29	0.100
1151	528	13	2	12.14	0.000
1152	528	11	1	60.15	0.100
1153	528	46	4	15.25	0.000
1154	528	3	4	240.04	0.000
1155	529	26	5	28.31	0.000
1156	529	22	5	210.61	0.000
1157	530	41	4	65.61	0.050
1158	530	19	4	245.96	0.150
1159	531	42	4	8.52	0.050
1160	531	12	5	132.39	0.000
1161	531	7	2	211.70	0.000
1162	531	4	5	215.39	0.100
1163	532	14	4	35.43	0.100
1164	532	40	3	49.47	0.000
1165	532	11	1	58.92	0.050
1166	532	29	2	70.81	0.000
1167	533	36	5	68.48	0.000
1168	534	32	1	84.44	0.000
1169	535	6	2	647.32	0.150
1170	535	23	1	109.94	0.000
1171	536	15	2	94.24	0.000
1172	536	12	4	123.73	0.000
1173	536	6	5	634.74	0.150
1174	537	16	3	83.04	0.150
1175	537	12	3	134.72	0.000
1176	537	43	4	14.50	0.150
1177	538	27	4	11.35	0.150
1178	538	28	1	11.35	0.000
1179	539	39	4	78.49	0.000
1180	539	19	3	238.89	0.050
1181	540	26	4	29.14	0.000
1182	540	4	3	214.32	0.000
1183	541	22	3	215.65	0.100
1184	541	5	1	654.55	0.000
1185	541	35	2	49.55	0.100
1186	541	26	2	28.53	0.000
1187	542	32	1	81.62	0.000
1188	542	2	2	46.63	0.150
1189	543	8	4	30.82	0.000
1190	543	48	3	17.33	0.000
1191	543	5	5	674.98	0.150
1192	543	27	1	10.79	0.100
1193	544	21	4	238.05	0.000
1194	544	30	2	46.00	0.150
1195	544	25	3	74.06	0.000
1196	545	29	2	67.65	0.000
1197	545	15	4	95.81	0.100
1198	545	20	3	10.95	0.150
1199	546	16	1	78.65	0.100
1200	546	31	5	98.25	0.100
1201	546	15	1	101.80	0.000
1202	547	18	2	92.90	0.050
1203	548	1	2	571.64	0.000
1204	549	32	2	89.47	0.100
1205	549	27	4	10.78	0.000
1206	549	28	3	12.35	0.150
1207	550	7	1	222.72	0.100
1208	550	23	5	112.20	0.000
1209	550	13	3	11.09	0.050
1210	551	17	5	35.97	0.100
1211	552	21	1	252.07	0.000
1212	552	29	4	68.54	0.000
1213	553	46	2	15.47	0.100
1214	553	45	3	9.14	0.100
1215	553	42	3	8.25	0.000
1216	553	43	3	15.03	0.000
1217	554	26	1	31.73	0.150
1218	554	17	3	39.06	0.100
1219	555	48	2	17.36	0.000
1220	555	6	4	632.61	0.000
1221	555	4	4	219.35	0.000
1222	555	21	1	250.68	0.000
1223	556	11	5	62.99	0.000
1224	556	34	1	121.65	0.050
1225	556	27	1	10.88	0.100
1226	556	10	3	15.65	0.050
1227	557	1	3	550.05	0.000
1228	558	30	1	46.13	0.000
1229	558	12	1	121.82	0.100
1230	558	41	1	65.86	0.000
1231	559	42	2	9.01	0.150
1232	559	9	3	101.02	0.150
1233	559	19	2	230.50	0.100
1234	559	21	4	227.58	0.000
1235	560	34	4	119.70	0.150
1236	560	11	1	65.12	0.100
1237	560	25	2	75.31	0.000
1238	560	45	4	8.67	0.150
1239	561	3	1	259.69	0.150
1240	561	12	4	120.91	0.100
1241	562	22	1	197.18	0.000
1242	562	30	5	46.66	0.000
1243	563	28	3	12.78	0.050
1244	563	11	5	57.78	0.000
1245	563	45	5	8.47	0.100
1246	564	20	2	12.12	0.050
1247	565	11	3	57.16	0.100
1248	565	44	4	17.37	0.050
1249	566	19	4	242.17	0.100
1250	566	5	4	669.73	0.100
1251	567	24	3	53.72	0.000
1252	567	40	5	54.76	0.000
1253	568	22	4	212.06	0.050
1254	569	27	2	11.06	0.150
1255	570	42	4	9.08	0.000
1256	571	42	4	8.57	0.000
1257	571	20	4	11.15	0.150
1258	572	46	3	15.48	0.000
1259	572	12	4	128.63	0.050
1260	573	33	5	66.34	0.050
1261	573	30	3	45.55	0.050
1262	573	4	5	220.96	0.000
1263	574	2	5	44.07	0.000
1264	575	12	1	128.70	0.000
1265	575	41	4	62.60	0.000
1266	575	30	5	47.09	0.150
1267	575	37	4	68.41	0.000
1268	576	25	5	80.40	0.000
1269	577	20	5	11.61	0.000
1270	578	45	2	8.58	0.150
1271	578	5	4	693.82	0.150
1272	579	18	3	88.87	0.150
1273	580	30	5	48.43	0.100
1274	580	25	4	79.82	0.000
1275	580	21	3	249.39	0.000
1276	580	48	4	15.69	0.150
1277	581	34	3	110.49	0.000
1278	581	29	4	62.01	0.100
1279	581	38	2	57.20	0.100
1280	581	28	4	12.85	0.000
1281	582	19	2	252.01	0.150
1282	582	26	5	29.07	0.000
1283	582	27	5	11.26	0.000
1284	583	22	4	212.13	0.150
1285	583	7	4	221.21	0.050
1286	583	27	4	11.10	0.000
1287	584	2	3	46.48	0.000
1288	584	31	1	101.60	0.000
1289	584	42	4	8.75	0.000
1290	584	11	4	59.68	0.000
1291	585	16	4	86.09	0.000
1292	586	31	4	88.72	0.050
1293	586	17	5	36.08	0.100
1294	586	42	5	8.96	0.050
1295	587	8	2	29.48	0.150
1296	587	22	2	220.31	0.050
1297	587	14	3	33.13	0.150
1298	588	37	3	76.03	0.000
1299	589	48	2	15.53	0.000
1300	589	17	2	35.54	0.000
1301	589	10	5	15.47	0.000
1302	590	47	1	9.92	0.000
1303	590	37	1	77.46	0.100
1304	591	18	5	95.74	0.150
1305	592	16	3	87.05	0.000
1306	593	5	2	654.94	0.000
1307	593	16	5	86.60	0.050
1308	593	35	1	44.82	0.150
1309	594	1	5	563.73	0.000
1310	594	47	4	10.11	0.000
1311	594	38	5	58.34	0.000
1312	595	33	4	64.05	0.000
1313	595	5	4	670.04	0.000
1314	596	10	3	15.84	0.050
1315	596	11	2	61.94	0.000
1316	596	21	5	255.19	0.150
1317	596	39	4	79.58	0.000
1318	597	42	2	9.31	0.000
1319	597	2	2	43.66	0.150
1320	598	48	2	17.17	0.100
1321	598	33	4	67.61	0.000
1322	598	5	2	618.58	0.150
1323	599	32	2	83.26	0.100
1324	599	38	4	52.33	0.000
1325	599	41	3	61.09	0.000
1326	599	29	3	62.85	0.000
1327	600	10	5	16.20	0.000
1328	601	48	3	17.57	0.000
1329	601	29	2	63.60	0.050
1330	601	15	4	95.70	0.000
1331	601	44	3	16.22	0.150
1332	602	34	1	121.17	0.100
1333	602	37	4	79.23	0.100
1334	603	35	2	48.23	0.000
1335	604	48	2	16.80	0.000
1336	604	12	5	124.85	0.100
1337	605	38	3	56.41	0.150
1338	606	2	5	46.42	0.000
1339	607	2	4	48.29	0.150
1340	607	14	4	32.87	0.050
1341	608	14	1	37.72	0.150
1342	608	48	3	16.20	0.000
1343	608	33	3	63.88	0.100
1344	609	7	3	213.82	0.000
1345	609	28	3	11.45	0.150
1346	610	18	3	83.14	0.000
1347	611	5	2	689.46	0.150
1348	612	11	1	60.89	0.000
1349	613	48	2	17.46	0.000
1350	614	8	4	29.93	0.050
1351	615	31	3	89.56	0.150
1352	615	35	3	49.35	0.150
1353	616	7	4	211.20	0.100
1354	616	16	2	80.05	0.150
1355	616	43	3	14.13	0.050
1356	617	3	4	264.26	0.000
1357	617	12	1	120.98	0.000
1358	617	16	2	81.92	0.000
1359	617	37	4	73.43	0.000
1360	618	24	4	54.89	0.100
1361	619	36	3	62.11	0.000
1362	620	44	2	17.57	0.000
1363	620	23	5	107.60	0.000
1364	620	34	5	105.99	0.100
1365	621	46	2	14.80	0.100
1366	622	27	4	11.60	0.000
1367	622	47	3	8.95	0.000
1368	622	46	5	15.08	0.000
1369	623	16	4	86.91	0.150
1370	624	10	2	16.58	0.150
1371	624	18	3	82.66	0.000
1372	624	34	3	114.35	0.150
1373	624	39	4	73.15	0.050
1374	625	18	1	87.76	0.000
1375	625	30	4	49.66	0.150
1376	625	32	3	82.52	0.000
1377	625	47	5	10.38	0.000
1378	626	47	3	10.29	0.150
1379	626	33	3	63.30	0.000
1380	626	23	1	98.01	0.150
1381	626	32	2	87.31	0.000
1382	627	37	4	74.82	0.150
1383	627	25	1	76.04	0.100
1384	627	42	1	8.78	0.000
1385	628	3	4	271.49	0.150
1386	628	28	1	11.42	0.000
1387	628	5	3	612.39	0.050
1388	629	36	3	68.34	0.000
1389	630	20	1	12.32	0.000
1390	631	36	3	68.50	0.100
1391	631	12	4	130.34	0.000
1392	631	13	1	10.75	0.100
1393	631	43	4	15.30	0.000
1394	632	6	3	647.91	0.050
1395	632	16	5	78.83	0.000
1396	633	15	4	100.00	0.000
1397	634	31	4	93.75	0.100
1398	634	37	2	72.62	0.100
1399	634	38	4	57.23	0.050
1400	635	38	2	52.65	0.100
1401	635	46	4	14.78	0.000
1402	635	39	2	78.88	0.150
1403	636	23	4	111.94	0.000
1404	636	5	3	609.04	0.150
1405	636	17	1	39.58	0.050
1406	637	20	3	11.11	0.100
1407	637	10	5	17.96	0.100
1408	637	1	5	530.69	0.000
1409	638	13	2	12.32	0.000
1410	638	12	1	130.95	0.050
1411	638	47	1	9.44	0.000
1412	638	26	5	30.40	0.150
1413	639	46	4	15.56	0.050
1414	640	22	4	215.17	0.100
1415	640	39	1	81.95	0.000
1416	640	7	2	201.77	0.100
1417	640	5	3	641.10	0.000
1418	641	23	1	112.02	0.000
1419	642	8	3	32.11	0.000
1420	642	23	2	107.42	0.000
1421	642	7	4	208.20	0.000
1422	643	16	4	79.25	0.050
1423	644	38	1	59.13	0.000
1424	644	21	5	239.90	0.150
1425	644	26	5	30.13	0.000
1426	644	29	2	64.72	0.150
1427	645	40	4	51.14	0.000
1428	645	44	1	16.93	0.000
1429	646	38	5	56.50	0.150
1430	646	21	1	238.85	0.000
1431	647	46	3	13.74	0.000
1432	648	1	2	583.88	0.000
1433	648	12	4	134.44	0.000
1434	649	46	3	14.04	0.150
1435	649	18	4	92.00	0.050
1436	650	9	2	101.31	0.000
1437	650	8	2	31.96	0.050
1438	651	44	4	16.30	0.000
1439	651	19	5	229.86	0.000
1440	652	7	1	209.39	0.050
1441	653	13	2	11.87	0.000
1442	653	37	1	78.69	0.000
1443	653	17	2	37.43	0.000
1444	654	41	2	61.67	0.150
1445	655	10	5	17.92	0.000
1446	656	47	2	10.03	0.000
1447	656	24	1	50.77	0.000
1448	656	44	2	15.58	0.000
1449	657	5	4	696.58	0.150
1450	657	44	5	16.56	0.150
1451	657	32	5	82.86	0.150
1452	658	41	2	67.77	0.050
1453	658	17	2	37.54	0.000
1454	659	26	2	31.03	0.000
1455	660	37	2	78.69	0.150
1456	661	13	2	11.19	0.000
1457	661	34	4	108.33	0.050
1458	661	5	2	641.22	0.150
1459	662	32	3	87.63	0.100
1460	663	4	3	226.45	0.000
1461	664	31	3	97.97	0.000
1462	664	20	1	12.12	0.000
1463	665	11	5	61.40	0.050
1464	665	45	3	9.14	0.000
1465	666	31	4	94.66	0.000
1466	666	38	3	59.85	0.100
1467	667	6	3	561.78	0.000
1468	667	40	3	54.16	0.000
1469	668	21	3	245.33	0.000
1470	668	23	5	113.84	0.050
1471	668	2	5	48.46	0.050
1472	668	11	3	64.20	0.000
1473	669	45	3	8.56	0.050
1474	670	20	4	11.05	0.050
1475	670	3	3	266.85	0.000
1476	670	33	4	63.18	0.000
1477	670	23	3	106.81	0.050
1478	671	33	1	59.39	0.000
1479	671	7	2	204.21	0.000
1480	671	5	5	682.94	0.000
1481	671	1	1	590.62	0.000
1482	672	43	1	14.77	0.000
1483	672	13	1	10.92	0.150
1484	672	1	4	595.45	0.000
1485	672	46	1	14.45	0.150
1486	673	17	2	40.55	0.100
1487	674	11	4	62.18	0.100
1488	675	5	1	608.77	0.000
1489	676	29	1	71.75	0.150
1490	676	6	3	609.84	0.000
1491	676	45	5	9.13	0.000
1492	676	37	3	76.18	0.000
1493	677	26	4	31.16	0.050
1494	677	10	4	16.51	0.000
1495	678	10	5	17.87	0.000
1496	678	26	4	27.90	0.000
1497	678	32	4	81.64	0.100
1498	678	13	4	11.66	0.050
1499	679	5	3	673.36	0.100
1500	680	44	5	16.67	0.000
1501	680	39	2	76.64	0.000
1502	681	45	2	9.44	0.000
1503	681	41	4	66.06	0.100
1504	682	47	3	9.05	0.050
1505	682	13	3	11.85	0.000
1506	682	4	4	206.43	0.150
1507	683	18	3	89.18	0.000
1508	684	19	2	249.28	0.050
1509	684	1	3	548.93	0.000
1510	684	2	4	42.75	0.050
1511	685	30	3	46.74	0.100
1512	686	47	4	9.77	0.150
1513	686	21	4	225.83	0.100
1514	687	4	2	214.69	0.000
1515	688	6	3	645.40	0.000
1516	689	4	5	212.04	0.050
1517	689	45	2	8.95	0.000
1518	689	14	4	33.47	0.000
1519	690	3	1	247.81	0.000
1520	690	9	5	105.47	0.050
1521	690	43	4	13.44	0.000
1522	691	32	1	84.17	0.000
1523	691	38	3	56.21	0.000
1524	691	26	2	27.91	0.000
1525	692	17	4	36.07	0.000
1526	693	14	2	36.74	0.150
1527	693	48	3	17.26	0.150
1528	693	38	3	54.93	0.000
1529	694	14	4	37.75	0.050
1530	694	47	3	9.63	0.050
1531	695	31	5	96.41	0.150
1532	695	16	1	84.74	0.000
1533	696	48	3	15.35	0.050
1534	696	42	1	8.41	0.000
1535	697	31	2	87.90	0.000
1536	698	26	4	27.35	0.050
1537	699	18	3	92.40	0.000
1538	700	13	2	11.81	0.000
1539	700	3	5	272.37	0.050
1540	700	45	4	9.28	0.150
1541	700	4	3	210.31	0.100
1542	701	27	3	12.49	0.000
1543	701	39	3	80.81	0.000
1544	701	23	4	105.15	0.100
1545	702	10	5	16.31	0.150
1546	702	48	2	17.31	0.100
1547	702	9	2	113.90	0.050
1548	702	6	4	636.92	0.100
1549	703	13	1	12.17	0.100
1550	703	32	2	91.68	0.150
1551	703	16	4	80.72	0.000
1552	703	7	2	202.50	0.000
1553	704	29	1	66.04	0.000
1554	704	43	4	13.42	0.100
1555	705	2	3	47.12	0.050
1556	705	35	1	45.56	0.100
1557	706	31	3	95.63	0.000
1558	707	5	3	657.96	0.150
1559	707	14	5	34.84	0.000
1560	708	18	5	87.85	0.100
1561	708	42	1	8.35	0.000
1562	709	10	1	15.95	0.050
1563	709	16	1	81.80	0.150
1564	709	42	2	9.04	0.000
1565	709	20	2	11.09	0.150
1566	710	29	4	65.47	0.150
1567	710	46	5	15.60	0.000
1568	710	7	4	217.63	0.000
1569	711	33	2	68.11	0.000
1570	711	11	1	61.57	0.150
1571	712	31	1	101.88	0.150
1572	712	12	5	126.30	0.100
1573	713	26	1	28.90	0.100
1574	713	1	1	572.04	0.000
1575	713	38	5	51.89	0.000
1576	713	21	2	250.78	0.000
1577	714	25	5	76.41	0.100
1578	715	31	5	102.15	0.000
1579	716	2	2	46.92	0.000
1580	716	26	4	29.97	0.000
1581	717	42	2	8.33	0.100
1582	717	19	4	248.64	0.050
1583	718	35	5	44.88	0.000
1584	718	31	5	94.82	0.150
1585	719	35	5	46.93	0.000
1586	719	17	3	40.88	0.000
1587	720	44	4	16.28	0.100
1588	720	28	2	12.44	0.000
1589	720	45	3	8.46	0.150
1590	721	41	3	60.18	0.150
1591	722	1	1	542.61	0.000
1592	722	32	4	91.93	0.100
1593	723	39	1	76.02	0.050
1594	723	21	1	224.43	0.000
1595	724	18	2	93.29	0.150
1596	724	44	4	16.09	0.150
1597	724	37	1	68.06	0.000
1598	725	14	5	35.96	0.000
1599	725	6	5	623.94	0.000
1600	726	40	2	55.90	0.000
1601	726	18	1	82.56	0.150
1602	727	48	4	17.30	0.050
1603	728	28	5	11.65	0.000
1604	728	32	5	87.70	0.050
1605	729	15	4	99.28	0.050
1606	729	44	5	16.19	0.150
1607	729	5	1	641.52	0.000
1608	729	2	4	45.26	0.050
1609	730	31	2	90.15	0.100
1610	730	42	5	8.81	0.000
1611	731	4	3	200.90	0.000
1612	731	29	2	64.72	0.050
1613	731	18	2	85.66	0.000
1614	732	37	2	71.21	0.050
1615	733	12	5	120.61	0.050
1616	733	36	3	68.16	0.000
1617	734	33	1	64.11	0.000
1618	734	26	2	27.97	0.050
1619	735	37	3	73.19	0.050
1620	735	12	1	132.21	0.000
1621	736	32	4	86.84	0.150
1622	736	26	5	29.33	0.150
1623	736	34	3	118.95	0.100
1624	737	27	4	11.44	0.000
1625	738	41	2	62.78	0.100
1626	738	48	2	16.80	0.000
1627	739	26	4	30.45	0.000
1628	739	14	4	33.32	0.000
1629	740	23	4	112.63	0.150
1630	741	3	4	241.78	0.000
1631	741	13	3	12.22	0.000
1632	742	4	1	215.12	0.150
1633	742	34	3	105.59	0.050
1634	743	47	3	9.16	0.000
1635	743	6	5	590.93	0.050
1636	744	13	4	12.00	0.000
1637	744	28	5	12.07	0.000
1638	744	1	1	540.38	0.000
1639	745	15	4	104.02	0.000
1640	746	24	4	57.48	0.000
1641	746	37	5	74.16	0.150
1642	746	22	3	208.00	0.150
1643	746	44	5	16.91	0.000
1644	747	10	5	16.01	0.000
1645	748	22	3	194.98	0.000
1646	748	32	4	87.34	0.050
1647	749	6	2	647.21	0.000
1648	749	3	2	250.70	0.000
1649	749	45	3	9.11	0.000
1650	750	6	1	612.27	0.000
1651	750	11	4	63.95	0.050
1652	750	7	3	221.66	0.100
1653	751	11	5	57.12	0.100
1654	751	19	1	234.70	0.000
1655	751	45	4	9.31	0.000
1656	752	29	2	63.24	0.000
1657	753	32	4	88.27	0.050
1658	754	6	4	636.44	0.000
1659	754	10	1	17.71	0.000
1660	755	24	3	56.19	0.000
1661	755	22	1	194.55	0.100
1662	755	13	2	10.85	0.150
1663	755	43	5	14.01	0.050
1664	756	27	4	12.40	0.100
1665	757	1	4	530.24	0.000
1666	757	18	5	93.71	0.100
1667	758	39	1	76.25	0.100
1668	758	43	5	14.04	0.000
1669	758	25	5	77.47	0.000
1670	758	13	1	11.80	0.000
1671	759	19	3	235.51	0.050
1672	759	14	2	34.57	0.000
1673	759	20	5	11.92	0.150
1674	759	5	1	701.15	0.000
1675	760	12	1	133.22	0.000
1676	760	8	5	31.33	0.100
1677	761	6	3	571.73	0.000
1678	761	35	3	47.71	0.100
1679	762	45	5	8.46	0.150
1680	762	23	1	103.35	0.050
1681	762	28	1	12.51	0.050
1682	763	5	2	686.26	0.050
1683	763	36	4	64.76	0.150
1684	763	24	2	57.02	0.000
1685	763	29	2	61.74	0.000
1686	764	48	1	17.61	0.050
1687	764	6	2	633.43	0.100
1688	765	16	3	83.72	0.050
1689	765	19	1	251.78	0.000
1690	766	34	5	115.67	0.000
1691	767	14	5	36.96	0.000
1692	768	6	5	641.97	0.150
1693	768	35	3	48.99	0.150
1694	768	20	1	12.29	0.000
1695	769	7	5	201.84	0.050
1696	770	11	5	65.03	0.000
1697	770	6	3	570.99	0.150
1698	771	48	5	15.76	0.050
1699	771	5	5	690.34	0.100
1700	771	13	4	11.56	0.000
1701	771	40	4	50.22	0.100
1702	772	18	2	90.99	0.000
1703	772	46	4	14.15	0.100
1704	773	38	1	60.17	0.000
1705	773	9	1	103.99	0.000
1706	773	48	1	17.00	0.150
1707	773	26	2	31.59	0.000
1708	774	47	1	10.24	0.000
1709	775	32	3	85.34	0.000
1710	775	5	4	618.39	0.000
1711	775	34	3	108.74	0.000
1712	775	10	3	16.15	0.050
1713	776	13	3	12.08	0.050
1714	776	18	2	89.12	0.050
1715	777	10	1	16.12	0.000
1716	777	45	1	8.57	0.150
1717	777	20	4	10.73	0.100
1718	778	36	5	66.65	0.100
1719	778	12	4	137.41	0.000
1720	778	10	1	16.28	0.150
1721	779	45	3	9.00	0.150
1722	779	26	5	29.78	0.000
1723	780	3	3	253.31	0.000
1724	780	35	3	46.06	0.050
1725	781	27	1	11.13	0.050
1726	782	14	2	34.62	0.000
1727	783	39	5	79.19	0.000
1728	783	3	4	266.54	0.100
1729	784	14	4	37.43	0.000
1730	784	6	5	609.35	0.100
1731	785	12	2	122.77	0.000
1732	785	13	2	10.94	0.000
1733	785	43	4	13.90	0.000
1734	785	5	2	639.28	0.000
1735	786	12	4	120.30	0.000
1736	786	14	1	33.44	0.000
1737	786	28	2	12.31	0.000
1738	787	29	4	63.47	0.050
1739	788	38	1	58.69	0.000
1740	788	15	5	104.54	0.000
1741	789	16	1	83.35	0.100
1742	790	6	3	579.57	0.100
1743	790	9	2	100.87	0.050
1744	790	14	2	36.97	0.000
1745	791	41	5	59.18	0.000
1746	791	30	2	50.39	0.000
1747	791	2	1	47.57	0.000
1748	791	43	1	15.33	0.150
1749	792	38	1	52.53	0.000
1750	792	31	1	94.10	0.100
1751	792	42	3	8.09	0.150
1752	792	48	5	15.22	0.000
1753	793	35	4	44.60	0.100
1754	793	5	2	620.11	0.000
1755	793	33	5	66.94	0.000
1756	794	1	3	603.71	0.050
1757	795	24	3	56.37	0.100
1758	795	3	5	267.55	0.150
1759	796	26	3	31.00	0.000
1760	797	26	3	28.31	0.150
1761	798	11	5	61.58	0.150
1762	798	43	3	14.31	0.000
1763	798	2	2	48.38	0.150
1764	798	9	3	112.19	0.100
1765	799	19	4	226.01	0.000
1766	800	22	5	212.99	0.000
1767	800	13	1	11.77	0.050
1768	801	30	5	51.53	0.000
1769	802	17	5	37.23	0.150
1770	803	6	1	621.24	0.050
1771	804	14	2	34.81	0.000
1772	804	15	1	103.52	0.000
1773	805	38	1	54.70	0.050
1774	806	25	3	74.55	0.150
1775	807	41	5	61.19	0.100
1776	807	19	2	228.75	0.100
1777	807	31	3	99.93	0.100
1778	808	11	2	61.91	0.100
1779	808	10	1	16.05	0.000
1780	808	22	3	204.54	0.000
1781	808	17	1	39.47	0.150
1782	809	2	1	48.83	0.000
1783	809	34	2	111.50	0.050
1784	810	30	1	47.67	0.150
1785	810	14	1	37.78	0.000
1786	810	17	3	37.47	0.050
1787	810	33	5	60.97	0.100
1788	811	42	2	8.84	0.100
1789	811	17	3	39.79	0.000
1790	811	8	2	29.19	0.100
1791	812	31	5	98.45	0.100
1792	812	3	2	248.40	0.000
1793	813	2	5	47.97	0.100
1794	813	24	5	54.38	0.000
1795	813	19	3	241.33	0.000
1796	813	46	4	15.82	0.100
1797	814	38	4	57.31	0.100
1798	814	16	2	81.07	0.000
1799	815	28	4	12.06	0.000
1800	815	45	1	9.55	0.050
1801	816	42	4	8.24	0.000
1802	817	1	3	610.22	0.150
1803	817	8	2	31.96	0.100
1804	818	28	3	11.20	0.100
1805	819	7	2	227.48	0.100
1806	819	21	5	231.63	0.000
1807	820	20	5	11.18	0.000
1808	820	11	4	63.27	0.000
1809	820	5	5	646.07	0.050
1810	821	6	2	630.78	0.000
1811	822	42	3	8.12	0.150
1812	822	39	1	80.49	0.000
1813	822	4	4	211.76	0.000
1814	823	32	4	85.41	0.000
1815	824	27	2	11.83	0.000
1816	824	2	5	47.81	0.150
1817	825	44	5	16.24	0.000
1818	825	13	2	11.39	0.000
1819	825	9	3	106.11	0.000
1820	826	6	4	556.38	0.000
1821	826	44	1	15.76	0.000
1822	826	1	4	535.92	0.050
1823	827	8	2	28.79	0.000
1824	827	43	5	14.06	0.000
1825	828	3	1	256.27	0.000
1826	828	16	4	79.47	0.000
1827	829	38	5	58.96	0.000
1828	829	41	2	60.94	0.050
1829	830	44	5	16.70	0.050
1830	830	15	5	93.91	0.000
1831	830	33	2	64.53	0.000
1832	830	27	1	11.37	0.100
1833	831	44	1	16.74	0.150
1834	831	5	4	626.16	0.050
1835	831	10	1	16.37	0.000
1836	832	11	1	65.52	0.150
1837	832	24	1	56.00	0.100
1838	833	5	5	616.40	0.100
1839	834	28	5	12.14	0.000
1840	835	39	2	78.20	0.100
1841	836	3	4	242.74	0.000
1842	836	35	4	45.74	0.050
1843	836	43	2	13.46	0.100
1844	837	32	5	86.60	0.050
1845	837	35	2	48.64	0.100
1846	838	32	1	90.02	0.100
1847	839	18	1	91.64	0.000
1848	839	25	4	77.49	0.000
1849	839	44	4	17.04	0.000
1850	840	22	3	199.77	0.000
1851	840	34	4	113.24	0.050
1852	840	13	2	11.22	0.100
1853	840	19	2	243.69	0.150
1854	841	21	2	238.81	0.000
1855	841	47	4	9.21	0.000
1856	841	25	2	80.27	0.000
1857	841	26	5	28.22	0.150
1858	842	37	1	78.44	0.000
1859	842	39	4	72.36	0.000
1860	842	46	3	14.89	0.000
1861	842	6	3	574.86	0.000
1862	843	13	1	10.98	0.000
1863	843	24	5	56.90	0.050
1864	844	42	1	8.39	0.000
1865	845	8	5	30.21	0.100
1866	845	4	5	222.49	0.000
1867	845	31	1	91.66	0.000
1868	846	43	3	14.61	0.000
1869	846	47	5	9.58	0.000
1870	846	21	5	229.85	0.100
1871	846	9	3	116.12	0.000
1872	847	20	3	11.83	0.100
1873	848	21	3	221.85	0.000
1874	849	41	4	65.40	0.000
1875	850	46	2	15.65	0.000
1876	850	14	1	35.46	0.000
1877	850	35	1	47.79	0.000
1878	851	39	2	80.74	0.150
1879	852	1	1	571.61	0.050
1880	852	17	4	36.31	0.150
1881	852	36	4	64.33	0.100
1882	852	11	4	60.01	0.150
1883	853	31	4	92.38	0.150
1884	853	24	5	54.77	0.050
1885	854	6	5	631.00	0.150
1886	854	25	5	71.89	0.000
1887	855	5	4	671.50	0.000
1888	856	10	5	17.89	0.100
1889	857	38	1	57.34	0.000
1890	857	36	5	62.29	0.000
1891	857	21	3	245.00	0.000
1892	857	37	5	70.25	0.100
1893	858	15	2	102.41	0.000
1894	858	16	1	84.16	0.000
1895	859	29	1	63.62	0.000
1896	859	5	2	608.04	0.000
1897	860	2	1	43.14	0.000
1898	861	44	4	16.91	0.100
1899	861	29	3	68.73	0.150
1900	862	13	1	11.08	0.000
1901	863	30	1	47.87	0.000
1902	864	38	3	57.55	0.000
1903	864	20	2	11.54	0.150
1904	864	48	5	15.64	0.100
1905	864	13	1	11.61	0.050
1906	865	10	4	15.56	0.000
1907	866	30	4	48.77	0.150
1908	866	9	1	102.06	0.150
1909	866	44	1	15.86	0.050
1910	866	26	1	27.80	0.000
1911	867	22	5	215.43	0.000
1912	867	13	5	11.91	0.000
1913	867	3	3	261.87	0.050
1914	867	25	3	71.51	0.000
1915	868	36	4	67.17	0.000
1916	869	24	3	55.54	0.000
1917	869	48	1	17.19	0.000
1918	869	37	5	71.86	0.150
1919	870	35	3	45.31	0.000
1920	870	14	1	34.02	0.000
1921	871	24	5	50.92	0.000
1922	872	28	4	12.61	0.000
1923	873	17	2	40.25	0.150
1924	874	4	1	198.84	0.000
1925	875	28	2	12.76	0.000
1926	875	7	2	229.84	0.000
1927	876	8	1	28.74	0.150
1928	876	27	5	11.18	0.050
1929	876	26	3	30.68	0.000
1930	877	24	4	50.47	0.100
1931	877	2	1	49.04	0.150
1932	877	4	4	201.07	0.100
1933	877	3	4	257.13	0.000
1934	878	22	1	222.09	0.000
1935	879	12	3	128.63	0.100
1936	879	44	3	16.72	0.150
1937	880	13	5	11.30	0.050
1938	880	28	4	11.83	0.000
1939	880	5	5	608.90	0.000
1940	880	45	4	8.22	0.000
1941	881	3	1	268.93	0.000
1942	881	38	2	56.51	0.100
1943	882	18	5	82.55	0.000
1944	882	46	1	14.29	0.000
1945	882	5	5	663.60	0.000
1946	882	20	5	12.16	0.050
1947	883	25	5	75.52	0.000
1948	883	7	4	232.24	0.000
1949	884	37	3	70.76	0.000
1950	884	21	4	226.01	0.150
1951	885	17	2	40.58	0.150
1952	885	9	1	103.71	0.000
1953	885	33	4	67.25	0.100
1954	885	11	1	57.06	0.000
1955	886	33	5	63.59	0.000
1956	886	6	4	644.50	0.150
1957	887	34	5	118.09	0.000
1958	887	37	4	78.96	0.000
1959	888	5	4	634.62	0.150
1960	888	12	2	125.65	0.000
1961	888	26	1	30.68	0.150
1962	889	18	2	90.76	0.050
1963	889	36	5	62.36	0.150
1964	889	26	5	31.49	0.150
1965	890	28	1	11.93	0.100
1966	890	12	4	123.76	0.150
1967	891	40	4	51.78	0.000
1968	891	47	3	10.34	0.050
1969	892	5	5	636.41	0.050
1970	892	23	5	110.19	0.150
1971	893	18	5	88.01	0.150
1972	894	29	5	67.63	0.050
1973	894	2	5	48.05	0.000
1974	894	20	1	11.07	0.000
1975	895	22	2	222.48	0.000
1976	896	35	1	46.44	0.150
1977	896	5	4	648.83	0.100
1978	896	18	1	88.60	0.050
1979	897	4	1	202.38	0.000
1980	897	47	5	9.96	0.000
1981	897	44	4	18.14	0.000
1982	897	45	4	9.41	0.000
1983	898	35	5	48.29	0.000
1984	899	25	4	69.20	0.000
1985	900	19	4	256.92	0.150
1986	901	21	4	250.95	0.050
1987	901	29	3	67.23	0.000
1988	902	25	2	78.95	0.000
1989	902	22	3	192.94	0.050
1990	903	8	2	28.49	0.000
1991	904	24	5	56.32	0.000
1992	905	26	4	30.44	0.100
1993	905	6	2	608.89	0.000
1994	906	27	3	12.29	0.150
1995	906	28	1	11.30	0.000
1996	906	11	1	58.13	0.000
1997	906	15	4	95.40	0.050
1998	907	17	5	36.40	0.000
1999	907	8	5	31.00	0.000
2000	908	42	4	8.46	0.000
2001	908	5	1	616.52	0.000
2002	908	46	4	14.22	0.100
2003	908	48	4	16.88	0.100
2004	909	11	4	57.81	0.000
2005	909	36	5	64.68	0.000
2006	909	5	4	637.98	0.000
2007	909	42	5	8.09	0.000
2008	910	39	2	74.24	0.100
2009	910	33	2	61.80	0.000
2010	911	7	5	204.03	0.050
2011	911	29	4	66.90	0.100
2012	911	5	4	637.15	0.000
2013	911	18	3	86.01	0.150
2014	912	7	1	223.28	0.150
2015	912	47	3	9.31	0.100
2016	912	8	2	30.27	0.100
2017	913	15	1	102.44	0.150
2018	913	39	5	79.20	0.050
2019	914	15	5	97.01	0.100
2020	914	16	2	84.12	0.000
2021	914	10	1	17.97	0.150
2022	914	36	4	61.14	0.000
2023	915	8	1	31.56	0.000
2024	916	34	4	113.25	0.050
2025	916	8	1	32.00	0.100
2026	916	41	5	64.94	0.100
2027	916	44	4	17.42	0.000
2028	917	6	3	561.11	0.150
2029	917	16	5	80.55	0.000
2030	918	27	5	11.91	0.000
2031	918	21	3	234.26	0.100
2032	919	30	4	52.16	0.000
2033	920	22	5	203.30	0.000
2034	921	25	4	72.21	0.000
2035	921	1	4	606.37	0.000
2036	921	6	1	620.57	0.000
2037	921	19	1	249.91	0.100
2038	922	28	4	12.03	0.000
2039	923	41	5	59.55	0.100
2040	923	44	4	17.59	0.000
2041	923	24	1	52.65	0.100
2042	924	45	3	8.82	0.150
2043	925	24	2	57.35	0.050
2044	925	22	5	201.23	0.000
2045	926	7	5	224.33	0.150
2046	927	38	1	55.69	0.150
2047	927	17	3	36.94	0.000
2048	927	7	5	213.36	0.000
2049	928	10	2	17.61	0.000
2050	928	32	1	88.96	0.000
2051	928	47	1	9.04	0.050
2052	929	12	5	121.37	0.100
2053	929	40	3	55.86	0.000
2054	930	12	2	131.73	0.150
2055	930	29	2	62.63	0.050
2056	930	5	4	697.02	0.100
2057	931	37	3	78.99	0.100
2058	932	6	3	572.61	0.000
2059	932	48	1	17.04	0.000
2060	932	29	1	70.15	0.000
2061	932	13	1	10.65	0.000
2062	933	6	5	608.53	0.000
2063	933	36	3	67.92	0.000
2064	933	42	2	9.07	0.100
2065	933	30	4	49.73	0.100
2066	934	10	4	15.96	0.000
2067	934	6	2	638.87	0.150
2068	934	3	3	252.33	0.000
2069	934	36	5	64.92	0.150
2070	935	17	5	39.87	0.000
2071	935	10	4	16.80	0.050
2072	935	35	4	42.84	0.050
2073	935	38	5	53.70	0.150
2074	936	46	1	14.46	0.050
2075	936	23	1	103.74	0.050
2076	937	5	3	693.07	0.000
2077	937	32	3	89.23	0.150
2078	937	7	2	205.06	0.000
2079	938	44	2	16.00	0.000
2080	938	40	3	56.12	0.000
2081	938	18	1	91.90	0.000
2082	938	43	2	13.81	0.000
2083	939	6	3	565.67	0.000
2084	940	13	2	11.41	0.100
2085	940	4	3	221.69	0.100
2086	940	44	3	17.23	0.000
2087	940	43	1	13.51	0.050
2088	941	9	1	114.79	0.050
2089	941	3	5	263.45	0.000
2090	942	42	3	9.19	0.100
2091	943	32	5	92.01	0.000
2092	943	42	1	8.54	0.050
2093	944	45	2	9.56	0.100
2094	945	22	3	191.47	0.000
2095	946	26	2	28.51	0.050
2096	947	45	2	8.50	0.000
2097	947	20	3	12.22	0.000
2098	947	1	1	576.14	0.150
2099	948	33	3	61.56	0.000
2100	948	8	1	29.56	0.050
2101	949	30	3	50.94	0.100
2102	949	36	5	65.40	0.100
2103	950	11	4	56.66	0.000
2104	950	27	2	12.19	0.150
2105	951	30	1	50.49	0.000
2106	951	5	4	613.97	0.000
2107	952	42	5	8.98	0.000
2108	953	37	4	76.14	0.150
2109	953	24	5	50.36	0.000
2110	953	8	5	29.80	0.100
2111	954	45	4	8.43	0.150
2112	954	7	4	220.40	0.000
2113	955	31	2	99.43	0.000
2114	955	20	1	11.86	0.100
2115	955	47	4	9.19	0.000
2116	956	15	2	100.22	0.000
2117	956	4	3	201.21	0.000
2118	956	32	3	88.22	0.150
2119	956	9	5	112.61	0.000
2120	957	1	2	529.22	0.000
2121	957	4	3	229.25	0.150
2122	957	10	2	17.63	0.000
2123	957	46	4	14.70	0.000
2124	958	24	2	49.92	0.000
2125	959	15	4	97.12	0.000
2126	959	26	5	27.65	0.100
2127	960	44	1	16.78	0.050
2128	960	3	2	262.28	0.100
2129	960	2	3	43.94	0.150
2130	961	27	4	10.79	0.000
2131	962	20	5	11.20	0.000
2132	963	20	5	12.06	0.150
2133	963	15	5	96.52	0.000
2134	963	42	5	8.51	0.050
2135	964	6	3	645.06	0.000
2136	965	18	2	83.91	0.100
2137	965	41	1	63.60	0.050
2138	965	39	5	71.58	0.100
2139	966	39	5	78.44	0.000
2140	966	36	3	68.99	0.000
2141	966	19	4	256.02	0.000
2142	966	43	1	14.22	0.000
2143	967	5	3	687.65	0.100
2144	968	25	5	76.89	0.050
2145	968	30	4	49.68	0.150
2146	969	24	1	54.01	0.000
2147	970	24	5	52.73	0.000
2148	971	9	2	106.27	0.150
2149	971	38	1	54.11	0.050
2150	972	42	5	8.79	0.000
2151	972	11	4	63.87	0.000
2152	973	47	1	9.69	0.100
2153	973	11	2	64.96	0.000
2154	973	36	4	61.77	0.100
2155	974	28	5	12.49	0.000
2156	975	44	1	17.35	0.050
2157	975	22	2	198.31	0.050
2158	975	30	4	46.25	0.050
2159	975	26	3	29.06	0.000
2160	976	45	3	9.31	0.050
2161	976	35	1	42.74	0.000
2162	976	21	5	243.38	0.000
2163	976	3	1	275.78	0.050
2164	977	43	2	13.67	0.000
2165	977	39	3	73.09	0.100
2166	978	32	2	91.59	0.000
2167	978	25	5	73.09	0.150
2168	978	26	2	31.33	0.000
2169	978	12	5	132.46	0.050
2170	979	45	5	8.46	0.100
2171	980	15	3	93.64	0.000
2172	980	28	4	11.19	0.000
2173	980	3	4	254.91	0.000
2174	980	36	4	61.29	0.000
2175	981	23	5	101.43	0.100
2176	982	28	3	12.01	0.000
2177	982	26	4	28.12	0.050
2178	982	17	2	36.23	0.000
2179	982	45	2	8.39	0.000
2180	983	40	3	50.37	0.150
2181	984	31	2	88.66	0.150
2182	984	8	5	28.04	0.050
2183	984	44	4	16.28	0.000
2184	984	1	4	584.70	0.000
2185	985	26	1	29.52	0.000
2186	986	21	3	240.11	0.000
2187	986	41	1	61.99	0.050
2188	987	37	1	74.48	0.050
2189	987	14	5	34.35	0.100
2190	988	11	4	65.37	0.150
2191	988	1	1	580.65	0.150
2192	989	37	2	76.47	0.050
2193	990	31	2	88.85	0.100
2194	991	30	3	50.50	0.100
2195	992	33	5	65.45	0.000
2196	992	10	1	15.84	0.100
2197	993	18	3	90.25	0.050
2198	993	19	4	220.51	0.000
2199	994	20	5	11.88	0.050
2200	994	32	4	83.49	0.050
2201	995	45	1	8.55	0.000
2202	995	3	1	255.29	0.000
2203	996	12	4	126.85	0.000
2204	996	37	3	69.51	0.150
2205	996	21	2	221.13	0.000
2206	997	27	2	11.53	0.000
2207	997	6	3	612.24	0.100
2208	998	39	5	73.30	0.100
2209	998	16	3	80.37	0.050
2210	998	19	2	241.36	0.000
2211	999	39	4	78.92	0.000
2212	1000	45	2	8.36	0.050
2213	1000	31	3	92.09	0.100
2214	1001	27	3	11.37	0.100
2215	1001	9	1	104.21	0.000
2216	1001	37	4	77.56	0.050
2217	1001	10	5	16.01	0.000
2218	1002	30	3	51.73	0.000
2219	1003	1	5	608.46	0.000
2220	1003	37	5	70.42	0.000
2221	1004	14	3	37.45	0.000
2222	1005	13	3	11.40	0.000
2223	1006	46	5	14.51	0.150
2224	1006	45	4	9.27	0.100
2225	1007	46	2	14.86	0.000
2226	1007	25	5	80.16	0.000
2227	1007	42	1	8.87	0.050
2228	1007	29	3	62.37	0.000
2229	1008	35	3	49.28	0.000
2230	1009	22	2	205.51	0.000
2231	1009	47	2	9.24	0.000
2232	1010	37	1	70.39	0.000
2233	1011	24	1	53.20	0.050
2234	1011	10	4	17.00	0.000
2235	1012	12	2	132.63	0.100
2236	1013	3	2	260.61	0.050
2237	1014	48	1	15.39	0.150
2238	1014	11	2	62.43	0.000
2239	1014	19	1	252.60	0.000
2240	1015	15	5	103.37	0.050
2241	1015	10	4	17.05	0.000
2242	1015	33	1	60.94	0.000
2243	1016	8	5	29.90	0.100
2244	1017	43	1	14.42	0.000
2245	1017	32	3	88.74	0.150
2246	1017	39	2	74.56	0.100
2247	1017	40	3	54.30	0.000
2248	1018	48	3	15.79	0.100
2249	1018	11	1	59.60	0.000
2250	1019	17	5	40.55	0.050
2251	1019	13	2	11.90	0.000
2252	1020	20	5	12.19	0.050
2253	1021	25	5	76.99	0.000
2254	1021	40	3	50.20	0.150
2255	1021	29	4	64.35	0.150
2256	1021	12	4	126.57	0.150
2257	1022	11	3	61.54	0.000
2258	1023	37	2	69.66	0.000
2259	1023	8	1	29.28	0.050
2260	1024	28	2	11.88	0.150
2261	1024	42	4	8.24	0.100
2262	1024	43	2	13.50	0.050
2263	1025	43	5	14.16	0.000
2264	1025	14	1	33.82	0.100
2265	1025	3	1	249.95	0.100
2266	1025	15	2	91.22	0.150
2267	1026	5	3	677.70	0.100
2268	1027	4	4	208.50	0.000
2269	1027	44	1	15.67	0.050
2270	1028	31	2	99.84	0.100
2271	1028	48	4	16.77	0.000
2272	1029	12	1	121.97	0.000
2273	1030	8	3	31.18	0.100
2274	1031	38	5	56.94	0.100
2275	1031	18	5	92.01	0.000
2276	1032	2	2	47.16	0.000
2277	1032	5	2	677.58	0.100
2278	1033	12	3	122.97	0.100
2279	1033	16	5	85.93	0.000
2280	1034	37	5	68.66	0.050
2281	1034	26	5	30.38	0.000
2282	1034	30	4	52.29	0.000
2283	1034	12	5	137.72	0.000
2284	1035	41	1	67.00	0.100
2285	1036	7	1	234.42	0.000
2286	1036	10	5	17.47	0.000
2287	1037	12	4	132.68	0.150
2288	1038	38	2	51.87	0.100
2289	1038	34	1	120.17	0.000
2290	1039	33	1	62.64	0.100
2291	1039	35	2	46.40	0.000
2292	1040	45	4	8.93	0.000
2293	1040	23	5	111.32	0.000
2294	1041	39	1	75.65	0.150
2295	1041	31	2	98.86	0.050
2296	1041	28	5	12.84	0.000
2297	1042	36	1	66.44	0.100
2298	1043	33	4	67.80	0.000
2299	1044	30	1	48.24	0.000
2300	1045	23	5	99.50	0.000
2301	1045	1	5	602.96	0.100
2302	1046	5	2	607.08	0.000
2303	1047	37	2	77.30	0.100
2304	1048	42	1	8.72	0.000
2305	1049	8	1	28.85	0.000
2306	1049	17	2	38.92	0.000
2307	1050	31	2	92.30	0.050
2308	1050	12	2	136.65	0.000
2309	1051	42	3	8.60	0.000
2310	1051	17	4	37.18	0.050
2311	1051	20	5	11.21	0.000
2312	1051	24	5	51.42	0.050
2313	1052	35	2	44.78	0.050
2314	1053	6	1	641.42	0.050
2315	1054	35	5	47.75	0.100
2316	1054	23	5	103.04	0.150
2317	1055	24	5	50.28	0.000
2318	1055	5	1	655.60	0.150
2319	1056	24	2	52.53	0.000
2320	1057	17	3	40.37	0.100
2321	1057	22	2	206.78	0.100
2322	1057	5	2	615.00	0.000
2323	1058	12	4	136.60	0.100
2324	1058	31	5	95.50	0.000
2325	1058	36	1	64.41	0.000
2326	1059	5	3	620.70	0.050
2327	1059	45	3	8.76	0.150
2328	1059	14	3	36.57	0.050
2329	1059	33	1	60.17	0.100
2330	1060	38	4	56.90	0.000
2331	1061	28	3	12.81	0.000
2332	1061	4	5	217.70	0.100
2333	1061	2	1	42.98	0.100
2334	1061	39	5	74.42	0.000
2335	1062	39	1	80.05	0.000
2336	1062	13	5	12.19	0.050
2337	1063	11	5	65.55	0.100
2338	1063	7	1	207.83	0.000
2339	1064	6	3	642.90	0.000
2340	1064	2	5	46.81	0.150
2341	1065	15	3	91.60	0.150
2342	1066	6	1	578.41	0.100
2343	1066	9	5	116.57	0.000
2344	1067	35	1	48.63	0.150
2345	1067	19	3	222.50	0.000
2346	1067	46	4	14.04	0.000
2347	1067	45	5	8.88	0.050
2348	1068	26	5	28.33	0.000
2349	1068	40	1	54.38	0.150
2350	1068	21	4	222.62	0.150
2351	1069	5	2	686.65	0.000
2352	1069	12	4	118.72	0.000
2353	1069	27	4	11.50	0.000
2354	1070	40	4	56.44	0.000
2355	1071	14	1	34.04	0.050
2356	1071	27	2	11.52	0.100
2357	1072	2	5	45.09	0.000
2358	1073	36	5	70.82	0.000
2359	1073	25	3	78.05	0.000
2360	1074	5	1	697.06	0.000
2361	1074	41	4	67.84	0.000
2362	1074	26	2	28.80	0.000
2363	1075	40	1	54.54	0.000
2364	1076	46	4	15.13	0.150
2365	1077	42	1	8.09	0.050
2366	1077	46	5	14.27	0.150
2367	1077	10	2	17.37	0.100
2368	1078	25	3	79.08	0.100
2369	1078	27	2	11.09	0.000
2370	1078	6	4	633.34	0.000
2371	1078	12	3	118.44	0.150
2372	1079	25	5	74.08	0.150
2373	1080	10	1	15.52	0.000
2374	1081	38	1	51.90	0.050
2375	1081	31	5	92.26	0.000
2376	1081	7	4	209.89	0.000
2377	1082	13	1	11.75	0.000
2378	1083	5	4	652.23	0.000
2379	1083	17	3	40.50	0.150
2380	1083	48	4	17.16	0.050
2381	1083	11	5	63.79	0.000
2382	1084	15	3	94.66	0.000
2383	1085	38	3	58.34	0.000
2384	1086	25	5	69.37	0.150
2385	1086	42	3	8.43	0.000
2386	1087	5	2	629.62	0.000
2387	1087	23	5	106.61	0.000
2388	1087	9	1	101.91	0.150
2389	1088	11	4	61.29	0.050
2390	1089	17	1	38.38	0.000
2391	1089	29	5	71.75	0.100
2392	1090	19	5	251.33	0.000
2393	1090	6	4	583.24	0.000
2394	1091	35	3	46.18	0.000
2395	1091	29	1	66.89	0.000
2396	1092	32	2	91.03	0.000
2397	1092	22	1	219.22	0.000
2398	1092	1	1	527.86	0.100
2399	1092	34	4	109.52	0.000
2400	1093	8	3	28.33	0.000
2401	1094	48	2	17.23	0.000
2402	1094	44	4	16.08	0.050
2403	1095	35	1	49.25	0.100
2404	1095	28	4	12.86	0.050
2405	1096	39	5	76.47	0.150
2406	1097	22	5	195.72	0.100
2407	1097	20	2	12.43	0.000
2408	1098	29	3	65.56	0.100
2409	1098	17	3	38.80	0.150
2410	1099	2	2	47.16	0.100
2411	1099	6	5	569.49	0.000
2412	1099	42	2	8.70	0.100
2413	1099	19	1	225.74	0.050
2414	1100	21	2	236.41	0.000
2415	1100	13	4	11.14	0.000
2416	1101	36	3	61.92	0.000
2417	1101	5	2	681.42	0.000
2418	1101	2	3	46.87	0.050
2419	1102	4	3	212.37	0.000
2420	1103	6	2	573.96	0.000
2421	1103	41	4	59.07	0.000
2422	1104	24	1	53.69	0.050
2423	1104	28	3	11.44	0.150
2424	1104	17	3	37.62	0.000
2425	1104	20	2	12.28	0.050
2426	1105	47	2	10.38	0.000
2427	1105	32	2	82.98	0.000
2428	1106	1	5	560.42	0.050
2429	1106	46	4	15.69	0.150
2430	1107	35	4	46.18	0.000
2431	1107	40	3	52.50	0.000
2432	1108	33	5	63.93	0.000
2433	1108	10	2	16.04	0.000
2434	1109	28	3	12.14	0.000
2435	1109	11	3	58.63	0.000
2436	1109	2	4	46.83	0.000
2437	1109	19	1	248.39	0.000
2438	1110	20	2	11.29	0.100
2439	1110	33	5	67.12	0.150
2440	1110	5	5	630.31	0.050
2441	1110	26	4	28.39	0.000
2442	1111	24	3	51.20	0.150
2443	1112	28	1	12.54	0.000
2444	1112	32	2	80.87	0.150
2445	1112	42	5	8.52	0.000
2446	1113	40	5	56.06	0.000
2447	1113	5	3	605.73	0.000
2448	1113	31	1	91.20	0.150
2449	1114	3	1	274.34	0.050
2450	1114	10	3	17.19	0.100
2451	1115	11	1	56.44	0.000
2452	1115	36	5	67.68	0.050
2453	1115	34	1	113.43	0.050
2454	1116	36	5	61.96	0.100
2455	1117	41	4	60.85	0.050
2456	1117	8	5	28.70	0.000
2457	1117	15	1	96.98	0.050
2458	1118	1	5	558.17	0.000
2459	1118	30	5	45.49	0.000
2460	1118	42	3	8.90	0.000
2461	1119	43	4	14.63	0.050
2462	1119	17	4	39.30	0.000
2463	1119	25	4	76.97	0.000
2464	1120	45	2	8.32	0.000
2465	1120	48	1	17.27	0.000
2466	1121	42	5	9.03	0.000
2467	1122	35	3	46.13	0.000
2468	1122	2	1	44.31	0.000
2469	1123	24	5	57.75	0.150
2470	1123	19	4	246.43	0.000
2471	1123	15	5	103.23	0.000
2472	1123	20	5	10.85	0.000
2473	1124	22	1	195.48	0.100
2474	1124	24	5	53.69	0.000
2475	1125	47	4	8.97	0.000
2476	1126	33	4	60.37	0.050
2477	1126	42	4	8.72	0.150
2478	1127	33	3	66.12	0.150
2479	1128	44	5	16.61	0.000
2480	1128	29	2	67.41	0.000
2481	1129	5	2	697.16	0.000
2482	1130	47	5	10.19	0.100
2483	1130	4	4	227.89	0.150
2484	1131	38	2	53.34	0.150
2485	1131	22	3	215.99	0.000
2486	1132	10	4	15.95	0.050
2487	1132	48	1	17.57	0.000
2488	1132	39	4	75.46	0.000
2489	1133	46	3	14.35	0.000
2490	1133	28	1	12.10	0.000
2491	1134	12	2	127.66	0.000
2492	1135	35	3	43.37	0.000
2493	1135	36	4	66.68	0.000
2494	1135	3	3	246.09	0.000
2495	1136	48	4	17.67	0.100
2496	1137	26	3	29.46	0.000
2497	1137	4	4	216.33	0.000
2498	1137	29	4	70.79	0.000
2499	1137	14	1	34.78	0.000
2500	1138	16	5	76.91	0.000
2501	1138	3	4	269.22	0.000
2502	1139	21	1	244.87	0.000
2503	1139	48	5	15.72	0.050
2504	1139	45	2	9.55	0.050
2505	1140	42	3	9.11	0.050
2506	1140	11	5	62.26	0.000
2507	1141	20	1	11.44	0.050
2508	1141	24	4	56.58	0.000
2509	1142	16	5	77.26	0.000
2510	1142	35	5	49.04	0.100
2511	1143	24	3	52.42	0.000
2512	1144	46	1	14.08	0.050
2513	1144	36	5	63.72	0.000
2514	1145	42	2	8.17	0.000
2515	1145	6	2	636.83	0.000
2516	1145	22	5	203.73	0.100
2517	1145	9	1	102.10	0.000
2518	1146	5	1	641.02	0.100
2519	1147	12	4	126.95	0.150
2520	1148	28	1	11.85	0.000
2521	1148	2	1	46.21	0.000
2522	1148	43	5	15.42	0.000
2523	1149	18	2	92.41	0.000
2524	1150	34	4	113.67	0.100
2525	1151	17	2	36.27	0.000
2526	1151	33	5	61.50	0.000
2527	1151	41	3	65.22	0.100
2528	1151	8	5	28.62	0.000
2529	1152	28	3	11.13	0.100
2530	1152	22	5	216.25	0.000
2531	1153	26	4	27.78	0.100
2532	1153	11	3	59.08	0.000
2533	1154	26	2	30.65	0.000
2534	1154	36	4	62.74	0.000
2535	1154	42	1	8.13	0.000
2536	1154	16	3	77.96	0.100
2537	1155	4	5	210.22	0.000
2538	1155	12	1	127.56	0.000
2539	1156	16	3	86.61	0.100
2540	1157	1	1	562.86	0.000
2541	1157	10	4	16.68	0.000
2542	1157	18	4	84.04	0.150
2543	1158	14	5	36.48	0.000
2544	1158	1	1	576.24	0.000
2545	1159	27	1	10.79	0.100
2546	1160	43	4	14.57	0.050
2547	1160	27	1	11.52	0.150
2548	1161	21	3	222.98	0.100
2549	1161	29	1	71.97	0.050
2550	1162	18	1	93.08	0.000
2551	1162	23	4	110.53	0.000
2552	1163	12	2	128.32	0.150
2553	1163	46	3	13.72	0.000
2554	1164	31	3	90.24	0.050
2555	1164	16	3	86.83	0.100
2556	1164	5	1	660.86	0.000
2557	1165	24	5	55.75	0.100
2558	1165	3	1	245.03	0.050
2559	1165	45	2	8.99	0.000
2560	1166	42	5	8.52	0.000
2561	1166	16	3	82.12	0.050
2562	1167	18	4	90.66	0.000
2563	1167	14	1	34.76	0.150
2564	1168	37	3	76.74	0.100
2565	1168	2	5	45.37	0.150
2566	1169	2	3	46.21	0.000
2567	1169	8	4	28.05	0.150
2568	1170	27	4	11.13	0.000
2569	1171	36	2	65.08	0.000
2570	1172	20	5	11.16	0.050
2571	1172	11	1	58.16	0.150
2572	1173	39	1	71.75	0.000
2573	1173	40	4	52.31	0.050
2574	1173	5	5	636.61	0.100
2575	1173	1	3	548.71	0.100
2576	1174	5	4	675.24	0.000
2577	1174	27	4	11.66	0.000
2578	1174	25	4	80.10	0.000
2579	1174	43	2	14.91	0.000
2580	1175	47	2	10.29	0.150
2581	1175	33	1	62.41	0.000
2582	1175	29	1	62.88	0.000
2583	1176	41	1	62.82	0.050
2584	1176	10	5	15.86	0.050
2585	1176	36	2	67.43	0.000
2586	1177	37	2	75.22	0.050
2587	1177	41	3	59.27	0.050
2588	1178	11	4	60.03	0.000
2589	1179	40	1	52.36	0.150
2590	1180	43	2	14.07	0.150
2591	1180	24	2	52.95	0.000
2592	1180	38	1	59.92	0.000
2593	1180	15	4	95.73	0.000
2594	1181	37	4	72.54	0.150
2595	1181	4	2	218.44	0.150
2596	1182	45	3	8.26	0.000
2597	1182	28	3	11.95	0.000
2598	1183	33	5	60.61	0.000
2599	1183	46	5	14.59	0.050
2600	1184	25	4	78.40	0.100
2601	1185	12	2	132.90	0.000
2602	1185	39	5	74.97	0.000
2603	1185	27	5	11.88	0.000
2604	1186	34	3	120.86	0.000
2605	1187	6	2	647.14	0.050
2606	1187	1	1	526.44	0.000
2607	1187	19	3	222.08	0.150
2608	1188	48	2	17.31	0.000
2609	1188	47	5	9.05	0.000
2610	1189	41	5	62.98	0.000
2611	1189	35	4	47.13	0.150
2612	1190	1	3	580.50	0.150
2613	1190	42	2	8.08	0.000
2614	1191	17	5	40.71	0.050
2615	1192	3	3	255.12	0.000
2616	1192	6	4	616.39	0.000
2617	1192	1	4	580.03	0.050
2618	1193	10	3	17.62	0.000
2619	1193	20	2	12.11	0.000
2620	1194	13	4	11.76	0.000
2621	1194	26	1	27.27	0.050
2622	1194	32	4	82.15	0.000
2623	1194	5	4	701.93	0.000
2624	1195	3	2	266.78	0.100
2625	1195	38	5	58.05	0.100
2626	1195	31	2	90.76	0.000
2627	1195	47	2	10.15	0.000
2628	1196	27	2	12.15	0.000
2629	1196	1	4	562.31	0.000
2630	1196	39	1	79.66	0.150
2631	1196	5	5	688.15	0.000
2632	1197	6	3	587.95	0.000
2633	1197	3	5	271.52	0.100
2634	1197	33	1	62.56	0.100
2635	1198	1	5	547.60	0.000
2636	1198	46	3	14.29	0.000
2637	1199	46	5	13.91	0.000
2638	1200	48	1	15.76	0.000
2639	1201	21	2	241.55	0.000
2640	1201	6	4	581.55	0.050
2641	1202	20	3	12.21	0.100
2642	1202	33	1	66.68	0.050
2643	1203	6	5	633.07	0.150
2644	1203	19	2	223.15	0.000
2645	1203	10	4	16.41	0.000
2646	1204	8	1	30.53	0.050
2647	1204	3	3	278.70	0.150
2648	1204	44	2	15.94	0.000
2649	1204	15	5	103.86	0.150
2650	1205	19	4	246.92	0.000
2651	1205	35	2	49.08	0.000
2652	1206	40	5	51.41	0.000
2653	1207	25	1	73.30	0.000
2654	1207	9	4	101.36	0.100
2655	1207	20	1	10.92	0.050
2656	1208	4	4	206.09	0.050
2657	1208	26	2	29.18	0.000
2658	1209	28	3	12.56	0.100
2659	1209	35	5	43.42	0.000
2660	1209	38	1	56.93	0.000
2661	1209	4	2	219.40	0.000
2662	1210	24	5	53.44	0.100
2663	1211	4	5	221.96	0.050
2664	1212	19	3	229.72	0.000
2665	1212	41	5	67.67	0.000
2666	1213	23	3	106.43	0.000
2667	1213	19	3	234.87	0.050
2668	1213	11	5	63.67	0.000
2669	1214	21	4	233.21	0.000
2670	1214	27	1	12.22	0.000
2671	1214	28	1	11.85	0.000
2672	1215	2	1	44.83	0.000
2673	1215	44	1	15.74	0.000
2674	1216	23	5	104.98	0.000
2675	1217	14	1	36.30	0.000
2676	1217	45	4	9.00	0.000
2677	1218	35	4	45.64	0.150
2678	1218	46	4	14.89	0.050
2679	1218	8	5	28.87	0.000
2680	1219	12	2	118.66	0.000
2681	1219	16	2	79.27	0.000
2682	1219	39	4	72.92	0.150
2683	1219	37	4	71.22	0.000
2684	1220	25	5	79.01	0.150
2685	1220	12	3	121.42	0.050
2686	1221	7	3	224.86	0.000
2687	1221	5	4	664.41	0.000
2688	1221	12	5	123.65	0.000
2689	1222	22	3	213.20	0.000
2690	1223	39	5	71.24	0.100
2691	1223	15	1	90.70	0.150
2692	1223	26	3	31.68	0.000
2693	1223	44	2	16.04	0.050
2694	1224	5	4	691.50	0.100
2695	1225	29	1	63.84	0.000
2696	1226	11	5	60.94	0.000
2697	1226	9	3	101.55	0.000
2698	1227	28	4	12.46	0.000
2699	1227	33	2	63.39	0.050
2700	1227	9	3	109.63	0.000
2701	1228	43	3	14.82	0.050
2702	1228	17	4	39.67	0.000
2703	1228	37	4	70.98	0.100
2704	1229	48	5	17.27	0.150
2705	1229	39	1	73.45	0.150
2706	1229	3	5	268.58	0.000
2707	1230	27	4	11.30	0.000
2708	1231	7	2	205.10	0.150
2709	1231	36	5	67.97	0.100
2710	1232	36	3	63.14	0.000
2711	1232	1	1	542.05	0.050
2712	1233	14	4	35.46	0.100
2713	1234	25	1	80.48	0.000
2714	1234	17	5	39.16	0.050
2715	1235	40	3	53.26	0.050
2716	1235	13	5	11.02	0.000
2717	1236	6	4	592.50	0.000
2718	1236	7	4	212.55	0.000
2719	1237	1	1	530.64	0.100
2720	1237	29	3	67.06	0.050
2721	1238	7	2	207.60	0.000
2722	1238	20	3	10.81	0.100
2723	1239	35	4	42.68	0.000
2724	1239	21	4	251.02	0.150
2725	1240	40	3	55.23	0.000
2726	1241	42	4	8.09	0.000
2727	1241	45	3	9.20	0.100
2728	1241	40	5	50.47	0.100
2729	1242	41	1	66.42	0.050
2730	1242	39	4	80.61	0.100
2731	1243	14	3	34.72	0.000
2732	1244	44	1	17.86	0.100
2733	1245	40	3	50.85	0.150
2734	1245	3	2	277.72	0.000
2735	1245	34	5	122.25	0.000
2736	1245	22	5	200.15	0.000
2737	1246	19	5	236.29	0.000
2738	1246	8	3	28.09	0.050
2739	1246	44	5	17.43	0.000
2740	1246	5	5	678.24	0.000
2741	1247	5	3	675.02	0.050
2742	1247	18	2	88.83	0.050
2743	1248	26	2	31.04	0.000
2744	1248	43	1	14.23	0.100
2745	1249	25	3	78.58	0.100
2746	1250	15	4	92.04	0.100
2747	1250	38	1	60.28	0.000
2748	1251	18	5	91.14	0.050
2749	1251	4	5	207.55	0.050
2750	1252	34	1	122.50	0.100
2751	1252	44	1	17.75	0.150
2752	1253	24	5	57.74	0.150
2753	1253	41	4	60.03	0.100
2754	1254	41	5	58.67	0.000
2755	1255	42	4	9.14	0.000
2756	1255	33	2	67.21	0.000
2757	1256	5	1	607.20	0.100
2758	1256	31	2	96.30	0.000
2759	1256	39	2	73.05	0.150
2760	1257	43	2	13.62	0.000
2761	1258	42	1	8.71	0.100
2762	1259	4	1	223.15	0.000
2763	1259	42	3	9.15	0.000
2764	1260	39	1	79.15	0.100
2765	1260	41	4	66.95	0.050
2766	1260	40	4	53.02	0.000
2767	1261	32	5	88.32	0.000
2768	1262	46	3	15.03	0.000
2769	1262	15	2	94.77	0.050
2770	1263	38	4	58.70	0.000
2771	1264	5	4	602.76	0.000
2772	1264	11	1	61.04	0.000
2773	1264	36	1	67.38	0.000
2774	1265	31	4	97.90	0.000
2775	1265	46	5	14.15	0.100
2776	1265	14	4	37.01	0.000
2777	1265	2	2	46.35	0.150
2778	1266	8	5	31.91	0.050
2779	1267	18	2	93.67	0.000
2780	1268	15	3	99.48	0.100
2781	1268	3	1	274.93	0.000
2782	1268	47	4	10.40	0.100
2783	1269	10	3	16.15	0.050
2784	1269	8	3	29.14	0.100
2785	1270	9	4	113.71	0.000
2786	1270	16	4	86.47	0.050
2787	1271	6	3	611.67	0.000
2788	1271	14	5	34.36	0.000
2789	1272	19	3	252.38	0.050
2790	1272	31	2	90.33	0.100
2791	1273	17	3	37.00	0.150
2792	1274	10	3	15.67	0.000
2793	1275	19	2	236.44	0.150
2794	1275	28	4	11.20	0.000
2795	1276	7	5	217.86	0.000
2796	1277	17	2	37.92	0.100
2797	1278	3	5	265.84	0.150
2798	1279	36	1	62.28	0.050
2799	1279	38	2	53.92	0.150
2800	1279	5	3	697.06	0.000
2801	1279	46	2	13.60	0.000
2802	1280	22	3	220.21	0.000
2803	1280	44	3	17.94	0.000
2804	1281	3	1	251.64	0.000
2805	1281	21	5	240.02	0.000
2806	1282	48	5	15.51	0.000
2807	1283	12	2	119.09	0.050
2808	1284	5	1	678.60	0.000
2809	1285	27	3	11.36	0.000
2810	1285	33	4	62.11	0.000
2811	1286	18	2	92.76	0.150
2812	1287	24	3	54.23	0.000
2813	1287	18	4	93.02	0.050
2814	1288	31	3	90.89	0.050
2815	1288	38	3	53.19	0.050
2816	1289	38	2	54.38	0.000
2817	1289	11	4	64.31	0.150
2818	1290	19	5	237.52	0.150
2819	1291	6	1	578.06	0.050
2820	1292	46	1	14.83	0.000
2821	1292	18	5	85.37	0.000
2822	1293	41	3	58.51	0.050
2823	1293	37	3	73.68	0.150
2824	1293	6	1	572.20	0.050
2825	1294	5	4	680.40	0.000
2826	1294	18	5	82.98	0.000
2827	1294	15	3	104.87	0.000
2828	1295	47	1	10.37	0.050
2829	1295	14	1	33.01	0.000
2830	1295	6	1	592.47	0.000
2831	1295	46	5	15.07	0.000
2832	1296	10	5	16.88	0.050
2833	1297	10	1	17.89	0.000
2834	1298	4	4	216.97	0.150
2835	1298	7	4	229.86	0.100
2836	1299	31	1	100.19	0.000
2837	1299	32	1	82.24	0.000
2838	1300	20	4	11.88	0.000
2839	1301	32	1	89.78	0.100
2840	1301	28	4	12.59	0.000
2841	1302	43	4	13.67	0.100
2842	1303	6	3	575.56	0.000
2843	1304	21	2	247.02	0.050
2844	1305	46	4	14.89	0.100
2845	1306	28	4	11.66	0.150
2846	1306	26	2	28.87	0.100
2847	1307	30	2	48.19	0.000
2848	1308	1	4	570.70	0.050
2849	1309	27	5	11.84	0.150
2850	1309	18	1	89.19	0.100
2851	1310	11	2	60.92	0.000
2852	1310	8	3	31.81	0.150
2853	1311	18	4	90.84	0.000
2854	1311	15	3	103.64	0.000
2855	1311	46	1	15.69	0.000
2856	1312	28	3	11.24	0.150
2857	1313	7	5	211.38	0.150
2858	1313	22	2	200.82	0.100
2859	1314	29	3	71.28	0.000
2860	1314	47	4	9.84	0.000
2861	1314	21	3	239.52	0.000
2862	1314	32	3	87.39	0.000
2863	1315	1	4	578.90	0.050
2864	1315	37	1	75.76	0.000
2865	1315	10	5	17.00	0.100
2866	1315	28	1	11.72	0.150
2867	1316	18	3	88.62	0.000
2868	1316	6	4	584.87	0.050
2869	1317	13	4	11.87	0.100
2870	1317	40	2	53.85	0.050
2871	1318	17	2	36.62	0.100
2872	1319	47	3	9.46	0.050
2873	1320	5	3	618.99	0.050
2874	1321	6	4	570.02	0.050
2875	1321	11	5	57.52	0.000
2876	1321	5	1	643.36	0.100
2877	1321	12	1	125.23	0.000
2878	1322	35	3	42.61	0.000
2879	1322	3	4	242.88	0.100
2880	1323	40	2	52.63	0.050
2881	1323	6	5	561.12	0.000
2882	1324	18	4	83.39	0.150
2883	1324	39	3	70.45	0.050
2884	1324	40	2	50.50	0.000
2885	1324	23	2	100.03	0.000
2886	1325	5	3	635.76	0.000
2887	1325	29	3	70.32	0.050
2888	1325	1	1	579.96	0.000
2889	1326	5	2	605.13	0.100
2890	1326	11	5	57.03	0.150
2891	1327	16	1	85.49	0.050
2892	1328	22	2	195.53	0.000
2893	1329	25	5	77.41	0.150
2894	1330	5	1	696.75	0.000
2895	1331	23	5	108.54	0.100
2896	1332	7	1	227.89	0.150
2897	1332	25	3	71.00	0.050
2898	1332	12	4	126.93	0.000
2899	1333	38	2	60.20	0.050
2900	1333	21	4	238.83	0.000
2901	1334	29	4	69.02	0.000
2902	1335	9	1	102.32	0.000
2903	1335	43	3	15.41	0.000
2904	1335	13	3	12.17	0.050
2905	1335	45	1	8.59	0.000
2906	1336	16	2	82.54	0.150
2907	1337	26	2	29.06	0.000
2908	1337	34	4	108.68	0.000
2909	1337	5	2	691.16	0.000
2910	1338	18	2	87.84	0.000
2911	1338	35	2	44.01	0.000
2912	1338	28	4	12.27	0.050
2913	1339	35	5	45.44	0.150
2914	1339	48	1	16.92	0.050
2915	1339	1	3	582.17	0.000
2916	1339	39	3	80.88	0.100
2917	1340	37	1	69.24	0.000
2918	1340	10	3	17.03	0.000
2919	1341	23	5	109.46	0.150
2920	1341	42	1	8.73	0.000
2921	1342	18	2	83.39	0.050
2922	1343	18	5	91.39	0.050
2923	1343	21	3	237.81	0.000
2924	1343	5	1	612.82	0.050
2925	1344	43	1	14.31	0.100
2926	1344	34	5	116.48	0.000
2927	1345	28	5	12.82	0.000
2928	1345	6	5	608.28	0.050
2929	1346	13	3	11.22	0.100
2930	1346	5	3	644.84	0.050
2931	1346	35	3	44.31	0.000
2932	1347	31	3	95.86	0.000
2933	1347	44	3	16.96	0.000
2934	1347	28	4	12.03	0.100
2935	1347	14	1	37.03	0.000
2936	1348	25	4	75.94	0.150
2937	1348	21	1	242.64	0.150
2938	1349	1	5	567.00	0.000
2939	1350	41	4	65.85	0.000
2940	1350	46	2	15.72	0.050
2941	1350	48	1	15.46	0.100
2942	1350	21	2	244.66	0.050
2943	1351	46	3	13.89	0.000
2944	1352	44	4	17.33	0.000
2945	1352	30	5	46.76	0.150
2946	1353	16	4	77.48	0.000
2947	1353	22	4	216.35	0.100
2948	1353	8	1	31.99	0.000
2949	1353	3	1	240.83	0.050
2950	1354	27	1	10.82	0.000
2951	1355	17	4	40.73	0.100
2952	1355	30	5	52.18	0.000
2953	1355	15	3	94.60	0.100
2954	1355	46	2	14.38	0.000
2955	1356	25	2	80.29	0.150
2956	1356	33	4	68.88	0.050
2957	1357	45	2	9.32	0.050
2958	1357	28	3	11.29	0.100
2959	1358	11	4	62.50	0.000
2960	1358	1	1	597.14	0.150
2961	1358	48	2	15.21	0.050
2962	1359	6	5	557.63	0.000
2963	1359	18	2	93.84	0.050
2964	1360	4	5	225.40	0.100
2965	1360	16	1	83.92	0.100
2966	1360	8	1	31.53	0.000
2967	1361	5	3	657.07	0.100
2968	1361	12	5	131.61	0.100
2969	1362	16	4	81.89	0.100
2970	1362	2	5	47.74	0.000
2971	1363	37	3	76.78	0.150
2972	1364	48	2	15.18	0.100
2973	1365	43	4	14.76	0.050
2974	1366	31	1	95.13	0.050
2975	1366	26	2	30.20	0.100
2976	1367	11	4	64.88	0.000
2977	1367	38	2	53.40	0.050
2978	1367	28	4	11.97	0.150
2979	1367	33	1	64.79	0.150
2980	1368	42	5	8.91	0.150
2981	1369	28	3	12.82	0.050
2982	1370	35	1	44.81	0.000
2983	1370	46	3	13.85	0.050
2984	1370	7	4	212.79	0.100
2985	1370	38	2	56.75	0.000
2986	1371	17	3	38.87	0.150
2987	1371	29	5	70.29	0.050
2988	1371	30	1	49.98	0.150
2989	1371	5	2	661.68	0.000
2990	1372	5	5	641.77	0.150
2991	1373	26	5	28.78	0.000
2992	1374	1	4	582.07	0.000
2993	1375	6	3	583.64	0.150
2994	1375	39	3	81.00	0.150
2995	1375	32	3	80.20	0.050
2996	1375	35	4	48.16	0.000
2997	1376	33	5	62.03	0.000
2998	1376	42	4	9.04	0.100
2999	1376	43	3	14.07	0.150
3000	1377	30	2	50.78	0.000
3001	1377	5	2	630.62	0.100
3002	1377	37	1	75.84	0.050
3003	1378	23	1	108.83	0.150
3004	1379	7	3	208.76	0.000
3005	1379	5	2	693.73	0.100
3006	1379	17	2	40.23	0.050
3007	1380	16	3	84.22	0.000
3008	1381	43	3	13.65	0.000
3009	1382	41	1	64.09	0.000
3010	1382	31	3	92.71	0.000
3011	1382	44	2	17.35	0.150
3012	1383	7	4	217.03	0.000
3013	1383	29	3	65.67	0.000
3014	1383	6	3	632.27	0.000
3015	1384	8	5	32.30	0.150
3016	1384	29	4	63.35	0.100
3017	1384	40	1	52.10	0.000
3018	1385	40	5	51.39	0.000
3019	1386	35	2	49.07	0.000
3020	1386	46	4	14.57	0.150
3021	1386	12	2	123.68	0.000
3022	1387	24	1	56.68	0.000
3023	1387	36	2	68.79	0.000
3024	1388	29	4	66.50	0.100
3025	1388	40	1	49.56	0.000
3026	1389	46	2	15.04	0.000
3027	1390	30	5	46.21	0.000
3028	1391	11	5	57.27	0.050
3029	1391	40	1	54.69	0.150
3030	1392	21	4	227.28	0.050
3031	1393	4	1	225.01	0.000
3032	1393	1	2	594.10	0.050
3033	1394	21	5	233.93	0.050
3034	1395	47	2	9.35	0.150
3035	1395	45	4	9.13	0.000
3036	1395	41	1	63.62	0.150
3037	1396	5	2	685.82	0.150
3038	1397	16	3	81.65	0.000
3039	1397	11	2	56.25	0.000
3040	1398	44	4	16.92	0.150
3041	1399	45	4	9.55	0.150
3042	1400	31	2	88.36	0.000
3043	1400	6	3	620.08	0.000
3044	1400	30	1	48.52	0.000
3045	1401	7	2	208.99	0.000
3046	1401	34	3	106.58	0.000
3047	1402	24	4	54.58	0.000
3048	1402	40	4	51.45	0.050
3049	1403	28	2	12.10	0.050
3050	1404	2	3	44.75	0.000
3051	1404	13	5	12.09	0.100
3052	1405	43	4	15.55	0.000
3053	1405	20	4	12.27	0.000
3054	1406	43	1	14.24	0.000
3055	1406	8	5	29.62	0.100
3056	1407	33	4	68.31	0.000
3057	1407	36	2	60.86	0.000
3058	1407	32	5	91.75	0.000
3059	1408	22	5	198.32	0.000
3060	1408	3	3	241.07	0.150
3061	1409	33	2	61.93	0.000
3062	1410	31	3	97.58	0.100
3063	1410	47	5	9.92	0.100
3064	1411	8	1	29.08	0.050
3065	1411	22	4	202.56	0.150
3066	1412	28	1	11.93	0.150
3067	1413	24	3	53.29	0.000
3068	1413	27	1	11.51	0.000
3069	1413	14	4	37.57	0.100
3070	1414	42	5	9.19	0.000
3071	1414	11	1	57.29	0.000
3072	1414	1	4	532.79	0.050
3073	1414	44	2	15.86	0.000
3074	1415	22	3	209.65	0.000
3075	1415	20	5	12.18	0.000
3076	1415	31	2	96.48	0.150
3077	1416	39	2	72.13	0.000
3078	1417	21	5	251.51	0.000
3079	1417	17	4	40.48	0.000
3080	1417	7	2	225.46	0.050
3081	1417	8	5	29.61	0.100
3082	1418	15	1	94.97	0.000
3083	1418	4	5	206.29	0.050
3084	1419	40	5	55.69	0.150
3085	1419	7	4	217.96	0.000
3086	1419	22	1	204.55	0.100
3087	1419	5	1	690.56	0.000
3088	1420	12	3	120.77	0.000
3089	1421	15	1	96.45	0.000
3090	1421	12	2	126.71	0.000
3091	1421	1	1	604.22	0.000
3092	1421	42	3	8.40	0.000
3093	1422	1	5	553.02	0.050
3094	1422	23	1	99.73	0.150
3095	1423	46	1	15.60	0.050
3096	1423	3	3	251.48	0.150
3097	1423	9	3	114.13	0.000
3098	1424	13	3	11.27	0.100
3099	1424	18	2	92.82	0.100
3100	1424	12	1	130.65	0.000
3101	1424	16	4	81.74	0.050
3102	1425	13	5	11.79	0.100
3103	1425	15	3	92.16	0.150
3104	1425	41	2	61.26	0.050
3105	1426	12	3	123.07	0.100
3106	1427	2	5	48.25	0.000
3107	1428	36	5	62.87	0.000
3108	1428	38	3	54.18	0.100
3109	1429	5	4	661.13	0.000
3110	1429	40	4	56.03	0.000
3111	1429	34	3	119.12	0.150
3112	1430	7	4	218.23	0.000
3113	1430	17	5	40.60	0.150
3114	1430	12	2	123.76	0.000
3115	1430	24	5	56.92	0.050
3116	1431	37	2	73.44	0.000
3117	1431	3	2	271.95	0.150
3118	1431	17	2	40.06	0.050
3119	1431	5	4	685.96	0.100
3120	1432	44	2	16.96	0.150
3121	1433	2	1	42.34	0.000
3122	1434	40	2	48.68	0.000
3123	1435	44	3	16.11	0.100
3124	1435	17	4	38.37	0.100
3125	1436	24	4	55.20	0.000
3126	1437	30	4	46.56	0.050
3127	1437	9	4	104.22	0.050
3128	1438	32	3	89.93	0.000
3129	1438	44	3	17.25	0.000
3130	1438	46	3	13.88	0.000
3131	1439	31	3	88.05	0.000
3132	1439	5	4	644.77	0.000
3133	1440	5	3	678.22	0.000
3134	1441	27	3	11.48	0.150
3135	1441	16	3	86.09	0.000
3136	1442	3	3	257.67	0.100
3137	1442	5	1	676.33	0.000
3138	1442	43	3	15.24	0.000
3139	1443	48	4	17.15	0.000
3140	1444	33	4	64.21	0.150
3141	1445	25	5	79.31	0.150
3142	1445	48	3	16.95	0.000
3143	1446	45	2	9.14	0.000
3144	1447	35	4	43.80	0.000
3145	1447	5	3	607.97	0.000
3146	1447	14	1	35.50	0.050
3147	1448	36	5	69.33	0.000
3148	1449	2	2	48.64	0.000
3149	1450	27	3	12.42	0.050
3150	1450	31	3	89.08	0.000
3151	1451	24	2	51.79	0.050
3152	1451	21	5	249.10	0.000
3153	1451	14	5	37.69	0.100
3154	1452	40	1	55.22	0.100
3155	1452	20	1	12.33	0.100
3156	1452	25	3	73.27	0.100
3157	1453	35	2	49.25	0.000
3158	1454	17	4	36.48	0.000
3159	1455	4	5	222.58	0.000
3160	1455	33	3	60.69	0.000
3161	1455	6	3	622.39	0.000
3162	1456	29	5	62.61	0.150
3163	1456	7	1	222.44	0.150
3164	1457	22	2	192.97	0.000
3165	1457	44	1	17.99	0.150
3166	1458	25	5	70.19	0.000
3167	1458	45	5	9.07	0.000
3168	1459	33	2	60.66	0.000
3169	1459	41	4	61.86	0.150
3170	1460	6	1	556.43	0.100
3171	1460	15	2	100.21	0.150
3172	1460	41	3	63.19	0.000
3173	1460	36	4	61.33	0.000
3174	1461	18	5	87.18	0.050
3175	1461	48	2	15.80	0.000
3176	1462	22	5	219.40	0.150
3177	1462	5	2	694.20	0.100
3178	1462	25	1	72.43	0.000
3179	1462	12	3	118.41	0.000
3180	1463	47	5	9.70	0.050
3181	1463	45	3	8.48	0.000
3182	1463	22	3	204.96	0.000
3183	1463	36	4	66.21	0.100
3184	1464	9	5	100.52	0.000
3185	1464	47	2	9.78	0.000
3186	1464	31	5	91.74	0.050
3187	1464	6	5	612.36	0.000
3188	1465	38	3	58.12	0.100
3189	1465	11	5	58.94	0.000
3190	1466	15	3	96.88	0.100
3191	1466	16	5	81.43	0.000
3192	1467	47	4	9.68	0.100
3193	1467	17	5	39.85	0.050
3194	1467	41	5	65.68	0.050
3195	1467	22	4	213.16	0.000
3196	1468	24	2	49.93	0.100
3197	1469	15	4	104.90	0.150
3198	1469	18	5	86.99	0.100
3199	1469	31	3	89.83	0.000
3200	1470	28	4	11.62	0.000
3201	1471	40	4	52.24	0.100
3202	1472	48	5	17.22	0.000
3203	1472	8	4	31.41	0.000
3204	1473	18	2	84.25	0.000
3205	1473	48	2	15.93	0.150
3206	1473	31	4	93.68	0.000
3207	1473	34	3	112.81	0.150
3208	1474	18	1	93.43	0.000
3209	1475	16	3	87.02	0.100
3210	1475	26	4	31.69	0.050
3211	1475	7	3	212.68	0.000
3212	1475	27	1	11.38	0.100
3213	1476	48	4	16.75	0.000
3214	1476	4	3	223.04	0.050
3215	1477	27	4	12.09	0.150
3216	1477	10	5	16.37	0.000
3217	1478	42	2	8.75	0.000
3218	1478	30	3	51.85	0.100
3219	1478	11	4	57.93	0.000
3220	1478	39	3	75.09	0.150
3221	1479	39	5	71.18	0.050
3222	1480	20	5	12.08	0.000
3223	1481	44	2	16.90	0.150
3224	1481	22	5	206.38	0.050
3225	1481	29	4	65.31	0.000
3226	1482	17	2	39.13	0.000
3227	1482	15	4	98.33	0.150
3228	1482	32	1	84.00	0.050
3229	1483	47	1	10.18	0.000
3230	1484	23	2	103.67	0.050
3231	1484	4	1	201.91	0.000
3232	1485	32	3	80.80	0.100
3233	1485	22	3	206.12	0.100
3234	1485	43	3	13.74	0.000
3235	1485	35	3	49.42	0.000
3236	1486	17	1	39.95	0.050
3237	1486	14	3	35.02	0.000
3238	1486	5	1	627.73	0.100
3239	1487	5	4	637.41	0.150
3240	1488	37	1	73.49	0.050
3241	1488	45	5	8.44	0.100
3242	1489	43	5	15.12	0.100
3243	1490	14	3	36.84	0.000
3244	1490	15	3	102.59	0.000
3245	1490	40	1	49.27	0.000
3246	1491	41	3	67.90	0.000
3247	1491	28	4	12.59	0.000
3248	1492	43	4	13.93	0.150
3249	1492	38	3	57.92	0.000
3250	1493	38	1	52.58	0.000
3251	1493	44	2	18.04	0.000
3252	1494	25	1	79.75	0.100
3253	1495	45	3	8.32	0.050
3254	1495	13	5	12.30	0.150
3255	1495	4	2	216.54	0.150
3256	1496	28	5	11.58	0.000
3257	1496	35	3	48.68	0.000
3258	1496	17	4	39.32	0.000
3259	1496	2	1	44.03	0.100
3260	1497	14	4	32.67	0.000
3261	1497	33	4	67.83	0.050
3262	1497	19	4	253.59	0.000
3263	1498	35	2	48.06	0.050
3264	1499	31	1	96.99	0.000
3265	1499	7	4	206.66	0.000
3266	1499	35	5	48.56	0.050
3267	1499	36	1	67.49	0.000
3268	1500	39	1	74.97	0.000
3269	1501	4	1	216.53	0.150
3270	1501	36	5	61.84	0.050
3271	1501	10	5	16.44	0.000
3272	1502	22	2	204.01	0.000
3273	1503	36	5	65.45	0.000
3274	1504	33	3	61.06	0.100
3275	1504	1	4	557.80	0.000
3276	1505	14	3	33.27	0.000
3277	1505	48	1	15.92	0.000
3278	1505	10	5	16.06	0.000
3279	1506	2	2	42.42	0.050
3280	1506	33	4	68.12	0.100
3281	1506	20	1	10.92	0.150
3282	1506	25	1	72.91	0.050
3283	1507	30	4	51.72	0.000
3284	1507	25	3	71.70	0.000
3285	1508	15	2	94.23	0.050
3286	1509	3	5	251.18	0.050
3287	1509	47	2	10.20	0.100
3288	1509	6	3	591.22	0.000
3289	1510	4	4	217.92	0.100
3290	1510	24	5	55.52	0.000
3291	1511	20	4	11.34	0.150
3292	1511	27	3	11.59	0.100
3293	1511	30	2	46.51	0.150
3294	1512	29	4	70.86	0.050
3295	1512	39	3	75.92	0.150
3296	1512	14	5	35.68	0.050
3297	1513	29	1	68.60	0.000
3298	1513	5	4	678.71	0.000
3299	1513	36	5	65.08	0.000
3300	1513	3	4	260.59	0.150
3301	1514	17	2	39.38	0.000
3302	1514	23	2	100.91	0.050
3303	1515	3	4	273.41	0.000
3304	1516	17	2	37.50	0.000
3305	1516	34	1	110.84	0.050
3306	1516	20	2	11.34	0.000
3307	1517	16	1	88.59	0.000
3308	1518	14	5	36.82	0.150
3309	1518	31	5	95.35	0.050
3310	1519	5	3	682.94	0.000
3311	1519	37	3	76.98	0.000
3312	1519	8	4	32.02	0.100
3313	1520	44	1	15.95	0.000
3314	1520	11	1	56.99	0.050
3315	1521	21	1	247.83	0.000
3316	1521	11	4	62.60	0.100
3317	1522	35	2	43.99	0.100
3318	1522	24	5	57.45	0.000
3319	1522	16	5	79.61	0.100
3320	1522	46	1	14.54	0.000
3321	1523	43	5	14.17	0.150
3322	1523	7	5	223.03	0.000
3323	1523	24	1	55.55	0.100
3324	1524	3	1	272.89	0.000
3325	1525	18	5	91.42	0.000
3326	1525	38	3	56.18	0.100
3327	1526	19	5	226.31	0.000
3328	1526	30	3	51.52	0.050
3329	1526	8	3	32.02	0.000
3330	1527	5	2	632.63	0.100
3331	1527	31	4	91.13	0.150
3332	1527	30	4	46.55	0.000
3333	1528	34	1	119.80	0.100
3334	1528	4	2	207.21	0.100
3335	1529	41	1	65.42	0.100
3336	1530	39	2	71.05	0.000
3337	1531	12	2	125.96	0.000
3338	1531	17	4	41.03	0.000
3339	1532	40	2	50.43	0.000
3340	1533	18	4	93.53	0.000
3341	1533	11	5	61.27	0.000
3342	1533	42	3	8.83	0.150
3343	1533	27	4	12.18	0.000
3344	1534	3	1	256.31	0.050
3345	1534	27	1	12.32	0.150
3346	1534	20	3	10.95	0.100
3347	1535	26	5	29.45	0.000
3348	1536	38	2	58.65	0.150
3349	1536	23	2	106.17	0.100
3350	1536	45	2	8.66	0.000
3351	1536	16	5	78.10	0.000
3352	1537	24	2	55.49	0.050
3353	1537	16	2	81.28	0.000
3354	1537	26	1	27.79	0.000
3355	1537	2	4	47.18	0.000
3356	1538	5	2	617.76	0.150
3357	1538	44	3	18.02	0.050
3358	1538	6	5	612.85	0.000
3359	1539	5	5	611.62	0.000
3360	1539	47	3	10.29	0.000
3361	1540	21	3	237.46	0.000
3362	1540	26	4	30.83	0.000
3363	1540	41	2	67.95	0.050
3364	1540	28	1	12.39	0.000
3365	1541	28	2	11.61	0.000
3366	1541	1	4	564.26	0.000
3367	1541	21	1	229.89	0.000
3368	1542	2	5	42.49	0.100
3369	1542	3	1	240.84	0.000
3370	1543	34	5	114.93	0.100
3371	1543	3	3	270.93	0.050
3372	1544	3	3	264.10	0.150
3373	1544	38	4	54.70	0.050
3374	1544	36	5	68.52	0.050
3375	1545	36	1	67.66	0.000
3376	1546	27	4	12.36	0.000
3377	1547	5	5	636.37	0.050
3378	1547	6	4	583.57	0.050
3379	1548	20	2	12.34	0.000
3380	1548	41	4	60.44	0.000
3381	1549	28	3	12.42	0.000
3382	1549	16	4	85.85	0.050
3383	1550	31	1	96.34	0.000
3384	1550	27	1	11.43	0.100
3385	1551	24	3	52.37	0.000
3386	1552	37	4	72.50	0.050
3387	1553	19	2	239.57	0.150
3388	1554	11	5	59.10	0.000
3389	1554	2	4	47.06	0.150
3390	1555	10	4	17.44	0.150
3391	1555	26	1	27.23	0.000
3392	1556	48	4	16.30	0.000
3393	1556	12	3	119.71	0.000
3394	1557	1	3	532.14	0.050
3395	1557	28	1	12.33	0.000
3396	1557	12	2	129.57	0.050
3397	1558	21	2	236.63	0.100
3398	1559	36	2	63.38	0.100
3399	1559	26	2	30.50	0.000
3400	1559	30	2	48.74	0.000
3401	1559	24	1	51.45	0.000
3402	1560	17	1	38.93	0.000
3403	1560	27	1	11.45	0.000
3404	1560	6	5	607.96	0.150
3405	1561	9	3	114.27	0.050
3406	1561	43	5	13.72	0.000
3407	1561	47	4	9.56	0.100
3408	1562	13	1	11.50	0.000
3409	1563	46	2	13.93	0.150
3410	1563	8	4	31.83	0.150
3411	1563	1	3	553.39	0.000
3412	1563	33	3	63.25	0.100
3413	1564	25	4	70.26	0.150
3414	1565	31	2	101.52	0.000
3415	1565	43	4	14.74	0.000
3416	1566	15	4	101.50	0.100
3417	1566	19	1	227.08	0.150
3418	1566	26	3	27.54	0.050
3419	1566	2	2	43.37	0.050
3420	1567	42	3	8.40	0.000
3421	1567	15	4	90.82	0.000
3422	1567	5	3	646.73	0.100
3423	1568	2	1	48.67	0.050
3424	1569	29	4	71.47	0.000
3425	1570	46	4	15.45	0.000
3426	1570	18	5	82.84	0.000
3427	1571	28	4	11.54	0.000
3428	1571	15	5	94.81	0.100
3429	1571	47	4	10.41	0.000
3430	1572	16	1	88.07	0.000
3431	1572	45	5	9.00	0.050
3432	1572	23	2	109.53	0.150
3433	1572	48	5	16.36	0.050
3434	1573	37	2	76.91	0.050
3435	1573	39	4	75.59	0.000
3436	1574	9	1	114.83	0.000
3437	1574	25	2	73.02	0.050
3438	1574	45	5	8.96	0.000
3439	1575	15	5	101.04	0.000
3440	1575	31	1	98.27	0.050
3441	1576	12	4	137.56	0.000
3442	1577	43	1	13.59	0.000
3443	1578	36	5	62.25	0.000
3444	1579	43	3	14.58	0.050
3445	1579	44	4	18.02	0.000
3446	1580	2	4	43.69	0.000
3447	1581	2	2	43.53	0.000
3448	1581	45	4	9.03	0.050
3449	1581	21	5	240.93	0.050
3450	1581	28	3	11.05	0.000
3451	1582	47	2	9.93	0.000
3452	1582	9	5	102.62	0.150
3453	1582	26	4	31.35	0.000
3454	1583	17	1	38.94	0.100
3455	1583	2	3	46.14	0.050
3456	1584	45	1	9.25	0.050
3457	1584	11	4	61.20	0.100
3458	1584	5	3	660.42	0.150
3459	1584	46	3	15.73	0.000
3460	1585	47	1	9.27	0.000
3461	1585	21	5	230.18	0.100
3462	1586	44	1	15.75	0.050
3463	1586	26	4	27.27	0.150
3464	1586	10	3	16.45	0.150
3465	1586	28	1	11.22	0.000
3466	1587	3	5	266.96	0.100
3467	1588	41	5	59.76	0.050
3468	1588	15	2	102.28	0.000
3469	1589	9	5	107.98	0.150
3470	1589	5	4	670.94	0.000
3471	1590	46	1	13.61	0.000
3472	1590	3	5	243.66	0.000
3473	1591	14	4	32.67	0.050
3474	1592	1	2	584.76	0.150
3475	1592	41	3	60.32	0.050
3476	1592	14	5	33.23	0.050
3477	1592	10	5	15.51	0.100
3478	1593	28	5	11.73	0.100
3479	1593	44	3	15.58	0.000
3480	1594	36	1	61.84	0.150
3481	1594	42	1	8.66	0.000
3482	1595	1	5	537.41	0.000
3483	1595	8	3	27.81	0.000
3484	1595	42	5	9.30	0.050
3485	1596	45	2	9.15	0.000
3486	1597	12	3	132.86	0.150
3487	1597	13	5	11.24	0.000
3488	1598	44	4	17.73	0.050
3489	1598	35	5	46.38	0.050
3490	1599	2	2	42.33	0.000
3491	1599	35	5	42.61	0.100
3492	1599	31	1	99.92	0.050
3493	1600	12	5	137.69	0.000
3494	1601	21	4	237.45	0.100
3495	1601	6	1	618.40	0.050
3496	1602	34	5	113.31	0.000
3497	1602	7	3	223.87	0.000
3498	1603	48	1	15.48	0.100
3499	1603	41	5	67.05	0.100
3500	1603	40	2	48.72	0.050
3501	1603	18	4	94.92	0.150
3502	1604	39	2	75.90	0.150
3503	1604	22	4	221.01	0.000
3504	1604	44	4	17.50	0.100
3505	1604	10	5	16.38	0.150
3506	1605	31	2	94.94	0.000
3507	1606	48	4	15.50	0.150
3508	1607	33	2	68.25	0.100
3509	1607	41	5	65.61	0.050
3510	1607	46	5	15.76	0.000
3511	1608	20	1	11.56	0.150
3512	1609	44	2	16.38	0.000
3513	1609	1	4	570.58	0.000
3514	1610	16	2	82.08	0.100
3515	1610	9	5	105.69	0.000
3516	1611	4	2	202.89	0.000
3517	1611	16	3	83.02	0.000
3518	1611	19	4	249.34	0.000
3519	1611	3	5	248.77	0.000
3520	1612	13	4	12.31	0.000
3521	1613	41	2	63.05	0.150
3522	1613	1	4	554.54	0.050
3523	1613	7	2	207.38	0.000
3524	1613	35	2	47.22	0.150
3525	1614	23	2	108.74	0.000
3526	1614	24	3	52.26	0.000
3527	1614	38	3	52.25	0.050
3528	1614	14	3	34.94	0.050
3529	1615	12	2	126.04	0.050
3530	1615	47	2	10.36	0.050
3531	1615	37	1	70.03	0.150
3532	1616	39	1	75.49	0.050
3533	1616	5	1	698.48	0.150
3534	1617	17	3	38.98	0.050
3535	1618	44	2	17.52	0.000
3536	1619	22	2	192.01	0.000
3537	1620	9	2	108.66	0.150
3538	1620	30	4	50.90	0.000
3539	1621	34	1	121.99	0.000
3540	1621	27	5	11.76	0.000
3541	1621	17	4	39.52	0.000
3542	1621	33	5	62.36	0.150
3543	1622	42	4	9.19	0.000
3544	1623	27	3	11.62	0.050
3545	1623	4	4	201.13	0.100
3546	1624	10	5	16.22	0.050
3547	1624	34	1	119.11	0.000
3548	1625	5	3	622.14	0.050
3549	1626	31	5	99.94	0.150
3550	1626	5	2	649.28	0.100
3551	1627	36	3	63.25	0.000
3552	1628	36	1	66.13	0.000
3553	1628	45	1	8.84	0.150
3554	1629	4	4	225.61	0.000
3555	1630	21	1	222.67	0.100
3556	1631	48	3	15.23	0.000
3557	1631	1	3	530.26	0.000
3558	1631	43	3	14.66	0.000
3559	1632	24	5	56.11	0.050
3560	1632	18	4	91.79	0.150
3561	1633	17	2	35.70	0.000
3562	1633	26	3	27.73	0.150
3563	1633	14	4	34.19	0.150
3564	1633	24	1	57.02	0.000
3565	1634	21	3	237.47	0.000
3566	1635	6	3	580.66	0.100
3567	1635	5	1	623.70	0.000
3568	1636	17	3	39.88	0.000
3569	1637	6	1	639.73	0.100
3570	1638	43	3	14.73	0.000
3571	1638	5	3	685.48	0.050
3572	1639	17	2	37.41	0.050
3573	1639	9	1	105.72	0.000
3574	1639	11	5	61.07	0.050
3575	1639	36	1	68.11	0.000
3576	1640	23	2	107.93	0.000
3577	1640	28	4	12.61	0.050
3578	1641	38	2	55.40	0.000
3579	1641	45	3	9.51	0.050
3580	1641	12	4	124.72	0.000
3581	1642	19	3	237.82	0.000
3582	1642	28	3	11.77	0.000
3583	1642	24	4	54.16	0.050
3584	1643	30	1	50.21	0.000
3585	1644	20	2	11.13	0.000
3586	1644	29	2	70.02	0.150
3587	1644	46	4	13.72	0.050
3588	1644	41	2	61.17	0.050
3589	1645	35	1	46.05	0.000
3590	1646	23	5	111.85	0.000
3591	1646	33	4	62.88	0.000
3592	1647	5	2	694.33	0.100
3593	1648	11	5	61.29	0.050
3594	1649	11	1	58.17	0.050
3595	1649	25	5	74.14	0.000
3596	1649	9	4	115.65	0.150
3597	1649	31	5	93.37	0.050
3598	1650	16	2	76.92	0.050
3599	1650	29	5	64.03	0.000
3600	1650	6	1	593.05	0.150
3601	1651	46	1	13.70	0.000
3602	1651	14	3	35.49	0.150
3603	1651	38	4	53.70	0.000
3604	1651	30	2	50.87	0.150
3605	1652	5	3	681.67	0.050
3606	1652	19	4	252.17	0.050
3607	1652	26	3	28.94	0.000
3608	1653	40	3	56.29	0.100
3609	1653	38	3	60.09	0.050
3610	1653	18	1	89.23	0.000
3611	1653	41	5	64.19	0.000
3612	1654	37	5	68.28	0.000
3613	1655	14	4	34.13	0.000
3614	1655	30	1	46.23	0.150
3615	1656	43	5	14.22	0.150
3616	1656	38	3	54.87	0.050
3617	1657	41	4	59.71	0.150
3618	1657	6	4	566.02	0.100
3619	1657	24	3	57.00	0.100
3620	1658	11	1	59.92	0.000
3621	1658	5	5	665.64	0.000
3622	1658	24	4	52.02	0.000
3623	1658	4	2	199.61	0.150
3624	1659	2	5	47.33	0.100
3625	1659	4	2	225.46	0.000
3626	1660	1	2	577.14	0.050
3627	1660	15	3	99.94	0.000
3628	1661	24	2	52.50	0.100
3629	1662	20	4	10.71	0.100
3630	1662	39	1	81.63	0.000
3631	1663	45	2	9.42	0.050
3632	1663	35	4	43.18	0.050
3633	1664	6	2	601.91	0.000
3634	1664	3	1	250.64	0.000
3635	1664	36	1	62.48	0.100
3636	1665	25	4	72.59	0.000
3637	1665	11	2	57.32	0.100
3638	1665	7	5	230.92	0.000
3639	1666	45	2	8.33	0.000
3640	1666	28	4	11.92	0.000
3641	1666	46	1	15.63	0.000
3642	1667	8	5	31.46	0.050
3643	1667	21	1	223.42	0.150
3644	1667	11	1	63.38	0.000
3645	1668	5	4	648.03	0.150
3646	1668	46	4	13.92	0.000
3647	1669	45	4	9.53	0.000
3648	1670	18	4	95.08	0.050
3649	1670	39	2	80.53	0.000
3650	1671	1	1	576.90	0.000
3651	1671	18	1	90.21	0.000
3652	1671	16	2	79.61	0.000
3653	1672	35	2	47.43	0.100
3654	1672	22	3	202.56	0.000
3655	1673	16	4	80.11	0.000
3656	1673	34	3	112.41	0.000
3657	1673	28	4	12.76	0.000
3658	1674	26	2	27.70	0.000
3659	1675	8	3	28.95	0.000
3660	1676	5	4	656.59	0.000
3661	1677	5	1	654.32	0.000
3662	1677	26	1	30.77	0.000
3663	1678	27	2	11.04	0.000
3664	1678	15	5	95.91	0.100
3665	1678	31	3	97.73	0.150
3666	1679	25	5	71.78	0.000
3667	1680	8	1	28.66	0.150
3668	1680	17	1	36.79	0.100
3669	1680	41	3	63.87	0.000
3670	1681	22	5	201.90	0.150
3671	1681	8	3	31.54	0.100
3672	1681	23	3	102.45	0.150
3673	1682	8	4	32.26	0.150
3674	1683	38	3	57.83	0.000
3675	1684	28	3	12.70	0.100
3676	1685	46	5	14.21	0.150
3677	1686	20	5	11.19	0.150
3678	1686	19	2	243.22	0.150
3679	1686	16	3	85.98	0.000
3680	1687	25	3	76.45	0.150
3681	1687	31	1	99.79	0.000
3682	1688	44	5	17.61	0.000
3683	1688	5	1	651.43	0.100
3684	1689	17	3	37.62	0.150
3685	1689	6	1	647.91	0.100
3686	1690	10	3	16.06	0.000
3687	1690	7	2	204.62	0.150
3688	1690	47	5	10.18	0.100
3689	1690	11	2	60.03	0.100
3690	1691	10	5	16.54	0.150
3691	1692	1	5	599.94	0.000
3692	1692	29	1	70.04	0.050
3693	1693	41	5	65.72	0.050
3694	1693	46	4	15.27	0.100
3695	1693	15	2	90.80	0.150
3696	1694	33	3	65.02	0.150
3697	1694	45	4	8.87	0.000
3698	1695	26	3	29.22	0.050
3699	1695	24	3	50.32	0.100
3700	1696	9	2	101.15	0.050
3701	1696	12	4	130.20	0.000
3702	1697	23	2	113.34	0.000
3703	1697	29	2	64.19	0.100
3704	1698	48	4	16.09	0.000
3705	1698	36	2	65.72	0.150
3706	1699	26	4	29.94	0.000
3707	1700	34	2	113.32	0.000
3708	1701	45	1	8.21	0.150
3709	1701	38	3	53.04	0.000
3710	1701	17	1	36.58	0.050
3711	1701	1	3	543.37	0.000
3712	1702	24	4	54.83	0.000
3713	1703	18	4	85.53	0.000
3714	1704	30	5	50.30	0.050
3715	1705	3	2	263.12	0.100
3716	1705	39	4	81.15	0.150
3717	1705	44	5	17.80	0.150
3718	1706	27	3	12.20	0.000
3719	1706	47	1	9.14	0.000
3720	1706	28	5	11.77	0.150
3721	1707	10	1	16.27	0.100
3722	1707	16	4	80.62	0.100
3723	1708	19	4	233.56	0.150
3724	1708	42	3	8.27	0.050
3725	1708	4	5	214.49	0.000
3726	1709	30	2	48.12	0.050
3727	1709	48	2	16.04	0.050
3728	1709	46	2	13.96	0.150
3729	1710	8	1	30.58	0.000
3730	1710	36	5	65.20	0.150
3731	1710	47	1	10.06	0.000
3732	1711	32	1	91.72	0.000
3733	1712	46	3	14.52	0.100
3734	1713	9	5	115.88	0.000
3735	1713	43	3	14.27	0.000
3736	1714	29	1	67.81	0.100
3737	1715	5	5	667.23	0.150
3738	1716	29	1	61.76	0.100
3739	1716	3	2	252.24	0.000
3740	1716	27	5	11.29	0.050
3741	1717	26	3	29.22	0.050
3742	1717	28	5	11.25	0.150
3743	1718	44	4	17.37	0.000
3744	1718	36	4	68.03	0.150
3745	1718	45	1	9.07	0.150
3746	1719	39	2	72.95	0.000
3747	1719	9	5	107.08	0.150
3748	1719	43	4	13.40	0.000
3749	1720	34	1	107.02	0.000
3750	1720	5	3	683.87	0.050
3751	1721	25	1	76.00	0.100
3752	1722	1	5	527.06	0.000
3753	1722	40	2	53.51	0.000
3754	1723	6	2	644.53	0.000
3755	1723	14	2	33.01	0.000
3756	1724	3	1	276.69	0.000
3757	1724	31	1	101.36	0.050
3758	1725	7	1	224.92	0.000
3759	1725	27	2	12.06	0.150
3760	1726	28	3	11.93	0.000
3761	1727	6	1	617.16	0.000
3762	1727	43	2	15.35	0.100
3763	1727	39	2	72.72	0.000
3764	1728	43	3	14.74	0.100
3765	1729	5	1	643.13	0.000
3766	1729	45	5	9.25	0.000
3767	1730	17	1	40.11	0.100
3768	1730	18	4	90.27	0.000
3769	1731	22	5	192.32	0.000
3770	1731	45	4	8.56	0.050
3771	1731	28	5	12.05	0.150
3772	1731	40	5	56.08	0.000
3773	1732	20	2	11.88	0.150
3774	1733	28	2	11.61	0.000
3775	1733	41	5	61.20	0.050
3776	1733	39	1	80.73	0.000
3777	1733	7	4	233.25	0.000
3778	1734	1	2	610.75	0.150
3779	1734	39	4	81.66	0.000
3780	1734	25	4	70.69	0.150
3781	1735	44	3	15.68	0.000
3782	1735	32	2	82.28	0.150
3783	1735	21	2	229.32	0.000
3784	1735	22	4	217.70	0.000
3785	1736	5	3	693.66	0.000
3786	1737	40	5	50.53	0.150
3787	1737	10	2	15.82	0.150
3788	1738	18	3	94.74	0.000
3789	1738	47	1	10.13	0.000
3790	1738	45	1	8.58	0.000
3791	1739	28	5	11.30	0.000
3792	1740	37	4	69.66	0.000
3793	1740	11	4	59.44	0.050
3794	1740	34	5	118.40	0.050
3795	1740	14	3	34.57	0.050
3796	1741	10	2	17.36	0.050
3797	1741	19	2	224.97	0.000
3798	1742	36	1	64.19	0.000
3799	1743	25	1	75.24	0.100
3800	1743	35	4	44.68	0.150
3801	1744	14	1	36.32	0.000
3802	1744	46	4	14.83	0.100
3803	1745	46	1	14.15	0.000
3804	1745	41	1	58.55	0.050
3805	1746	25	3	73.17	0.050
3806	1746	20	3	12.35	0.000
3807	1746	5	5	682.37	0.050
3808	1747	16	3	86.90	0.050
3809	1748	19	3	242.27	0.050
3810	1748	46	5	15.16	0.100
3811	1748	41	1	65.54	0.100
3812	1748	31	5	93.58	0.150
3813	1749	30	4	52.63	0.000
3814	1749	32	3	87.28	0.000
3815	1749	14	2	33.25	0.000
3816	1750	14	4	35.63	0.000
3817	1750	30	4	50.71	0.050
3818	1750	17	1	38.08	0.000
3819	1751	11	5	64.21	0.000
3820	1752	27	5	11.06	0.100
3821	1752	17	4	36.16	0.000
3822	1752	46	2	14.93	0.000
3823	1753	18	5	87.36	0.000
3824	1754	34	3	115.30	0.100
3825	1755	23	1	100.31	0.000
3826	1755	12	1	118.73	0.050
3827	1756	48	5	17.19	0.150
3828	1756	17	2	35.80	0.000
3829	1757	36	1	70.56	0.150
3830	1757	20	2	11.46	0.050
3831	1758	2	1	42.85	0.000
3832	1758	15	5	91.85	0.000
3833	1759	32	5	81.61	0.000
3834	1759	17	5	38.93	0.000
3835	1760	17	4	39.52	0.000
3836	1760	20	5	11.71	0.000
3837	1761	15	4	97.05	0.000
3838	1761	38	4	52.83	0.000
3839	1761	13	4	10.91	0.000
3840	1762	11	3	64.76	0.100
3841	1762	31	1	97.40	0.150
3842	1763	7	4	224.43	0.000
3843	1763	41	2	65.51	0.050
3844	1763	1	5	563.23	0.000
3845	1764	23	5	103.97	0.050
3846	1764	38	3	58.97	0.150
3847	1765	29	3	70.58	0.150
3848	1766	16	4	83.18	0.100
3849	1766	42	1	8.76	0.000
3850	1767	3	4	260.00	0.000
3851	1767	15	5	93.50	0.150
3852	1767	35	3	49.12	0.100
3853	1768	45	3	9.31	0.000
3854	1768	30	2	45.67	0.000
3855	1768	1	4	545.20	0.150
3856	1768	2	3	42.92	0.150
3857	1769	5	1	604.59	0.150
3858	1770	21	1	233.64	0.100
3859	1770	17	5	40.56	0.050
3860	1770	37	4	70.24	0.000
3861	1771	42	3	8.37	0.050
3862	1771	14	3	32.73	0.000
3863	1772	20	1	11.94	0.000
3864	1772	16	4	82.11	0.100
3865	1772	22	5	216.02	0.000
3866	1772	5	1	665.52	0.050
3867	1773	12	5	119.30	0.000
3868	1773	13	1	12.12	0.100
3869	1774	33	3	68.52	0.000
3870	1774	3	5	261.48	0.100
3871	1774	21	5	227.20	0.000
3872	1775	10	4	17.03	0.000
3873	1775	24	2	51.29	0.150
3874	1775	5	2	663.42	0.100
3875	1775	26	4	28.10	0.000
3876	1776	8	3	29.06	0.000
3877	1776	12	4	122.27	0.000
3878	1776	2	1	43.22	0.150
3879	1777	9	1	112.79	0.150
3880	1777	25	5	70.57	0.000
3881	1777	20	5	12.25	0.150
3882	1778	20	5	11.21	0.050
3883	1778	14	5	34.56	0.050
3884	1779	44	2	17.54	0.000
3885	1780	24	4	55.25	0.100
3886	1781	33	1	64.84	0.150
3887	1782	33	5	61.94	0.150
3888	1782	8	3	31.20	0.100
3889	1783	39	3	74.49	0.000
3890	1784	29	3	64.79	0.050
3891	1784	32	3	84.47	0.000
3892	1784	46	1	13.86	0.100
3893	1784	19	5	250.07	0.000
3894	1785	24	5	57.71	0.100
3895	1785	20	5	11.92	0.050
3896	1786	8	2	29.31	0.100
3897	1786	2	2	47.65	0.050
3898	1786	40	1	51.71	0.000
3899	1786	10	4	15.81	0.050
3900	1787	41	2	61.09	0.050
3901	1787	4	1	209.48	0.000
3902	1787	22	5	198.88	0.000
3903	1788	46	1	14.24	0.000
3904	1789	15	4	98.62	0.000
3905	1790	13	5	10.73	0.000
3906	1790	24	2	51.01	0.000
3907	1790	26	3	27.44	0.100
3908	1791	35	5	47.07	0.100
3909	1792	6	2	582.61	0.150
3910	1792	26	4	28.54	0.000
3911	1792	10	4	16.22	0.000
3912	1792	17	4	39.19	0.000
3913	1793	32	5	90.42	0.050
3914	1794	25	5	77.85	0.100
3915	1794	37	4	70.99	0.100
3916	1795	10	2	17.15	0.150
3917	1795	42	2	8.37	0.100
3918	1795	12	1	122.62	0.000
3919	1796	27	4	12.41	0.150
3920	1796	34	3	113.85	0.000
3921	1796	4	3	224.29	0.000
3922	1797	26	4	30.17	0.000
3923	1797	39	3	72.95	0.050
3924	1797	11	4	56.56	0.050
3925	1797	28	3	11.38	0.000
3926	1798	17	4	39.59	0.000
3927	1798	9	1	104.30	0.000
3928	1799	5	3	643.52	0.150
3929	1799	15	3	103.48	0.100
3930	1799	35	1	47.00	0.000
3931	1799	12	5	128.02	0.050
3932	1800	48	5	16.71	0.000
3933	1801	23	4	112.48	0.150
3934	1801	19	5	250.80	0.050
3935	1802	28	1	12.78	0.000
3936	1802	14	3	37.52	0.100
3937	1802	13	1	11.14	0.000
3938	1803	48	3	15.47	0.000
3939	1803	28	1	11.04	0.000
3940	1803	9	1	106.83	0.100
3941	1803	30	3	47.81	0.000
3942	1804	3	3	248.88	0.100
3943	1805	28	4	11.67	0.000
3944	1805	12	2	122.12	0.000
3945	1806	22	2	204.63	0.000
3946	1806	4	2	211.67	0.050
3947	1807	48	4	16.54	0.000
3948	1807	28	5	11.03	0.050
3949	1808	39	2	79.93	0.000
3950	1808	24	2	54.33	0.000
3951	1808	45	2	8.22	0.000
3952	1808	18	5	86.39	0.100
3953	1809	46	5	14.09	0.000
3954	1810	5	3	673.77	0.100
3955	1810	33	1	66.85	0.000
3956	1810	4	5	205.59	0.000
3957	1810	26	3	30.50	0.000
3958	1811	17	2	38.03	0.050
3959	1811	5	2	612.10	0.050
3960	1812	12	3	132.02	0.100
3961	1813	34	1	113.12	0.100
3962	1813	29	3	62.08	0.100
3963	1814	16	1	86.62	0.000
3964	1814	4	3	222.11	0.100
3965	1814	6	4	611.55	0.100
3966	1815	32	1	86.42	0.150
3967	1815	17	3	35.62	0.000
3968	1815	46	3	15.67	0.000
3969	1815	10	3	16.90	0.000
3970	1816	42	3	8.58	0.150
3971	1816	12	4	120.34	0.150
3972	1817	48	1	15.22	0.100
3973	1818	1	5	531.95	0.050
3974	1818	4	1	227.11	0.000
3975	1818	32	4	88.38	0.100
3976	1819	30	4	51.67	0.000
3977	1819	43	5	14.44	0.150
3978	1819	9	1	101.89	0.000
3979	1819	42	5	9.22	0.000
3980	1820	8	2	29.49	0.000
3981	1820	47	5	10.34	0.150
3982	1821	18	5	88.23	0.050
3983	1821	13	3	11.55	0.100
3984	1821	9	1	108.31	0.050
3985	1821	17	5	38.02	0.000
3986	1822	17	4	39.15	0.000
3987	1823	27	5	11.80	0.000
3988	1823	24	2	55.19	0.000
3989	1823	41	1	60.79	0.100
3990	1824	15	2	95.21	0.000
3991	1824	12	4	131.74	0.000
3992	1825	33	1	60.29	0.100
3993	1825	38	5	53.51	0.150
3994	1826	33	4	62.48	0.000
3995	1826	16	5	85.18	0.150
3996	1827	20	3	11.06	0.000
3997	1827	45	1	8.29	0.000
3998	1827	3	5	244.69	0.050
3999	1827	40	3	52.84	0.150
4000	1828	18	2	93.16	0.100
4001	1829	32	5	85.83	0.100
4002	1830	33	5	67.82	0.100
4003	1831	38	2	55.01	0.000
4004	1831	14	5	34.27	0.100
4005	1831	41	1	59.38	0.000
4006	1831	46	4	13.66	0.000
4007	1832	12	3	134.55	0.000
4008	1832	19	4	256.57	0.000
4009	1832	8	2	29.37	0.000
4010	1832	40	2	49.83	0.000
4011	1833	15	3	96.04	0.000
4012	1834	34	1	106.07	0.100
4013	1834	23	1	104.18	0.000
4014	1834	9	1	104.47	0.150
4015	1835	41	1	63.15	0.050
4016	1835	5	4	654.14	0.100
4017	1836	47	1	9.16	0.000
4018	1836	39	1	74.28	0.050
4019	1837	8	3	28.29	0.000
4020	1837	14	5	37.83	0.150
4021	1837	37	5	70.10	0.000
4022	1838	7	4	211.86	0.000
4023	1839	20	4	11.79	0.100
4024	1839	33	5	63.02	0.000
4025	1839	40	3	53.07	0.150
4026	1839	35	2	45.85	0.100
4027	1840	7	4	212.20	0.000
4028	1840	37	1	79.23	0.000
4029	1841	7	2	203.78	0.000
4030	1842	12	4	127.55	0.000
4031	1842	41	2	68.13	0.000
4032	1843	11	2	61.25	0.050
4033	1843	3	4	257.98	0.000
4034	1844	43	5	15.08	0.050
4035	1844	41	4	65.30	0.050
4036	1844	20	1	12.42	0.150
4037	1844	32	4	90.99	0.000
4038	1845	4	1	206.25	0.000
4039	1845	45	1	9.40	0.000
4040	1845	5	1	671.54	0.100
4041	1845	46	4	15.76	0.000
4042	1846	13	4	11.74	0.150
4043	1846	41	2	65.96	0.050
4044	1846	36	4	66.06	0.050
4045	1847	42	2	8.12	0.100
4046	1847	39	3	77.22	0.000
4047	1848	1	4	568.09	0.000
4048	1848	47	5	9.77	0.000
4049	1848	37	3	75.41	0.100
4050	1848	40	4	50.27	0.000
4051	1849	46	4	13.86	0.000
4052	1849	16	5	88.81	0.000
4053	1850	38	4	53.61	0.150
4054	1851	15	4	93.70	0.000
4055	1851	47	5	8.96	0.000
4056	1851	2	3	42.65	0.000
4057	1852	32	5	89.97	0.050
4058	1852	3	2	274.29	0.150
4059	1852	12	2	130.63	0.100
4060	1852	8	2	30.17	0.050
4061	1853	15	3	104.46	0.000
4062	1853	48	3	17.37	0.000
4063	1853	5	2	646.77	0.000
4064	1853	28	2	12.42	0.050
4065	1854	35	5	45.42	0.000
4066	1855	44	1	15.63	0.100
4067	1855	2	2	47.15	0.000
4068	1855	24	1	55.18	0.000
4069	1856	2	5	42.81	0.000
4070	1856	9	5	104.50	0.050
4071	1857	41	2	60.19	0.000
4072	1857	19	5	242.52	0.050
4073	1857	1	2	584.33	0.000
4074	1857	18	2	91.37	0.150
4075	1858	26	1	27.51	0.150
4076	1859	44	2	17.11	0.000
4077	1860	46	5	15.38	0.100
4078	1861	15	5	97.12	0.150
4079	1861	11	1	58.83	0.050
4080	1862	27	5	12.21	0.000
4081	1862	30	2	47.37	0.100
4082	1863	21	5	231.44	0.000
4083	1863	37	1	76.64	0.100
4084	1864	13	2	11.62	0.050
4085	1864	6	5	584.67	0.000
4086	1864	27	2	11.69	0.050
4087	1865	5	3	622.27	0.100
4088	1865	43	3	13.82	0.150
4089	1865	23	3	108.93	0.000
4090	1865	47	3	10.07	0.150
4091	1866	44	4	16.74	0.150
4092	1866	33	5	64.47	0.100
4093	1866	11	2	65.36	0.000
4094	1867	1	3	527.95	0.100
4095	1867	20	4	12.05	0.000
4096	1867	8	2	29.15	0.000
4097	1867	45	4	8.70	0.050
4098	1868	45	3	8.95	0.050
4099	1869	5	3	659.00	0.050
4100	1869	8	1	32.32	0.100
4101	1870	2	4	43.91	0.000
4102	1870	43	4	15.13	0.100
4103	1870	31	3	96.47	0.150
4104	1870	5	2	666.64	0.000
4105	1871	33	5	64.82	0.000
4106	1871	26	5	27.95	0.050
4107	1871	2	3	48.20	0.000
4108	1871	7	2	203.70	0.100
4109	1872	5	4	608.18	0.000
4110	1872	30	3	46.74	0.000
4111	1872	25	4	72.52	0.150
4112	1873	38	1	57.34	0.000
4113	1874	44	3	16.25	0.150
4114	1875	40	5	54.47	0.000
4115	1875	18	2	88.19	0.150
4116	1875	6	5	580.87	0.000
4117	1875	21	2	235.35	0.000
4118	1876	5	1	629.55	0.100
4119	1876	43	3	15.56	0.000
4120	1877	33	1	66.01	0.150
4121	1877	48	3	17.37	0.000
4122	1878	46	5	13.77	0.150
4123	1879	17	3	39.96	0.000
4124	1880	9	4	105.10	0.050
4125	1880	48	4	16.08	0.000
4126	1881	11	3	58.60	0.000
4127	1881	47	2	9.85	0.000
4128	1882	37	5	77.63	0.000
4129	1883	37	2	72.45	0.000
4130	1883	24	1	55.42	0.000
4131	1884	17	5	37.81	0.000
4132	1884	20	5	11.94	0.000
4133	1885	46	3	15.11	0.150
4134	1885	10	4	17.31	0.100
4135	1886	9	4	106.60	0.050
4136	1886	27	3	12.04	0.150
4137	1886	18	1	86.34	0.050
4138	1886	22	3	194.38	0.000
4139	1887	9	5	112.12	0.000
4140	1888	11	5	65.38	0.000
4141	1888	27	4	11.63	0.000
4142	1889	5	3	621.92	0.150
4143	1890	43	5	15.61	0.000
4144	1890	14	2	35.15	0.000
4145	1891	6	3	603.27	0.000
4146	1891	11	4	62.50	0.000
4147	1892	42	4	8.12	0.000
4148	1892	8	5	30.49	0.000
4149	1892	23	2	101.80	0.150
4150	1893	40	5	54.52	0.000
4151	1893	8	4	29.45	0.100
4152	1893	2	2	43.37	0.000
4153	1894	15	1	90.96	0.100
4154	1894	28	4	12.22	0.100
4155	1894	32	3	84.06	0.100
4156	1894	1	5	555.75	0.000
4157	1895	40	3	54.16	0.000
4158	1896	5	2	667.87	0.000
4159	1897	7	4	231.18	0.000
4160	1898	27	5	11.68	0.150
4161	1898	24	5	52.18	0.000
4162	1898	40	1	56.43	0.000
4163	1898	4	4	219.61	0.050
4164	1899	40	2	53.96	0.050
4165	1899	35	5	48.89	0.000
4166	1900	28	3	11.68	0.150
4167	1901	23	1	110.87	0.050
4168	1901	24	4	56.08	0.000
4169	1902	43	2	14.45	0.000
4170	1903	5	2	688.08	0.000
4171	1904	23	5	99.68	0.000
4172	1904	10	3	15.90	0.050
4173	1904	25	1	69.19	0.100
4174	1905	22	2	195.20	0.100
4175	1905	21	4	246.09	0.100
4176	1906	32	3	91.99	0.000
4177	1907	13	4	11.58	0.000
4178	1907	43	4	13.93	0.150
4179	1908	48	3	15.80	0.000
4180	1908	28	4	11.25	0.000
4181	1909	41	1	60.84	0.150
4182	1910	11	1	59.17	0.000
4183	1910	1	4	587.31	0.000
4184	1910	14	2	36.20	0.000
4185	1911	30	4	48.20	0.000
4186	1911	21	4	239.35	0.000
4187	1911	37	1	78.05	0.050
4188	1911	44	3	16.52	0.150
4189	1912	42	2	8.79	0.000
4190	1912	21	2	221.90	0.000
4191	1912	5	5	665.05	0.100
4192	1912	9	5	109.45	0.050
4193	1913	13	5	10.66	0.000
4194	1913	6	3	578.28	0.000
4195	1914	16	1	88.33	0.000
4196	1915	17	3	38.05	0.100
4197	1915	14	3	33.00	0.050
4198	1916	40	4	56.56	0.000
4199	1916	43	2	15.21	0.100
4200	1917	40	5	56.72	0.150
4201	1917	17	4	40.88	0.000
4202	1917	27	2	11.83	0.050
4203	1917	44	5	16.30	0.050
4204	1918	37	5	77.99	0.000
4205	1918	6	1	567.54	0.050
4206	1919	9	1	103.27	0.150
4207	1919	7	2	205.88	0.000
4208	1919	37	1	75.13	0.000
4209	1919	25	2	78.63	0.150
4210	1920	16	5	79.56	0.150
4211	1921	21	3	253.84	0.100
4212	1921	34	3	106.31	0.000
4213	1922	4	4	207.53	0.000
4214	1922	48	5	15.69	0.000
4215	1923	6	1	639.38	0.000
4216	1924	45	2	9.48	0.000
4217	1924	32	4	87.89	0.000
4218	1924	28	3	11.66	0.050
4219	1925	7	3	231.67	0.000
4220	1925	37	2	74.83	0.000
4221	1926	7	2	231.45	0.000
4222	1926	41	2	63.94	0.050
4223	1926	11	4	62.02	0.150
4224	1926	35	5	47.13	0.000
4225	1927	29	3	67.87	0.100
4226	1928	12	1	134.57	0.150
4227	1929	17	2	37.68	0.000
4228	1930	1	1	566.68	0.000
4229	1930	11	4	59.95	0.100
4230	1930	16	3	78.86	0.100
4231	1930	4	5	228.10	0.050
4232	1931	14	1	32.68	0.100
4233	1931	3	1	265.61	0.000
4234	1932	29	3	64.62	0.000
4235	1932	36	4	62.05	0.000
4236	1933	46	3	15.43	0.000
4237	1934	32	4	87.08	0.050
4238	1934	37	3	78.29	0.050
4239	1934	27	1	10.84	0.150
4240	1934	15	2	96.99	0.000
4241	1935	9	1	100.28	0.000
4242	1935	47	3	9.45	0.050
4243	1936	14	1	33.61	0.050
4244	1936	3	5	242.17	0.050
4245	1937	13	3	11.72	0.000
4246	1937	20	2	11.77	0.000
4247	1937	39	3	70.81	0.150
4248	1938	22	2	210.45	0.100
4249	1938	30	5	52.29	0.150
4250	1938	43	3	15.08	0.050
4251	1939	26	4	31.66	0.050
4252	1939	39	3	78.50	0.000
4253	1940	27	5	11.05	0.150
4254	1940	48	3	17.44	0.000
4255	1940	34	3	111.04	0.000
4256	1941	48	2	16.39	0.150
4257	1941	20	4	12.33	0.150
4258	1942	48	4	15.38	0.000
4259	1942	25	5	73.67	0.100
4260	1942	36	4	68.51	0.150
4261	1942	34	5	121.92	0.100
4262	1943	40	3	49.34	0.050
4263	1943	21	4	248.56	0.000
4264	1943	18	1	94.20	0.100
4265	1943	42	2	9.17	0.100
4266	1944	5	2	667.27	0.000
4267	1944	32	5	92.39	0.000
4268	1945	5	4	624.06	0.100
4269	1946	14	1	37.65	0.000
4270	1947	11	4	56.65	0.000
4271	1948	8	2	30.67	0.100
4272	1949	32	3	84.83	0.100
4273	1949	45	1	8.21	0.000
4274	1950	12	3	134.90	0.100
4275	1951	40	1	49.58	0.150
4276	1951	5	5	647.87	0.000
4277	1952	47	5	8.96	0.100
4278	1952	13	3	11.70	0.100
4279	1952	42	1	8.25	0.000
4280	1953	17	1	38.59	0.000
4281	1954	8	1	29.80	0.100
4282	1955	8	1	31.50	0.050
4283	1955	48	5	16.20	0.000
4284	1955	39	1	72.53	0.000
4285	1956	31	3	90.74	0.000
4286	1957	1	5	548.80	0.000
4287	1957	11	5	58.95	0.050
4288	1958	29	2	71.27	0.000
4289	1958	37	1	69.28	0.150
4290	1959	17	1	37.89	0.000
4291	1960	20	1	11.41	0.000
4292	1961	5	1	648.75	0.150
4293	1961	26	3	29.67	0.050
4294	1962	29	5	61.96	0.150
4295	1963	22	4	207.14	0.150
4296	1963	29	4	70.98	0.100
4297	1964	3	5	245.19	0.000
4298	1964	29	4	64.86	0.000
4299	1965	17	3	41.01	0.000
4300	1966	45	2	8.93	0.100
4301	1966	37	5	73.32	0.000
4302	1966	24	5	53.70	0.050
4303	1966	11	5	61.92	0.000
4304	1967	13	5	12.01	0.000
4305	1967	19	5	230.76	0.000
4306	1968	20	1	12.37	0.150
4307	1969	18	1	84.12	0.150
4308	1970	22	2	222.20	0.050
4309	1970	14	4	33.54	0.100
4310	1970	36	4	62.68	0.000
4311	1970	13	3	11.40	0.000
4312	1971	18	3	95.36	0.000
4313	1972	19	5	232.46	0.150
4314	1973	18	4	91.34	0.000
4315	1973	17	4	37.07	0.100
4316	1974	8	3	29.49	0.150
4317	1974	5	5	624.58	0.000
4318	1975	17	3	39.73	0.000
4319	1976	16	4	83.69	0.150
4320	1976	25	2	72.66	0.150
4321	1977	27	1	11.53	0.150
4322	1977	48	5	16.14	0.150
4323	1977	2	4	47.88	0.100
4324	1977	41	4	60.76	0.050
4325	1978	39	1	74.95	0.000
4326	1978	28	1	12.59	0.000
4327	1979	13	1	11.33	0.000
4328	1980	17	5	38.60	0.000
4329	1981	46	5	15.65	0.000
4330	1982	39	5	80.39	0.000
4331	1982	25	4	74.12	0.050
4332	1982	20	1	10.76	0.100
4333	1982	14	5	34.09	0.150
4334	1983	9	5	106.07	0.100
4335	1984	26	1	31.33	0.000
4336	1984	11	1	56.76	0.100
4337	1984	25	2	76.75	0.050
4338	1984	42	3	9.23	0.100
4339	1985	19	1	238.67	0.100
4340	1985	41	2	61.53	0.000
4341	1985	16	3	78.86	0.000
4342	1986	24	3	53.37	0.000
4343	1986	32	3	86.97	0.150
4344	1986	47	3	10.03	0.150
4345	1986	10	3	15.63	0.000
4346	1987	11	4	61.74	0.150
4347	1988	18	1	88.53	0.000
4348	1988	36	3	68.53	0.000
4349	1989	21	4	251.81	0.000
4350	1989	45	5	8.66	0.150
4351	1989	13	5	12.13	0.050
4352	1989	46	2	14.33	0.100
4353	1990	33	3	60.55	0.050
4354	1991	29	2	67.06	0.150
4355	1992	6	4	559.87	0.000
4356	1992	13	2	10.70	0.000
4357	1993	5	2	670.45	0.150
4358	1993	13	1	10.99	0.100
4359	1994	47	4	9.69	0.050
4360	1994	30	4	47.06	0.050
4361	1994	22	4	203.24	0.000
4362	1994	23	3	103.20	0.000
4363	1995	21	3	226.83	0.000
4364	1995	35	5	47.75	0.000
4365	1995	13	2	10.93	0.000
4366	1996	9	4	100.37	0.050
4367	1996	19	1	232.00	0.000
4368	1997	33	4	63.48	0.000
4369	1997	27	3	11.77	0.000
4370	1998	12	5	123.71	0.050
4371	1998	31	2	92.73	0.150
4372	1999	14	4	35.12	0.000
4373	1999	35	2	46.37	0.100
4374	2000	43	3	15.63	0.050
4375	2000	17	3	36.22	0.100
4376	2001	10	5	16.40	0.100
4377	2001	24	3	51.69	0.000
4378	2002	48	5	16.87	0.000
4379	2003	33	1	59.73	0.150
4380	2003	5	4	651.02	0.150
4381	2003	16	3	85.82	0.050
4382	2004	20	1	12.02	0.100
4383	2004	40	2	55.17	0.150
4384	2004	6	4	637.34	0.000
4385	2004	31	3	100.01	0.050
4386	2005	6	3	618.35	0.050
4387	2005	26	5	31.46	0.000
4388	2005	48	4	15.43	0.000
4389	2006	5	2	623.26	0.000
4390	2006	13	2	10.83	0.000
4391	2006	33	2	62.85	0.100
4392	2006	38	2	52.52	0.000
4393	2007	32	1	82.99	0.000
4394	2008	9	4	104.83	0.100
4395	2009	37	5	77.72	0.000
4396	2010	5	2	619.92	0.000
4397	2010	23	4	105.47	0.150
4398	2011	3	2	273.16	0.000
4399	2011	31	2	87.96	0.000
4400	2011	20	5	11.00	0.050
4401	2012	6	1	606.94	0.150
4402	2012	10	1	17.92	0.100
4403	2013	47	5	9.44	0.150
4404	2013	27	2	11.95	0.100
4405	2013	22	2	220.48	0.150
4406	2013	5	1	611.90	0.000
4407	2014	41	4	62.53	0.050
4408	2015	18	3	82.65	0.000
4409	2015	32	5	80.19	0.000
4410	2016	43	1	14.88	0.000
4411	2016	48	3	15.47	0.150
4412	2016	45	3	8.77	0.000
4413	2016	22	1	217.13	0.150
4414	2017	19	5	230.98	0.100
4415	2018	11	1	64.72	0.000
4416	2018	21	1	229.43	0.050
4417	2018	29	4	65.96	0.100
4418	2019	23	2	106.09	0.000
4419	2019	46	4	13.82	0.100
4420	2020	29	5	63.63	0.000
4421	2020	37	3	78.81	0.100
4422	2020	13	4	12.02	0.000
4423	2020	38	3	52.56	0.150
4424	2021	46	5	14.69	0.000
4425	2022	46	2	14.82	0.100
4426	2023	40	4	51.87	0.050
4427	2023	28	2	11.84	0.000
4428	2023	13	4	10.99	0.000
4429	2024	23	4	108.55	0.000
4430	2025	18	4	94.81	0.150
4431	2025	48	2	16.97	0.000
4432	2025	34	5	112.68	0.000
4433	2025	5	2	635.66	0.000
4434	2026	9	3	104.68	0.050
4435	2026	33	1	65.93	0.100
4436	2027	21	5	248.11	0.150
4437	2027	5	1	609.53	0.100
4438	2028	34	5	121.61	0.000
4439	2029	35	3	47.21	0.150
4440	2030	23	5	102.70	0.150
4441	2031	12	3	129.28	0.100
4442	2032	36	5	68.03	0.150
4443	2033	34	5	121.60	0.000
4444	2033	13	3	10.62	0.000
4445	2033	37	5	77.22	0.050
4446	2033	36	2	66.24	0.000
4447	2034	36	3	62.02	0.000
4448	2035	29	4	65.88	0.050
4449	2035	32	1	87.40	0.150
4450	2036	18	1	87.43	0.100
4451	2036	12	2	131.54	0.000
4452	2037	11	3	63.34	0.050
4453	2037	12	4	124.53	0.050
4454	2037	5	4	630.77	0.050
4455	2038	39	5	81.78	0.150
4456	2038	8	5	29.47	0.000
4457	2038	7	1	212.29	0.050
4458	2038	31	2	99.19	0.100
4459	2039	3	3	241.49	0.050
4460	2039	35	1	49.45	0.100
4461	2040	21	3	245.73	0.100
4462	2041	44	2	16.76	0.050
4463	2041	8	5	31.24	0.050
4464	2042	31	5	98.76	0.150
4465	2042	12	4	128.53	0.100
4466	2043	6	2	641.78	0.150
4467	2043	15	2	97.93	0.150
4468	2044	16	5	80.05	0.150
4469	2044	7	5	213.83	0.000
4470	2045	16	1	80.19	0.000
4471	2045	4	2	209.75	0.000
4472	2045	2	2	48.55	0.000
4473	2046	25	3	74.21	0.050
4474	2046	33	5	66.20	0.150
4475	2046	9	1	103.38	0.150
4476	2047	21	4	230.00	0.150
4477	2047	14	3	34.99	0.000
4478	2047	44	5	17.70	0.100
4479	2048	34	5	119.04	0.150
4480	2049	1	2	608.88	0.150
4481	2050	37	1	75.10	0.050
4482	2050	16	3	87.77	0.150
4483	2050	44	1	16.15	0.000
4484	2050	5	1	641.45	0.000
4485	2051	25	2	70.99	0.100
4486	2051	7	1	218.90	0.100
4487	2052	48	1	15.62	0.050
4488	2053	20	3	10.82	0.000
4489	2054	34	5	108.58	0.000
4490	2055	11	5	61.06	0.000
4491	2056	7	3	219.89	0.000
4492	2056	43	2	15.13	0.050
4493	2057	5	3	681.41	0.000
4494	2057	4	5	217.66	0.150
4495	2057	23	2	99.61	0.050
4496	2058	22	1	218.34	0.000
4497	2059	45	2	8.70	0.150
4498	2060	22	1	215.24	0.000
4499	2061	9	2	107.92	0.000
4500	2061	7	1	222.36	0.050
4501	2061	17	3	36.89	0.100
4502	2062	33	3	68.19	0.100
4503	2062	26	3	30.27	0.050
4504	2062	14	4	34.20	0.000
4505	2062	39	4	75.18	0.000
4506	2063	7	2	201.93	0.000
4507	2063	35	1	43.93	0.100
4508	2064	38	3	51.85	0.000
4509	2064	16	3	78.34	0.000
4510	2064	9	4	110.28	0.150
4511	2065	16	4	81.78	0.000
4512	2065	11	5	64.00	0.100
4513	2066	9	4	100.83	0.150
4514	2067	20	4	12.44	0.000
4515	2067	47	4	9.25	0.150
4516	2067	29	4	62.08	0.100
4517	2067	40	1	53.33	0.050
4518	2068	37	4	78.66	0.000
4519	2068	40	4	49.43	0.000
4520	2069	41	3	67.07	0.000
4521	2069	31	2	99.45	0.150
4522	2069	33	5	63.67	0.050
4523	2070	36	4	65.39	0.000
4524	2070	10	4	16.28	0.050
4525	2071	32	5	87.81	0.100
4526	2072	7	3	224.48	0.100
4527	2072	22	3	197.37	0.150
4528	2073	5	1	646.17	0.100
4529	2073	17	5	39.56	0.000
4530	2074	24	4	49.95	0.000
4531	2074	8	1	31.15	0.000
4532	2075	27	5	12.09	0.000
4533	2075	47	5	9.70	0.000
4534	2075	48	3	15.54	0.000
4535	2076	48	2	16.05	0.150
4536	2076	38	1	58.69	0.150
4537	2076	32	4	81.14	0.000
4538	2077	5	2	637.63	0.000
4539	2078	30	3	46.37	0.000
4540	2078	29	1	71.89	0.050
4541	2079	19	2	256.95	0.050
4542	2080	14	5	35.58	0.000
4543	2080	32	4	85.66	0.000
4544	2081	26	2	29.82	0.000
4545	2082	11	1	62.61	0.050
4546	2082	40	1	51.83	0.000
4547	2082	21	3	220.52	0.000
4548	2083	15	1	103.27	0.000
4549	2083	44	1	17.68	0.150
4550	2084	37	3	70.46	0.000
4551	2084	45	2	9.49	0.100
4552	2085	25	4	78.99	0.150
4553	2086	32	1	84.37	0.000
4554	2086	40	3	48.96	0.050
4555	2087	19	1	224.91	0.000
4556	2087	22	5	209.78	0.150
4557	2088	31	5	100.44	0.050
4558	2089	17	3	38.49	0.000
4559	2089	43	1	14.80	0.050
4560	2090	26	3	30.32	0.000
4561	2091	29	1	69.33	0.100
4562	2091	7	1	205.31	0.100
4563	2092	39	3	73.32	0.000
4564	2092	36	1	69.04	0.050
4565	2092	33	1	63.97	0.100
4566	2093	22	5	192.55	0.000
4567	2094	46	2	14.34	0.150
4568	2095	9	1	102.82	0.000
4569	2096	23	5	106.34	0.000
4570	2096	26	2	27.45	0.000
4571	2096	40	5	55.34	0.000
4572	2096	38	3	56.98	0.000
4573	2097	48	4	16.09	0.150
4574	2097	23	4	109.46	0.000
4575	2098	20	2	12.34	0.100
4576	2099	42	1	8.54	0.000
4577	2099	3	5	254.45	0.150
4578	2100	18	5	95.13	0.050
4579	2101	16	3	88.17	0.000
4580	2101	24	3	54.82	0.000
4581	2101	44	4	16.90	0.000
4582	2102	13	2	11.25	0.100
4583	2102	10	4	16.56	0.000
4584	2103	31	3	91.06	0.000
4585	2104	22	4	217.83	0.150
4586	2104	3	2	275.15	0.000
4587	2105	27	2	11.78	0.000
4588	2106	15	3	100.28	0.000
4589	2106	42	3	8.94	0.100
4590	2107	45	1	9.33	0.050
4591	2107	43	4	15.56	0.100
4592	2107	41	1	67.05	0.050
4593	2108	4	3	198.33	0.000
4594	2108	33	3	61.60	0.050
4595	2108	36	2	64.83	0.000
4596	2108	42	5	8.61	0.150
4597	2109	9	3	102.27	0.050
4598	2110	19	5	231.60	0.000
4599	2111	6	4	621.37	0.150
4600	2111	38	3	55.37	0.050
4601	2112	19	3	256.16	0.100
4602	2112	9	1	102.05	0.100
4603	2112	22	4	196.72	0.150
4604	2113	37	4	69.51	0.150
4605	2113	13	5	12.21	0.100
4606	2114	7	3	207.69	0.050
4607	2115	1	5	526.74	0.150
4608	2115	23	5	109.13	0.000
4609	2115	43	2	14.48	0.150
4610	2115	19	5	255.45	0.050
4611	2116	30	2	50.86	0.000
4612	2116	12	2	135.19	0.000
4613	2116	14	2	34.39	0.050
4614	2117	21	1	226.88	0.000
4615	2117	1	3	588.20	0.100
4616	2118	44	2	17.81	0.000
4617	2118	27	1	12.45	0.100
4618	2118	39	1	76.08	0.000
4619	2118	26	4	31.24	0.050
4620	2119	18	4	84.60	0.150
4621	2119	6	4	566.48	0.000
4622	2119	19	2	233.78	0.050
4623	2119	33	2	66.88	0.150
4624	2120	24	2	56.88	0.000
4625	2120	35	4	47.72	0.050
4626	2120	32	2	83.79	0.000
4627	2121	15	5	94.73	0.050
4628	2121	25	3	80.02	0.050
4629	2121	48	1	15.62	0.050
4630	2121	6	3	611.81	0.150
4631	2122	45	3	8.55	0.100
4632	2122	3	5	251.77	0.150
4633	2123	4	3	220.71	0.050
4634	2124	45	4	9.22	0.150
4635	2125	3	4	242.64	0.000
4636	2125	45	5	9.46	0.050
4637	2125	39	5	81.35	0.000
4638	2125	19	5	226.98	0.050
4639	2126	7	2	234.67	0.050
4640	2126	33	5	61.09	0.000
4641	2126	27	1	11.04	0.000
4642	2126	28	5	12.58	0.000
4643	2127	39	1	76.60	0.000
4644	2127	45	3	8.29	0.100
4645	2127	23	4	110.08	0.050
4646	2127	28	3	11.64	0.100
4647	2128	21	5	237.24	0.000
4648	2129	39	2	79.78	0.000
4649	2130	20	4	12.37	0.050
4650	2130	32	3	85.01	0.150
4651	2131	1	1	613.61	0.000
4652	2132	26	3	30.93	0.000
4653	2132	2	3	46.01	0.150
4654	2133	44	4	16.82	0.050
4655	2133	17	3	38.31	0.000
4656	2133	29	5	70.05	0.150
4657	2133	28	4	11.38	0.050
4658	2134	33	1	65.24	0.000
4659	2135	27	1	11.88	0.150
4660	2136	27	4	10.79	0.100
4661	2137	25	4	73.31	0.100
4662	2138	17	5	40.87	0.000
4663	2138	16	5	80.94	0.000
4664	2139	24	4	57.04	0.000
4665	2139	40	1	56.19	0.100
4666	2140	5	3	637.68	0.000
4667	2140	25	3	75.45	0.000
4668	2141	27	2	12.31	0.150
4669	2141	31	1	102.02	0.000
4670	2142	13	3	11.67	0.050
4671	2143	34	4	114.98	0.150
4672	2143	31	5	97.21	0.100
4673	2144	28	2	11.11	0.050
4674	2144	30	2	49.63	0.100
4675	2145	24	1	53.25	0.000
4676	2145	11	5	64.61	0.150
4677	2146	45	2	8.75	0.000
4678	2147	6	3	594.77	0.000
4679	2147	5	4	634.55	0.100
4680	2147	47	4	9.19	0.150
4681	2148	30	1	52.66	0.150
4682	2148	33	3	59.24	0.000
4683	2148	46	3	15.30	0.150
4684	2149	28	5	11.42	0.100
4685	2149	3	4	268.60	0.000
4686	2149	13	1	11.31	0.050
4687	2149	5	2	656.16	0.000
4688	2150	22	2	205.55	0.100
4689	2150	10	1	16.18	0.150
4690	2150	37	2	71.46	0.000
4691	2151	34	3	114.47	0.000
4692	2152	37	3	73.03	0.000
4693	2152	48	3	15.89	0.000
4694	2153	35	5	47.79	0.100
4695	2153	5	1	665.55	0.000
4696	2153	21	5	235.68	0.000
4697	2153	22	4	207.27	0.000
4698	2154	19	1	233.83	0.050
4699	2155	38	2	52.82	0.050
4700	2155	1	5	584.89	0.050
4701	2156	6	2	615.37	0.000
4702	2156	46	3	14.57	0.150
4703	2157	3	5	262.48	0.000
4704	2157	41	4	58.63	0.100
4705	2158	22	4	211.90	0.150
4706	2158	42	5	9.27	0.150
4707	2159	48	1	16.38	0.100
4708	2159	47	2	9.30	0.000
4709	2159	19	2	229.82	0.150
4710	2160	35	4	46.08	0.000
4711	2160	21	1	230.35	0.150
4712	2160	37	4	69.19	0.050
4713	2161	1	5	569.98	0.000
4714	2161	26	4	31.57	0.100
4715	2162	39	1	78.40	0.100
4716	2162	4	1	210.87	0.000
4717	2162	27	4	12.55	0.000
4718	2163	29	4	67.81	0.050
4719	2164	8	4	31.97	0.150
4720	2164	22	4	194.21	0.050
4721	2164	5	3	619.79	0.000
4722	2165	7	3	207.94	0.000
4723	2165	19	3	245.30	0.100
4724	2166	47	3	9.33	0.150
4725	2166	44	5	17.63	0.000
4726	2167	39	4	81.35	0.150
4727	2168	20	4	11.16	0.000
4728	2169	13	3	10.87	0.000
4729	2169	22	4	193.96	0.000
4730	2170	14	5	34.00	0.000
4731	2171	41	3	65.92	0.050
4732	2172	35	5	47.09	0.100
4733	2172	18	5	95.20	0.150
4734	2173	14	3	32.78	0.150
4735	2174	47	4	9.60	0.050
4736	2175	29	4	69.44	0.100
4737	2175	44	2	18.09	0.000
4738	2175	18	5	90.91	0.000
4739	2176	7	4	216.84	0.000
4740	2176	20	1	12.32	0.100
4741	2176	15	2	93.26	0.150
4742	2176	43	1	14.54	0.000
4743	2177	39	2	76.30	0.150
4744	2178	37	4	74.11	0.000
4745	2179	12	2	132.26	0.000
4746	2179	5	4	606.27	0.000
4747	2179	42	2	9.09	0.000
4748	2180	10	4	17.91	0.000
4749	2180	16	3	77.39	0.050
4750	2180	4	5	207.83	0.000
4751	2181	3	5	278.89	0.050
4752	2182	5	4	610.78	0.000
4753	2183	22	4	196.86	0.000
4754	2184	12	2	129.90	0.000
4755	2185	17	1	36.03	0.100
4756	2185	43	2	14.63	0.000
4757	2186	12	3	133.00	0.000
4758	2186	26	4	31.69	0.100
4759	2186	16	4	87.63	0.000
4760	2187	40	5	49.10	0.000
4761	2188	24	5	55.42	0.000
4762	2189	17	1	36.05	0.000
4763	2189	20	4	10.75	0.100
4764	2190	5	5	623.26	0.050
4765	2190	9	4	106.79	0.000
4766	2191	38	3	54.55	0.150
4767	2191	17	1	37.34	0.000
4768	2191	39	5	74.67	0.100
4769	2192	27	4	12.20	0.000
4770	2192	41	3	59.93	0.050
4771	2193	31	1	88.48	0.050
4772	2193	21	4	220.11	0.000
4773	2194	32	3	82.08	0.000
4774	2195	34	5	119.31	0.000
4775	2195	47	5	10.23	0.000
4776	2195	7	3	230.81	0.000
4777	2195	17	2	39.63	0.000
4778	2196	20	4	11.48	0.000
4779	2196	44	2	16.71	0.150
4780	2197	20	3	11.86	0.100
4781	2197	48	1	15.64	0.000
4782	2198	6	5	613.85	0.150
4783	2199	38	4	54.90	0.050
4784	2199	17	1	35.55	0.100
4785	2200	19	2	248.93	0.150
4786	2200	4	4	216.55	0.000
4787	2201	43	1	15.27	0.000
4788	2201	31	3	100.51	0.150
4789	2201	28	2	11.53	0.100
4790	2201	15	1	99.94	0.000
4791	2202	4	2	215.41	0.100
4792	2202	7	3	222.33	0.000
4793	2202	45	4	8.73	0.000
4794	2203	15	1	104.49	0.000
4795	2203	21	1	235.04	0.000
4796	2204	7	2	223.29	0.000
4797	2204	42	4	9.00	0.000
4798	2204	41	1	65.77	0.000
4799	2204	32	5	87.48	0.150
4800	2205	48	3	16.30	0.050
4801	2205	4	1	216.70	0.100
4802	2205	15	1	94.38	0.150
4803	2205	44	3	17.21	0.000
4804	2206	24	2	50.21	0.150
4805	2207	2	1	48.60	0.000
4806	2207	34	3	116.06	0.100
4807	2208	5	5	629.27	0.150
4808	2208	10	4	16.46	0.000
4809	2208	26	2	30.58	0.100
4810	2209	47	4	9.21	0.050
4811	2209	33	5	59.42	0.100
4812	2209	48	1	16.15	0.000
4813	2209	6	1	569.29	0.150
4814	2210	12	3	125.84	0.050
4815	2211	34	3	121.69	0.050
4816	2212	30	1	52.48	0.000
4817	2212	6	2	581.25	0.000
4818	2212	32	4	82.04	0.000
4819	2212	21	4	227.82	0.050
4820	2213	16	4	80.18	0.000
4821	2213	42	5	8.62	0.100
4822	2213	46	5	14.22	0.000
4823	2214	43	3	13.91	0.150
4824	2215	44	5	16.84	0.100
4825	2215	46	5	14.08	0.000
4826	2215	43	2	14.49	0.050
4827	2215	38	3	55.73	0.000
4828	2216	43	1	13.94	0.000
4829	2217	3	2	273.69	0.050
4830	2217	37	3	78.76	0.000
4831	2217	46	1	13.96	0.000
4832	2217	47	2	9.22	0.000
4833	2218	14	5	37.12	0.000
4834	2218	16	4	76.99	0.100
4835	2219	14	4	32.97	0.000
4836	2219	40	2	49.27	0.050
4837	2219	35	3	44.48	0.100
4838	2220	17	5	36.94	0.000
4839	2220	20	3	11.25	0.000
4840	2220	29	4	70.78	0.000
4841	2220	1	3	606.16	0.000
4842	2221	12	5	131.00	0.000
4843	2221	34	3	106.18	0.000
4844	2221	47	5	9.36	0.050
4845	2222	32	1	88.09	0.150
4846	2222	45	4	8.49	0.000
4847	2222	6	1	608.45	0.000
4848	2222	46	4	15.15	0.000
4849	2223	5	2	651.23	0.150
4850	2223	2	4	42.88	0.100
4851	2224	29	3	63.01	0.050
4852	2224	36	3	70.28	0.000
4853	2225	22	2	209.56	0.100
4854	2225	2	3	47.23	0.000
4855	2226	40	3	52.53	0.150
4856	2226	2	2	44.40	0.150
4857	2226	35	1	46.59	0.050
4858	2226	48	3	15.86	0.050
4859	2227	48	5	16.87	0.000
4860	2227	2	1	43.77	0.000
4861	2227	41	1	61.35	0.000
4862	2228	18	4	87.45	0.100
4863	2228	17	1	41.13	0.000
4864	2229	17	3	36.86	0.050
4865	2229	25	5	78.23	0.000
4866	2230	28	1	11.18	0.000
4867	2230	34	1	117.38	0.100
4868	2231	25	3	71.15	0.150
4869	2232	7	3	233.31	0.050
4870	2233	31	4	100.52	0.000
4871	2233	45	2	9.26	0.000
4872	2233	8	5	29.91	0.050
4873	2233	5	3	633.32	0.050
4874	2234	38	4	54.26	0.150
4875	2234	33	5	68.07	0.000
4876	2235	18	3	93.07	0.150
4877	2235	46	2	15.34	0.050
4878	2236	43	4	14.33	0.000
4879	2236	37	4	78.43	0.050
4880	2237	8	4	28.37	0.100
4881	2237	37	4	71.42	0.050
4882	2238	11	4	64.08	0.000
4883	2239	34	3	112.53	0.050
4884	2240	14	5	36.15	0.050
4885	2240	32	1	88.31	0.000
4886	2240	29	4	71.64	0.000
4887	2240	18	1	87.40	0.050
4888	2241	24	3	57.54	0.000
4889	2242	21	4	249.01	0.000
4890	2242	24	4	57.79	0.000
4891	2242	32	3	92.13	0.000
4892	2243	11	4	64.92	0.050
4893	2244	21	5	251.51	0.050
4894	2244	5	5	660.81	0.000
4895	2245	28	3	11.44	0.050
4896	2246	38	1	55.18	0.150
4897	2246	22	1	218.45	0.150
4898	2246	12	3	130.12	0.000
4899	2247	31	5	88.59	0.100
4900	2247	33	2	61.22	0.050
4901	2247	43	1	13.45	0.000
4902	2248	28	5	12.61	0.000
4903	2249	8	2	30.43	0.000
4904	2249	17	1	36.83	0.000
4905	2249	36	4	70.90	0.000
4906	2250	37	1	79.19	0.100
4907	2251	9	1	116.75	0.100
4908	2251	14	1	34.79	0.000
4909	2252	39	2	73.69	0.150
4910	2252	44	5	16.20	0.050
4911	2253	32	5	91.28	0.150
4912	2253	33	5	64.78	0.000
4913	2253	39	1	79.83	0.100
4914	2253	28	4	11.33	0.050
4915	2254	40	4	51.21	0.150
4916	2255	17	1	39.52	0.000
4917	2256	16	2	82.69	0.000
4918	2256	28	3	11.83	0.000
4919	2257	6	1	637.07	0.150
4920	2257	21	5	230.37	0.050
4921	2257	29	2	71.52	0.000
4922	2257	15	4	91.12	0.000
4923	2258	45	4	8.49	0.000
4924	2259	37	2	72.64	0.000
4925	2259	36	5	69.48	0.000
4926	2260	22	1	193.86	0.000
4927	2261	45	3	9.29	0.050
4928	2262	7	5	207.07	0.050
4929	2263	17	2	39.78	0.050
4930	2263	41	1	63.56	0.000
4931	2263	45	3	9.36	0.000
4932	2264	27	5	11.22	0.100
4933	2265	37	4	69.70	0.000
4934	2266	6	3	558.89	0.050
4935	2266	28	1	11.17	0.050
4936	2267	12	5	123.75	0.000
4937	2267	24	4	53.19	0.100
4938	2268	47	2	10.14	0.000
4939	2268	36	2	63.87	0.000
4940	2268	17	2	35.43	0.150
4941	2269	24	5	53.59	0.000
4942	2269	13	4	12.28	0.050
4943	2269	18	1	94.82	0.150
4944	2269	37	1	69.88	0.000
4945	2270	4	5	205.42	0.000
4946	2270	36	5	61.22	0.000
4947	2271	15	3	104.20	0.100
4948	2272	27	2	12.53	0.050
4949	2273	13	2	12.02	0.100
4950	2273	21	3	232.47	0.100
4951	2274	8	1	32.33	0.150
4952	2274	1	4	560.20	0.100
4953	2275	21	4	219.37	0.100
4954	2275	39	4	80.84	0.050
4955	2275	18	5	94.37	0.150
4956	2275	16	4	81.62	0.000
4957	2276	4	3	222.98	0.000
4958	2276	17	4	35.46	0.050
4959	2277	1	1	554.16	0.150
4960	2278	22	3	206.58	0.100
4961	2278	33	1	64.51	0.000
4962	2279	29	2	65.25	0.000
4963	2280	4	1	204.51	0.000
4964	2280	17	4	35.85	0.050
4965	2281	48	1	17.37	0.150
4966	2281	18	1	89.57	0.000
4967	2282	1	4	548.70	0.000
4968	2282	18	3	83.44	0.050
4969	2282	38	5	59.71	0.000
4970	2282	14	2	35.18	0.150
4971	2283	39	1	74.83	0.000
4972	2284	14	5	37.20	0.100
4973	2284	6	2	615.12	0.100
4974	2285	13	4	11.12	0.050
4975	2285	23	2	99.17	0.000
4976	2286	16	2	85.70	0.100
4977	2287	35	4	49.15	0.050
4978	2287	30	1	51.37	0.150
4979	2288	21	4	246.14	0.100
4980	2288	28	2	11.78	0.000
4981	2288	32	2	86.57	0.100
4982	2288	10	2	15.92	0.000
4983	2289	30	4	45.63	0.150
4984	2290	27	2	11.49	0.100
4985	2290	44	2	16.87	0.150
4986	2290	5	4	657.14	0.100
4987	2290	25	1	69.27	0.050
4988	2291	34	1	120.51	0.000
4989	2291	32	5	80.16	0.150
4990	2291	11	3	57.83	0.150
4991	2291	18	4	86.95	0.000
4992	2292	39	4	70.52	0.000
4993	2292	3	5	241.57	0.000
4994	2293	5	5	691.25	0.050
4995	2293	20	2	11.83	0.100
4996	2294	32	1	83.35	0.000
4997	2294	22	3	206.72	0.150
4998	2294	7	2	222.95	0.050
4999	2295	22	4	222.52	0.000
5000	2295	31	5	96.49	0.150
5001	2295	17	2	36.53	0.000
5002	2295	32	5	81.65	0.000
5003	2296	9	1	108.94	0.000
5004	2296	29	5	64.52	0.050
5005	2297	25	2	70.46	0.100
5006	2297	45	4	8.90	0.000
5007	2298	17	3	38.68	0.050
5008	2299	34	2	112.85	0.000
5009	2299	43	5	14.57	0.000
5010	2300	48	4	15.63	0.050
5011	2300	28	1	11.14	0.000
5012	2300	26	3	29.47	0.150
5013	2301	28	4	12.61	0.050
5014	2302	37	1	68.02	0.100
5015	2303	20	3	12.37	0.150
5016	2303	16	1	77.54	0.050
5017	2304	45	2	9.30	0.000
5018	2304	42	3	8.25	0.150
5019	2304	9	3	111.24	0.100
5020	2304	37	5	78.53	0.050
5021	2305	26	3	30.94	0.050
5022	2305	37	1	68.47	0.050
5023	2306	8	4	28.21	0.150
5024	2307	18	2	84.54	0.050
5025	2307	27	3	11.20	0.100
5026	2308	21	2	229.72	0.050
5027	2309	23	2	109.49	0.100
5028	2309	32	3	84.30	0.150
5029	2309	37	2	68.62	0.150
5030	2310	48	2	17.08	0.000
5031	2310	7	4	232.76	0.000
5032	2310	47	2	8.98	0.150
5033	2311	42	3	8.31	0.150
5034	2311	10	5	17.24	0.000
5035	2312	41	4	65.40	0.100
5036	2312	48	5	15.69	0.000
5037	2313	5	1	605.70	0.100
5038	2313	29	5	64.70	0.000
5039	2313	40	5	50.00	0.100
5040	2313	16	1	81.70	0.000
5041	2314	23	5	105.46	0.000
5042	2314	12	3	128.32	0.000
5043	2314	1	3	582.45	0.050
5044	2315	17	3	35.70	0.050
5045	2316	22	5	211.88	0.000
5046	2316	29	5	69.41	0.150
5047	2316	21	5	220.07	0.050
5048	2316	45	1	8.41	0.000
5049	2317	41	2	59.32	0.150
5050	2317	33	1	62.31	0.000
5051	2318	40	3	56.34	0.150
5052	2319	26	2	31.44	0.150
5053	2320	39	5	71.04	0.150
5054	2320	32	1	85.92	0.100
5055	2321	33	3	63.63	0.150
5056	2322	5	4	683.13	0.000
5057	2322	39	5	74.11	0.050
5058	2322	29	5	70.25	0.050
5059	2323	5	2	666.85	0.050
5060	2324	41	1	59.79	0.000
5061	2324	3	2	258.96	0.050
5062	2325	15	5	103.75	0.000
5063	2325	42	4	8.27	0.100
5064	2326	32	4	92.62	0.000
5065	2327	35	4	43.51	0.150
5066	2328	20	3	11.14	0.100
5067	2329	44	5	18.08	0.150
5068	2329	25	2	76.40	0.150
5069	2330	29	2	68.55	0.050
5070	2330	34	3	105.26	0.050
5071	2331	6	1	628.56	0.000
5072	2332	48	3	16.20	0.000
5073	2332	26	4	30.33	0.000
5074	2333	5	3	626.02	0.000
5075	2333	1	2	560.44	0.000
5076	2334	40	1	55.09	0.150
5077	2334	10	2	16.06	0.100
5078	2335	25	3	71.65	0.050
5079	2335	1	3	543.92	0.000
5080	2336	5	5	683.11	0.050
5081	2337	8	4	30.58	0.000
5082	2338	43	5	14.83	0.150
5083	2338	31	4	96.58	0.150
5084	2339	30	3	49.90	0.000
5085	2339	10	2	16.99	0.100
5086	2339	15	1	97.97	0.050
5087	2340	48	4	16.51	0.050
5088	2340	29	3	71.17	0.000
5089	2341	10	1	15.60	0.000
5090	2342	19	4	231.59	0.100
5091	2343	42	2	8.61	0.050
5092	2344	43	1	14.24	0.100
5093	2345	5	3	613.13	0.150
5094	2345	46	2	14.43	0.100
5095	2346	47	3	9.37	0.000
5096	2346	4	3	220.83	0.100
5097	2347	32	5	87.03	0.000
5098	2347	46	1	14.98	0.150
5099	2348	5	4	685.50	0.100
5100	2348	19	3	251.83	0.050
5101	2348	28	4	11.20	0.050
5102	2349	36	2	63.67	0.150
5103	2349	5	5	667.49	0.050
5104	2349	38	3	57.87	0.000
5105	2349	1	1	546.26	0.000
5106	2350	6	4	587.57	0.100
5107	2350	39	4	72.52	0.000
5108	2351	15	2	94.20	0.100
5109	2351	9	2	107.53	0.050
5110	2352	35	3	46.66	0.150
5111	2353	7	3	230.96	0.000
5112	2353	35	3	49.53	0.000
5113	2354	14	5	35.30	0.000
5114	2354	30	3	52.02	0.000
5115	2354	10	2	15.81	0.000
5116	2355	37	4	71.64	0.050
5117	2355	1	4	543.35	0.000
5118	2355	17	3	39.92	0.150
5119	2356	12	5	121.89	0.150
5120	2356	2	4	48.36	0.000
5121	2356	24	5	57.45	0.150
5122	2357	9	4	102.53	0.000
5123	2357	46	1	15.77	0.050
5124	2357	24	1	50.11	0.000
5125	2357	13	2	11.72	0.050
5126	2358	22	4	218.34	0.100
5127	2358	44	4	16.11	0.050
5128	2359	1	5	528.77	0.150
5129	2359	22	2	207.34	0.100
5130	2360	35	2	48.13	0.050
5131	2361	34	1	113.01	0.100
5132	2362	13	5	11.65	0.000
5133	2362	5	1	697.98	0.150
5134	2362	34	2	114.26	0.000
5135	2362	40	2	49.24	0.000
5136	2363	7	1	209.96	0.150
5137	2363	1	3	559.07	0.000
5138	2363	42	4	9.23	0.000
5139	2363	44	5	16.56	0.000
5140	2364	44	1	17.32	0.100
5141	2364	34	4	118.53	0.100
5142	2364	5	1	648.70	0.000
5143	2365	42	3	9.32	0.150
5144	2365	33	3	61.74	0.000
5145	2365	14	4	33.34	0.000
5146	2366	33	3	66.05	0.000
5147	2367	34	4	110.06	0.000
5148	2368	20	4	10.71	0.000
5149	2368	9	2	101.92	0.000
5150	2369	16	2	83.17	0.000
5151	2369	34	5	114.83	0.000
5152	2369	35	3	46.90	0.000
5153	2369	2	4	43.73	0.000
5154	2370	6	5	637.62	0.000
5155	2370	1	5	556.22	0.000
5156	2371	12	3	119.43	0.050
5157	2371	41	2	59.92	0.100
5158	2371	42	1	8.11	0.150
5159	2371	29	1	63.52	0.100
5160	2372	5	2	684.40	0.000
5161	2372	32	2	91.40	0.000
5162	2373	37	5	68.03	0.150
5163	2373	14	3	33.85	0.000
5164	2373	24	1	50.51	0.050
5165	2373	46	2	14.52	0.000
5166	2374	3	3	265.61	0.150
5167	2375	4	5	225.87	0.000
5168	2375	1	4	553.18	0.150
5169	2376	24	4	51.88	0.000
5170	2376	39	1	77.33	0.100
5171	2376	2	1	42.39	0.100
5172	2377	8	3	29.60	0.000
5173	2377	2	2	46.25	0.150
5174	2377	24	3	53.80	0.150
5175	2377	47	3	9.53	0.150
5176	2378	9	2	102.96	0.000
5177	2379	5	3	614.52	0.150
5178	2379	11	4	63.86	0.050
5179	2380	43	2	14.91	0.100
5180	2381	32	1	91.34	0.000
5181	2381	25	3	71.73	0.050
5182	2382	31	1	97.72	0.100
5183	2382	19	3	228.26	0.000
5184	2382	24	3	49.71	0.100
5185	2382	4	2	219.04	0.000
5186	2383	27	1	10.83	0.100
5187	2384	42	5	8.17	0.150
5188	2385	8	4	28.06	0.050
5189	2385	1	2	541.26	0.000
5190	2386	24	3	55.19	0.000
5191	2386	25	2	80.37	0.050
5192	2387	38	4	57.44	0.000
5193	2387	7	2	229.01	0.050
5194	2387	18	4	94.02	0.050
5195	2388	5	3	627.35	0.100
5196	2388	10	3	16.64	0.000
5197	2388	38	2	56.26	0.000
5198	2389	44	3	15.93	0.000
5199	2389	12	5	133.15	0.000
5200	2390	34	1	118.82	0.000
5201	2390	14	5	36.80	0.000
5202	2391	15	1	93.67	0.100
5203	2391	7	4	223.13	0.050
5204	2391	38	2	57.82	0.000
5205	2391	42	1	8.99	0.000
5206	2392	39	3	81.91	0.000
5207	2393	20	2	11.60	0.050
5208	2394	27	4	11.53	0.000
5209	2394	39	4	77.76	0.100
5210	2395	43	1	14.13	0.050
5211	2395	21	1	253.09	0.000
5212	2395	5	2	633.41	0.000
5213	2396	7	4	228.35	0.000
5214	2396	44	3	16.04	0.000
5215	2396	28	2	11.84	0.150
5216	2397	19	1	227.17	0.150
5217	2398	5	1	676.82	0.000
5218	2399	26	4	28.27	0.150
5219	2399	1	5	602.17	0.100
5220	2400	48	1	16.18	0.050
5221	2400	1	5	572.48	0.000
5222	2400	44	3	17.89	0.100
5223	2401	46	2	14.83	0.000
5224	2401	28	1	11.88	0.000
5225	2402	6	3	607.60	0.150
5226	2403	34	2	110.02	0.000
5227	2403	42	1	8.55	0.050
5228	2403	27	3	11.81	0.150
5229	2403	31	2	95.88	0.050
5230	2404	9	2	110.74	0.150
5231	2404	36	1	66.49	0.000
5232	2404	23	2	108.55	0.000
5233	2404	24	5	54.00	0.000
5234	2405	16	2	83.29	0.000
5235	2405	47	4	10.08	0.050
5236	2405	26	1	27.92	0.050
5237	2405	20	5	12.46	0.050
5238	2406	5	1	636.46	0.000
5239	2406	16	5	77.97	0.050
5240	2406	35	1	43.79	0.100
5241	2407	11	3	63.85	0.050
5242	2407	7	1	213.16	0.150
5243	2408	5	5	630.53	0.050
5244	2409	1	3	551.90	0.000
5245	2409	11	1	65.47	0.000
5246	2409	27	2	11.28	0.050
5247	2410	27	1	12.03	0.000
5248	2410	42	3	8.87	0.150
5249	2411	27	5	11.75	0.150
5250	2411	15	4	96.34	0.150
5251	2411	16	2	82.93	0.000
5252	2412	27	1	11.73	0.150
5253	2413	25	4	76.49	0.000
5254	2414	38	5	56.53	0.000
5255	2414	7	1	234.07	0.050
5256	2415	36	1	66.03	0.050
5257	2416	30	1	51.79	0.150
5258	2416	48	5	15.68	0.000
5259	2416	44	1	16.17	0.100
5260	2417	24	3	53.50	0.100
5261	2417	25	2	76.42	0.100
5262	2418	48	1	17.14	0.050
5263	2418	4	3	231.02	0.050
5264	2418	14	5	36.50	0.000
5265	2418	8	1	30.43	0.000
5266	2419	25	1	73.81	0.150
5267	2419	5	3	621.92	0.000
5268	2420	25	5	80.34	0.000
5269	2420	30	3	51.64	0.000
5270	2420	17	4	40.00	0.050
5271	2420	36	2	63.55	0.000
5272	2421	25	1	75.41	0.150
5273	2421	8	5	29.94	0.000
5274	2422	15	3	98.17	0.000
5275	2422	22	1	195.62	0.150
5276	2423	39	3	73.88	0.000
5277	2424	39	5	77.43	0.000
5278	2424	22	4	203.56	0.100
5279	2425	34	2	112.91	0.000
5280	2425	42	3	8.16	0.000
5281	2426	31	2	94.53	0.100
5282	2426	27	4	11.33	0.050
5283	2427	17	1	40.81	0.100
5284	2427	46	5	15.57	0.000
5285	2428	34	4	119.91	0.100
5286	2428	38	4	57.02	0.000
5287	2429	12	4	119.21	0.000
5288	2429	24	3	51.83	0.150
5289	2430	17	4	40.25	0.000
5290	2430	36	4	63.64	0.000
5291	2431	36	1	63.15	0.050
5292	2431	39	5	78.51	0.150
5293	2432	37	5	70.39	0.100
5294	2433	27	4	12.08	0.150
5295	2433	34	4	106.39	0.000
5296	2433	36	4	62.94	0.100
5297	2434	9	3	111.56	0.100
5298	2434	34	4	110.48	0.100
5299	2435	18	5	89.20	0.000
5300	2435	21	2	233.73	0.000
5301	2436	5	2	689.23	0.100
5302	2436	17	5	36.33	0.000
5303	2436	44	5	15.98	0.000
5304	2437	21	2	248.79	0.000
5305	2438	18	2	88.87	0.100
5306	2438	27	1	11.93	0.000
5307	2438	31	4	99.59	0.150
5308	2438	37	2	77.06	0.000
5309	2439	25	1	73.88	0.150
5310	2439	12	5	134.73	0.150
5311	2440	35	3	43.01	0.150
5312	2441	48	1	15.48	0.150
5313	2441	15	5	94.47	0.050
5314	2442	12	5	135.85	0.000
5315	2442	20	2	12.17	0.000
5316	2442	22	3	217.52	0.000
5317	2443	19	4	249.44	0.000
5318	2443	16	3	86.76	0.050
5319	2443	44	3	17.16	0.100
5320	2444	27	3	10.90	0.000
5321	2444	2	4	42.96	0.100
5322	2445	35	3	45.25	0.000
5323	2445	39	3	73.61	0.000
5324	2446	14	1	35.73	0.000
5325	2446	31	5	94.94	0.000
5326	2446	22	2	209.76	0.000
5327	2446	16	3	84.96	0.150
5328	2447	23	4	111.15	0.100
5329	2447	32	3	84.64	0.000
5330	2447	29	5	68.81	0.000
5331	2447	39	5	79.50	0.000
5332	2448	23	4	106.72	0.100
5333	2448	34	1	117.06	0.100
5334	2448	12	5	122.93	0.050
5335	2449	24	5	56.66	0.150
5336	2449	34	3	112.25	0.150
5337	2450	21	4	242.73	0.000
5338	2450	11	4	57.15	0.100
5339	2451	3	3	255.04	0.100
5340	2451	30	3	46.82	0.000
5341	2451	17	5	36.85	0.050
5342	2451	11	1	57.62	0.150
5343	2452	6	5	615.82	0.150
5344	2452	44	1	15.87	0.000
5345	2453	40	1	54.62	0.100
5346	2454	27	4	11.26	0.000
5347	2454	2	4	47.07	0.000
5348	2455	13	1	11.74	0.000
5349	2456	11	5	64.98	0.000
5350	2456	32	3	80.46	0.150
5351	2457	43	2	13.62	0.050
5352	2457	9	2	102.32	0.000
5353	2457	25	3	80.46	0.050
5354	2458	30	2	48.96	0.050
5355	2458	34	5	120.69	0.000
5356	2459	39	1	76.34	0.000
5357	2459	35	1	47.71	0.150
5358	2460	30	4	50.83	0.100
5359	2460	41	3	62.83	0.000
5360	2461	30	3	50.03	0.150
5361	2461	18	4	95.32	0.000
5362	2461	2	5	47.54	0.150
5363	2461	40	5	55.46	0.000
5364	2462	14	1	34.04	0.100
5365	2463	1	1	539.54	0.050
5366	2463	17	4	37.42	0.150
5367	2464	41	2	58.91	0.000
5368	2465	2	5	47.58	0.000
5369	2466	15	1	96.24	0.000
5370	2466	30	4	46.21	0.000
5371	2467	37	5	78.14	0.150
5372	2468	42	4	8.16	0.000
5373	2469	18	4	96.16	0.000
5374	2469	7	3	217.60	0.000
5375	2470	11	2	62.38	0.150
5376	2470	2	1	44.06	0.150
5377	2470	40	3	54.44	0.000
5378	2471	48	2	15.51	0.000
5379	2471	42	3	8.66	0.050
5380	2471	10	3	17.28	0.050
5381	2471	5	1	638.76	0.150
5382	2472	43	2	13.46	0.100
5383	2473	37	2	72.56	0.000
5384	2473	28	5	11.14	0.100
5385	2474	32	3	82.74	0.100
5386	2474	27	3	11.66	0.000
5387	2474	39	2	72.07	0.100
5388	2475	36	3	64.36	0.100
5389	2476	26	2	28.42	0.000
5390	2476	40	4	56.57	0.150
5391	2477	30	1	47.12	0.150
5392	2478	46	5	15.73	0.050
5393	2478	20	5	11.51	0.000
5394	2479	12	4	126.74	0.050
5395	2479	16	2	81.33	0.000
5396	2479	41	2	67.36	0.000
5397	2479	35	5	43.40	0.000
5398	2480	42	1	8.40	0.050
5399	2481	29	4	68.88	0.000
5400	2482	1	5	526.22	0.000
5401	2482	2	5	46.38	0.000
5402	2483	19	1	225.93	0.100
5403	2483	16	4	82.23	0.000
5404	2483	9	4	110.81	0.100
5405	2483	29	2	67.10	0.000
5406	2484	45	2	8.20	0.000
5407	2485	47	2	9.02	0.000
5408	2485	5	1	608.64	0.100
5409	2486	46	5	14.63	0.150
5410	2487	5	5	702.09	0.000
5411	2487	29	1	70.33	0.150
5412	2487	9	4	112.38	0.100
5413	2487	43	2	15.26	0.150
5414	2488	24	3	56.60	0.100
5415	2489	14	5	37.04	0.000
5416	2489	28	1	12.24	0.000
5417	2489	23	3	113.45	0.100
5418	2489	32	3	82.30	0.150
5419	2490	44	5	16.33	0.050
5420	2491	5	5	698.10	0.000
5421	2492	2	1	46.20	0.050
5422	2492	14	3	35.03	0.150
5423	2493	24	4	53.71	0.150
5424	2493	45	5	8.57	0.100
5425	2493	47	1	8.95	0.000
5426	2494	46	2	14.24	0.150
5427	2494	44	3	17.60	0.150
5428	2495	45	1	8.74	0.150
5429	2495	29	2	64.87	0.000
5430	2495	28	1	12.17	0.000
5431	2496	25	2	80.08	0.000
5432	2496	44	5	16.11	0.050
5433	2497	44	1	15.66	0.150
5434	2498	3	2	245.34	0.000
5435	2499	31	3	94.36	0.000
5436	2499	28	5	12.45	0.000
5437	2499	33	4	62.89	0.050
5438	2500	24	1	55.57	0.050
5439	2500	18	5	89.07	0.000
5440	2501	16	2	80.50	0.100
5441	2501	9	5	104.57	0.150
5442	2501	19	3	236.96	0.000
5443	2501	45	3	8.71	0.000
5444	2502	40	5	52.40	0.050
5445	2503	29	4	64.73	0.000
5446	2503	25	1	78.67	0.100
5447	2504	34	3	115.74	0.050
5448	2504	7	3	209.22	0.050
5449	2504	37	3	73.28	0.100
5450	2505	43	4	15.20	0.050
5451	2505	20	3	11.62	0.000
5452	2505	35	3	43.90	0.100
5453	2506	5	2	702.16	0.000
5454	2506	24	3	55.34	0.050
5455	2506	20	1	10.94	0.150
5456	2506	35	3	49.13	0.100
5457	2507	34	2	111.27	0.000
5458	2508	21	5	245.52	0.000
5459	2508	12	3	131.81	0.000
5460	2509	30	3	51.07	0.000
5461	2509	7	3	221.78	0.100
5462	2509	27	2	11.00	0.150
5463	2509	4	2	205.07	0.050
5464	2510	1	4	560.06	0.000
5465	2510	18	2	85.37	0.150
5466	2511	47	1	9.35	0.150
5467	2511	15	3	103.10	0.000
5468	2511	31	2	97.18	0.150
5469	2512	25	1	76.41	0.000
5470	2512	16	3	80.52	0.050
5471	2512	11	3	56.56	0.000
5472	2513	1	3	558.10	0.100
5473	2514	4	5	214.53	0.000
5474	2514	27	5	12.19	0.150
5475	2515	40	5	54.97	0.000
5476	2516	13	5	10.60	0.100
5477	2517	44	4	16.46	0.000
5478	2517	34	5	118.58	0.150
5479	2518	32	2	81.71	0.000
5480	2518	19	2	221.80	0.000
5481	2518	2	1	45.00	0.150
5482	2519	31	1	98.49	0.000
5483	2519	25	2	73.03	0.000
5484	2519	43	1	15.29	0.150
5485	2520	10	2	15.84	0.050
5486	2520	8	3	27.79	0.000
5487	2521	5	2	671.89	0.150
5488	2522	39	2	76.82	0.150
5489	2522	11	3	62.43	0.000
5490	2522	4	5	225.91	0.100
5491	2523	39	3	81.85	0.000
5492	2524	30	1	49.76	0.050
5493	2524	16	2	81.67	0.000
5494	2524	32	2	91.60	0.150
5495	2524	22	4	206.19	0.150
5496	2525	12	5	121.03	0.000
5497	2525	39	5	77.14	0.150
5498	2526	11	5	64.23	0.000
5499	2527	46	3	15.65	0.000
5500	2527	47	1	10.44	0.000
5501	2527	5	2	633.75	0.000
5502	2528	46	2	15.62	0.150
5503	2528	42	3	8.06	0.050
5504	2528	11	5	62.70	0.000
5505	2529	15	2	101.02	0.050
5506	2529	33	5	62.77	0.100
5507	2529	6	5	557.40	0.000
5508	2529	3	5	264.55	0.000
5509	2530	12	2	118.44	0.050
5510	2530	5	4	690.23	0.000
5511	2531	25	3	69.59	0.150
5512	2531	37	2	75.48	0.000
5513	2531	30	1	50.88	0.000
5514	2532	12	3	137.43	0.000
5515	2532	28	4	11.84	0.150
5516	2533	21	2	255.09	0.000
5517	2533	2	4	44.44	0.150
5518	2534	20	1	11.93	0.000
5519	2535	35	2	47.18	0.000
5520	2535	40	3	50.62	0.000
5521	2536	19	2	238.84	0.150
5522	2536	15	1	97.27	0.150
5523	2537	19	5	248.57	0.000
5524	2538	42	1	8.04	0.000
5525	2538	38	1	58.95	0.150
5526	2538	47	1	9.60	0.150
5527	2539	2	3	46.19	0.000
5528	2540	6	2	562.19	0.050
5529	2540	3	3	266.38	0.000
5530	2541	47	5	9.71	0.100
5531	2542	8	3	30.20	0.000
5532	2542	22	4	191.88	0.000
5533	2542	47	2	10.33	0.050
5534	2542	5	2	609.00	0.000
5535	2543	28	2	12.61	0.050
5536	2543	7	3	208.69	0.000
5537	2543	40	2	50.80	0.000
5538	2543	26	1	30.15	0.050
5539	2544	21	3	227.20	0.150
5540	2545	5	2	634.79	0.000
5541	2546	16	1	87.51	0.100
5542	2546	46	3	15.32	0.000
5543	2546	40	5	49.59	0.150
5544	2546	29	1	71.93	0.100
5545	2547	34	4	120.20	0.000
5546	2547	22	5	218.73	0.000
5547	2547	23	3	108.17	0.000
5548	2547	3	2	255.23	0.000
5549	2548	47	2	9.99	0.050
5550	2548	10	3	15.92	0.150
5551	2548	28	4	11.89	0.100
5552	2548	34	2	116.79	0.050
5553	2549	4	5	218.43	0.000
5554	2550	23	4	107.20	0.000
5555	2550	43	2	15.17	0.050
5556	2550	46	4	15.03	0.000
5557	2550	5	2	661.67	0.000
5558	2551	1	2	580.83	0.150
5559	2551	37	2	75.41	0.150
5560	2552	46	3	14.37	0.100
5561	2552	42	1	8.46	0.000
5562	2553	24	1	55.30	0.100
5563	2554	20	5	12.26	0.000
5564	2554	27	4	11.70	0.100
5565	2554	1	2	537.79	0.000
5566	2554	29	4	64.57	0.150
5567	2555	24	1	57.59	0.150
5568	2555	3	3	246.59	0.050
5569	2556	9	2	110.49	0.000
5570	2556	46	5	14.13	0.100
5571	2556	26	1	31.33	0.100
5572	2556	4	2	212.31	0.000
5573	2557	39	2	76.25	0.100
5574	2557	4	4	216.31	0.150
5575	2558	1	2	581.64	0.000
5576	2559	5	4	637.36	0.150
5577	2559	23	1	112.26	0.050
5578	2559	2	4	48.38	0.000
5579	2560	26	1	29.19	0.150
5580	2560	45	2	9.55	0.150
5581	2560	29	2	66.14	0.000
5582	2560	42	1	8.24	0.050
5583	2561	23	3	107.33	0.000
5584	2561	46	5	14.90	0.050
5585	2562	29	4	62.57	0.150
5586	2562	20	3	11.15	0.150
5587	2562	46	2	15.09	0.050
5588	2563	22	2	216.01	0.050
5589	2563	39	3	75.62	0.000
5590	2564	1	2	551.08	0.100
5591	2564	32	5	91.96	0.000
5592	2564	13	3	11.30	0.150
5593	2564	5	1	681.74	0.000
5594	2565	34	5	112.33	0.000
5595	2566	40	4	52.73	0.000
5596	2566	46	3	13.86	0.000
5597	2566	27	3	11.75	0.100
5598	2567	2	2	48.39	0.100
5599	2567	26	2	29.61	0.000
5600	2568	12	5	132.14	0.000
5601	2569	40	1	55.12	0.150
5602	2570	28	1	11.16	0.000
5603	2570	33	2	68.16	0.000
5604	2570	18	3	83.48	0.100
5605	2571	7	3	223.58	0.150
5606	2571	20	2	12.27	0.000
5607	2571	30	3	46.93	0.000
5608	2572	4	4	215.08	0.050
5609	2573	41	4	65.34	0.150
5610	2573	29	2	63.94	0.050
5611	2574	23	1	111.35	0.150
5612	2575	35	3	43.09	0.100
5613	2575	11	4	62.61	0.150
5614	2576	43	3	15.11	0.100
5615	2576	25	3	69.41	0.150
5616	2577	13	3	12.23	0.150
5617	2577	9	4	108.82	0.150
5618	2578	13	4	11.07	0.000
5619	2578	35	2	45.53	0.000
5620	2579	23	5	112.09	0.150
5621	2579	13	5	11.76	0.150
5622	2580	45	5	8.42	0.050
5623	2580	4	3	226.62	0.100
5624	2581	45	5	8.52	0.150
5625	2581	42	3	8.31	0.000
5626	2582	1	3	587.32	0.100
5627	2582	34	4	117.48	0.150
5628	2582	40	5	53.82	0.000
5629	2583	35	1	44.98	0.050
5630	2583	8	4	28.51	0.150
5631	2584	19	1	245.91	0.000
5632	2585	40	5	52.90	0.100
5633	2585	42	4	8.65	0.050
5634	2586	28	4	11.10	0.150
5635	2586	30	1	48.21	0.050
5636	2586	6	3	603.42	0.100
5637	2587	19	1	228.43	0.050
5638	2588	23	3	106.24	0.000
5639	2589	39	2	80.13	0.000
5640	2589	14	1	36.92	0.050
5641	2589	20	3	11.13	0.000
5642	2589	13	4	12.16	0.000
5643	2590	39	1	73.86	0.100
5644	2590	23	5	110.24	0.050
5645	2591	20	3	11.38	0.000
5646	2591	26	4	30.01	0.100
5647	2592	27	4	12.13	0.100
5648	2593	18	2	94.44	0.100
5649	2594	42	3	8.08	0.100
5650	2595	33	2	66.30	0.100
5651	2596	24	5	52.47	0.000
5652	2596	32	4	80.58	0.100
5653	2596	4	4	215.23	0.000
5654	2596	3	3	268.07	0.000
5655	2597	27	5	10.79	0.150
5656	2597	13	1	12.04	0.000
5657	2598	7	1	232.30	0.000
5658	2599	4	5	226.84	0.000
5659	2599	25	3	69.87	0.150
5660	2599	27	3	12.48	0.100
5661	2599	9	1	115.30	0.000
5662	2600	27	5	10.79	0.000
5663	2601	24	2	52.35	0.150
5664	2602	27	3	11.75	0.150
5665	2602	22	3	202.57	0.000
5666	2603	44	3	15.82	0.150
5667	2603	37	2	72.14	0.100
5668	2604	5	4	684.24	0.050
5669	2604	32	4	88.65	0.100
5670	2604	44	3	15.96	0.100
5671	2605	33	4	64.40	0.150
5672	2605	3	3	266.78	0.000
5673	2605	39	3	72.12	0.000
5674	2606	33	2	65.17	0.100
5675	2606	5	4	604.85	0.050
5676	2606	6	2	560.19	0.100
5677	2606	27	5	11.92	0.000
5678	2607	17	1	39.63	0.000
5679	2608	36	1	63.29	0.150
5680	2609	20	1	11.98	0.150
5681	2609	9	2	111.24	0.100
5682	2610	21	3	251.64	0.150
5683	2611	7	2	224.00	0.150
5684	2611	45	5	8.94	0.000
5685	2612	8	3	28.46	0.000
5686	2613	15	2	94.02	0.150
5687	2613	5	4	677.72	0.000
5688	2614	37	3	73.80	0.150
5689	2614	41	1	58.42	0.000
5690	2614	11	2	58.28	0.150
5691	2614	2	1	45.14	0.100
5692	2615	33	1	66.56	0.000
5693	2616	11	5	62.23	0.050
5694	2616	35	2	45.38	0.000
5695	2617	8	1	31.64	0.000
5696	2617	38	1	59.73	0.000
5697	2618	23	3	100.53	0.050
5698	2618	17	2	39.07	0.000
5699	2618	9	1	108.21	0.000
5700	2619	11	5	61.23	0.150
5701	2619	2	2	46.53	0.150
5702	2619	30	2	48.15	0.000
5703	2620	16	1	80.57	0.050
5704	2621	18	1	85.53	0.000
5705	2622	12	1	123.71	0.050
5706	2622	42	4	8.68	0.150
5707	2623	9	4	116.25	0.000
5708	2623	48	3	16.58	0.050
5709	2624	19	5	243.11	0.050
5710	2624	11	4	62.84	0.000
5711	2625	19	4	231.79	0.150
5712	2625	23	2	99.89	0.000
5713	2625	5	2	691.27	0.050
5714	2626	15	2	100.01	0.000
5715	2626	14	5	33.07	0.000
5716	2627	40	4	51.16	0.000
5717	2627	27	5	11.64	0.050
5718	2628	5	1	614.29	0.050
5719	2628	30	2	47.06	0.000
5720	2628	32	1	83.81	0.000
5721	2629	47	3	9.45	0.100
5722	2630	5	4	655.55	0.150
5723	2630	4	1	203.44	0.050
5724	2631	48	4	16.97	0.150
5725	2632	22	3	211.22	0.150
5726	2633	42	1	9.12	0.150
5727	2633	22	2	192.07	0.000
5728	2634	12	3	129.74	0.000
5729	2635	18	2	88.53	0.000
5730	2635	33	2	66.88	0.000
5731	2635	12	2	119.17	0.000
5732	2635	1	4	551.70	0.100
5733	2636	47	3	9.71	0.050
5734	2637	24	1	50.04	0.000
5735	2638	25	1	76.86	0.000
5736	2638	35	5	44.36	0.150
5737	2638	23	2	101.35	0.000
5738	2639	11	1	61.26	0.050
5739	2639	32	4	89.44	0.000
5740	2639	4	4	203.03	0.000
5741	2639	7	3	205.74	0.050
5742	2640	30	2	46.50	0.100
5743	2641	43	5	14.41	0.000
5744	2641	33	5	59.73	0.000
5745	2642	38	2	59.97	0.100
5746	2642	15	3	104.15	0.000
5747	2642	10	2	16.63	0.000
5748	2642	3	3	250.50	0.100
5749	2643	27	1	11.47	0.150
5750	2644	31	1	89.62	0.000
5751	2644	43	4	13.57	0.050
5752	2644	40	1	51.19	0.150
5753	2645	24	3	52.01	0.100
5754	2645	17	2	38.25	0.000
5755	2645	43	4	14.42	0.000
5756	2645	14	3	34.85	0.000
5757	2646	12	2	131.42	0.050
5758	2646	8	1	31.55	0.100
5759	2647	23	2	106.71	0.000
5760	2648	34	2	112.81	0.000
5761	2648	32	5	86.96	0.000
5762	2648	43	3	13.51	0.000
5763	2649	27	5	11.49	0.150
5764	2649	34	1	114.67	0.000
5765	2650	1	5	543.74	0.050
5766	2650	43	1	14.03	0.000
5767	2651	18	5	87.02	0.000
5768	2651	32	4	89.37	0.000
5769	2651	40	2	54.58	0.000
5770	2652	40	3	53.62	0.000
5771	2652	43	4	15.46	0.150
5772	2652	38	5	58.88	0.000
5773	2653	12	4	121.05	0.000
5774	2653	20	3	12.17	0.000
5775	2653	31	3	96.49	0.000
5776	2653	25	4	71.79	0.000
5777	2654	31	2	90.40	0.000
5778	2654	7	3	235.21	0.000
5779	2654	10	3	15.56	0.000
5780	2654	26	5	31.14	0.000
5781	2655	28	1	12.03	0.000
5782	2656	5	3	685.60	0.000
5783	2656	42	5	8.55	0.150
5784	2656	31	1	101.95	0.000
5785	2656	14	2	36.18	0.050
5786	2657	26	3	31.42	0.000
5787	2658	24	3	54.70	0.100
5788	2658	5	5	640.53	0.050
5789	2659	23	1	111.62	0.000
5790	2659	29	1	69.29	0.000
5791	2659	44	3	18.09	0.000
5792	2660	46	3	13.91	0.000
5793	2660	7	2	224.56	0.000
5794	2661	6	5	558.01	0.000
5795	2662	36	3	60.98	0.150
5796	2662	11	4	57.17	0.000
5797	2662	48	3	15.38	0.000
5798	2663	16	5	88.94	0.000
5799	2664	45	2	8.24	0.100
5800	2665	22	5	213.13	0.000
5801	2665	33	3	62.58	0.000
5802	2666	39	2	71.68	0.000
5803	2666	21	2	245.99	0.000
5804	2666	7	2	209.00	0.100
5805	2667	6	4	564.70	0.000
5806	2667	21	3	228.13	0.050
5807	2668	24	2	56.23	0.000
5808	2668	7	4	228.25	0.100
5809	2668	20	1	11.87	0.050
5810	2669	41	3	61.75	0.000
5811	2670	38	1	56.84	0.000
5812	2670	23	1	107.85	0.050
5813	2671	12	2	120.44	0.000
5814	2671	40	4	52.61	0.000
5815	2671	20	2	12.36	0.100
5816	2672	24	5	57.28	0.150
5817	2672	37	2	69.56	0.150
5818	2673	24	2	57.56	0.000
5819	2673	39	3	74.50	0.000
5820	2674	20	2	10.84	0.100
5821	2674	46	1	14.17	0.000
5822	2674	23	3	102.86	0.000
5823	2675	20	1	12.38	0.000
5824	2676	2	2	44.78	0.050
5825	2676	28	4	12.74	0.000
5826	2677	37	5	73.48	0.000
5827	2677	43	1	14.70	0.050
5828	2678	5	4	607.48	0.000
5829	2678	37	2	69.53	0.100
5830	2678	10	3	15.66	0.150
5831	2678	14	5	32.76	0.000
5832	2679	29	2	68.05	0.000
5833	2679	46	3	15.83	0.000
5834	2679	9	2	108.17	0.000
5835	2679	45	5	8.24	0.100
5836	2680	41	5	63.70	0.000
5837	2681	36	2	63.82	0.000
5838	2682	43	3	15.20	0.000
5839	2682	13	3	11.72	0.100
5840	2683	13	2	11.10	0.150
5841	2683	42	2	9.26	0.150
5842	2683	41	1	67.72	0.150
5843	2683	30	1	49.38	0.000
5844	2684	43	1	15.38	0.150
5845	2684	13	5	10.88	0.000
5846	2685	44	1	17.28	0.000
5847	2685	4	2	228.86	0.000
5848	2685	36	2	69.83	0.100
5849	2685	1	2	595.99	0.150
5850	2686	10	1	16.02	0.050
5851	2686	41	3	64.47	0.000
5852	2686	21	1	241.52	0.100
5853	2687	12	4	125.72	0.000
5854	2688	45	3	9.13	0.000
5855	2688	20	5	12.21	0.050
5856	2688	39	2	70.47	0.000
5857	2688	4	3	201.74	0.150
5858	2689	1	2	585.54	0.000
5859	2689	7	4	217.05	0.100
5860	2690	34	2	115.23	0.000
5861	2690	14	2	32.64	0.000
5862	2690	7	1	209.43	0.050
5863	2691	39	3	80.02	0.050
5864	2691	23	1	100.34	0.000
5865	2691	42	1	8.67	0.100
5866	2692	40	5	50.08	0.000
5867	2692	32	3	85.08	0.000
5868	2692	14	2	34.25	0.100
5869	2693	39	1	77.27	0.150
5870	2693	20	1	12.03	0.050
5871	2693	14	4	34.93	0.000
5872	2693	36	2	64.37	0.050
5873	2694	39	5	75.28	0.000
5874	2695	9	3	107.02	0.050
5875	2695	1	3	602.55	0.050
5876	2695	17	4	41.01	0.050
5877	2696	45	4	8.76	0.000
5878	2697	41	2	58.67	0.100
5879	2697	22	2	194.72	0.000
5880	2698	19	5	237.29	0.100
5881	2698	41	1	61.47	0.000
5882	2698	39	3	73.66	0.100
5883	2698	47	5	9.41	0.150
5884	2699	1	5	586.81	0.000
5885	2700	14	4	37.23	0.100
5886	2701	39	4	77.88	0.000
5887	2701	40	4	55.96	0.000
5888	2702	14	3	37.56	0.000
5889	2702	48	3	15.58	0.000
5890	2703	7	2	229.18	0.000
5891	2704	39	1	75.53	0.000
5892	2704	34	2	113.88	0.000
5893	2705	43	2	13.46	0.100
5894	2706	39	3	80.76	0.100
5895	2706	23	4	101.07	0.050
5896	2707	45	1	8.36	0.000
5897	2707	15	4	99.43	0.150
5898	2707	11	2	58.12	0.000
5899	2707	16	2	80.37	0.150
5900	2708	32	5	85.97	0.100
5901	2709	4	5	229.28	0.000
5902	2710	7	4	231.32	0.100
5903	2710	23	4	99.62	0.000
5904	2710	19	2	244.80	0.000
5905	2711	11	2	58.80	0.000
5906	2711	32	1	88.91	0.100
5907	2712	5	1	686.78	0.150
5908	2712	37	2	71.71	0.150
5909	2713	27	5	11.06	0.000
5910	2713	5	3	688.49	0.100
5911	2713	45	4	9.04	0.100
5912	2714	33	2	68.48	0.000
5913	2714	30	4	48.52	0.150
5914	2715	3	1	243.26	0.000
5915	2715	17	5	37.59	0.150
5916	2716	38	5	54.03	0.000
5917	2716	47	5	9.36	0.100
5918	2716	23	3	105.40	0.000
5919	2717	20	3	11.24	0.150
5920	2717	24	4	52.14	0.000
5921	2718	26	3	28.93	0.000
5922	2718	36	5	63.16	0.000
5923	2718	17	2	41.15	0.050
5924	2719	45	5	9.04	0.050
5925	2719	22	3	208.01	0.100
5926	2720	10	2	16.10	0.000
5927	2720	1	2	600.73	0.150
5928	2721	14	4	32.87	0.150
5929	2721	4	4	206.08	0.000
5930	2722	13	4	11.24	0.150
5931	2722	35	2	49.44	0.000
5932	2722	11	1	61.17	0.000
5933	2723	37	5	73.79	0.150
5934	2723	43	1	14.58	0.000
5935	2723	39	5	73.60	0.100
5936	2724	42	1	8.56	0.000
5937	2724	38	3	54.74	0.000
5938	2725	25	2	71.66	0.000
5939	2726	20	3	11.55	0.000
5940	2727	32	5	90.30	0.100
5941	2727	28	5	12.83	0.000
5942	2728	11	3	58.95	0.100
5943	2728	3	4	254.38	0.100
5944	2728	5	3	616.86	0.100
5945	2728	6	5	598.30	0.100
5946	2729	35	1	42.93	0.000
5947	2730	9	2	101.76	0.000
5948	2731	35	3	45.91	0.000
5949	2731	16	5	86.82	0.050
5950	2732	25	2	79.03	0.000
5951	2732	38	1	56.44	0.000
5952	2733	34	1	118.20	0.000
5953	2733	47	1	9.02	0.050
5954	2733	10	2	16.57	0.000
5955	2733	3	4	270.26	0.150
5956	2734	22	3	206.97	0.000
5957	2734	5	4	662.91	0.000
5958	2735	19	2	250.84	0.000
5959	2735	17	4	37.87	0.050
5960	2735	9	2	106.97	0.150
5961	2735	5	4	633.01	0.050
5962	2736	3	2	250.64	0.100
5963	2736	40	4	56.06	0.000
5964	2737	37	5	72.15	0.000
5965	2737	48	3	15.86	0.000
5966	2738	4	5	212.02	0.100
5967	2738	5	5	626.66	0.100
5968	2738	24	3	57.73	0.150
5969	2738	15	4	94.18	0.000
5970	2739	29	5	67.52	0.150
5971	2739	9	3	112.38	0.000
5972	2740	31	3	93.59	0.000
5973	2740	32	5	83.89	0.150
5974	2740	29	5	70.57	0.050
5975	2741	26	4	29.59	0.100
5976	2741	17	3	36.01	0.100
5977	2741	15	2	102.34	0.050
5978	2742	2	1	47.28	0.150
5979	2743	5	3	633.77	0.050
5980	2743	7	5	233.91	0.000
5981	2743	43	3	13.56	0.000
5982	2743	32	3	86.58	0.000
5983	2744	16	4	77.20	0.050
5984	2745	36	4	65.66	0.150
5985	2746	31	3	88.44	0.100
5986	2746	4	1	215.25	0.000
5987	2746	44	4	16.55	0.000
5988	2746	25	1	69.15	0.000
5989	2747	10	2	15.78	0.000
5990	2748	35	1	47.77	0.100
5991	2749	31	1	88.27	0.000
5992	2749	19	5	231.45	0.000
5993	2749	28	2	12.56	0.100
5994	2750	9	5	115.77	0.100
5995	2750	41	4	59.58	0.050
5996	2751	17	3	40.01	0.100
5997	2752	21	3	242.59	0.000
5998	2753	16	3	79.14	0.000
5999	2754	40	2	48.78	0.000
6000	2755	40	4	50.53	0.150
6001	2755	38	4	55.42	0.050
6002	2756	20	5	11.76	0.150
6003	2756	5	4	614.82	0.050
6004	2757	23	2	101.95	0.050
6005	2758	20	2	11.38	0.000
6006	2759	31	3	92.12	0.150
6007	2759	1	2	599.81	0.100
6008	2760	5	5	610.30	0.000
6009	2760	44	4	16.81	0.000
6010	2761	23	5	99.56	0.050
6011	2762	22	1	209.60	0.000
6012	2762	25	2	79.46	0.050
6013	2763	36	1	61.46	0.150
6014	2763	38	3	54.36	0.000
6015	2763	3	2	257.39	0.000
6016	2764	19	2	236.65	0.050
6017	2764	41	2	63.79	0.150
6018	2764	34	2	111.87	0.000
6019	2765	29	4	69.28	0.150
6020	2765	42	1	8.13	0.000
6021	2766	31	1	91.73	0.000
6022	2766	12	4	132.36	0.000
6023	2766	15	1	102.20	0.150
6024	2767	48	1	16.20	0.000
6025	2767	9	5	112.25	0.000
6026	2767	4	3	215.87	0.150
6027	2767	16	5	86.97	0.000
6028	2768	8	1	31.31	0.050
6029	2768	21	3	232.91	0.100
6030	2768	42	1	8.97	0.050
6031	2769	9	4	110.06	0.000
6032	2769	22	2	220.74	0.150
6033	2770	48	3	17.54	0.100
6034	2770	22	2	218.82	0.000
6035	2771	32	1	81.17	0.000
6036	2771	8	1	29.84	0.000
6037	2771	43	2	14.22	0.000
6038	2772	15	5	97.70	0.100
6039	2772	31	1	94.37	0.000
6040	2773	35	2	44.91	0.000
6041	2773	47	4	9.26	0.050
6042	2774	43	4	14.65	0.000
6043	2774	31	4	92.52	0.000
6044	2775	3	4	254.05	0.100
6045	2775	7	2	235.22	0.100
6046	2776	46	5	14.29	0.000
6047	2776	11	4	63.24	0.000
6048	2776	7	5	203.10	0.150
6049	2776	45	1	9.18	0.050
6050	2777	6	4	631.23	0.050
6051	2777	13	1	12.07	0.150
6052	2777	16	5	83.44	0.050
6053	2778	20	2	10.74	0.050
6054	2778	22	4	214.74	0.050
6055	2779	23	1	105.98	0.000
6056	2779	26	2	28.13	0.000
6057	2779	24	2	56.68	0.000
6058	2779	46	4	14.02	0.000
6059	2780	2	4	47.25	0.050
6060	2780	28	4	11.11	0.050
6061	2781	4	4	215.23	0.050
6062	2782	42	3	8.10	0.150
6063	2783	1	5	568.86	0.050
6064	2784	22	1	194.32	0.100
6065	2785	44	3	17.50	0.000
6066	2785	27	2	11.31	0.000
6067	2786	22	1	206.75	0.050
6068	2786	13	1	10.96	0.100
6069	2787	12	3	124.91	0.000
6070	2787	32	4	88.28	0.000
6071	2788	41	3	59.47	0.000
6072	2788	39	1	75.77	0.050
6073	2789	12	5	119.99	0.150
6074	2789	13	3	10.81	0.000
6075	2790	20	5	11.43	0.150
6076	2790	33	4	62.38	0.000
6077	2791	36	2	61.90	0.000
6078	2791	21	5	239.18	0.050
6079	2792	22	1	197.84	0.150
6080	2793	40	5	56.12	0.150
6081	2793	48	2	16.53	0.000
6082	2794	42	5	9.13	0.150
6083	2795	47	5	10.35	0.050
6084	2796	38	4	59.60	0.150
6085	2796	8	5	28.64	0.150
6086	2796	5	1	624.34	0.000
6087	2797	12	4	132.66	0.000
6088	2797	32	2	88.66	0.000
6089	2797	4	2	200.91	0.000
6090	2798	32	5	85.73	0.100
6091	2798	20	3	12.21	0.150
6092	2799	27	1	11.93	0.100
6093	2799	5	4	661.60	0.000
6094	2799	41	5	66.22	0.000
6095	2800	14	2	36.75	0.150
6096	2800	34	4	112.04	0.050
6097	2800	35	5	46.61	0.000
6098	2800	10	1	15.49	0.000
6099	2801	24	1	57.83	0.000
6100	2801	14	3	33.57	0.100
6101	2802	25	2	70.42	0.150
6102	2802	13	3	11.12	0.000
6103	2803	23	2	113.04	0.100
6104	2804	22	5	220.62	0.000
6105	2804	4	1	226.95	0.000
6106	2804	7	4	202.78	0.050
6107	2805	41	4	59.61	0.100
6108	2806	47	3	10.03	0.150
6109	2806	7	1	229.13	0.050
6110	2806	18	5	93.06	0.000
6111	2806	6	4	626.36	0.000
6112	2807	6	5	638.74	0.150
6113	2807	42	3	8.13	0.050
6114	2808	42	5	9.06	0.050
6115	2809	42	4	8.78	0.050
6116	2810	33	1	63.31	0.000
6117	2810	28	3	12.56	0.000
6118	2811	47	3	9.84	0.100
6119	2811	32	3	87.53	0.000
6120	2811	45	2	8.21	0.150
6121	2811	38	2	53.25	0.100
6122	2812	23	4	103.84	0.000
6123	2813	45	3	9.20	0.000
6124	2814	28	2	11.29	0.150
6125	2814	17	4	37.95	0.000
6126	2815	21	5	247.56	0.150
6127	2815	34	4	109.95	0.150
6128	2816	35	1	49.02	0.050
6129	2816	48	2	15.79	0.000
6130	2816	41	5	66.52	0.150
6131	2816	31	5	101.93	0.000
6132	2817	39	4	70.78	0.000
6133	2817	19	2	242.07	0.100
6134	2817	4	5	211.32	0.000
6135	2818	29	4	66.23	0.150
6136	2819	28	5	12.77	0.100
6137	2819	15	2	90.75	0.000
6138	2820	10	3	17.97	0.150
6139	2820	13	4	11.21	0.100
6140	2820	39	1	77.63	0.050
6141	2820	6	2	568.47	0.000
6142	2821	26	2	29.93	0.000
6143	2822	1	4	538.31	0.150
6144	2823	28	5	11.32	0.150
6145	2823	18	3	92.00	0.000
6146	2824	23	5	105.75	0.000
6147	2824	19	3	228.88	0.050
6148	2825	47	1	10.07	0.000
6149	2825	16	2	89.01	0.000
6150	2826	4	4	226.12	0.100
6151	2826	31	4	97.83	0.000
6152	2826	35	1	48.92	0.000
6153	2826	17	3	36.79	0.100
6154	2827	1	1	607.64	0.100
6155	2827	5	2	678.95	0.000
6156	2827	32	3	91.11	0.000
6157	2827	2	4	46.49	0.100
6158	2828	28	3	11.36	0.000
6159	2828	9	1	105.20	0.100
6160	2829	4	2	216.51	0.000
6161	2830	5	2	654.57	0.050
6162	2831	39	2	80.20	0.000
6163	2831	5	3	615.76	0.050
6164	2831	34	5	115.73	0.100
6165	2831	26	2	29.51	0.000
6166	2832	10	1	16.73	0.000
6167	2832	21	4	250.92	0.100
6168	2833	23	5	107.05	0.000
6169	2833	17	5	40.89	0.000
6170	2833	36	3	63.59	0.000
6171	2834	44	3	16.22	0.050
6172	2835	26	1	28.85	0.000
6173	2835	44	2	17.94	0.000
6174	2836	33	3	65.52	0.150
6175	2836	22	4	208.35	0.100
6176	2837	37	4	77.10	0.000
6177	2837	38	1	52.05	0.050
6178	2837	28	3	11.94	0.000
6179	2837	12	3	131.47	0.000
6180	2838	44	2	16.17	0.050
6181	2838	41	5	59.46	0.000
6182	2839	24	2	51.65	0.100
6183	2839	1	2	553.11	0.000
6184	2840	43	3	15.46	0.150
6185	2840	14	5	33.24	0.050
6186	2840	24	1	57.12	0.000
6187	2841	40	1	55.14	0.100
6188	2841	8	3	30.88	0.150
6189	2841	18	4	88.10	0.100
6190	2842	24	4	56.55	0.050
6191	2842	26	4	29.65	0.000
6192	2843	15	5	91.79	0.050
6193	2844	28	1	12.52	0.050
6194	2844	1	2	568.59	0.000
6195	2845	11	3	61.12	0.000
6196	2845	34	3	116.76	0.000
6197	2846	13	5	11.43	0.100
6198	2846	41	4	59.42	0.050
6199	2847	17	3	37.22	0.100
6200	2847	43	2	14.05	0.000
6201	2848	5	4	627.76	0.000
6202	2848	21	2	255.85	0.050
6203	2849	44	1	16.55	0.000
6204	2849	5	3	690.94	0.000
6205	2850	1	5	526.56	0.000
6206	2851	38	3	52.66	0.100
6207	2851	45	3	8.65	0.000
6208	2852	47	1	10.21	0.100
6209	2852	4	5	206.78	0.100
6210	2853	46	2	15.79	0.150
6211	2853	2	5	46.44	0.050
6212	2854	17	3	39.57	0.000
6213	2855	33	1	67.44	0.050
6214	2856	46	2	15.40	0.050
6215	2857	14	3	37.19	0.000
6216	2857	27	3	11.23	0.000
6217	2858	37	4	78.01	0.000
6218	2859	28	3	11.29	0.000
6219	2859	41	4	66.42	0.150
6220	2859	2	5	46.14	0.150
6221	2860	19	1	249.30	0.100
6222	2860	40	1	54.35	0.050
6223	2861	19	2	235.97	0.000
6224	2861	27	2	11.73	0.150
6225	2862	21	2	241.12	0.100
6226	2862	29	4	65.36	0.000
6227	2863	45	5	8.87	0.000
6228	2863	42	3	8.25	0.000
6229	2863	19	5	228.13	0.000
6230	2864	40	2	56.27	0.150
6231	2865	25	4	80.00	0.000
6232	2865	28	5	12.35	0.150
6233	2866	2	5	42.52	0.000
6234	2867	46	2	14.05	0.000
6235	2868	15	2	93.13	0.100
6236	2868	23	3	99.41	0.000
6237	2868	11	4	63.90	0.150
6238	2869	17	3	36.57	0.050
6239	2869	7	3	223.43	0.000
6240	2870	12	4	121.91	0.000
6241	2871	30	2	46.58	0.150
6242	2871	36	1	64.42	0.000
6243	2871	22	2	205.68	0.100
6244	2872	2	5	43.83	0.100
6245	2872	40	5	52.99	0.100
6246	2873	37	4	74.40	0.100
6247	2873	43	5	15.52	0.100
6248	2873	8	5	29.13	0.150
6249	2874	6	3	586.58	0.050
6250	2874	21	5	247.12	0.000
6251	2875	33	4	67.15	0.100
6252	2875	35	3	44.07	0.000
6253	2876	20	5	11.14	0.050
6254	2877	3	2	266.19	0.150
6255	2877	10	4	16.29	0.050
6256	2877	36	5	70.86	0.000
6257	2878	23	5	104.87	0.050
6258	2878	1	5	604.55	0.000
6259	2878	44	3	15.68	0.100
6260	2878	47	5	9.82	0.000
6261	2879	23	1	106.90	0.000
6262	2880	45	3	9.14	0.150
6263	2880	12	3	124.87	0.100
6264	2881	9	3	111.36	0.100
6265	2881	47	4	9.73	0.000
6266	2881	12	4	133.79	0.050
6267	2882	10	3	17.45	0.050
6268	2883	44	3	17.18	0.000
6269	2884	39	4	70.45	0.050
6270	2884	4	3	227.96	0.000
6271	2885	2	1	43.60	0.000
6272	2886	15	5	94.62	0.100
6273	2886	45	3	8.41	0.050
6274	2886	42	4	8.27	0.000
6275	2887	37	1	70.74	0.000
6276	2887	25	3	71.37	0.150
6277	2887	28	4	11.19	0.050
6278	2888	19	1	255.30	0.000
6279	2888	6	2	573.57	0.150
6280	2889	1	4	604.08	0.000
6281	2889	13	2	11.47	0.000
6282	2890	11	4	64.96	0.150
6283	2890	5	4	697.58	0.000
6284	2891	36	5	70.45	0.000
6285	2891	29	1	63.46	0.050
6286	2891	43	4	13.67	0.100
6287	2892	19	5	255.08	0.150
6288	2892	10	4	15.51	0.050
6289	2892	33	2	67.46	0.100
6290	2893	44	3	17.16	0.100
6291	2894	22	4	208.04	0.000
6292	2894	36	5	64.23	0.000
6293	2894	28	5	11.05	0.000
6294	2894	46	2	14.22	0.150
6295	2895	15	5	99.66	0.000
6296	2895	22	1	213.34	0.000
6297	2895	10	1	16.63	0.000
6298	2895	14	2	34.63	0.100
6299	2896	5	1	672.63	0.000
6300	2896	41	5	64.07	0.150
6301	2897	12	2	129.84	0.050
6302	2897	27	3	10.95	0.000
6303	2898	36	3	69.04	0.100
6304	2898	38	5	57.88	0.000
6305	2898	5	5	654.07	0.000
6306	2898	1	5	549.87	0.150
6307	2899	38	5	52.82	0.000
6308	2899	41	4	64.15	0.000
6309	2900	37	3	68.55	0.000
6310	2900	19	2	251.35	0.000
6311	2901	27	1	11.97	0.100
6312	2902	21	4	245.34	0.000
6313	2902	5	1	626.86	0.050
6314	2902	11	2	60.11	0.150
6315	2902	22	5	199.75	0.150
6316	2903	8	4	29.09	0.000
6317	2904	7	1	231.54	0.100
6318	2905	24	2	56.94	0.150
6319	2905	38	4	56.21	0.100
6320	2905	1	1	594.84	0.000
6321	2906	26	5	29.86	0.050
6322	2907	15	3	97.75	0.050
6323	2907	48	1	16.04	0.000
6324	2907	1	3	567.64	0.000
6325	2908	47	5	9.28	0.000
6326	2908	4	3	201.72	0.000
6327	2909	14	1	35.02	0.050
6328	2910	44	4	17.00	0.000
6329	2910	27	3	12.19	0.100
6330	2911	2	5	45.86	0.000
6331	2911	34	3	118.63	0.000
6332	2911	33	1	64.44	0.100
6333	2911	26	5	27.85	0.000
6334	2912	18	5	91.82	0.000
6335	2913	25	4	80.50	0.100
6336	2913	16	4	78.56	0.150
6337	2913	35	3	48.14	0.100
6338	2914	11	4	59.20	0.000
6339	2915	43	1	14.95	0.150
6340	2915	34	5	108.53	0.000
6341	2915	37	4	73.51	0.100
6342	2915	12	4	121.75	0.150
6343	2916	46	2	14.00	0.100
6344	2916	41	5	64.69	0.100
6345	2916	4	5	212.09	0.100
6346	2916	28	5	12.39	0.000
6347	2917	46	2	14.07	0.100
6348	2918	27	3	11.76	0.150
6349	2918	43	5	14.88	0.000
6350	2919	22	4	201.82	0.000
6351	2920	48	5	15.27	0.000
6352	2920	40	1	49.82	0.050
6353	2920	39	5	70.51	0.050
6354	2921	34	4	120.60	0.100
6355	2921	13	4	10.83	0.100
6356	2921	27	1	11.50	0.000
6357	2922	11	4	63.27	0.050
6358	2922	5	1	682.05	0.050
6359	2923	35	5	47.24	0.050
6360	2923	29	5	71.59	0.150
6361	2923	24	1	50.42	0.100
6362	2923	8	5	28.71	0.050
6363	2924	2	1	43.89	0.100
6364	2924	35	3	44.06	0.150
6365	2925	25	5	73.93	0.050
6366	2925	30	2	45.68	0.050
6367	2925	37	1	74.44	0.000
6368	2926	47	2	9.42	0.150
6369	2926	26	2	27.53	0.150
6370	2927	45	3	8.71	0.000
6371	2927	4	3	208.12	0.000
6372	2927	23	4	111.68	0.050
6373	2928	32	3	85.29	0.000
6374	2929	36	2	66.55	0.000
6375	2930	48	1	17.60	0.150
6376	2930	30	2	45.29	0.000
6377	2930	10	3	16.77	0.100
6378	2930	13	2	10.99	0.050
6379	2931	6	5	598.62	0.100
6380	2932	35	4	48.61	0.000
6381	2932	32	4	91.12	0.050
6382	2932	4	4	220.33	0.100
6383	2933	35	4	48.64	0.000
6384	2933	6	2	561.29	0.000
6385	2934	7	4	202.18	0.150
6386	2935	11	2	59.86	0.000
6387	2935	17	4	41.01	0.000
6388	2936	6	2	615.80	0.100
6389	2936	5	2	610.73	0.000
6390	2937	21	3	232.48	0.150
6391	2937	32	2	83.39	0.150
6392	2937	14	2	35.65	0.000
6393	2937	39	1	72.63	0.150
6394	2938	38	3	57.20	0.000
6395	2938	23	5	106.16	0.000
6396	2939	23	5	106.63	0.100
6397	2939	39	1	74.88	0.000
6398	2939	30	5	46.75	0.000
6399	2940	33	5	68.26	0.100
6400	2940	36	4	62.63	0.000
6401	2941	44	1	17.06	0.000
6402	2942	22	1	222.69	0.150
6403	2943	22	2	222.96	0.050
6404	2943	1	1	593.24	0.050
6405	2943	32	4	84.47	0.100
6406	2943	4	1	205.07	0.000
6407	2944	17	2	38.00	0.050
6408	2944	31	2	88.49	0.000
6409	2945	39	5	75.35	0.000
6410	2945	9	3	103.57	0.000
6411	2946	40	5	50.25	0.100
6412	2946	11	2	56.42	0.100
6413	2946	8	3	28.30	0.000
6414	2947	47	2	10.20	0.000
6415	2947	17	3	37.14	0.050
6416	2947	21	5	254.55	0.000
6417	2947	7	2	229.94	0.000
6418	2948	21	5	245.83	0.050
6419	2948	15	5	104.48	0.050
6420	2949	23	5	109.41	0.000
6421	2949	44	2	17.36	0.050
6422	2950	5	5	617.99	0.000
6423	2951	43	3	13.89	0.150
6424	2951	46	2	14.35	0.000
6425	2952	31	1	97.72	0.000
6426	2952	3	5	273.83	0.000
6427	2952	9	1	106.12	0.000
6428	2953	4	5	217.16	0.000
6429	2953	19	4	234.32	0.050
6430	2954	12	3	134.09	0.000
6431	2954	40	1	54.90	0.050
6432	2955	33	5	65.37	0.100
6433	2955	24	4	55.51	0.000
6434	2956	26	2	27.79	0.050
6435	2957	41	3	62.60	0.000
6436	2957	25	5	73.90	0.050
6437	2958	1	1	599.42	0.000
6438	2959	13	2	10.85	0.150
6439	2960	30	5	52.79	0.050
6440	2960	6	1	620.04	0.000
6441	2961	34	4	108.02	0.150
6442	2962	21	3	242.47	0.150
6443	2963	48	5	15.50	0.000
6444	2964	24	3	56.63	0.100
6445	2964	20	2	11.79	0.000
6446	2964	26	3	31.71	0.050
6447	2965	16	2	87.61	0.050
6448	2965	43	1	13.55	0.050
6449	2966	42	4	8.63	0.050
6450	2967	1	5	611.06	0.050
6451	2967	26	1	27.60	0.150
6452	2968	34	4	107.27	0.050
6453	2969	43	5	15.14	0.000
6454	2970	47	2	10.34	0.050
6455	2970	33	2	62.01	0.050
6456	2971	31	1	100.82	0.050
6457	2972	32	2	85.33	0.050
6458	2973	41	5	59.05	0.000
6459	2973	1	1	595.52	0.000
6460	2974	11	1	58.81	0.100
6461	2974	38	1	54.02	0.000
6462	2974	6	1	622.66	0.000
6463	2974	42	5	8.23	0.000
6464	2975	18	3	85.95	0.050
6465	2976	28	5	12.08	0.000
6466	2976	24	5	55.73	0.000
6467	2977	15	2	104.44	0.000
6468	2978	47	5	10.20	0.000
6469	2978	30	4	50.34	0.150
6470	2978	41	4	65.18	0.050
6471	2979	34	2	108.53	0.150
6472	2979	16	4	79.85	0.000
6473	2980	26	1	30.59	0.000
6474	2980	30	2	46.27	0.000
6475	2981	38	3	54.69	0.050
6476	2982	5	5	675.96	0.150
6477	2982	39	1	75.32	0.000
6478	2982	42	1	8.47	0.000
6479	2983	34	3	119.69	0.050
6480	2983	16	3	79.43	0.000
6481	2983	47	1	10.39	0.000
6482	2984	26	4	28.03	0.000
6483	2984	33	5	62.91	0.100
6484	2984	43	4	13.53	0.150
6485	2984	16	2	87.69	0.000
6486	2985	1	3	594.97	0.150
6487	2986	36	1	62.35	0.000
6488	2986	26	1	28.64	0.000
6489	2987	24	5	50.20	0.000
6490	2987	48	5	15.38	0.150
6491	2988	12	3	134.85	0.000
6492	2988	5	5	611.27	0.000
6493	2989	44	4	16.82	0.150
6494	2989	7	2	210.61	0.000
6495	2989	22	2	199.95	0.000
6496	2989	36	4	63.62	0.100
6497	2990	43	3	13.84	0.000
6498	2991	14	5	33.44	0.150
6499	2991	17	4	37.52	0.000
6500	2992	42	5	8.15	0.000
6501	2992	28	3	12.82	0.000
6502	2992	34	3	118.42	0.150
6503	2993	24	1	57.26	0.000
6504	2994	28	3	11.92	0.000
6505	2994	8	5	28.56	0.000
6506	2994	37	1	69.54	0.150
6507	2995	11	3	59.63	0.050
6508	2995	32	5	80.73	0.050
6509	2995	26	1	30.31	0.100
6510	2996	46	3	14.85	0.000
6511	2997	35	4	47.66	0.150
6512	2997	20	3	11.94	0.150
6513	2997	2	3	47.25	0.150
6514	2998	36	2	66.22	0.100
6515	2998	35	2	43.11	0.150
6516	2999	26	2	28.92	0.100
6517	3000	17	2	40.42	0.000
6518	3001	32	5	83.26	0.000
6519	3002	3	4	266.64	0.000
6520	3002	23	2	100.68	0.000
6521	3002	41	2	61.01	0.000
6522	3002	43	5	15.09	0.000
6523	3003	42	5	8.61	0.000
6524	3004	29	1	71.08	0.050
6525	3004	12	3	133.75	0.000
6526	3004	7	4	233.27	0.000
6527	3004	2	3	43.56	0.050
6528	3005	11	3	61.08	0.100
6529	3005	9	4	102.09	0.000
6530	3006	36	1	65.99	0.000
6531	3007	38	3	58.44	0.000
6532	3007	41	3	65.01	0.050
6533	3007	37	1	70.35	0.150
6534	3007	11	4	64.33	0.100
6535	3008	1	2	540.90	0.100
6536	3008	9	3	114.11	0.100
6537	3009	23	1	112.41	0.100
6538	3010	37	2	78.77	0.000
6539	3010	35	3	43.39	0.000
6540	3011	3	1	277.49	0.100
6541	3011	30	3	49.61	0.000
6542	3012	16	4	80.63	0.100
6543	3013	7	2	212.33	0.100
6544	3014	28	4	11.16	0.000
6545	3014	43	2	15.21	0.150
6546	3014	45	3	9.12	0.100
6547	3015	46	1	14.10	0.000
6548	3016	22	1	203.10	0.100
6549	3017	8	5	31.30	0.100
6550	3018	1	1	575.75	0.000
6551	3018	8	1	27.81	0.050
6552	3018	16	5	78.95	0.000
6553	3018	18	2	84.70	0.000
6554	3019	42	5	8.66	0.150
6555	3020	26	5	29.75	0.000
6556	3021	40	5	49.42	0.100
6557	3021	45	2	8.46	0.000
6558	3022	25	3	69.31	0.150
6559	3022	16	1	82.57	0.000
6560	3023	37	1	72.95	0.050
6561	3024	22	2	214.30	0.000
6562	3025	47	3	9.33	0.100
6563	3025	16	3	88.61	0.100
6564	3026	1	4	581.09	0.150
6565	3026	25	2	71.14	0.000
6566	3026	3	2	240.00	0.150
6567	3027	22	5	208.56	0.000
6568	3027	46	5	15.04	0.000
6569	3027	30	4	45.99	0.000
6570	3027	35	1	45.75	0.100
6571	3028	39	4	80.77	0.000
6572	3028	32	1	81.98	0.000
6573	3029	43	3	13.46	0.100
6574	3030	30	2	51.24	0.150
6575	3030	4	4	228.04	0.050
6576	3030	48	4	16.38	0.150
6577	3031	21	4	240.86	0.050
6578	3032	9	3	106.29	0.000
6579	3033	7	5	206.38	0.000
6580	3034	33	1	67.43	0.000
6581	3034	28	1	11.37	0.150
6582	3035	13	2	11.73	0.000
6583	3036	47	4	9.65	0.000
6584	3037	24	2	51.50	0.000
6585	3037	22	4	200.62	0.100
6586	3037	15	3	103.04	0.000
6587	3037	48	5	17.38	0.000
6588	3038	16	4	80.53	0.000
6589	3039	27	3	11.42	0.100
6590	3039	30	1	48.10	0.000
6591	3039	42	5	8.29	0.000
6592	3040	33	1	63.76	0.000
6593	3040	10	1	17.57	0.000
6594	3040	22	4	199.59	0.150
6595	3041	12	1	128.89	0.000
6596	3042	18	3	91.17	0.050
6597	3042	28	4	12.73	0.150
6598	3043	45	4	9.14	0.000
6599	3043	29	3	65.62	0.100
6600	3044	15	4	91.63	0.050
6601	3045	11	1	56.84	0.000
6602	3045	9	5	102.83	0.000
6603	3045	40	5	50.39	0.000
6604	3045	27	4	11.53	0.000
6605	3046	6	4	640.58	0.150
6606	3047	17	4	35.58	0.000
6607	3047	12	1	124.29	0.000
6608	3047	25	4	75.27	0.050
6609	3047	46	3	13.77	0.000
6610	3048	34	5	114.71	0.000
6611	3048	32	4	87.48	0.150
6612	3049	22	2	199.47	0.000
6613	3049	44	1	18.02	0.050
6614	3049	5	5	629.11	0.050
6615	3049	8	5	28.52	0.000
6616	3050	35	2	45.69	0.000
6617	3051	21	3	232.73	0.150
6618	3051	10	3	17.30	0.000
6619	3052	40	4	53.22	0.000
6620	3052	17	4	38.67	0.000
6621	3052	5	4	636.98	0.000
6622	3053	36	2	66.07	0.150
6623	3054	29	2	68.10	0.000
6624	3054	21	3	219.72	0.000
6625	3054	8	3	28.22	0.000
6626	3054	9	4	116.31	0.000
6627	3055	44	4	17.83	0.000
6628	3056	21	3	229.70	0.000
6629	3057	44	5	17.24	0.100
6630	3057	20	5	10.87	0.000
6631	3057	9	1	116.15	0.100
6632	3058	10	1	15.86	0.000
6633	3059	36	2	66.43	0.050
6634	3059	29	3	62.32	0.000
6635	3059	39	4	76.15	0.000
6636	3060	8	2	29.35	0.000
6637	3061	40	3	56.04	0.000
6638	3062	11	1	59.94	0.150
6639	3063	5	5	684.44	0.150
6640	3063	30	2	46.37	0.100
6641	3064	12	5	124.95	0.000
6642	3064	47	2	8.99	0.000
6643	3064	43	2	15.07	0.050
6644	3064	7	3	230.89	0.000
6645	3065	9	1	100.89	0.150
6646	3065	41	3	58.92	0.150
6647	3065	40	3	55.18	0.000
6648	3065	29	5	68.02	0.000
6649	3066	39	1	79.12	0.000
6650	3067	17	1	39.38	0.100
6651	3068	9	5	102.05	0.150
6652	3069	42	5	8.14	0.000
6653	3069	21	5	226.12	0.100
6654	3070	48	4	17.08	0.050
6655	3070	36	3	69.22	0.000
6656	3071	8	1	32.22	0.100
6657	3071	24	5	56.28	0.000
6658	3071	20	1	12.31	0.000
6659	3071	28	5	11.93	0.050
6660	3072	36	5	62.89	0.000
6661	3072	37	1	71.01	0.000
6662	3072	48	2	15.27	0.000
6663	3072	20	4	11.15	0.100
6664	3073	38	3	59.47	0.000
6665	3074	35	2	44.42	0.050
6666	3074	48	1	16.44	0.000
6667	3074	32	1	87.29	0.050
6668	3075	9	2	111.83	0.150
6669	3076	13	4	11.82	0.150
6670	3077	17	3	38.06	0.000
6671	3077	32	5	81.75	0.150
6672	3078	16	5	78.72	0.150
6673	3079	1	4	581.97	0.150
6674	3079	36	2	67.18	0.050
6675	3079	21	3	226.72	0.100
6676	3080	26	5	27.31	0.000
6677	3080	14	2	36.50	0.000
6678	3080	32	2	82.53	0.000
6679	3081	34	2	114.91	0.150
6680	3082	8	5	30.49	0.050
6681	3082	6	1	602.45	0.000
6682	3083	29	3	69.06	0.150
6683	3084	17	4	36.14	0.050
6684	3084	2	1	48.33	0.100
6685	3085	42	1	8.71	0.050
6686	3085	18	2	84.51	0.000
6687	3086	30	4	47.09	0.050
6688	3086	48	4	16.38	0.000
6689	3086	33	3	64.90	0.050
6690	3086	32	1	89.18	0.150
6691	3087	19	1	232.24	0.100
6692	3087	44	4	16.55	0.000
6693	3087	11	4	65.02	0.100
6694	3087	48	1	16.32	0.150
6695	3088	9	4	105.60	0.000
6696	3089	5	1	647.27	0.150
6697	3090	39	5	79.70	0.100
6698	3090	46	4	15.72	0.150
6699	3091	9	2	111.39	0.150
6700	3091	1	1	575.15	0.000
6701	3091	20	1	12.29	0.050
6702	3092	46	3	15.36	0.000
6703	3092	13	5	11.70	0.000
6704	3093	5	3	657.78	0.100
6705	3093	47	5	9.11	0.100
6706	3093	45	3	8.97	0.100
6707	3093	9	2	110.85	0.000
6708	3094	43	5	15.29	0.050
6709	3094	14	5	33.12	0.000
6710	3094	27	2	10.82	0.050
6711	3094	30	5	48.38	0.000
6712	3095	43	2	14.38	0.000
6713	3095	21	3	251.78	0.000
6714	3096	32	2	84.02	0.000
6715	3096	12	2	118.49	0.000
6716	3096	42	4	9.25	0.000
6717	3097	43	2	13.94	0.000
6718	3097	15	3	91.27	0.050
6719	3097	27	4	11.55	0.000
6720	3098	47	3	9.90	0.050
6721	3098	19	1	242.79	0.100
6722	3099	40	2	53.24	0.050
6723	3100	31	5	91.14	0.000
6724	3100	34	2	118.00	0.000
6725	3100	41	3	59.09	0.100
6726	3101	14	2	33.62	0.000
6727	3102	31	3	97.16	0.000
6728	3103	25	4	75.66	0.100
6729	3103	48	3	15.47	0.000
6730	3103	44	4	15.87	0.050
6731	3104	35	4	46.23	0.050
6732	3105	36	1	64.54	0.050
6733	3105	5	1	619.84	0.050
6734	3105	11	2	62.87	0.150
6735	3105	7	5	208.42	0.000
6736	3106	9	1	100.85	0.000
6737	3106	12	1	129.24	0.000
6738	3106	35	2	46.11	0.150
6739	3106	8	2	29.13	0.100
6740	3107	18	1	90.97	0.000
6741	3107	31	3	88.86	0.050
6742	3107	27	5	12.46	0.000
6743	3107	34	1	110.48	0.150
6744	3108	7	5	211.48	0.000
6745	3108	5	5	617.87	0.100
6746	3108	47	3	10.42	0.150
6747	3109	35	3	47.91	0.000
6748	3109	41	5	66.65	0.150
6749	3110	29	5	68.05	0.000
6750	3110	9	3	108.02	0.150
6751	3110	43	3	13.51	0.000
6752	3111	11	3	58.74	0.000
6753	3111	44	5	17.66	0.000
6754	3112	28	4	12.80	0.000
6755	3112	16	5	81.65	0.150
6756	3113	35	1	45.40	0.000
6757	3114	30	2	48.77	0.000
6758	3115	5	3	666.17	0.000
6759	3115	20	3	10.74	0.150
6760	3116	43	3	15.07	0.000
6761	3117	35	2	48.50	0.150
6762	3118	43	4	15.13	0.100
6763	3119	17	3	37.71	0.150
6764	3120	7	2	215.89	0.000
6765	3120	34	5	117.64	0.100
6766	3121	42	3	8.95	0.000
6767	3121	6	4	614.68	0.100
6768	3121	19	3	237.19	0.050
6769	3122	24	2	53.49	0.000
6770	3122	6	3	630.99	0.050
6771	3123	3	5	252.06	0.050
6772	3123	7	4	225.88	0.000
6773	3123	27	1	11.48	0.150
6774	3124	37	2	73.63	0.150
6775	3124	1	4	563.72	0.000
6776	3125	6	1	559.03	0.000
6777	3125	11	4	59.96	0.000
6778	3125	30	5	45.35	0.150
6779	3126	27	3	10.77	0.150
6780	3126	19	2	233.27	0.000
6781	3126	37	1	72.04	0.000
6782	3126	30	3	52.69	0.000
6783	3127	25	2	72.44	0.100
6784	3127	13	2	11.53	0.000
6785	3128	19	3	234.80	0.100
6786	3129	7	2	234.00	0.000
6787	3130	12	1	134.64	0.000
6788	3130	5	1	686.78	0.150
6789	3130	23	1	102.66	0.050
6790	3131	19	5	254.72	0.050
6791	3131	14	3	34.60	0.000
6792	3131	42	1	8.10	0.000
6793	3132	9	3	103.33	0.000
6794	3132	37	3	70.63	0.000
6795	3133	32	1	84.01	0.100
6796	3133	19	3	233.50	0.150
6797	3133	38	5	52.68	0.000
6798	3133	10	1	15.45	0.000
6799	3134	5	2	698.48	0.000
6800	3134	1	1	551.15	0.100
6801	3135	28	3	11.58	0.000
6802	3135	44	3	17.40	0.150
6803	3135	34	4	119.41	0.000
6804	3136	30	1	45.39	0.050
6805	3136	39	2	77.70	0.150
6806	3137	10	2	16.30	0.100
6807	3137	47	2	10.36	0.150
6808	3138	34	2	117.39	0.150
6809	3138	29	4	63.04	0.000
6810	3139	26	2	31.14	0.000
6811	3140	48	2	17.42	0.000
6812	3141	24	1	51.64	0.000
6813	3141	39	3	79.11	0.000
6814	3142	45	1	8.58	0.000
6815	3143	38	2	58.89	0.000
6816	3143	43	5	15.27	0.150
6817	3143	2	1	47.32	0.050
6818	3144	39	2	72.14	0.000
6819	3145	9	2	112.87	0.000
6820	3145	6	4	591.07	0.100
6821	3146	29	5	63.97	0.000
6822	3146	19	5	229.26	0.050
6823	3147	14	2	36.58	0.000
6824	3147	31	4	97.19	0.000
6825	3148	10	4	17.71	0.050
6826	3148	20	4	12.22	0.100
6827	3148	5	3	670.33	0.100
6828	3149	7	3	224.21	0.150
6829	3149	42	3	8.86	0.000
6830	3150	6	1	641.46	0.000
6831	3150	23	3	110.90	0.000
6832	3151	41	5	59.59	0.100
6833	3151	26	5	31.18	0.000
6834	3151	6	3	606.76	0.100
6835	3152	1	1	589.99	0.050
6836	3153	7	4	222.72	0.050
6837	3154	36	2	68.28	0.000
6838	3154	39	3	78.76	0.000
6839	3155	7	1	233.33	0.150
6840	3155	31	2	89.53	0.050
6841	3155	24	5	56.45	0.000
6842	3155	12	2	134.15	0.000
6843	3156	6	4	568.14	0.000
6844	3157	23	1	108.93	0.000
6845	3158	38	4	53.48	0.000
6846	3158	16	3	85.18	0.000
6847	3158	22	3	213.28	0.050
6848	3159	8	2	28.19	0.000
6849	3159	15	5	94.49	0.150
6850	3159	1	4	598.88	0.000
6851	3159	29	5	70.45	0.150
6852	3160	32	2	83.99	0.050
6853	3160	38	2	58.30	0.150
6854	3161	20	2	10.81	0.000
6855	3161	36	2	60.98	0.000
6856	3162	47	3	10.43	0.000
6857	3162	15	4	105.05	0.000
6858	3163	33	2	60.80	0.000
6859	3163	15	3	90.65	0.000
6860	3163	29	4	64.39	0.050
6861	3164	15	4	103.59	0.000
6862	3165	9	1	103.27	0.150
6863	3165	31	2	95.77	0.000
6864	3165	14	3	37.15	0.000
6865	3165	21	4	228.09	0.000
6866	3166	45	1	9.35	0.150
6867	3166	42	3	8.40	0.000
6868	3167	26	4	29.03	0.000
6869	3168	25	5	71.09	0.100
6870	3169	28	3	12.21	0.050
6871	3170	42	3	9.31	0.000
6872	3170	30	3	51.31	0.000
6873	3170	7	2	218.97	0.000
6874	3170	24	4	50.94	0.100
6875	3171	20	4	11.41	0.000
6876	3171	37	4	73.02	0.150
6877	3171	24	4	50.27	0.000
6878	3172	38	2	56.21	0.000
6879	3172	24	2	56.59	0.000
6880	3173	5	4	671.59	0.100
6881	3173	45	3	9.41	0.000
6882	3173	29	5	71.85	0.100
6883	3173	13	2	10.60	0.000
6884	3174	38	5	54.40	0.150
6885	3174	39	5	77.85	0.150
6886	3174	8	1	32.02	0.000
6887	3175	19	3	223.26	0.000
6888	3176	6	5	607.84	0.000
6889	3177	3	1	274.51	0.000
6890	3178	4	3	228.96	0.000
6891	3178	48	5	16.06	0.150
6892	3179	48	5	15.56	0.000
6893	3179	33	3	67.14	0.100
6894	3180	45	3	8.30	0.000
6895	3180	6	2	577.42	0.100
6896	3180	25	1	73.14	0.150
6897	3181	46	2	14.44	0.000
6898	3181	16	5	87.03	0.100
6899	3182	25	5	76.14	0.100
6900	3182	33	3	63.16	0.000
6901	3183	29	5	67.91	0.000
6902	3183	20	5	11.49	0.000
6903	3184	37	5	70.31	0.050
6904	3184	47	1	9.32	0.100
6905	3184	45	4	9.54	0.150
6906	3185	10	1	16.08	0.050
6907	3185	22	3	201.62	0.000
6908	3185	28	4	11.43	0.050
6909	3185	48	2	16.14	0.150
6910	3186	15	4	99.19	0.100
6911	3187	32	1	91.68	0.000
6912	3187	13	3	11.96	0.150
6913	3187	48	2	17.03	0.150
6914	3188	40	2	53.68	0.000
6915	3188	5	2	623.47	0.000
6916	3188	48	3	15.97	0.050
6917	3188	18	1	91.62	0.000
6918	3189	6	2	611.31	0.100
6919	3189	27	5	11.52	0.000
6920	3189	35	2	48.05	0.100
6921	3190	36	2	69.25	0.050
6922	3191	45	4	8.29	0.150
6923	3192	6	3	605.01	0.100
6924	3192	8	1	27.84	0.150
6925	3193	16	1	86.35	0.050
6926	3194	39	5	78.51	0.000
6927	3194	31	2	91.04	0.150
6928	3194	10	4	16.21	0.150
6929	3195	1	5	609.04	0.000
6930	3196	33	3	64.58	0.050
6931	3196	48	4	15.27	0.000
6932	3197	39	1	70.55	0.150
6933	3198	3	3	263.27	0.050
6934	3198	4	4	223.48	0.050
6935	3199	37	4	69.37	0.000
6936	3199	38	4	54.98	0.150
6937	3200	5	1	655.40	0.000
6938	3200	38	2	53.64	0.050
6939	3201	8	3	31.89	0.100
6940	3201	33	1	68.88	0.000
6941	3202	3	5	251.06	0.150
6942	3202	38	3	57.50	0.000
6943	3203	34	4	114.96	0.050
6944	3204	19	1	228.81	0.150
6945	3204	36	1	69.57	0.150
6946	3204	4	2	214.15	0.050
6947	3205	9	2	105.65	0.000
6948	3205	28	2	11.89	0.150
6949	3205	6	3	599.22	0.000
6950	3206	47	3	9.92	0.150
6951	3206	19	2	227.45	0.000
6952	3207	45	3	8.95	0.000
6953	3208	32	5	91.15	0.000
6954	3208	24	1	51.34	0.000
6955	3208	48	3	16.16	0.000
6956	3208	44	3	17.84	0.100
6957	3209	47	3	9.01	0.050
6958	3210	41	1	59.37	0.000
6959	3210	47	2	10.10	0.050
6960	3210	20	5	11.99	0.050
6961	3210	7	3	213.79	0.150
6962	3211	25	1	78.28	0.150
6963	3211	11	3	65.59	0.150
6964	3211	43	1	13.47	0.000
6965	3212	10	5	16.65	0.150
6966	3213	20	5	10.94	0.100
6967	3214	30	1	51.21	0.000
6968	3214	13	2	10.61	0.000
6969	3215	34	4	110.30	0.000
6970	3216	5	1	607.56	0.000
6971	3216	1	2	579.29	0.000
6972	3216	20	1	11.57	0.000
6973	3217	35	5	43.25	0.050
6974	3218	44	5	16.95	0.000
6975	3218	32	2	90.03	0.000
6976	3219	28	5	12.53	0.000
6977	3220	10	2	16.67	0.000
6978	3221	12	3	125.38	0.000
6979	3221	11	2	62.98	0.000
6980	3221	8	1	30.13	0.100
6981	3222	16	5	83.53	0.000
6982	3222	31	2	94.82	0.000
6983	3223	35	1	47.68	0.000
6984	3224	14	3	34.02	0.000
6985	3224	16	4	77.60	0.000
6986	3225	36	1	68.41	0.000
6987	3225	10	2	17.03	0.050
6988	3226	7	5	201.71	0.000
6989	3226	29	3	64.97	0.050
6990	3227	31	2	93.76	0.000
6991	3228	17	2	39.92	0.100
6992	3229	32	3	85.87	0.150
6993	3229	13	4	11.29	0.000
6994	3229	10	1	16.46	0.100
6995	3229	3	2	275.41	0.100
6996	3230	27	4	10.87	0.000
6997	3231	23	5	102.32	0.000
6998	3231	20	3	11.56	0.150
6999	3232	37	4	75.41	0.000
7000	3233	14	2	36.08	0.150
7001	3234	48	4	15.51	0.150
7002	3235	40	4	50.38	0.000
7003	3235	27	5	11.38	0.000
7004	3235	3	5	250.81	0.100
7005	3235	44	3	16.75	0.150
7006	3236	40	1	53.08	0.100
7007	3236	9	5	106.70	0.050
7008	3236	28	4	11.86	0.050
7009	3236	25	4	71.76	0.000
7010	3237	1	3	526.84	0.100
7011	3237	46	2	15.73	0.000
7012	3238	42	2	8.02	0.150
7013	3238	31	5	87.86	0.050
7014	3239	42	1	8.19	0.100
7015	3239	2	2	43.39	0.000
7016	3239	44	3	16.32	0.050
7017	3240	27	2	12.29	0.000
7018	3240	32	1	83.50	0.000
7019	3241	47	3	9.39	0.000
7020	3242	45	3	9.30	0.100
7021	3242	27	4	12.05	0.000
7022	3243	27	5	10.84	0.000
7023	3243	46	1	15.21	0.000
7024	3244	43	1	13.52	0.000
7025	3244	5	2	671.65	0.050
7026	3245	12	2	118.74	0.000
7027	3245	7	2	235.07	0.000
7028	3246	17	1	38.77	0.000
7029	3246	6	2	608.09	0.050
7030	3247	32	2	80.33	0.150
7031	3247	43	2	14.99	0.000
7032	3247	19	2	251.65	0.050
7033	3247	7	3	209.65	0.000
7034	3248	39	5	78.98	0.100
7035	3248	8	5	30.40	0.000
7036	3249	7	2	223.88	0.000
7037	3249	28	5	12.78	0.000
7038	3249	25	5	79.47	0.050
7039	3249	33	3	64.48	0.000
7040	3250	40	1	51.39	0.150
7041	3250	35	4	44.92	0.150
7042	3251	13	2	12.26	0.000
7043	3251	2	3	48.55	0.000
7044	3252	1	1	604.40	0.150
7045	3253	25	2	77.13	0.150
7046	3253	15	3	98.70	0.100
7047	3254	5	3	646.45	0.000
7048	3255	5	2	689.28	0.000
7049	3255	10	1	17.31	0.050
7050	3256	8	4	29.05	0.000
7051	3256	21	2	245.19	0.000
7052	3257	22	3	194.94	0.000
7053	3257	25	2	77.39	0.000
7054	3258	5	2	623.24	0.050
7055	3259	42	5	8.56	0.000
7056	3260	44	2	16.95	0.000
7057	3260	22	5	203.44	0.100
7058	3261	31	5	93.90	0.150
7059	3262	21	2	251.59	0.000
7060	3262	3	5	269.36	0.000
7061	3263	36	3	67.05	0.000
7062	3263	5	1	702.62	0.000
7063	3264	21	2	228.59	0.100
7064	3264	26	3	30.34	0.000
7065	3264	19	3	221.84	0.100
7066	3265	34	5	121.99	0.100
7067	3265	37	3	74.99	0.100
7068	3265	20	3	12.20	0.050
7069	3266	24	5	52.12	0.000
7070	3267	12	1	133.82	0.050
7071	3268	30	4	45.71	0.000
7072	3268	38	2	54.86	0.100
7073	3269	10	3	16.00	0.000
7074	3270	42	1	8.42	0.000
7075	3270	28	2	11.92	0.000
7076	3271	21	3	243.13	0.000
7077	3271	42	5	9.01	0.000
7078	3271	10	3	17.38	0.150
7079	3271	5	1	670.62	0.000
7080	3272	41	4	58.50	0.000
7081	3273	41	2	67.16	0.000
7082	3273	5	3	636.32	0.000
7083	3274	34	4	114.56	0.050
7084	3275	23	2	99.19	0.100
7085	3275	38	5	51.83	0.100
7086	3275	31	1	88.67	0.000
7087	3276	45	4	8.58	0.000
7088	3277	41	3	67.89	0.150
7089	3277	32	2	92.12	0.000
7090	3277	17	5	39.58	0.000
7091	3278	26	5	30.14	0.050
7092	3278	2	3	44.98	0.000
7093	3278	29	3	71.19	0.000
7094	3279	44	1	15.97	0.000
7095	3279	36	1	62.71	0.050
7096	3279	11	1	61.84	0.000
7097	3280	7	3	206.63	0.150
7098	3280	27	3	11.44	0.050
7099	3281	5	1	646.52	0.000
7100	3282	19	4	234.07	0.150
7101	3282	15	4	97.36	0.050
7102	3282	12	3	133.36	0.000
7103	3283	7	2	227.06	0.100
7104	3283	10	4	17.94	0.000
7105	3284	36	1	62.63	0.050
7106	3284	23	4	113.51	0.150
7107	3284	1	3	606.09	0.100
7108	3284	28	4	12.56	0.000
7109	3285	34	1	105.69	0.000
7110	3285	18	4	83.53	0.050
7111	3286	33	1	66.36	0.100
7112	3286	20	4	12.06	0.000
7113	3287	48	2	16.83	0.000
7114	3288	31	5	96.35	0.050
7115	3289	2	4	46.71	0.050
7116	3289	5	5	654.03	0.100
7117	3289	11	3	58.20	0.150
7118	3289	33	1	62.49	0.100
7119	3290	7	4	219.96	0.050
7120	3291	6	3	612.29	0.100
7121	3291	23	4	111.83	0.100
7122	3291	7	4	220.26	0.000
7123	3291	44	5	17.37	0.050
7124	3292	25	3	72.39	0.000
7125	3292	19	4	245.99	0.000
7126	3293	36	3	69.07	0.050
7127	3293	28	1	11.23	0.000
7128	3294	25	1	79.08	0.000
7129	3294	48	4	15.73	0.050
7130	3294	19	5	246.67	0.000
7131	3295	38	5	55.50	0.100
7132	3296	45	5	8.93	0.000
7133	3296	28	5	11.57	0.000
7134	3297	37	3	79.26	0.150
7135	3297	47	4	9.24	0.000
7136	3298	31	4	90.84	0.000
7137	3299	41	3	59.51	0.050
7138	3299	21	4	254.07	0.000
7139	3300	12	4	130.27	0.100
7140	3301	16	2	79.08	0.000
7141	3301	25	2	80.34	0.000
7142	3301	5	5	643.94	0.100
7143	3301	12	3	121.97	0.100
7144	3302	36	5	65.38	0.050
7145	3302	30	1	52.73	0.050
7146	3303	48	3	16.89	0.000
7147	3303	5	4	630.15	0.000
7148	3303	7	3	203.13	0.050
7149	3303	44	4	16.46	0.000
7150	3304	33	4	64.43	0.000
7151	3304	40	2	49.88	0.000
7152	3304	48	1	15.20	0.050
7153	3304	23	5	112.51	0.150
7154	3305	14	3	37.74	0.000
7155	3306	27	5	12.55	0.150
7156	3306	2	5	43.04	0.050
7157	3307	16	1	80.24	0.150
7158	3308	5	1	616.46	0.000
7159	3309	10	3	17.23	0.000
7160	3309	1	4	575.71	0.000
7161	3309	14	3	34.30	0.000
7162	3310	40	3	48.74	0.150
7163	3311	22	5	213.73	0.100
7164	3311	30	2	48.11	0.050
7165	3312	44	1	17.12	0.000
7166	3312	33	1	63.06	0.050
7167	3312	39	1	77.48	0.000
7168	3313	24	5	50.09	0.000
7169	3313	11	4	58.35	0.000
7170	3313	36	4	69.73	0.000
7171	3314	45	2	9.51	0.100
7172	3314	4	1	229.32	0.100
7173	3315	17	3	35.53	0.150
7174	3315	26	4	31.42	0.000
7175	3316	25	3	78.55	0.050
7176	3316	5	5	621.36	0.100
7177	3317	12	1	133.82	0.150
7178	3318	41	1	63.78	0.000
7179	3318	29	5	61.73	0.050
7180	3318	8	2	29.36	0.100
7181	3319	23	4	98.77	0.000
7182	3319	28	3	12.07	0.000
7183	3319	38	2	54.54	0.000
7184	3319	32	2	90.01	0.050
7185	3320	37	5	74.04	0.000
7186	3320	5	4	616.87	0.000
7187	3320	42	2	8.65	0.000
7188	3320	45	4	9.19	0.050
7189	3321	31	2	99.63	0.000
7190	3321	10	2	17.31	0.000
7191	3321	3	2	255.73	0.000
7192	3321	2	5	43.64	0.100
7193	3322	46	2	15.01	0.100
7194	3322	17	1	39.98	0.000
7195	3322	44	1	17.39	0.100
7196	3323	33	4	65.78	0.100
7197	3324	30	5	48.47	0.000
7198	3324	46	4	15.55	0.150
7199	3324	3	5	274.32	0.100
7200	3324	24	2	52.66	0.100
7201	3325	15	1	103.21	0.050
7202	3326	43	2	13.86	0.000
7203	3327	22	1	191.51	0.100
7204	3327	39	2	77.86	0.000
7205	3328	39	4	73.80	0.050
7206	3328	45	1	8.96	0.050
7207	3328	44	2	17.70	0.000
7208	3328	17	4	40.46	0.050
7209	3329	8	1	31.71	0.150
7210	3329	28	2	11.23	0.100
7211	3329	34	5	120.42	0.050
7212	3330	23	1	104.13	0.100
7213	3330	8	5	27.87	0.000
7214	3330	41	3	67.20	0.000
7215	3331	1	1	568.03	0.000
7216	3331	34	3	108.04	0.000
7217	3331	11	3	64.27	0.050
7218	3332	32	2	88.66	0.000
7219	3332	31	3	90.50	0.100
7220	3332	36	2	62.47	0.000
7221	3332	22	5	220.78	0.150
7222	3333	23	1	104.62	0.050
7223	3333	36	5	68.86	0.150
7224	3334	19	3	233.45	0.000
7225	3334	39	2	76.54	0.000
7226	3335	15	1	103.31	0.100
7227	3335	2	1	42.88	0.150
7228	3335	35	4	43.80	0.150
7229	3336	5	1	683.83	0.050
7230	3337	47	1	9.06	0.050
7231	3337	5	5	613.32	0.000
7232	3338	24	1	53.81	0.000
7233	3339	3	2	271.26	0.100
7234	3339	34	3	115.46	0.000
7235	3340	23	4	111.78	0.000
7236	3340	15	4	96.38	0.150
7237	3341	47	1	9.69	0.100
7238	3342	5	2	605.22	0.150
7239	3342	21	1	220.06	0.050
7240	3342	6	5	557.03	0.150
7241	3343	3	5	249.27	0.100
7242	3344	21	5	225.01	0.000
7243	3344	17	4	40.32	0.050
7244	3345	1	3	566.06	0.050
7245	3345	43	4	15.22	0.000
7246	3345	16	3	89.62	0.000
7247	3345	24	2	55.74	0.000
7248	3346	9	1	108.28	0.150
7249	3346	33	1	64.45	0.150
7250	3347	25	3	73.90	0.050
7251	3347	42	2	8.61	0.050
7252	3348	30	3	45.86	0.000
7253	3348	16	3	81.34	0.000
7254	3348	11	2	57.65	0.100
7255	3348	20	4	12.05	0.050
7256	3349	1	5	609.32	0.000
7257	3349	42	2	8.52	0.100
7258	3349	15	3	98.60	0.000
7259	3350	20	1	10.79	0.100
7260	3350	39	4	74.36	0.000
7261	3350	36	3	64.75	0.000
7262	3351	45	3	8.38	0.100
7263	3352	31	4	90.10	0.150
7264	3353	3	5	251.06	0.000
7265	3354	44	5	16.98	0.000
7266	3355	31	2	91.91	0.150
7267	3355	46	2	15.74	0.000
7268	3355	14	1	36.51	0.050
7269	3356	38	3	53.62	0.150
7270	3356	11	3	61.22	0.000
7271	3356	21	5	240.18	0.000
7272	3357	16	5	83.16	0.000
7273	3358	28	3	12.22	0.000
7274	3358	10	3	17.36	0.150
7275	3359	32	3	88.82	0.100
7276	3360	28	2	12.08	0.100
7277	3361	39	4	74.46	0.050
7278	3362	4	5	216.55	0.050
7279	3362	21	1	232.31	0.100
7280	3362	20	1	11.02	0.000
7281	3362	41	4	64.99	0.000
7282	3363	13	4	11.61	0.050
7283	3363	35	2	44.68	0.000
7284	3363	7	1	202.68	0.000
7285	3363	20	5	11.62	0.150
7286	3364	28	4	12.62	0.000
7287	3364	20	5	10.91	0.050
7288	3364	4	3	222.81	0.050
7289	3365	41	3	60.27	0.000
7290	3365	15	2	91.46	0.150
7291	3366	31	2	101.26	0.100
7292	3366	2	1	48.85	0.150
7293	3367	45	4	9.38	0.050
7294	3367	33	3	68.35	0.000
7295	3368	43	2	14.50	0.000
7296	3369	39	2	73.70	0.100
7297	3369	34	3	113.55	0.000
7298	3370	15	3	98.09	0.100
7299	3370	27	2	12.32	0.000
7300	3371	47	5	9.15	0.150
7301	3372	25	1	72.58	0.050
7302	3372	27	2	11.29	0.000
7303	3372	32	4	89.65	0.000
7304	3373	42	4	9.20	0.100
7305	3374	34	5	111.46	0.050
7306	3374	18	2	87.63	0.050
7307	3375	27	3	11.45	0.000
7308	3375	32	2	92.21	0.000
7309	3376	11	3	57.88	0.000
7310	3377	38	3	60.25	0.050
7311	3377	35	4	44.66	0.000
7312	3377	7	2	226.31	0.000
7313	3377	33	3	60.89	0.050
7314	3378	10	1	17.96	0.100
7315	3378	17	1	39.26	0.000
7316	3378	31	5	98.26	0.150
7317	3378	6	2	595.44	0.000
7318	3379	45	2	8.82	0.100
7319	3379	20	1	11.24	0.150
7320	3379	23	1	107.43	0.000
7321	3380	11	5	61.35	0.150
7322	3380	10	4	15.59	0.100
7323	3381	47	1	10.41	0.150
7324	3382	34	4	111.90	0.100
7325	3382	43	5	15.59	0.000
7326	3382	10	2	17.85	0.000
7327	3383	17	5	39.39	0.000
7328	3384	5	1	702.26	0.150
7329	3385	19	1	230.44	0.000
7330	3386	30	4	48.03	0.100
7331	3386	24	5	50.19	0.050
7332	3387	10	1	17.41	0.050
7333	3387	4	1	214.15	0.000
7334	3388	22	2	221.37	0.100
7335	3388	21	1	233.37	0.000
7336	3388	7	5	223.96	0.000
7337	3388	1	1	571.56	0.150
7338	3389	45	1	9.15	0.100
7339	3389	3	5	257.54	0.100
7340	3390	34	4	114.27	0.000
7341	3390	22	4	220.16	0.150
7342	3390	38	1	55.46	0.050
7343	3390	5	4	690.96	0.050
7344	3391	24	2	54.99	0.000
7345	3391	30	5	47.51	0.000
7346	3391	5	3	697.65	0.000
7347	3392	36	3	61.74	0.100
7348	3392	42	1	8.12	0.150
7349	3393	8	3	30.63	0.050
7350	3393	27	4	11.44	0.150
7351	3394	7	2	227.28	0.000
7352	3395	5	2	619.37	0.000
7353	3395	41	1	60.10	0.100
7354	3396	30	4	52.40	0.000
7355	3396	18	1	90.40	0.150
7356	3396	12	4	121.00	0.100
7357	3396	11	2	59.50	0.100
7358	3397	37	5	77.65	0.000
7359	3397	12	4	120.71	0.000
7360	3397	3	4	254.90	0.000
7361	3397	18	5	91.42	0.000
7362	3398	46	4	14.84	0.000
7363	3399	38	3	52.98	0.150
7364	3400	40	5	54.99	0.000
7365	3401	45	5	9.48	0.100
7366	3402	12	3	123.75	0.000
7367	3402	5	2	664.79	0.000
7368	3402	7	1	231.81	0.050
7369	3402	17	1	35.58	0.000
7370	3403	45	5	9.37	0.100
7371	3404	13	1	12.21	0.000
7372	3404	20	5	12.09	0.150
7373	3405	32	3	88.63	0.100
7374	3405	46	4	14.74	0.100
7375	3406	11	3	56.30	0.050
7376	3406	18	4	83.80	0.150
7377	3407	18	3	82.86	0.000
7378	3408	8	5	28.27	0.150
7379	3408	27	1	11.58	0.000
7380	3408	48	1	15.21	0.050
7381	3408	40	2	51.98	0.000
7382	3409	25	2	69.91	0.000
7383	3410	14	2	35.79	0.150
7384	3410	20	1	11.88	0.050
7385	3411	37	4	68.37	0.000
7386	3411	20	3	11.39	0.000
7387	3411	14	4	34.14	0.000
7388	3412	10	1	16.09	0.000
7389	3412	7	3	202.54	0.150
7390	3412	36	1	69.59	0.050
7391	3412	43	4	15.24	0.100
7392	3413	37	3	69.91	0.000
7393	3413	15	3	92.40	0.050
7394	3413	5	3	669.29	0.100
7395	3414	19	1	249.39	0.000
7396	3415	24	4	52.12	0.050
7397	3415	31	1	99.58	0.000
7398	3415	9	1	106.57	0.000
7399	3415	32	3	87.98	0.100
7400	3416	47	3	10.30	0.000
7401	3416	11	3	63.52	0.000
7402	3416	8	4	32.38	0.000
7403	3417	45	2	8.36	0.050
7404	3417	7	1	202.26	0.100
7405	3418	5	5	669.35	0.100
7406	3418	31	4	92.85	0.100
7407	3418	3	1	251.87	0.100
7408	3419	43	2	15.63	0.000
7409	3419	24	1	51.31	0.050
7410	3419	3	2	267.99	0.100
7411	3420	44	5	16.42	0.000
7412	3420	1	2	612.90	0.000
7413	3420	10	1	16.36	0.100
7414	3420	23	5	107.82	0.150
7415	3421	21	2	233.18	0.000
7416	3421	8	5	28.18	0.150
7417	3422	45	3	8.47	0.000
7418	3423	22	1	201.14	0.100
7419	3423	8	1	28.24	0.000
7420	3424	12	1	125.54	0.100
7421	3425	47	2	9.41	0.000
7422	3426	6	3	576.41	0.000
7423	3426	17	1	39.87	0.000
7424	3427	9	1	105.86	0.100
7425	3427	18	5	90.18	0.000
7426	3427	29	3	63.97	0.000
7427	3427	28	1	11.08	0.000
7428	3428	18	1	94.49	0.000
7429	3428	2	1	45.34	0.000
7430	3429	1	3	526.45	0.000
7431	3429	5	5	608.68	0.000
7432	3429	44	5	16.37	0.000
7433	3430	12	5	125.97	0.000
7434	3430	30	3	47.57	0.000
7435	3430	6	2	563.13	0.000
7436	3430	23	5	111.25	0.150
7437	3431	11	5	63.97	0.000
7438	3431	35	5	43.42	0.000
7439	3432	20	4	11.52	0.000
7440	3432	25	3	75.37	0.000
7441	3433	19	2	228.77	0.000
7442	3433	3	4	260.85	0.000
7443	3433	14	5	33.95	0.000
7444	3433	43	5	14.27	0.050
7445	3434	9	5	105.07	0.150
7446	3434	48	5	16.89	0.050
7447	3434	18	3	93.38	0.000
7448	3435	41	2	64.30	0.050
7449	3435	19	5	250.88	0.000
7450	3435	8	5	31.18	0.000
7451	3436	15	4	94.73	0.150
7452	3436	29	4	63.36	0.000
7453	3436	8	5	30.11	0.000
7454	3436	20	1	12.00	0.000
7455	3437	10	3	16.75	0.100
7456	3437	9	5	104.45	0.000
7457	3437	47	2	10.37	0.000
7458	3437	41	5	66.64	0.000
7459	3438	37	3	69.26	0.000
7460	3438	41	4	67.19	0.150
7461	3438	20	4	12.35	0.050
7462	3439	20	4	10.77	0.000
7463	3440	24	1	52.69	0.100
7464	3441	24	5	50.57	0.000
7465	3442	41	2	65.24	0.000
7466	3442	10	3	15.52	0.000
7467	3443	12	3	130.58	0.100
7468	3443	36	3	70.09	0.000
7469	3444	47	4	10.34	0.100
7470	3444	8	2	30.56	0.150
7471	3444	45	5	8.75	0.000
7472	3445	4	1	218.98	0.050
7473	3446	31	4	90.45	0.100
7474	3446	42	1	8.53	0.050
7475	3447	18	5	92.68	0.000
7476	3447	32	3	90.37	0.000
7477	3448	28	1	11.26	0.150
7478	3448	33	4	67.33	0.150
7479	3448	30	3	52.30	0.000
7480	3449	22	5	201.60	0.000
7481	3449	41	4	62.20	0.000
7482	3449	30	3	51.94	0.000
7483	3449	5	3	611.49	0.000
7484	3450	28	3	12.77	0.000
7485	3451	41	2	65.03	0.000
7486	3452	12	3	130.56	0.000
7487	3452	29	5	70.01	0.150
7488	3453	2	5	49.04	0.000
7489	3454	41	1	61.83	0.000
7490	3454	10	2	16.11	0.000
7491	3455	22	1	213.89	0.000
7492	3456	47	3	8.98	0.150
7493	3456	48	1	16.82	0.150
7494	3456	18	1	88.76	0.000
7495	3457	43	3	13.75	0.000
7496	3457	6	1	578.37	0.000
7497	3458	27	5	11.78	0.050
7498	3459	26	5	30.07	0.000
7499	3459	39	2	80.73	0.100
7500	3460	17	5	36.87	0.000
7501	3460	1	4	583.23	0.100
7502	3461	8	3	30.82	0.000
7503	3461	44	1	17.26	0.150
7504	3462	27	5	12.56	0.000
7505	3462	33	1	66.91	0.100
7506	3463	42	3	8.38	0.000
7507	3463	17	3	40.42	0.000
7508	3463	44	2	16.47	0.050
7509	3464	22	1	221.75	0.000
7510	3464	5	3	638.84	0.150
7511	3464	9	4	106.04	0.100
7512	3465	1	1	526.65	0.100
7513	3465	34	4	116.42	0.000
7514	3466	12	5	125.42	0.050
7515	3467	5	1	674.88	0.050
7516	3467	30	4	51.75	0.150
7517	3468	45	2	9.27	0.150
7518	3468	21	5	227.34	0.000
7519	3469	23	1	108.00	0.100
7520	3469	18	1	91.65	0.050
7521	3469	17	4	40.50	0.050
7522	3469	9	2	109.94	0.100
7523	3470	29	4	70.50	0.150
7524	3470	5	5	694.90	0.000
7525	3470	41	4	68.08	0.000
7526	3470	24	2	55.30	0.050
7527	3471	2	4	47.71	0.000
7528	3471	36	4	63.01	0.050
7529	3472	28	2	12.13	0.150
7530	3472	25	5	76.37	0.150
7531	3472	12	4	122.67	0.000
7532	3472	34	5	120.40	0.150
7533	3473	26	1	30.08	0.150
7534	3473	46	4	15.83	0.100
7535	3474	3	3	250.93	0.000
7536	3475	44	3	18.15	0.000
7537	3475	26	2	27.63	0.150
7538	3476	29	3	69.91	0.000
7539	3476	3	4	271.11	0.150
7540	3477	41	4	58.91	0.100
7541	3478	2	5	48.81	0.050
7542	3479	29	2	64.57	0.000
7543	3479	34	4	122.23	0.000
7544	3480	37	1	76.01	0.150
7545	3480	25	3	69.89	0.050
7546	3481	10	4	15.67	0.000
7547	3481	33	4	63.80	0.150
7548	3482	21	3	236.23	0.000
7549	3482	43	3	14.64	0.150
7550	3483	6	2	557.08	0.000
7551	3484	16	5	87.90	0.000
7552	3485	45	4	8.42	0.000
7553	3485	1	3	606.93	0.050
7554	3486	45	1	8.98	0.150
7555	3486	5	4	611.66	0.100
7556	3486	10	5	17.23	0.050
7557	3486	28	4	12.45	0.000
7558	3487	43	4	15.36	0.100
7559	3487	39	1	71.96	0.000
7560	3487	21	2	221.76	0.000
7561	3487	42	5	8.33	0.000
7562	3488	33	5	63.54	0.150
7563	3489	31	2	101.84	0.000
7564	3490	6	2	646.11	0.000
7565	3490	38	5	59.28	0.000
7566	3490	47	3	9.48	0.150
7567	3490	9	3	105.54	0.100
7568	3491	6	2	625.04	0.150
7569	3491	13	2	11.21	0.000
7570	3492	1	3	563.54	0.150
7571	3493	9	2	111.76	0.050
7572	3493	31	5	88.48	0.000
7573	3494	10	1	17.53	0.000
7574	3494	38	1	59.97	0.100
7575	3494	47	1	9.70	0.100
7576	3494	15	2	90.95	0.150
7577	3495	39	5	81.48	0.050
7578	3495	2	2	42.32	0.100
7579	3495	10	5	16.89	0.150
7580	3495	43	5	14.82	0.100
7581	3496	34	4	108.31	0.100
7582	3496	24	5	55.51	0.000
7583	3496	35	5	49.59	0.050
7584	3496	38	4	56.13	0.050
7585	3497	42	3	9.26	0.100
7586	3498	31	1	100.56	0.100
7587	3498	3	4	275.24	0.000
7588	3498	10	2	17.82	0.150
7589	3498	17	5	38.81	0.000
7590	3499	13	5	11.92	0.000
7591	3500	17	3	41.05	0.000
7592	3500	16	4	82.67	0.000
7593	3500	42	2	9.22	0.000
7594	3501	25	4	78.39	0.150
7595	3501	19	3	244.48	0.050
7596	3501	24	5	55.10	0.100
7597	3502	31	1	88.41	0.000
7598	3502	25	1	70.22	0.000
7599	3503	25	3	75.11	0.000
7600	3503	38	3	52.01	0.150
7601	3503	14	4	32.71	0.150
7602	3504	21	4	234.04	0.000
7603	3504	28	2	12.49	0.100
7604	3504	45	1	9.07	0.100
7605	3504	38	4	59.96	0.000
7606	3505	30	4	47.33	0.050
7607	3506	4	3	209.45	0.000
7608	3506	8	2	28.74	0.000
7609	3507	7	5	234.64	0.000
7610	3507	17	1	39.87	0.050
7611	3508	11	2	64.84	0.000
7612	3509	33	2	63.80	0.050
7613	3509	15	3	90.95	0.100
7614	3510	30	1	50.13	0.150
7615	3511	15	3	96.97	0.000
7616	3511	45	5	8.75	0.100
7617	3511	21	3	236.59	0.000
7618	3512	13	1	12.14	0.150
7619	3512	39	5	70.73	0.000
7620	3512	9	2	103.31	0.050
7621	3513	29	4	68.53	0.000
7622	3513	18	1	85.96	0.150
7623	3513	22	5	208.21	0.050
7624	3514	37	1	72.46	0.000
7625	3514	33	4	63.62	0.000
7626	3515	44	5	17.06	0.100
7627	3516	46	1	13.73	0.100
7628	3516	27	4	12.00	0.100
7629	3517	13	4	11.72	0.000
7630	3517	46	4	14.89	0.100
7631	3517	5	5	651.36	0.150
7632	3518	1	5	591.21	0.000
7633	3518	40	3	55.07	0.000
7634	3519	48	3	15.21	0.000
7635	3519	42	4	8.63	0.100
7636	3519	34	3	113.94	0.100
7637	3519	1	3	576.74	0.000
7638	3520	10	2	16.22	0.000
7639	3520	43	4	15.33	0.000
7640	3520	19	2	251.49	0.000
7641	3520	13	5	11.76	0.000
7642	3521	30	2	50.23	0.100
7643	3521	11	5	61.40	0.000
7644	3521	3	5	255.15	0.050
7645	3521	21	4	227.47	0.150
7646	3522	21	5	244.16	0.150
7647	3523	5	2	666.82	0.150
7648	3523	47	2	9.64	0.000
7649	3523	1	5	586.32	0.000
7650	3524	21	3	220.76	0.150
7651	3524	38	2	53.33	0.000
7652	3525	20	3	11.91	0.150
7653	3526	18	1	90.47	0.050
7654	3527	19	1	228.49	0.150
7655	3528	8	2	30.42	0.150
7656	3528	46	5	14.28	0.100
7657	3528	19	2	238.42	0.000
7658	3528	5	2	612.50	0.000
7659	3529	6	1	619.31	0.000
7660	3529	38	3	53.74	0.000
7661	3529	1	3	579.59	0.100
7662	3530	21	1	245.34	0.100
7663	3530	42	3	8.93	0.000
7664	3530	40	5	52.46	0.100
7665	3530	35	1	46.00	0.000
7666	3531	7	3	211.00	0.000
7667	3532	44	5	16.91	0.000
7668	3532	27	3	11.96	0.050
7669	3533	46	4	14.00	0.000
7670	3534	37	2	74.86	0.000
7671	3534	24	2	50.01	0.150
7672	3534	21	4	232.14	0.150
7673	3534	47	4	9.87	0.000
7674	3535	20	3	11.95	0.000
7675	3535	15	1	95.49	0.100
7676	3535	29	2	65.01	0.000
7677	3536	36	5	65.62	0.100
7678	3536	28	1	12.08	0.000
7679	3537	3	3	239.64	0.050
7680	3537	6	4	635.38	0.100
7681	3538	11	3	63.69	0.000
7682	3539	12	4	128.98	0.000
7683	3539	3	3	265.53	0.050
7684	3539	30	1	51.61	0.000
7685	3539	11	4	61.50	0.000
7686	3540	23	2	100.93	0.000
7687	3541	13	2	10.80	0.150
7688	3541	4	5	209.54	0.000
7689	3541	5	3	642.64	0.000
7690	3542	28	3	12.37	0.000
7691	3542	5	4	677.47	0.150
7692	3542	39	3	81.49	0.000
7693	3543	6	2	625.23	0.000
7694	3543	5	1	683.42	0.150
7695	3543	37	3	78.47	0.100
7696	3544	37	3	75.51	0.050
7697	3544	19	2	236.35	0.100
7698	3544	27	2	10.77	0.000
7699	3544	40	3	55.34	0.000
7700	3545	35	4	47.60	0.000
7701	3545	28	2	12.03	0.000
7702	3546	11	3	57.18	0.000
7703	3546	8	5	30.52	0.000
7704	3546	25	2	71.93	0.000
7705	3547	38	1	52.49	0.050
7706	3548	37	3	77.57	0.000
7707	3548	47	4	10.43	0.000
7708	3549	31	4	91.52	0.000
7709	3550	26	3	31.31	0.050
7710	3551	25	5	71.71	0.000
7711	3551	18	5	91.35	0.000
7712	3551	15	3	94.51	0.050
7713	3552	14	4	35.86	0.000
7714	3553	48	1	15.45	0.050
7715	3553	35	4	45.95	0.150
7716	3554	14	3	37.67	0.150
7717	3555	20	5	11.98	0.100
7718	3555	41	1	64.51	0.050
7719	3556	34	3	120.16	0.050
7720	3556	2	2	48.18	0.000
7721	3557	7	5	234.25	0.000
7722	3557	6	4	576.11	0.050
7723	3558	11	4	62.60	0.000
7724	3558	43	2	14.32	0.150
7725	3559	48	4	16.74	0.050
7726	3559	11	2	59.92	0.150
7727	3560	2	5	46.38	0.000
7728	3561	31	1	92.66	0.000
7729	3561	43	1	14.59	0.000
7730	3562	26	2	28.61	0.100
7731	3563	23	5	104.08	0.100
7732	3563	2	3	42.58	0.000
7733	3563	7	4	204.21	0.050
7734	3564	34	3	108.56	0.050
7735	3564	6	1	582.31	0.100
7736	3565	5	2	656.54	0.100
7737	3565	10	4	16.90	0.000
7738	3566	8	5	31.24	0.000
7739	3567	29	5	63.46	0.000
7740	3567	24	4	53.09	0.050
7741	3567	14	1	34.56	0.000
7742	3567	34	1	112.37	0.050
7743	3568	26	5	30.68	0.000
7744	3568	47	1	10.13	0.000
7745	3568	46	2	14.18	0.000
7746	3569	17	2	36.78	0.050
7747	3570	32	3	87.72	0.000
7748	3570	15	5	96.64	0.050
7749	3571	17	3	37.74	0.150
7750	3572	5	5	641.19	0.100
7751	3572	30	3	47.24	0.150
7752	3573	42	4	8.29	0.050
7753	3573	2	4	46.97	0.000
7754	3574	11	2	56.87	0.000
7755	3574	2	2	48.45	0.050
7756	3574	28	5	11.55	0.000
7757	3575	22	1	197.82	0.150
7758	3576	47	5	10.06	0.000
7759	3576	9	3	115.03	0.100
7760	3577	38	2	52.44	0.000
7761	3577	16	4	83.19	0.000
7762	3577	15	2	104.88	0.150
7763	3578	31	1	91.20	0.100
7764	3579	2	3	44.06	0.150
7765	3579	22	3	199.30	0.100
7766	3580	23	3	108.99	0.050
7767	3581	37	2	75.42	0.150
7768	3582	38	5	53.88	0.050
7769	3583	34	5	120.77	0.000
7770	3583	44	2	17.59	0.100
7771	3584	29	1	71.33	0.150
7772	3584	33	1	61.71	0.050
7773	3585	36	4	63.46	0.100
7774	3586	5	5	691.72	0.050
7775	3586	26	5	30.52	0.050
7776	3586	6	4	585.23	0.050
7777	3587	29	3	71.63	0.150
7778	3587	46	1	13.64	0.050
7779	3587	27	2	12.34	0.050
7780	3587	12	3	126.49	0.000
7781	3588	41	4	63.68	0.050
7782	3588	22	2	201.90	0.100
7783	3588	25	4	73.62	0.000
7784	3588	28	1	11.43	0.000
7785	3589	28	1	11.68	0.000
7786	3589	31	5	96.13	0.100
7787	3589	20	3	11.92	0.000
7788	3590	35	5	47.04	0.100
7789	3591	11	2	58.34	0.100
7790	3591	18	4	92.25	0.000
7791	3591	32	2	81.25	0.000
7792	3592	48	4	17.53	0.100
7793	3592	8	3	30.88	0.050
7794	3593	30	5	50.92	0.000
7795	3593	48	5	15.32	0.000
7796	3593	44	3	17.57	0.150
7797	3593	3	2	256.37	0.150
7798	3594	28	4	11.61	0.100
7799	3594	27	4	11.77	0.000
7800	3595	26	3	31.02	0.100
7801	3596	4	2	199.07	0.000
7802	3596	9	4	104.03	0.100
7803	3596	38	1	56.75	0.000
7804	3597	46	3	15.18	0.000
7805	3597	37	4	68.85	0.000
7806	3598	3	1	261.99	0.050
7807	3598	19	4	256.88	0.000
7808	3598	5	2	689.98	0.000
7809	3599	28	4	12.72	0.000
7810	3600	4	5	228.22	0.000
7811	3601	44	5	16.47	0.150
7812	3602	6	3	606.30	0.000
7813	3602	34	4	107.60	0.100
7814	3602	14	4	35.42	0.000
7815	3603	32	1	90.00	0.000
7816	3603	3	4	265.21	0.050
7817	3604	27	1	12.43	0.000
7818	3605	41	3	60.09	0.050
7819	3605	33	2	63.57	0.150
7820	3606	10	4	17.20	0.150
7821	3607	15	4	92.27	0.000
7822	3608	2	2	47.15	0.100
7823	3608	9	5	101.96	0.100
7824	3609	22	2	202.84	0.000
7825	3609	13	3	12.23	0.000
7826	3609	44	4	16.21	0.150
7827	3610	10	2	17.39	0.100
7828	3610	34	2	116.44	0.000
7829	3611	21	3	248.78	0.000
7830	3611	22	3	206.71	0.000
7831	3612	40	1	55.25	0.000
7832	3612	11	3	61.69	0.000
7833	3613	30	5	49.51	0.050
7834	3613	23	2	109.03	0.000
7835	3613	1	3	599.13	0.000
7836	3614	10	3	16.24	0.100
7837	3614	47	1	9.19	0.000
7838	3615	23	5	103.90	0.000
7839	3616	23	2	106.08	0.150
7840	3616	39	4	70.68	0.050
7841	3616	43	3	13.48	0.000
7842	3617	42	2	8.16	0.000
7843	3617	19	3	248.77	0.100
7844	3618	22	4	211.40	0.000
7845	3619	4	5	201.55	0.000
7846	3620	40	5	52.92	0.050
7847	3620	37	4	72.07	0.000
7848	3620	5	1	638.87	0.000
7849	3621	9	5	109.06	0.050
7850	3621	30	1	45.56	0.050
7851	3621	7	5	220.14	0.100
7852	3621	36	4	68.24	0.050
7853	3622	36	4	69.21	0.000
7854	3622	25	3	79.01	0.000
7855	3623	40	2	56.22	0.000
7856	3623	2	4	44.25	0.000
7857	3623	27	4	11.64	0.100
7858	3624	12	5	126.10	0.150
7859	3624	44	1	16.02	0.000
7860	3624	42	2	9.12	0.100
7861	3624	5	1	637.26	0.150
7862	3625	45	4	8.83	0.100
7863	3626	9	4	100.95	0.000
7864	3626	41	1	63.65	0.000
7865	3627	2	4	43.69	0.100
7866	3628	13	4	11.21	0.000
7867	3628	7	1	204.31	0.050
7868	3628	41	3	61.64	0.000
7869	3628	47	3	10.00	0.000
7870	3629	2	5	47.84	0.150
7871	3629	8	1	32.28	0.000
7872	3629	21	1	243.60	0.000
7873	3630	5	1	700.50	0.100
7874	3631	38	4	53.94	0.000
7875	3632	8	3	29.55	0.100
7876	3632	33	1	66.93	0.000
7877	3633	16	3	88.76	0.000
7878	3633	30	3	51.86	0.050
7879	3634	20	4	11.29	0.100
7880	3634	31	5	90.51	0.150
7881	3634	42	4	9.25	0.000
7882	3634	41	3	63.53	0.000
7883	3635	31	1	94.15	0.050
7884	3636	19	2	248.82	0.000
7885	3637	1	4	607.68	0.150
7886	3637	25	1	79.70	0.050
7887	3638	21	3	221.54	0.050
7888	3638	20	5	10.87	0.000
7889	3639	23	1	107.34	0.150
7890	3639	34	1	117.69	0.000
7891	3639	35	2	43.90	0.150
7892	3640	44	4	15.79	0.000
7893	3640	39	4	71.80	0.050
7894	3641	41	4	63.28	0.000
7895	3641	35	4	47.23	0.050
7896	3641	43	5	14.83	0.100
7897	3641	11	5	64.22	0.000
7898	3642	12	3	118.67	0.000
7899	3642	27	4	11.96	0.000
7900	3643	24	3	55.65	0.100
7901	3644	5	3	685.02	0.050
7902	3644	7	4	216.76	0.000
7903	3644	32	5	87.94	0.000
7904	3645	4	1	220.59	0.000
7905	3646	19	3	251.05	0.000
7906	3646	23	4	103.64	0.000
7907	3646	31	1	92.41	0.150
7908	3646	46	1	13.60	0.000
7909	3647	7	3	228.84	0.050
7910	3647	12	1	127.69	0.150
7911	3647	44	4	17.05	0.150
7912	3647	21	4	223.12	0.100
7913	3648	30	2	48.45	0.100
7914	3648	29	5	64.39	0.150
7915	3648	10	2	15.74	0.000
7916	3649	36	1	69.01	0.100
7917	3649	13	1	12.35	0.000
7918	3649	30	1	52.09	0.000
7919	3649	38	2	57.79	0.050
7920	3650	33	2	67.09	0.050
7921	3650	27	1	11.93	0.050
7922	3650	5	3	636.74	0.000
7923	3651	27	3	12.47	0.100
7924	3651	18	3	86.73	0.000
7925	3651	5	5	654.88	0.150
7926	3652	28	4	12.36	0.000
7927	3652	21	4	240.59	0.000
7928	3653	44	4	16.41	0.000
7929	3654	12	5	130.16	0.150
7930	3654	9	2	104.51	0.050
7931	3654	27	1	12.47	0.150
7932	3655	9	3	106.20	0.000
7933	3655	8	3	31.28	0.000
7934	3656	8	1	29.65	0.000
7935	3656	27	4	12.27	0.050
7936	3657	4	2	225.56	0.000
7937	3657	29	2	66.07	0.000
7938	3657	5	2	685.15	0.150
7939	3658	41	3	59.13	0.000
7940	3658	31	2	89.46	0.000
7941	3659	28	4	12.36	0.000
7942	3659	2	4	47.89	0.000
7943	3660	39	3	77.52	0.050
7944	3660	36	2	65.15	0.050
7945	3661	24	3	54.26	0.050
7946	3661	31	2	102.17	0.150
7947	3661	17	1	40.79	0.000
7948	3662	38	3	54.16	0.000
7949	3662	42	5	8.26	0.050
7950	3662	14	2	34.09	0.000
7951	3663	3	5	240.83	0.100
7952	3664	41	4	62.21	0.050
7953	3664	21	2	223.97	0.100
7954	3665	47	3	9.54	0.000
7955	3666	44	4	16.00	0.100
7956	3667	19	5	238.88	0.000
7957	3667	40	1	54.79	0.050
7958	3668	24	1	52.00	0.150
7959	3669	5	3	626.54	0.100
7960	3670	18	1	83.27	0.050
7961	3670	17	2	39.81	0.050
7962	3671	15	4	96.03	0.150
7963	3672	28	3	12.74	0.000
7964	3673	43	4	14.14	0.000
7965	3674	45	1	9.20	0.100
7966	3674	6	5	621.09	0.000
7967	3674	19	2	230.53	0.000
7968	3675	15	5	97.62	0.000
7969	3675	40	5	48.96	0.000
7970	3675	39	2	77.60	0.050
7971	3676	35	2	44.00	0.150
7972	3676	23	3	113.92	0.050
7973	3677	10	4	16.08	0.050
7974	3678	6	5	576.05	0.000
7975	3678	15	2	95.76	0.000
7976	3678	41	3	61.68	0.000
7977	3678	14	3	36.75	0.000
7978	3679	17	1	35.83	0.000
7979	3679	29	2	70.16	0.000
7980	3679	2	2	43.12	0.000
7981	3679	30	2	52.52	0.100
7982	3680	45	4	8.77	0.000
7983	3680	31	1	96.82	0.050
7984	3680	19	5	255.56	0.050
7985	3681	6	1	645.20	0.000
7986	3681	40	5	51.14	0.150
7987	3681	14	5	37.28	0.000
7988	3682	40	4	53.58	0.100
7989	3682	13	2	10.69	0.000
7990	3683	5	1	668.88	0.050
7991	3683	25	3	79.29	0.000
7992	3684	31	5	89.90	0.100
7993	3684	2	1	45.90	0.000
7994	3684	19	4	220.37	0.000
7995	3685	35	3	48.65	0.150
7996	3685	13	5	10.74	0.150
7997	3685	18	5	88.83	0.000
7998	3686	18	2	89.43	0.000
7999	3686	16	4	78.44	0.000
8000	3686	6	1	616.85	0.100
8001	3686	32	2	89.43	0.100
8002	3687	5	3	678.49	0.000
8003	3688	44	4	17.72	0.050
8004	3689	13	1	11.65	0.150
8005	3689	41	3	59.76	0.000
8006	3690	13	2	12.04	0.050
8007	3690	24	1	54.39	0.000
8008	3691	19	5	252.45	0.000
8009	3691	27	1	12.20	0.000
8010	3691	26	1	29.19	0.100
8011	3691	31	4	90.95	0.000
8012	3692	31	3	95.66	0.100
8013	3692	16	4	79.51	0.000
8014	3693	35	1	42.60	0.100
8015	3693	21	4	239.62	0.000
8016	3693	12	2	136.52	0.000
8017	3694	19	2	225.55	0.000
8018	3695	13	1	11.23	0.050
8019	3696	8	4	28.98	0.000
8020	3697	33	5	67.88	0.150
8021	3697	2	2	47.15	0.050
8022	3697	17	4	37.92	0.100
8023	3698	26	5	29.37	0.150
8024	3699	46	4	13.83	0.000
8025	3699	44	4	17.95	0.100
8026	3700	45	3	8.76	0.000
8027	3700	46	5	13.99	0.150
8028	3701	16	3	88.70	0.000
8029	3701	47	5	9.06	0.050
8030	3701	9	3	103.02	0.000
8031	3702	9	4	113.41	0.050
8032	3702	37	5	70.13	0.000
8033	3703	13	2	10.68	0.050
8034	3703	30	5	51.59	0.150
8035	3704	13	2	11.03	0.100
8036	3704	20	1	12.22	0.100
8037	3705	5	5	639.25	0.000
8038	3706	46	4	13.89	0.100
8039	3706	44	1	17.29	0.150
8040	3707	17	4	40.33	0.050
8041	3707	5	2	681.27	0.000
8042	3708	32	1	89.71	0.000
8043	3708	37	5	71.81	0.000
8044	3708	4	4	219.33	0.000
8045	3709	13	2	11.35	0.050
8046	3709	10	1	15.97	0.050
8047	3709	4	2	219.36	0.000
8048	3709	41	4	58.71	0.000
8049	3710	42	4	8.04	0.000
8050	3710	22	5	215.39	0.150
8051	3711	46	5	13.72	0.150
8052	3711	24	5	49.94	0.100
8053	3712	7	5	232.36	0.150
8054	3712	41	1	63.48	0.100
8055	3713	5	1	673.71	0.050
8056	3713	6	4	607.77	0.000
8057	3714	35	1	44.47	0.000
8058	3715	33	1	63.16	0.100
8059	3715	27	1	12.18	0.000
8060	3716	30	3	50.17	0.000
8061	3716	41	4	65.13	0.100
8062	3717	2	4	42.31	0.150
8063	3717	35	1	43.55	0.050
8064	3717	4	4	199.29	0.150
8065	3717	40	5	54.52	0.000
8066	3718	3	1	269.98	0.150
8067	3718	2	2	48.11	0.150
8068	3719	6	4	586.99	0.000
8069	3720	23	1	100.10	0.000
8070	3720	5	4	682.00	0.000
8071	3720	33	1	60.89	0.000
8072	3721	35	1	47.11	0.000
8073	3721	47	4	9.29	0.000
8074	3722	47	5	9.38	0.100
8075	3722	26	2	28.92	0.150
8076	3723	22	2	194.67	0.100
8077	3723	43	2	14.62	0.000
8078	3723	11	2	57.78	0.100
8079	3724	38	4	57.25	0.000
8080	3724	40	5	54.89	0.150
8081	3725	20	2	12.04	0.000
8082	3726	14	5	35.10	0.100
8083	3726	33	3	61.16	0.000
8084	3726	29	3	67.59	0.000
8085	3727	4	1	215.90	0.050
8086	3728	13	2	11.92	0.000
8087	3728	4	1	202.08	0.000
8088	3728	2	1	47.65	0.100
8089	3728	30	2	52.51	0.100
8090	3729	42	1	8.62	0.000
8091	3729	5	5	696.39	0.100
8092	3729	40	1	52.16	0.000
8093	3730	18	1	83.20	0.000
8094	3731	44	5	17.78	0.000
8095	3731	14	1	36.40	0.150
8096	3732	46	2	15.05	0.000
8097	3733	26	1	29.07	0.050
8098	3733	8	5	29.51	0.000
8099	3733	6	1	633.78	0.000
8100	3734	45	4	8.75	0.000
8101	3734	43	4	15.39	0.100
8102	3734	22	3	206.59	0.100
8103	3735	21	1	236.28	0.050
8104	3735	44	2	17.24	0.000
8105	3736	23	5	109.12	0.000
8106	3736	8	3	28.13	0.000
8107	3737	38	5	53.38	0.150
8108	3737	18	5	95.26	0.050
8109	3737	7	2	224.71	0.000
8110	3738	30	1	45.68	0.100
8111	3738	6	2	560.76	0.150
8112	3739	44	1	15.58	0.050
8113	3739	15	4	93.21	0.150
8114	3739	23	4	113.00	0.000
8115	3739	34	1	110.97	0.150
8116	3740	15	2	101.85	0.100
8117	3740	12	4	119.42	0.150
8118	3740	46	3	14.47	0.000
8119	3741	28	5	12.14	0.050
8120	3741	20	2	11.54	0.050
8121	3742	44	4	16.46	0.100
8122	3743	27	4	11.71	0.000
8123	3743	37	2	72.99	0.000
8124	3743	24	3	52.32	0.000
8125	3743	34	2	119.88	0.150
8126	3744	34	5	121.02	0.150
8127	3745	38	3	53.49	0.050
8128	3745	7	3	234.75	0.000
8129	3745	4	2	225.98	0.150
8130	3745	16	5	80.66	0.000
8131	3746	47	3	9.88	0.000
8132	3746	37	2	78.45	0.000
8133	3747	28	4	11.08	0.000
8134	3748	47	4	9.91	0.050
8135	3748	30	4	46.33	0.050
8136	3749	36	2	61.57	0.100
8137	3749	9	4	110.21	0.000
8138	3749	4	4	222.76	0.150
8139	3749	26	3	28.02	0.050
8140	3750	6	1	635.99	0.000
8141	3750	40	2	51.21	0.050
8142	3751	5	2	644.64	0.000
8143	3751	16	2	84.82	0.000
8144	3752	20	1	11.53	0.000
8145	3752	34	1	118.45	0.000
8146	3752	40	5	53.57	0.000
8147	3752	32	5	91.72	0.100
8148	3753	11	4	59.24	0.000
8149	3753	30	2	52.56	0.050
8150	3753	6	2	572.74	0.000
8151	3753	4	4	226.08	0.000
8152	3754	46	5	15.40	0.050
8153	3754	37	5	78.55	0.000
8154	3754	7	1	208.84	0.050
8155	3754	15	4	96.08	0.100
8156	3755	5	4	619.86	0.050
8157	3755	18	1	88.47	0.100
8158	3755	43	3	14.70	0.000
8159	3756	9	4	101.36	0.150
8160	3757	42	1	8.82	0.050
8161	3757	10	4	16.00	0.050
8162	3758	16	4	77.00	0.000
8163	3758	44	5	16.74	0.000
8164	3758	45	3	8.92	0.100
8165	3759	10	3	16.97	0.000
8166	3760	27	5	11.52	0.000
8167	3761	46	4	13.72	0.000
8168	3762	43	3	13.83	0.100
8169	3762	45	2	9.53	0.050
8170	3763	9	4	111.40	0.150
8171	3763	18	2	86.40	0.050
8172	3763	5	4	616.71	0.150
8173	3763	32	4	85.32	0.050
8174	3764	3	2	263.51	0.050
8175	3764	10	5	16.22	0.000
8176	3765	5	3	682.38	0.000
8177	3766	22	3	197.89	0.000
8178	3767	45	2	8.59	0.000
8179	3767	25	5	71.47	0.050
8180	3768	3	3	254.11	0.000
8181	3768	27	4	12.45	0.000
8182	3768	25	4	76.14	0.150
8183	3768	47	1	9.89	0.050
8184	3769	25	2	79.08	0.100
8185	3769	12	1	124.15	0.000
8186	3769	37	4	71.47	0.000
8187	3770	48	3	15.36	0.000
8188	3770	46	4	13.69	0.150
8189	3771	46	4	14.69	0.100
8190	3771	40	2	52.07	0.000
8191	3772	20	5	11.90	0.000
8192	3773	45	1	9.36	0.000
8193	3774	44	3	16.25	0.050
8194	3774	35	4	46.57	0.150
8195	3775	4	5	228.55	0.000
8196	3775	46	5	15.29	0.150
8197	3775	15	3	101.20	0.000
8198	3776	39	1	78.96	0.150
8199	3777	15	3	93.48	0.000
8200	3777	47	3	9.12	0.050
8201	3778	40	1	54.41	0.100
8202	3779	2	1	44.71	0.000
8203	3780	42	3	8.10	0.000
8204	3781	10	4	15.51	0.150
8205	3781	7	5	233.93	0.000
8206	3782	35	4	49.27	0.050
8207	3782	28	5	11.09	0.100
8208	3782	21	3	229.11	0.100
8209	3783	5	1	637.25	0.000
8210	3783	19	3	251.91	0.000
8211	3784	28	1	12.34	0.100
8212	3785	48	4	15.39	0.050
8213	3785	6	3	628.80	0.000
8214	3785	1	2	569.51	0.150
8215	3785	41	5	65.08	0.000
8216	3786	6	3	588.92	0.000
8217	3786	45	2	8.99	0.000
8218	3786	20	4	12.20	0.150
8219	3786	48	3	17.26	0.050
8220	3787	38	3	56.96	0.000
8221	3788	9	3	112.37	0.000
8222	3788	24	2	49.79	0.050
8223	3789	40	4	53.15	0.100
8224	3789	29	1	66.07	0.000
8225	3790	1	4	583.54	0.100
8226	3791	41	4	58.75	0.000
8227	3792	15	3	102.54	0.150
8228	3793	38	3	53.92	0.050
8229	3793	24	1	53.13	0.050
8230	3793	22	2	209.18	0.150
8231	3793	33	4	66.28	0.050
8232	3794	7	4	213.60	0.000
8233	3794	19	2	246.17	0.000
8234	3795	10	4	17.63	0.100
8235	3796	40	2	48.96	0.100
8236	3797	31	1	93.06	0.150
8237	3798	19	2	249.10	0.000
8238	3798	22	2	194.47	0.150
8239	3799	35	5	49.22	0.050
8240	3799	13	3	11.64	0.000
8241	3800	25	4	72.59	0.000
8242	3800	30	4	45.52	0.050
8243	3801	24	4	51.30	0.000
8244	3802	40	1	51.10	0.000
8245	3803	20	3	12.19	0.000
8246	3804	32	1	91.48	0.000
8247	3805	25	2	76.12	0.150
8248	3805	33	2	68.87	0.150
8249	3806	41	4	62.62	0.000
8250	3806	45	1	9.43	0.000
8251	3806	36	5	70.04	0.150
8252	3806	47	4	9.01	0.050
8253	3807	42	4	9.30	0.000
8254	3807	17	1	35.74	0.000
8255	3808	15	2	96.90	0.000
8256	3809	20	4	11.45	0.000
8257	3810	31	3	99.02	0.000
8258	3811	8	3	29.45	0.000
8259	3811	47	4	9.15	0.000
8260	3812	18	5	90.45	0.100
8261	3812	22	2	213.66	0.000
8262	3813	35	2	43.59	0.000
8263	3814	29	4	63.14	0.000
8264	3814	37	4	70.29	0.150
8265	3814	7	1	206.68	0.150
8266	3814	43	5	14.56	0.000
8267	3815	33	1	59.18	0.000
8268	3815	29	3	69.95	0.100
8269	3815	35	5	47.25	0.100
8270	3815	31	1	100.84	0.000
8271	3816	34	1	110.68	0.000
8272	3816	40	2	56.38	0.050
8273	3817	14	4	34.11	0.050
8274	3817	37	3	70.98	0.150
8275	3817	20	4	12.34	0.150
8276	3818	14	2	34.61	0.100
8277	3819	31	4	90.11	0.100
8278	3820	40	4	52.05	0.050
8279	3820	9	3	113.30	0.050
8280	3820	1	1	537.91	0.000
8281	3821	9	2	108.13	0.150
8282	3821	21	5	241.87	0.000
8283	3821	22	5	206.22	0.150
8284	3822	31	4	94.11	0.000
8285	3822	44	2	17.83	0.150
8286	3823	37	3	75.70	0.150
8287	3823	3	1	246.51	0.000
8288	3823	10	2	15.94	0.100
8289	3824	15	4	94.95	0.000
8290	3824	18	5	94.26	0.050
8291	3824	29	3	65.19	0.150
8292	3824	37	3	69.33	0.100
8293	3825	25	3	72.48	0.100
8294	3825	5	4	685.95	0.000
8295	3825	9	3	114.07	0.000
8296	3826	9	3	100.60	0.000
8297	3826	13	1	11.55	0.150
8298	3827	42	3	9.18	0.100
8299	3828	34	4	113.32	0.000
8300	3828	15	4	90.59	0.100
8301	3829	28	1	12.29	0.000
8302	3830	23	1	111.60	0.000
8303	3830	6	5	566.67	0.000
8304	3830	11	5	60.03	0.000
8305	3830	1	4	548.22	0.100
8306	3831	11	4	60.50	0.100
8307	3831	8	4	29.75	0.000
8308	3831	40	5	52.79	0.000
8309	3831	5	4	674.51	0.050
8310	3832	34	3	112.46	0.000
8311	3833	20	4	12.24	0.150
8312	3833	43	5	14.88	0.000
8313	3833	47	5	10.41	0.000
8314	3833	13	1	11.46	0.000
8315	3834	41	1	67.71	0.050
8316	3835	36	2	66.73	0.000
8317	3836	4	4	214.96	0.000
8318	3837	39	3	79.57	0.050
8319	3837	7	2	222.91	0.000
8320	3837	42	4	8.82	0.100
8321	3837	43	1	15.29	0.000
8322	3838	4	5	221.84	0.100
8323	3839	6	1	582.42	0.000
8324	3839	11	1	59.50	0.000
8325	3839	33	1	67.14	0.000
8326	3840	18	3	86.04	0.150
8327	3841	31	4	95.24	0.050
8328	3841	12	1	132.51	0.000
8329	3841	27	3	11.93	0.000
8330	3842	27	2	12.32	0.000
8331	3843	17	1	41.15	0.150
8332	3843	19	3	232.64	0.100
8333	3843	2	5	43.98	0.000
8334	3843	18	3	87.45	0.050
8335	3844	30	1	49.96	0.000
8336	3845	2	5	46.07	0.000
8337	3845	20	2	11.32	0.000
8338	3846	8	3	29.52	0.000
8339	3847	7	4	204.79	0.100
8340	3848	45	2	9.41	0.000
8341	3849	8	1	31.06	0.000
8342	3849	47	5	10.11	0.050
8343	3849	31	3	101.43	0.150
8344	3849	39	4	75.58	0.000
8345	3850	47	5	10.40	0.150
8346	3851	16	2	78.78	0.000
8347	3851	38	4	53.82	0.100
8348	3851	7	3	232.65	0.100
8349	3851	1	5	580.10	0.150
8350	3852	17	1	36.03	0.000
8351	3852	29	2	67.25	0.000
8352	3853	48	2	16.91	0.000
8353	3854	39	4	79.43	0.000
8354	3854	13	1	11.93	0.100
8355	3854	12	5	120.17	0.100
8356	3855	37	1	78.27	0.150
8357	3856	10	2	17.87	0.150
8358	3856	32	1	87.77	0.150
8359	3857	36	5	68.14	0.100
8360	3857	5	5	645.86	0.000
8361	3857	46	2	15.48	0.000
8362	3858	17	1	40.63	0.000
8363	3858	15	1	104.80	0.000
8364	3858	10	4	17.30	0.050
8365	3858	13	4	11.30	0.000
8366	3859	31	3	93.02	0.050
8367	3859	5	4	617.04	0.100
8368	3860	24	3	55.30	0.050
8369	3860	29	4	70.86	0.100
8370	3861	23	4	111.49	0.150
8371	3862	41	5	60.39	0.050
8372	3862	43	4	15.32	0.050
8373	3862	24	5	55.51	0.000
8374	3862	42	2	8.39	0.000
8375	3863	5	1	642.29	0.050
8376	3864	38	2	56.51	0.100
8377	3864	44	3	17.56	0.000
8378	3864	18	3	95.46	0.050
8379	3865	33	3	66.60	0.000
8380	3866	15	2	95.17	0.100
8381	3866	4	5	211.97	0.000
8382	3867	48	5	17.08	0.150
8383	3867	47	2	10.35	0.100
8384	3868	43	2	14.13	0.100
8385	3868	4	3	225.80	0.100
8386	3868	11	5	62.12	0.100
8387	3868	34	5	117.27	0.100
8388	3869	23	3	104.49	0.000
8389	3869	9	2	107.85	0.000
8390	3869	5	2	641.78	0.050
8391	3870	34	1	122.14	0.150
8392	3871	14	2	36.06	0.050
8393	3871	39	5	80.79	0.100
8394	3872	16	1	79.39	0.050
8395	3873	39	5	75.92	0.000
8396	3874	15	4	92.75	0.000
8397	3875	5	1	624.60	0.150
8398	3876	38	3	60.31	0.050
8399	3877	48	5	17.57	0.150
8400	3877	17	3	39.48	0.000
8401	3878	18	3	88.10	0.000
8402	3879	20	3	12.20	0.150
8403	3879	15	5	95.90	0.000
8404	3880	31	1	92.32	0.000
8405	3880	45	2	9.20	0.050
8406	3880	34	4	107.12	0.050
8407	3881	13	3	11.52	0.050
8408	3881	33	1	59.45	0.000
8409	3881	10	3	17.09	0.000
8410	3882	12	1	132.95	0.150
8411	3883	37	4	74.80	0.000
8412	3883	22	2	196.40	0.150
8413	3884	22	1	204.15	0.000
8414	3884	1	2	583.41	0.000
8415	3885	26	3	30.17	0.000
8416	3885	11	1	59.06	0.000
8417	3885	42	3	8.22	0.000
8418	3885	30	1	47.23	0.100
8419	3886	40	2	49.80	0.000
8420	3886	2	5	44.42	0.150
8421	3886	45	5	9.13	0.050
8422	3887	18	4	86.73	0.000
8423	3887	2	2	46.33	0.150
8424	3888	23	4	99.66	0.150
8425	3888	31	5	98.84	0.000
8426	3888	5	5	619.74	0.100
8427	3889	4	1	213.68	0.000
8428	3889	18	4	94.15	0.000
8429	3890	8	3	29.90	0.050
8430	3890	28	3	12.36	0.150
8431	3890	39	4	77.00	0.000
8432	3891	8	5	29.92	0.000
8433	3891	29	4	65.19	0.100
8434	3891	19	1	240.76	0.100
8435	3892	32	2	80.44	0.100
8436	3893	34	3	114.94	0.100
8437	3894	32	2	90.84	0.000
8438	3894	15	2	92.78	0.000
8439	3894	26	2	30.80	0.000
8440	3895	22	3	206.30	0.000
8441	3896	18	3	85.93	0.100
8442	3896	9	1	103.23	0.000
8443	3897	5	2	618.14	0.150
8444	3897	34	5	122.23	0.100
8445	3897	4	2	231.18	0.150
8446	3898	19	1	252.52	0.050
8447	3898	38	4	55.91	0.150
8448	3898	30	3	46.67	0.000
8449	3899	46	4	13.93	0.000
8450	3899	43	1	15.22	0.000
8451	3900	39	1	77.25	0.000
8452	3900	37	5	69.13	0.050
8453	3900	22	2	213.96	0.000
8454	3900	32	1	91.33	0.000
8455	3901	36	4	63.73	0.000
8456	3902	4	2	229.54	0.100
8457	3902	15	1	100.33	0.150
8458	3902	43	4	14.87	0.100
8459	3902	2	2	45.23	0.000
8460	3903	24	4	55.81	0.000
8461	3903	2	2	48.49	0.000
8462	3904	24	2	51.52	0.050
8463	3905	45	1	9.16	0.050
8464	3905	27	5	11.20	0.100
8465	3906	12	1	136.68	0.050
8466	3906	15	5	95.64	0.050
8467	3906	17	5	38.27	0.000
8468	3907	13	3	10.84	0.100
8469	3907	11	4	58.30	0.000
8470	3907	17	3	38.68	0.000
8471	3908	36	4	70.85	0.000
8472	3909	8	1	29.93	0.050
8473	3909	33	1	63.19	0.000
8474	3910	5	4	670.84	0.000
8475	3911	26	4	28.80	0.000
8476	3911	20	2	12.06	0.150
8477	3912	25	2	71.78	0.150
8478	3913	32	4	89.80	0.050
8479	3913	42	3	8.09	0.100
8480	3914	8	1	29.39	0.000
8481	3914	28	3	12.81	0.000
8482	3914	40	2	52.35	0.100
8483	3915	30	5	48.17	0.150
8484	3916	21	1	230.28	0.000
8485	3916	5	1	679.36	0.000
8486	3916	32	2	91.14	0.100
8487	3917	43	4	15.12	0.100
8488	3917	20	1	10.70	0.000
8489	3917	5	1	638.26	0.000
8490	3918	47	4	9.66	0.050
8491	3918	45	1	9.04	0.050
8492	3919	41	3	62.66	0.000
8493	3919	13	1	10.66	0.050
8494	3920	1	2	566.17	0.000
8495	3920	5	5	687.49	0.000
8496	3920	24	1	50.86	0.100
8497	3921	7	2	228.18	0.100
8498	3922	8	4	28.69	0.050
8499	3923	24	2	52.42	0.150
8500	3924	35	4	43.93	0.100
8501	3924	43	3	13.59	0.050
8502	3924	9	5	105.34	0.000
8503	3925	43	1	15.12	0.000
8504	3926	36	4	63.21	0.100
8505	3926	12	4	128.37	0.100
8506	3927	41	3	63.52	0.100
8507	3927	25	3	80.62	0.100
8508	3927	2	1	42.55	0.000
8509	3927	42	1	8.69	0.000
8510	3928	16	3	84.25	0.000
8511	3929	45	5	8.50	0.000
8512	3929	12	4	122.97	0.150
8513	3930	24	1	57.27	0.000
8514	3931	4	5	224.59	0.050
8515	3931	25	5	76.13	0.150
8516	3931	9	2	107.33	0.150
8517	3931	26	3	30.33	0.150
8518	3932	5	1	679.77	0.000
8519	3933	5	4	632.13	0.150
8520	3934	19	4	241.75	0.000
8521	3934	9	4	113.17	0.050
8522	3935	28	4	12.53	0.100
8523	3935	2	4	44.14	0.150
8524	3935	25	4	71.46	0.100
8525	3935	41	5	59.22	0.000
8526	3936	44	4	15.62	0.150
8527	3936	13	1	11.10	0.050
8528	3936	43	2	14.94	0.000
8529	3936	25	1	70.95	0.100
8530	3937	30	1	46.95	0.000
8531	3937	44	2	16.73	0.150
8532	3938	2	2	42.93	0.000
8533	3938	26	3	28.54	0.000
8534	3938	39	1	78.67	0.000
8535	3939	1	1	541.34	0.100
8536	3940	41	4	61.32	0.100
8537	3941	25	4	79.81	0.100
8538	3942	5	2	613.74	0.050
8539	3942	20	4	10.94	0.050
8540	3943	27	4	11.75	0.150
8541	3943	4	4	205.16	0.150
8542	3943	9	1	109.10	0.000
8543	3943	33	5	65.87	0.000
8544	3944	37	5	76.36	0.000
8545	3945	21	4	232.21	0.000
8546	3946	2	3	42.96	0.000
8547	3946	7	5	225.86	0.000
8548	3946	1	1	580.79	0.100
8549	3946	48	4	15.58	0.000
8550	3947	7	4	232.06	0.000
8551	3947	9	1	106.16	0.000
8552	3948	19	2	244.12	0.100
8553	3948	38	1	57.20	0.100
8554	3949	33	5	68.05	0.150
8555	3949	35	5	45.99	0.100
8556	3949	20	1	11.93	0.050
8557	3950	34	5	107.58	0.100
8558	3951	43	1	14.88	0.000
8559	3952	34	5	105.70	0.000
8560	3952	43	4	14.68	0.100
8561	3952	3	5	258.15	0.000
8562	3952	21	2	228.88	0.050
8563	3953	42	2	9.26	0.050
8564	3954	31	3	98.74	0.000
8565	3954	16	2	88.62	0.100
8566	3955	20	5	11.99	0.150
8567	3955	30	1	50.38	0.000
8568	3956	42	1	8.50	0.000
8569	3956	25	1	72.08	0.000
8570	3957	34	1	117.43	0.050
8571	3957	3	3	271.99	0.000
8572	3957	24	4	56.48	0.000
8573	3957	4	4	202.51	0.000
8574	3958	48	3	17.57	0.000
8575	3959	9	5	104.50	0.000
8576	3959	35	5	46.42	0.000
8577	3960	21	5	231.08	0.000
8578	3961	38	2	53.74	0.000
8579	3961	12	2	128.96	0.000
8580	3962	40	2	54.75	0.150
8581	3962	20	4	11.42	0.000
8582	3963	28	4	12.23	0.000
8583	3964	40	3	55.32	0.100
8584	3965	32	4	87.49	0.100
8585	3965	35	4	44.78	0.000
8586	3965	40	3	52.95	0.000
8587	3965	44	2	17.42	0.050
8588	3966	24	5	54.32	0.050
8589	3967	20	1	12.33	0.000
8590	3967	10	4	16.08	0.000
8591	3968	26	5	30.39	0.000
8592	3968	45	1	8.64	0.050
8593	3969	43	4	13.61	0.050
8594	3969	30	3	49.57	0.000
8595	3969	40	3	51.46	0.000
8596	3969	46	5	15.37	0.100
8597	3970	34	4	122.03	0.150
8598	3970	1	2	597.13	0.050
8599	3970	42	2	8.04	0.000
8600	3971	36	5	62.62	0.050
8601	3971	2	5	45.05	0.100
8602	3971	12	3	136.97	0.000
8603	3971	5	4	679.78	0.000
8604	3972	10	1	16.15	0.000
8605	3972	34	1	107.53	0.050
8606	3972	32	2	81.04	0.050
8607	3973	13	4	11.55	0.100
8608	3973	31	2	91.63	0.050
8609	3974	41	3	60.49	0.050
8610	3974	20	4	10.78	0.100
8611	3975	14	2	35.53	0.000
8612	3975	23	4	111.24	0.100
8613	3975	44	5	16.17	0.000
8614	3975	34	1	116.34	0.050
8615	3976	35	1	46.57	0.000
8616	3977	46	4	15.09	0.050
8617	3977	34	2	120.73	0.000
8618	3977	16	5	83.45	0.000
8619	3977	11	2	60.41	0.050
8620	3978	29	1	68.25	0.000
8621	3978	28	5	11.19	0.000
8622	3979	25	1	70.62	0.000
8623	3979	47	5	10.21	0.000
8624	3980	35	4	47.36	0.000
8625	3981	42	5	9.18	0.100
8626	3981	10	4	17.80	0.150
8627	3981	21	1	223.64	0.000
8628	3981	45	5	8.27	0.000
8629	3982	11	1	62.47	0.150
8630	3982	42	5	8.03	0.050
8631	3982	5	2	633.64	0.100
8632	3982	10	1	17.89	0.100
8633	3983	20	3	11.44	0.000
8634	3983	44	3	17.72	0.000
8635	3983	48	1	17.02	0.000
8636	3984	24	2	50.38	0.150
8637	3984	41	5	62.65	0.000
8638	3984	15	3	101.49	0.050
8639	3985	2	4	44.97	0.150
8640	3986	42	4	9.23	0.100
8641	3986	48	3	15.64	0.100
8642	3987	17	4	37.63	0.150
8643	3988	12	3	133.16	0.000
8644	3989	34	5	119.61	0.150
8645	3989	19	2	237.01	0.000
8646	3989	46	3	15.03	0.000
8647	3990	30	3	51.12	0.000
8648	3990	11	1	60.49	0.000
8649	3990	27	4	11.65	0.000
8650	3991	5	4	622.84	0.150
8651	3991	28	5	12.78	0.000
8652	3991	9	4	114.81	0.000
8653	3991	14	4	33.05	0.100
8654	3992	28	3	11.87	0.050
8655	3992	10	5	16.70	0.100
8656	3992	8	5	31.44	0.000
8657	3992	44	1	17.44	0.050
8658	3993	19	4	222.82	0.050
8659	3993	30	4	45.91	0.150
8660	3993	27	3	10.89	0.000
8661	3994	10	2	16.77	0.150
8662	3995	35	4	45.31	0.000
8663	3995	5	4	640.06	0.050
8664	3996	15	5	93.81	0.050
8665	3996	44	3	17.68	0.000
8666	3997	3	1	250.76	0.050
8667	3997	8	3	28.13	0.150
8668	3998	33	5	59.80	0.050
8669	3998	3	3	274.46	0.050
8670	3998	18	3	87.59	0.150
8671	3998	26	4	30.74	0.150
8672	3999	33	3	66.16	0.000
8673	3999	32	4	84.43	0.000
8674	4000	5	5	617.61	0.150
8675	4001	39	2	74.17	0.050
8676	4002	4	5	224.93	0.000
8677	4002	30	1	46.79	0.150
8678	4003	22	2	216.81	0.150
8679	4003	21	3	230.20	0.150
8680	4003	42	4	8.19	0.000
8681	4004	31	5	102.18	0.000
8682	4004	37	5	72.27	0.050
8683	4004	21	1	233.19	0.000
8684	4005	26	3	27.65	0.000
8685	4005	2	2	44.47	0.000
8686	4005	35	1	47.34	0.150
8687	4006	31	4	97.31	0.000
8688	4006	41	1	60.23	0.050
8689	4006	2	1	45.97	0.000
8690	4006	47	2	9.75	0.000
8691	4007	8	1	30.58	0.100
8692	4007	47	4	9.93	0.050
8693	4007	11	1	61.62	0.050
8694	4007	13	1	11.81	0.100
8695	4008	21	2	231.40	0.150
8696	4008	5	5	623.33	0.100
8697	4009	43	3	15.50	0.150
8698	4010	4	3	229.03	0.100
8699	4011	12	1	136.33	0.150
8700	4012	45	1	8.50	0.150
8701	4013	17	4	40.96	0.000
8702	4013	42	2	8.03	0.150
8703	4013	7	1	229.90	0.150
8704	4013	41	5	58.53	0.150
8705	4014	23	4	106.15	0.000
8706	4015	26	2	29.40	0.000
8707	4016	7	1	214.99	0.150
8708	4016	31	5	98.72	0.000
8709	4016	23	4	107.99	0.000
8710	4016	11	3	64.54	0.000
8711	4017	28	1	11.34	0.000
8712	4017	9	4	114.97	0.100
8713	4017	29	2	68.25	0.050
8714	4017	5	2	663.14	0.150
8715	4018	1	2	575.90	0.100
8716	4019	15	2	103.68	0.000
8717	4020	14	2	33.30	0.000
8718	4020	15	1	103.55	0.150
8719	4020	4	3	222.47	0.000
8720	4020	40	3	51.71	0.000
8721	4021	22	5	206.84	0.000
8722	4021	2	2	42.36	0.050
8723	4021	23	2	98.62	0.150
8724	4022	28	1	11.82	0.000
8725	4022	15	1	94.25	0.100
8726	4022	31	3	92.10	0.050
8727	4023	32	4	82.67	0.000
8728	4024	36	3	62.47	0.100
8729	4024	24	2	55.45	0.000
8730	4024	47	4	9.10	0.100
8731	4024	17	2	38.53	0.000
8732	4025	24	4	55.14	0.100
8733	4025	1	2	583.80	0.000
8734	4025	10	1	15.83	0.000
8735	4026	45	3	9.17	0.000
8736	4026	23	5	111.76	0.000
8737	4026	35	4	48.43	0.000
8738	4027	3	5	270.23	0.100
8739	4027	18	2	93.37	0.150
8740	4027	40	3	48.73	0.150
8741	4028	25	2	77.00	0.050
8742	4028	10	2	16.13	0.000
8743	4028	28	2	12.78	0.000
8744	4028	24	4	50.59	0.150
8745	4029	36	3	65.45	0.100
8746	4029	44	2	16.77	0.000
8747	4029	38	5	54.10	0.000
8748	4029	25	1	74.29	0.000
8749	4030	47	1	9.58	0.150
8750	4030	32	3	79.60	0.150
8751	4031	41	1	58.63	0.050
8752	4031	7	1	216.13	0.000
8753	4031	10	2	15.81	0.000
8754	4032	19	5	231.30	0.150
8755	4033	39	4	82.06	0.000
8756	4034	10	1	16.87	0.050
8757	4034	29	5	70.45	0.000
8758	4035	29	1	71.25	0.000
8759	4035	14	4	36.03	0.050
8760	4035	17	4	36.27	0.050
8761	4036	5	3	698.45	0.150
8762	4036	40	2	51.90	0.000
8763	4037	46	1	14.66	0.150
8764	4037	21	5	234.26	0.150
8765	4037	6	2	640.70	0.000
8766	4037	39	1	78.94	0.000
8767	4038	23	5	100.22	0.000
8768	4039	44	5	17.89	0.100
8769	4039	9	1	105.95	0.000
8770	4040	40	2	54.49	0.100
8771	4040	13	3	11.62	0.000
8772	4041	47	1	9.36	0.050
8773	4041	26	3	27.86	0.050
8774	4041	40	1	52.66	0.150
8775	4041	3	2	270.20	0.000
8776	4042	46	2	15.30	0.150
8777	4042	5	1	648.45	0.000
8778	4043	37	5	71.22	0.000
8779	4044	6	3	571.14	0.000
8780	4044	39	5	80.15	0.000
8781	4045	24	4	51.57	0.100
8782	4046	23	2	104.10	0.150
8783	4046	43	4	15.23	0.100
8784	4046	11	5	62.12	0.000
8785	4047	27	2	11.39	0.000
8786	4047	13	1	11.00	0.000
8787	4047	6	2	618.97	0.050
8788	4047	48	1	16.26	0.000
8789	4048	18	5	89.03	0.150
8790	4049	8	4	28.11	0.100
8791	4049	1	2	580.07	0.050
8792	4050	23	3	100.32	0.050
8793	4051	34	5	119.87	0.000
8794	4052	26	2	29.30	0.000
8795	4053	40	5	52.82	0.000
8796	4053	19	2	239.87	0.000
8797	4054	23	1	105.33	0.050
8798	4054	1	3	571.17	0.100
8799	4054	43	4	14.73	0.050
8800	4055	18	5	92.43	0.100
8801	4056	37	5	77.46	0.000
8802	4057	17	4	38.92	0.150
8803	4057	27	1	10.79	0.050
8804	4058	44	2	16.99	0.150
8805	4059	44	4	18.11	0.050
8806	4059	45	1	8.65	0.000
8807	4060	32	4	86.00	0.150
8808	4060	30	5	52.14	0.100
8809	4061	14	5	35.30	0.000
8810	4061	3	4	267.11	0.000
8811	4061	9	5	105.72	0.100
8812	4062	23	4	102.86	0.100
8813	4062	16	4	82.80	0.150
8814	4063	23	1	97.84	0.100
8815	4063	5	3	667.55	0.000
8816	4063	36	5	60.86	0.000
8817	4064	13	3	11.81	0.000
8818	4064	42	5	8.40	0.000
8819	4064	22	3	203.89	0.000
8820	4064	5	4	697.51	0.000
8821	4065	31	5	95.16	0.000
8822	4065	45	4	9.01	0.150
8823	4066	44	4	15.70	0.150
8824	4066	37	5	68.19	0.150
8825	4067	47	5	9.80	0.000
8826	4067	46	5	15.22	0.000
8827	4068	36	4	68.52	0.000
8828	4069	41	5	59.96	0.000
8829	4069	28	2	12.01	0.100
8830	4069	23	2	99.41	0.000
8831	4069	3	4	248.01	0.100
8832	4070	30	1	50.13	0.000
8833	4070	19	1	249.44	0.100
8834	4071	12	3	130.26	0.100
8835	4072	3	2	278.26	0.050
8836	4072	11	3	63.65	0.100
8837	4073	16	4	85.84	0.100
8838	4074	42	2	8.64	0.050
8839	4075	2	3	43.25	0.000
8840	4075	19	3	222.10	0.000
8841	4075	5	2	636.82	0.000
8842	4076	2	2	43.29	0.000
8843	4077	1	1	562.66	0.150
8844	4077	47	3	9.94	0.150
8845	4077	3	5	274.70	0.000
8846	4077	5	5	656.31	0.000
8847	4078	5	3	642.70	0.000
8848	4078	35	1	46.56	0.150
8849	4078	14	2	37.86	0.000
8850	4078	2	4	48.76	0.000
8851	4079	46	4	14.85	0.000
8852	4079	20	4	11.83	0.000
8853	4079	1	4	542.13	0.000
8854	4080	30	3	51.31	0.150
8855	4081	45	3	9.08	0.050
8856	4082	28	1	12.36	0.050
8857	4082	40	4	55.93	0.000
8858	4083	9	1	108.74	0.100
8859	4084	18	3	83.48	0.100
8860	4084	27	1	11.15	0.000
8861	4085	8	3	31.09	0.000
8862	4085	41	4	64.59	0.000
8863	4085	39	1	80.48	0.000
8864	4086	32	5	83.97	0.150
8865	4087	41	2	66.07	0.000
8866	4087	27	5	11.10	0.000
8867	4087	5	2	681.36	0.100
8868	4088	10	2	15.81	0.050
8869	4088	3	2	261.00	0.000
8870	4089	24	3	50.12	0.000
8871	4090	40	4	54.86	0.000
8872	4090	14	3	34.44	0.000
8873	4091	10	1	16.46	0.000
8874	4091	38	3	58.37	0.000
8875	4092	4	1	212.76	0.100
8876	4092	36	5	69.04	0.000
8877	4093	30	4	51.74	0.000
8878	4093	27	2	11.42	0.000
8879	4094	33	5	60.13	0.000
8880	4094	40	2	53.71	0.100
8881	4094	24	1	56.71	0.000
8882	4095	1	2	612.80	0.050
8883	4096	12	2	120.74	0.100
8884	4097	32	5	82.35	0.100
8885	4097	33	3	61.06	0.050
8886	4098	5	3	613.52	0.000
8887	4098	42	2	8.30	0.000
8888	4098	16	5	79.34	0.050
8889	4099	46	4	14.68	0.050
8890	4099	44	2	17.98	0.100
8891	4099	28	3	12.00	0.050
8892	4099	15	1	102.11	0.150
8893	4100	14	5	34.99	0.100
8894	4100	18	2	87.98	0.150
8895	4100	19	1	247.13	0.000
8896	4100	32	3	84.48	0.000
8897	4101	11	5	64.43	0.000
8898	4101	5	5	702.82	0.050
8899	4101	2	1	46.24	0.150
8900	4102	36	4	69.11	0.050
8901	4102	6	4	600.69	0.150
8902	4103	31	3	102.22	0.100
8903	4104	40	3	51.52	0.000
8904	4105	41	5	59.22	0.000
8905	4105	3	3	256.27	0.150
8906	4106	14	1	36.05	0.100
8907	4106	5	5	684.17	0.050
8908	4107	9	4	113.00	0.000
8909	4107	29	1	70.99	0.000
8910	4107	39	3	71.85	0.000
8911	4108	36	3	68.73	0.000
8912	4108	6	5	624.93	0.050
8913	4109	45	2	8.43	0.050
8914	4110	47	5	9.09	0.100
8915	4110	15	4	92.44	0.050
8916	4111	9	5	108.13	0.000
8917	4111	11	5	58.60	0.050
8918	4112	23	5	111.06	0.050
8919	4112	39	2	75.71	0.150
8920	4112	19	2	244.39	0.000
8921	4112	42	1	8.31	0.000
8922	4113	32	1	83.52	0.000
8923	4114	32	2	87.03	0.050
8924	4115	28	2	12.09	0.100
8925	4116	48	3	15.32	0.050
8926	4116	25	1	73.78	0.100
8927	4117	48	5	16.45	0.000
8928	4117	23	2	105.99	0.100
8929	4118	27	4	12.45	0.000
8930	4118	7	3	214.11	0.000
8931	4119	10	4	17.88	0.000
8932	4120	44	3	16.64	0.150
8933	4120	38	4	59.75	0.000
8934	4120	1	3	558.25	0.050
8935	4121	12	2	125.24	0.000
8936	4121	34	5	116.36	0.000
8937	4122	5	3	603.52	0.100
8938	4122	47	5	9.64	0.000
8939	4122	23	3	105.43	0.000
8940	4123	30	2	47.07	0.150
8941	4123	12	1	118.64	0.000
8942	4124	23	2	107.80	0.150
8943	4124	19	5	220.62	0.150
8944	4125	34	3	117.11	0.100
8945	4125	28	2	12.50	0.000
8946	4126	34	1	110.72	0.000
8947	4126	28	1	11.38	0.100
8948	4127	41	1	61.23	0.000
8949	4128	40	2	52.70	0.050
8950	4129	19	4	254.14	0.000
8951	4129	34	4	115.71	0.000
8952	4129	31	2	94.00	0.100
8953	4130	10	3	17.71	0.000
8954	4130	8	4	29.14	0.000
8955	4131	39	3	73.38	0.100
8956	4131	21	2	222.38	0.000
8957	4131	8	3	30.45	0.000
8958	4131	16	2	80.01	0.000
8959	4132	42	1	8.93	0.000
8960	4132	15	2	97.28	0.150
8961	4132	8	5	30.72	0.050
8962	4133	20	3	11.01	0.100
8963	4133	3	5	245.71	0.050
8964	4134	1	3	596.16	0.050
8965	4134	4	5	230.41	0.000
8966	4135	1	4	577.01	0.150
8967	4136	25	3	71.43	0.150
8968	4136	43	3	14.94	0.100
8969	4137	16	4	77.14	0.050
8970	4137	22	2	203.72	0.100
8971	4138	34	1	120.26	0.000
8972	4138	12	3	126.69	0.000
8973	4139	26	1	29.98	0.100
8974	4139	40	4	49.09	0.150
8975	4140	9	1	107.74	0.000
8976	4141	38	4	57.91	0.100
8977	4141	8	1	28.91	0.000
8978	4142	11	5	57.00	0.100
8979	4142	45	3	9.23	0.000
8980	4142	14	1	33.38	0.150
8981	4142	27	4	11.21	0.150
8982	4143	29	5	62.74	0.000
8983	4144	4	4	221.34	0.000
8984	4145	14	2	35.06	0.100
8985	4145	8	5	28.57	0.000
8986	4146	48	5	15.32	0.050
8987	4146	20	5	12.42	0.000
8988	4147	21	4	221.11	0.000
8989	4148	5	2	649.37	0.000
8990	4148	45	3	9.17	0.150
8991	4148	38	4	59.48	0.100
8992	4148	30	5	52.67	0.000
8993	4149	15	5	101.77	0.000
8994	4150	4	3	216.14	0.000
8995	4151	6	2	637.21	0.100
8996	4151	47	2	9.31	0.000
8997	4151	34	4	108.65	0.150
8998	4151	19	5	225.24	0.000
8999	4152	3	3	243.05	0.050
9000	4153	48	3	15.22	0.100
9001	4153	43	4	13.69	0.000
9002	4154	7	3	223.45	0.000
9003	4155	25	2	78.47	0.000
9004	4156	27	3	12.52	0.000
9005	4156	22	1	210.50	0.000
9006	4157	12	5	122.54	0.000
9007	4158	14	3	36.43	0.050
9008	4159	27	3	12.36	0.000
9009	4160	15	4	94.57	0.000
9010	4161	28	3	12.68	0.150
9011	4161	43	4	14.90	0.050
9012	4161	5	4	617.13	0.150
9013	4161	46	3	15.28	0.000
9014	4162	36	2	63.41	0.000
9015	4163	20	3	11.38	0.000
9016	4164	28	5	11.60	0.000
9017	4164	48	3	17.11	0.000
9018	4165	24	1	52.32	0.000
9019	4165	37	2	75.81	0.000
9020	4166	37	2	78.28	0.000
9021	4166	19	3	232.30	0.000
9022	4167	18	1	96.15	0.000
9023	4167	5	3	645.99	0.100
9024	4167	31	5	88.42	0.150
9025	4168	44	5	17.14	0.000
9026	4168	45	5	8.79	0.050
9027	4169	9	4	100.69	0.150
9028	4169	30	5	47.41	0.000
9029	4170	24	1	51.07	0.000
9030	4170	31	5	97.88	0.000
9031	4171	5	1	683.62	0.000
9032	4171	34	4	120.09	0.000
9033	4171	25	1	74.62	0.150
9034	4172	39	1	79.66	0.150
9035	4173	3	1	257.15	0.000
9036	4174	42	5	8.88	0.000
9037	4175	46	4	13.90	0.100
9038	4175	23	4	101.01	0.000
9039	4176	11	4	58.68	0.000
9040	4177	44	3	18.09	0.000
9041	4177	10	1	16.75	0.000
9042	4178	27	2	11.68	0.000
9043	4178	36	5	61.11	0.000
9044	4179	23	2	103.84	0.000
9045	4180	27	1	10.77	0.050
9046	4180	46	3	15.49	0.000
9047	4181	46	2	15.00	0.000
9048	4181	11	2	65.50	0.000
9049	4181	13	4	11.87	0.000
9050	4182	12	1	134.87	0.000
9051	4183	47	1	9.84	0.100
9052	4184	5	1	637.93	0.000
9053	4185	27	3	11.12	0.000
9054	4186	10	3	17.08	0.000
9055	4186	5	1	634.52	0.000
9056	4187	8	3	29.85	0.050
9057	4187	38	5	53.64	0.150
9058	4188	4	1	208.86	0.050
9059	4188	11	3	62.01	0.000
9060	4188	36	2	69.35	0.000
9061	4188	13	2	11.19	0.000
9062	4189	40	1	53.18	0.050
9063	4189	2	2	49.13	0.100
9064	4190	18	1	86.58	0.150
9065	4191	27	1	11.96	0.100
9066	4192	47	3	9.68	0.100
9067	4192	27	2	11.42	0.100
9068	4193	21	2	243.37	0.000
9069	4194	23	1	107.92	0.000
9070	4194	10	1	17.37	0.000
9071	4194	47	3	10.30	0.000
9072	4194	12	2	123.57	0.150
9073	4195	21	2	237.96	0.000
9074	4196	31	4	100.21	0.000
9075	4197	33	1	63.00	0.000
9076	4197	41	5	62.02	0.000
9077	4198	8	5	30.94	0.000
9078	4199	2	4	45.52	0.150
9079	4199	7	5	229.37	0.000
9080	4200	16	2	86.21	0.100
9081	4200	2	2	44.47	0.000
9082	4201	26	4	28.36	0.000
9083	4202	34	2	112.55	0.050
9084	4203	20	3	11.42	0.000
9085	4203	7	3	210.88	0.000
9086	4204	5	3	673.87	0.000
9087	4204	7	1	221.11	0.000
9088	4205	35	1	45.54	0.000
9089	4205	33	1	65.56	0.100
9090	4205	7	1	222.99	0.050
9091	4205	45	2	9.44	0.000
9092	4206	46	3	14.38	0.050
9093	4206	24	5	50.89	0.050
9094	4207	23	5	105.93	0.000
9095	4207	4	3	199.71	0.150
9096	4208	28	4	11.87	0.050
9097	4208	8	5	28.60	0.000
9098	4209	29	3	65.27	0.000
9099	4210	39	2	81.84	0.100
9100	4210	37	1	74.02	0.150
9101	4211	42	5	8.44	0.050
9102	4211	30	2	50.68	0.000
9103	4212	27	1	11.34	0.050
9104	4212	48	1	15.86	0.050
9105	4212	33	4	65.75	0.000
9106	4212	15	4	101.23	0.000
9107	4213	34	4	113.72	0.150
9108	4213	37	5	72.42	0.150
9109	4213	22	1	212.16	0.050
9110	4213	5	5	603.65	0.000
9111	4214	29	4	61.96	0.150
9112	4214	44	3	17.53	0.000
9113	4214	15	1	90.73	0.150
9114	4214	30	2	47.37	0.000
9115	4215	35	1	44.30	0.000
9116	4216	23	2	105.20	0.000
9117	4216	12	4	118.51	0.000
9118	4217	21	2	224.99	0.000
9119	4217	13	5	11.10	0.100
9120	4218	30	1	48.20	0.000
9121	4218	39	3	78.81	0.050
9122	4219	1	3	609.97	0.000
9123	4219	35	3	47.44	0.050
9124	4219	5	1	623.30	0.000
9125	4220	26	3	29.65	0.100
9126	4220	45	5	9.27	0.000
9127	4221	19	5	252.46	0.050
9128	4221	14	4	32.70	0.150
9129	4221	12	1	132.08	0.050
9130	4221	26	1	29.39	0.000
9131	4222	40	1	48.74	0.000
9132	4223	3	1	265.67	0.000
9133	4223	39	5	70.78	0.150
9134	4223	15	5	104.54	0.100
9135	4223	36	2	63.93	0.000
9136	4224	30	2	51.37	0.100
9137	4225	14	5	33.48	0.000
9138	4225	16	2	78.00	0.150
9139	4226	33	2	60.51	0.050
9140	4226	12	2	124.93	0.000
9141	4226	5	5	690.19	0.000
9142	4226	27	1	11.27	0.000
9143	4227	35	3	44.64	0.000
9144	4228	32	1	90.33	0.050
9145	4229	48	4	17.66	0.050
9146	4229	24	3	49.91	0.000
9147	4229	2	1	43.22	0.000
9148	4230	10	1	17.26	0.000
9149	4230	21	3	228.28	0.150
9150	4231	38	4	57.86	0.100
9151	4231	10	5	15.70	0.150
9152	4232	28	1	12.75	0.000
9153	4232	35	2	44.42	0.100
9154	4233	8	3	30.80	0.000
9155	4233	5	5	643.79	0.000
9156	4234	1	4	572.89	0.050
9157	4234	5	1	672.53	0.000
9158	4234	29	1	64.08	0.150
9159	4235	44	4	17.61	0.050
9160	4235	10	2	17.14	0.000
9161	4236	37	5	77.44	0.150
9162	4237	29	1	67.77	0.000
9163	4238	13	3	10.91	0.050
9164	4239	12	4	130.22	0.150
9165	4239	27	1	11.38	0.000
9166	4240	8	1	28.06	0.000
9167	4240	20	3	11.07	0.100
9168	4240	13	1	11.71	0.000
9169	4241	24	4	56.00	0.100
9170	4242	25	5	70.65	0.100
9171	4242	5	4	683.92	0.150
9172	4242	12	5	127.86	0.000
9173	4243	35	3	48.23	0.000
9174	4244	47	2	9.75	0.150
9175	4244	38	1	54.05	0.000
9176	4244	30	1	50.12	0.000
9177	4245	13	2	12.20	0.000
9178	4245	19	2	247.41	0.000
9179	4246	38	5	57.80	0.100
9180	4246	46	3	15.23	0.000
9181	4246	48	5	16.89	0.000
9182	4247	5	3	683.77	0.000
9183	4247	19	2	233.52	0.050
9184	4248	20	4	10.86	0.000
9185	4248	24	3	52.97	0.050
9186	4248	36	1	62.05	0.050
9187	4249	19	1	241.99	0.000
9188	4250	8	3	29.82	0.050
9189	4250	19	2	227.65	0.100
9190	4251	1	2	599.29	0.150
9191	4251	41	1	59.43	0.000
9192	4252	18	5	85.75	0.000
9193	4252	23	5	112.64	0.000
9194	4252	11	1	63.28	0.000
9195	4252	5	1	657.86	0.000
9196	4253	15	3	96.20	0.000
9197	4253	46	3	15.53	0.000
9198	4253	36	1	63.89	0.000
9199	4253	9	5	106.68	0.050
9200	4254	47	1	10.33	0.000
9201	4254	39	3	72.46	0.000
9202	4255	6	4	585.57	0.100
9203	4255	30	1	50.90	0.000
9204	4256	29	5	71.84	0.000
9205	4256	15	1	94.41	0.000
9206	4257	8	2	31.96	0.000
9207	4258	13	2	12.14	0.150
9208	4258	5	5	648.85	0.000
9209	4258	26	3	31.65	0.000
9210	4258	41	5	59.84	0.050
9211	4259	46	4	15.37	0.000
9212	4259	37	1	68.19	0.150
9213	4259	5	4	674.34	0.000
9214	4259	35	5	46.69	0.050
9215	4260	35	3	45.80	0.100
9216	4261	41	4	61.86	0.000
9217	4262	4	5	212.75	0.050
9218	4262	16	2	85.24	0.000
9219	4262	24	4	55.82	0.100
9220	4263	39	5	71.90	0.000
9221	4263	1	4	555.76	0.050
9222	4263	46	5	15.62	0.050
9223	4264	24	4	50.15	0.050
9224	4264	11	4	61.56	0.050
9225	4264	12	5	137.71	0.000
9226	4265	23	2	100.38	0.100
9227	4265	37	2	69.15	0.150
9228	4265	24	2	49.97	0.150
9229	4266	33	4	65.32	0.150
9230	4267	9	3	114.41	0.150
9231	4267	3	5	257.29	0.000
9232	4267	34	4	107.06	0.000
9233	4267	42	5	8.32	0.050
9234	4268	42	5	8.70	0.000
9235	4269	16	5	85.94	0.000
9236	4269	13	4	10.62	0.100
9237	4269	31	1	91.03	0.150
9238	4270	28	1	12.45	0.100
9239	4270	46	1	14.64	0.050
9240	4271	11	1	59.45	0.150
9241	4271	4	5	199.52	0.000
9242	4272	26	2	27.50	0.000
9243	4272	8	5	30.58	0.050
9244	4272	35	5	45.97	0.000
9245	4272	48	5	15.26	0.000
9246	4273	23	4	102.83	0.000
9247	4274	42	3	9.14	0.000
9248	4275	21	2	220.27	0.050
9249	4275	17	2	37.40	0.000
9250	4275	10	3	16.52	0.000
9251	4275	42	5	9.05	0.000
9252	4276	41	4	67.31	0.050
9253	4276	19	3	246.93	0.100
9254	4277	27	1	11.65	0.000
9255	4278	22	4	191.66	0.000
9256	4279	34	5	108.85	0.000
9257	4280	48	3	17.23	0.000
9258	4280	23	2	103.10	0.000
9259	4280	16	4	77.02	0.000
9260	4280	46	4	14.38	0.100
9261	4281	10	5	15.80	0.000
9262	4281	20	5	12.07	0.150
9263	4282	15	2	98.69	0.150
9264	4282	38	3	53.92	0.100
9265	4282	6	1	571.91	0.050
9266	4283	37	3	78.18	0.050
9267	4283	20	2	12.45	0.000
9268	4283	28	4	12.00	0.100
9269	4283	11	4	59.53	0.100
9270	4284	38	2	56.83	0.100
9271	4285	38	5	52.45	0.150
9272	4285	17	3	38.24	0.100
9273	4285	47	4	9.28	0.100
9274	4285	27	5	11.71	0.000
9275	4286	12	3	127.27	0.000
9276	4286	34	4	118.27	0.000
9277	4287	43	2	15.32	0.050
9278	4287	21	1	236.27	0.000
9279	4288	45	3	9.08	0.150
9280	4288	35	2	48.28	0.000
9281	4288	19	4	243.35	0.050
9282	4288	48	2	17.28	0.050
9283	4289	32	2	81.04	0.150
9284	4289	9	5	104.23	0.000
9285	4289	28	5	11.72	0.100
9286	4290	36	1	65.53	0.000
9287	4290	30	3	46.89	0.100
9288	4290	44	3	16.56	0.000
9289	4290	9	5	116.28	0.150
9290	4291	4	5	225.75	0.000
9291	4292	4	2	226.55	0.050
9292	4292	24	1	54.61	0.150
9293	4292	37	2	71.83	0.150
9294	4292	42	2	8.58	0.050
9295	4293	3	1	244.77	0.000
9296	4293	28	1	11.42	0.100
9297	4294	46	3	15.79	0.150
9298	4294	42	3	8.45	0.000
9299	4295	27	4	10.78	0.050
9300	4295	26	3	28.53	0.150
9301	4296	7	2	233.25	0.000
9302	4296	44	5	17.15	0.150
9303	4297	12	5	130.38	0.100
9304	4298	23	3	99.88	0.000
9305	4299	18	4	88.04	0.050
9306	4299	20	4	11.97	0.000
9307	4299	2	3	45.37	0.150
9308	4300	41	3	64.88	0.100
9309	4300	5	1	638.65	0.100
9310	4301	14	3	37.19	0.000
9311	4301	20	2	12.44	0.100
9312	4302	36	4	67.62	0.000
9313	4302	14	3	33.49	0.000
9314	4302	34	5	115.78	0.050
9315	4302	6	1	560.19	0.100
9316	4303	47	3	9.31	0.150
9317	4303	43	5	13.57	0.100
9318	4304	41	2	63.82	0.000
9319	4305	26	4	29.20	0.000
9320	4305	33	5	68.45	0.000
9321	4306	32	3	85.25	0.000
9322	4307	16	1	89.32	0.000
9323	4307	2	5	44.07	0.000
9324	4308	17	4	35.88	0.000
9325	4308	2	1	44.30	0.000
9326	4309	44	1	17.97	0.000
9327	4310	27	1	12.54	0.000
9328	4310	22	3	212.40	0.100
9329	4310	40	4	49.66	0.050
9330	4310	31	4	89.97	0.000
9331	4311	22	2	221.78	0.000
9332	4312	10	3	16.92	0.050
9333	4312	7	4	225.96	0.100
9334	4313	3	2	258.90	0.150
9335	4313	16	4	88.03	0.150
9336	4313	26	3	31.70	0.050
9337	4314	12	2	131.62	0.050
9338	4315	19	5	234.39	0.150
9339	4315	40	2	51.40	0.100
9340	4316	10	3	17.07	0.150
9341	4317	22	5	209.20	0.000
9342	4318	38	1	51.91	0.000
9343	4318	26	4	27.28	0.100
9344	4318	46	4	15.80	0.000
9345	4319	2	5	43.48	0.000
9346	4320	11	1	61.30	0.000
9347	4320	32	1	90.15	0.050
9348	4321	47	4	9.74	0.000
9349	4321	33	2	68.71	0.050
9350	4322	21	5	241.05	0.100
9351	4322	44	4	17.75	0.100
9352	4323	14	2	38.02	0.000
9353	4323	42	2	8.91	0.000
9354	4323	9	1	105.59	0.050
9355	4323	41	2	67.56	0.000
9356	4324	31	5	91.91	0.000
9357	4324	6	1	634.92	0.100
9358	4324	33	2	59.74	0.000
9359	4325	36	5	67.79	0.150
9360	4326	37	4	71.90	0.150
9361	4326	16	1	78.96	0.050
9362	4327	37	5	76.54	0.050
9363	4328	44	1	17.26	0.000
9364	4328	43	4	14.49	0.000
9365	4328	3	5	246.05	0.150
9366	4329	18	5	95.94	0.000
9367	4330	23	4	105.42	0.000
9368	4331	31	2	98.40	0.150
9369	4331	9	4	103.02	0.000
9370	4331	4	5	217.13	0.000
9371	4331	35	1	46.92	0.150
9372	4332	43	5	15.54	0.100
9373	4332	33	4	60.47	0.000
9374	4333	5	4	674.31	0.050
9375	4334	16	3	79.52	0.150
9376	4335	45	1	9.16	0.000
9377	4335	21	2	235.70	0.050
9378	4335	23	1	107.98	0.050
9379	4336	33	3	63.19	0.150
9380	4336	13	5	11.72	0.000
9381	4336	9	2	109.95	0.000
9382	4336	39	3	82.02	0.150
9383	4337	8	5	28.82	0.050
9384	4337	46	4	15.03	0.000
9385	4338	13	3	11.74	0.000
9386	4338	22	3	203.38	0.150
9387	4338	11	3	57.42	0.050
9388	4339	19	2	243.52	0.000
9389	4339	30	1	46.70	0.000
9390	4339	26	3	29.74	0.050
9391	4340	37	2	77.50	0.000
9392	4340	30	3	52.01	0.100
9393	4340	1	5	571.02	0.050
9394	4341	11	5	57.26	0.050
9395	4341	3	2	269.04	0.000
9396	4341	16	3	80.57	0.000
9397	4342	37	2	69.63	0.100
9398	4343	27	2	11.20	0.100
9399	4343	15	1	103.82	0.000
9400	4344	18	1	83.07	0.000
9401	4345	26	1	27.31	0.000
9402	4345	38	5	56.16	0.000
9403	4345	17	4	39.44	0.100
9404	4346	12	4	126.06	0.150
9405	4346	39	5	70.68	0.000
9406	4346	21	1	243.90	0.100
9407	4347	47	5	9.14	0.100
9408	4347	11	5	60.82	0.150
9409	4348	3	5	252.80	0.000
9410	4348	13	2	11.74	0.050
9411	4348	22	5	221.95	0.000
9412	4349	12	4	130.15	0.050
9413	4349	41	3	67.86	0.000
9414	4349	22	4	198.79	0.150
9415	4350	5	4	620.88	0.000
9416	4350	12	2	118.79	0.150
9417	4351	46	3	14.96	0.000
9418	4352	4	3	203.78	0.150
9419	4352	34	5	115.88	0.000
9420	4353	16	1	84.94	0.100
9421	4353	45	4	8.51	0.150
9422	4354	46	4	15.31	0.100
9423	4355	32	1	88.98	0.050
9424	4355	13	1	11.95	0.000
9425	4356	8	1	30.37	0.000
9426	4357	19	1	249.58	0.050
9427	4357	12	3	135.20	0.100
9428	4358	20	2	12.43	0.000
9429	4358	46	1	14.39	0.150
9430	4358	13	2	11.84	0.000
9431	4358	31	1	97.87	0.100
9432	4359	20	4	11.02	0.000
9433	4360	7	3	209.23	0.000
9434	4361	42	1	8.35	0.000
9435	4361	1	2	549.99	0.100
9436	4362	16	3	89.05	0.150
9437	4363	41	5	63.94	0.150
9438	4363	23	3	111.24	0.000
9439	4363	36	4	64.75	0.000
9440	4363	42	1	8.71	0.000
9441	4364	15	3	100.23	0.100
9442	4364	6	4	647.92	0.150
9443	4365	2	3	47.31	0.000
9444	4365	41	4	60.70	0.000
9445	4365	6	5	572.26	0.000
9446	4365	1	4	594.06	0.150
9447	4366	36	3	63.84	0.050
9448	4367	37	4	75.70	0.000
9449	4367	32	3	82.43	0.000
9450	4367	40	5	54.69	0.100
9451	4368	39	3	79.85	0.000
9452	4369	5	3	626.04	0.000
9453	4369	12	4	120.70	0.100
9454	4370	20	2	11.27	0.100
9455	4370	43	4	15.05	0.000
9456	4371	20	3	12.31	0.000
9457	4372	8	3	27.98	0.100
9458	4372	24	3	50.50	0.000
9459	4373	31	1	88.57	0.000
9460	4374	45	4	8.30	0.000
9461	4375	40	5	53.18	0.000
9462	4375	38	3	57.96	0.150
9463	4376	41	4	60.90	0.000
9464	4377	3	5	269.12	0.000
9465	4378	27	4	11.50	0.000
9466	4378	17	3	35.76	0.000
9467	4378	8	5	31.45	0.050
9468	4379	43	5	13.45	0.100
9469	4380	38	5	52.69	0.000
9470	4381	12	3	131.45	0.000
9471	4382	45	2	9.01	0.050
9472	4383	21	3	251.65	0.000
9473	4383	18	2	94.89	0.150
9474	4383	35	4	46.62	0.000
9475	4384	33	4	62.32	0.000
9476	4385	16	1	85.74	0.050
9477	4385	6	3	571.33	0.000
9478	4386	7	3	220.85	0.000
9479	4386	8	1	28.15	0.100
9480	4387	41	4	65.65	0.050
9481	4388	43	5	13.41	0.000
9482	4389	5	3	633.57	0.100
9483	4390	42	2	8.07	0.050
9484	4390	26	5	27.55	0.000
9485	4391	37	3	68.95	0.100
9486	4391	5	4	619.53	0.000
9487	4392	28	3	12.64	0.000
9488	4393	37	3	73.56	0.150
9489	4393	9	1	104.75	0.000
9490	4394	30	4	49.65	0.000
9491	4394	37	4	69.72	0.100
9492	4395	41	5	65.17	0.000
9493	4395	23	2	98.55	0.000
9494	4396	42	5	8.49	0.000
9495	4397	16	2	84.12	0.050
9496	4398	34	4	117.30	0.000
9497	4399	25	4	71.78	0.000
9498	4399	44	5	17.05	0.000
9499	4400	41	3	59.61	0.150
9500	4401	5	1	611.17	0.150
9501	4401	45	5	8.69	0.050
9502	4401	30	1	49.62	0.000
9503	4402	25	4	75.90	0.000
9504	4402	17	4	38.78	0.050
9505	4403	16	3	89.07	0.100
9506	4403	43	3	15.05	0.000
9507	4403	41	1	64.55	0.000
9508	4403	23	3	103.18	0.000
9509	4404	36	5	69.77	0.100
9510	4405	36	2	62.98	0.050
9511	4405	2	1	43.78	0.100
9512	4405	40	3	52.52	0.100
9513	4406	7	5	219.50	0.000
9514	4407	46	4	13.61	0.050
9515	4407	9	3	102.28	0.000
9516	4407	5	3	642.04	0.150
9517	4407	47	1	10.14	0.000
9518	4408	34	5	120.11	0.050
9519	4408	28	2	12.66	0.100
9520	4408	15	4	97.02	0.000
9521	4409	46	4	13.63	0.000
9522	4409	38	2	54.81	0.000
9523	4410	34	4	112.06	0.100
9524	4410	39	2	80.85	0.150
9525	4410	36	5	62.09	0.100
9526	4410	23	2	98.52	0.100
9527	4411	38	1	54.44	0.100
9528	4412	23	4	102.93	0.000
9529	4413	3	1	261.82	0.050
9530	4414	47	5	9.95	0.150
9531	4414	29	2	63.73	0.000
9532	4414	12	5	132.79	0.000
9533	4414	23	1	100.91	0.100
9534	4415	29	1	64.47	0.000
9535	4415	14	3	34.54	0.150
9536	4416	35	1	43.38	0.100
9537	4416	1	5	575.03	0.050
9538	4416	28	1	12.36	0.100
9539	4417	44	3	18.08	0.000
9540	4417	6	3	630.91	0.000
9541	4418	40	4	55.47	0.000
9542	4419	2	5	45.20	0.000
9543	4420	4	1	212.97	0.050
9544	4421	31	3	93.10	0.050
9545	4421	39	3	79.28	0.050
9546	4421	40	4	53.12	0.050
9547	4421	45	1	9.17	0.100
9548	4422	40	3	53.17	0.150
9549	4422	47	2	9.01	0.000
9550	4423	12	5	135.25	0.000
9551	4424	1	4	571.30	0.100
9552	4425	16	1	77.59	0.150
9553	4426	30	3	50.25	0.000
9554	4426	2	1	43.36	0.050
9555	4426	15	1	102.86	0.000
9556	4427	22	4	216.58	0.050
9557	4427	12	4	119.80	0.100
9558	4428	35	2	44.62	0.000
9559	4428	10	2	16.78	0.000
9560	4429	1	2	553.27	0.150
9561	4429	22	3	216.14	0.000
9562	4429	26	5	31.51	0.150
9563	4429	4	5	215.99	0.050
9564	4430	35	2	46.92	0.000
9565	4430	26	3	28.27	0.150
9566	4430	22	5	220.76	0.000
9567	4430	34	3	106.47	0.150
9568	4431	4	1	203.86	0.000
9569	4431	9	3	109.14	0.000
9570	4431	32	2	82.68	0.050
9571	4431	20	5	12.23	0.000
9572	4432	24	4	55.42	0.100
9573	4432	14	4	36.39	0.000
9574	4432	7	3	228.19	0.000
9575	4433	26	1	28.77	0.100
9576	4434	32	4	88.41	0.000
9577	4434	45	3	8.98	0.000
9578	4434	13	3	10.62	0.000
9579	4434	6	2	630.83	0.050
9580	4435	21	3	245.02	0.000
9581	4435	33	5	63.77	0.100
9582	4435	24	1	52.48	0.000
9583	4436	20	1	12.10	0.100
9584	4436	37	2	69.90	0.150
9585	4437	18	3	92.36	0.100
9586	4437	21	4	226.15	0.000
9587	4438	11	5	64.82	0.150
9588	4438	35	2	46.40	0.050
9589	4438	5	5	616.20	0.100
9590	4438	2	3	42.48	0.000
9591	4439	8	1	32.02	0.000
9592	4439	46	1	13.81	0.150
9593	4440	3	3	255.80	0.000
9594	4440	16	4	86.95	0.150
9595	4440	47	3	9.33	0.150
9596	4440	40	3	51.12	0.150
9597	4441	1	5	579.57	0.000
9598	4442	2	3	44.14	0.050
9599	4442	17	4	36.72	0.100
9600	4443	47	3	10.05	0.100
9601	4443	32	5	80.15	0.150
9602	4444	16	1	83.39	0.150
9603	4444	11	4	64.88	0.000
9604	4445	21	1	245.18	0.150
9605	4445	46	3	15.31	0.150
9606	4445	8	4	30.63	0.100
9607	4445	4	2	220.64	0.000
9608	4446	38	3	59.39	0.000
9609	4446	35	1	44.03	0.000
9610	4447	2	4	43.02	0.050
9611	4447	37	1	77.33	0.100
9612	4447	22	2	204.46	0.000
9613	4448	25	4	80.41	0.000
9614	4448	21	5	242.06	0.000
9615	4448	31	1	94.56	0.000
9616	4449	5	1	681.38	0.150
9617	4449	38	3	52.35	0.150
9618	4449	28	2	11.16	0.100
9619	4449	23	3	99.87	0.000
9620	4450	6	4	617.03	0.050
9621	4451	21	2	247.37	0.000
9622	4451	28	5	12.44	0.050
9623	4451	43	5	15.16	0.100
9624	4451	29	4	67.01	0.100
9625	4452	26	1	28.40	0.000
9626	4453	5	5	626.06	0.000
9627	4454	4	1	216.08	0.000
9628	4454	43	4	14.54	0.100
9629	4454	33	2	66.56	0.000
9630	4454	44	5	16.31	0.000
9631	4455	13	5	11.95	0.000
9632	4456	46	3	15.80	0.150
9633	4456	31	2	99.72	0.000
9634	4456	21	3	255.20	0.050
9635	4456	4	4	212.60	0.050
9636	4457	42	5	8.30	0.100
9637	4457	21	3	240.99	0.000
9638	4458	2	3	48.11	0.000
9639	4459	4	4	229.87	0.000
9640	4459	48	1	15.33	0.100
9641	4460	32	5	92.35	0.150
9642	4460	15	2	98.28	0.100
9643	4461	21	1	227.24	0.000
9644	4461	11	2	60.11	0.100
9645	4462	48	2	17.18	0.100
9646	4463	5	5	655.79	0.000
9647	4463	39	5	71.37	0.050
9648	4464	5	4	613.05	0.100
9649	4464	2	1	49.09	0.050
9650	4464	10	2	15.46	0.050
9651	4464	29	4	67.91	0.000
9652	4465	14	3	37.04	0.000
9653	4465	3	1	264.53	0.100
9654	4465	26	4	31.36	0.050
9655	4466	6	1	642.49	0.000
9656	4467	3	2	252.00	0.000
9657	4468	10	4	15.72	0.100
9658	4469	35	2	48.33	0.000
9659	4469	28	3	11.66	0.150
9660	4469	29	4	62.42	0.000
9661	4470	7	4	217.07	0.150
9662	4470	5	1	684.11	0.100
9663	4471	29	2	68.39	0.000
9664	4471	46	5	14.82	0.000
9665	4472	3	3	244.60	0.000
9666	4473	20	2	12.32	0.100
9667	4473	1	1	570.83	0.100
9668	4474	21	1	247.29	0.050
9669	4475	22	1	202.23	0.100
9670	4476	4	5	207.03	0.100
9671	4476	18	4	92.30	0.000
9672	4476	3	3	273.24	0.000
9673	4476	47	4	9.89	0.100
9674	4477	11	5	58.30	0.100
9675	4477	3	4	250.04	0.100
9676	4477	22	4	217.80	0.100
9677	4478	21	3	234.93	0.050
9678	4479	47	5	10.25	0.150
9679	4479	32	4	87.90	0.150
9680	4479	48	5	17.63	0.000
9681	4479	10	3	16.51	0.000
9682	4480	43	2	14.29	0.100
9683	4480	22	1	205.83	0.000
9684	4481	16	3	89.55	0.000
9685	4481	9	2	109.33	0.050
9686	4481	5	2	603.27	0.150
9687	4482	19	3	234.69	0.000
9688	4482	11	4	65.24	0.100
9689	4483	20	5	11.21	0.000
9690	4483	32	3	87.20	0.000
9691	4484	6	1	594.45	0.000
9692	4484	22	5	211.86	0.050
9693	4485	16	1	84.29	0.000
9694	4485	10	4	17.32	0.000
9695	4485	22	4	216.88	0.150
9696	4485	40	3	49.27	0.100
9697	4486	19	1	232.39	0.050
9698	4486	20	3	11.75	0.000
9699	4486	43	1	13.79	0.000
9700	4487	34	5	107.15	0.100
9701	4487	4	5	212.86	0.100
9702	4487	37	1	77.13	0.050
9703	4487	18	5	92.90	0.000
9704	4488	3	5	265.54	0.150
9705	4488	10	4	17.54	0.150
9706	4488	33	2	60.75	0.100
9707	4489	9	4	104.62	0.100
9708	4489	29	5	64.74	0.000
9709	4490	20	5	11.79	0.150
9710	4490	32	2	87.39	0.000
9711	4490	47	2	9.00	0.000
9712	4490	3	1	255.22	0.000
9713	4491	24	5	54.54	0.150
9714	4491	31	2	101.93	0.100
9715	4492	23	2	107.26	0.000
9716	4492	45	5	9.00	0.000
9717	4492	24	5	50.01	0.100
9718	4492	13	1	11.38	0.100
9719	4493	10	3	16.14	0.150
9720	4494	19	5	234.40	0.150
9721	4494	29	3	64.27	0.150
9722	4494	27	5	12.46	0.150
9723	4495	47	3	10.06	0.000
9724	4496	43	4	13.69	0.100
9725	4497	17	1	36.22	0.000
9726	4498	27	1	11.29	0.150
9727	4498	26	1	27.83	0.000
9728	4498	21	1	242.05	0.150
9729	4499	11	4	57.02	0.000
9730	4499	34	2	113.75	0.000
9731	4500	26	1	28.36	0.000
9732	4500	29	1	67.18	0.150
9733	4501	10	3	17.80	0.000
9734	4501	48	2	16.08	0.000
9735	4501	47	5	9.71	0.100
9736	4502	5	1	643.16	0.150
9737	4502	47	1	9.56	0.150
9738	4502	17	4	37.62	0.150
9739	4502	41	2	60.19	0.050
9740	4503	30	4	49.35	0.000
9741	4503	34	3	114.04	0.000
9742	4503	28	2	12.75	0.050
9743	4504	30	2	50.20	0.100
9744	4504	3	2	245.35	0.000
9745	4505	1	3	572.40	0.150
9746	4506	42	3	8.88	0.050
9747	4507	33	1	61.21	0.150
9748	4507	10	1	15.72	0.150
9749	4507	48	4	17.02	0.050
9750	4508	2	1	43.37	0.000
9751	4508	4	3	230.44	0.000
9752	4508	39	1	79.86	0.000
9753	4509	6	3	607.74	0.150
9754	4509	40	1	55.12	0.100
9755	4509	13	3	10.59	0.000
9756	4509	30	4	50.30	0.000
9757	4510	38	2	52.30	0.050
9758	4510	45	1	9.38	0.000
9759	4511	6	1	602.88	0.050
9760	4511	18	2	96.20	0.100
9761	4512	24	5	57.15	0.150
9762	4513	36	3	70.07	0.050
9763	4513	26	2	28.40	0.150
9764	4513	46	4	13.99	0.000
9765	4514	14	4	33.87	0.000
9766	4514	4	3	210.44	0.150
9767	4514	30	3	45.98	0.000
9768	4514	40	5	52.14	0.150
9769	4515	6	4	614.27	0.000
9770	4516	33	5	65.63	0.050
9771	4516	35	4	46.17	0.000
9772	4516	22	1	192.73	0.150
9773	4516	48	2	17.51	0.000
9774	4517	5	3	659.65	0.000
9775	4518	15	1	95.34	0.150
9776	4518	43	1	15.55	0.000
9777	4518	45	1	8.94	0.000
9778	4518	3	4	277.46	0.100
9779	4519	38	1	56.63	0.100
9780	4519	29	1	70.84	0.100
9781	4519	36	3	61.32	0.000
9782	4520	15	4	90.58	0.050
9783	4521	5	2	642.83	0.000
9784	4521	29	2	69.84	0.100
9785	4522	28	5	11.72	0.000
9786	4522	8	1	28.51	0.000
9787	4523	6	5	639.82	0.100
9788	4523	22	5	213.28	0.150
9789	4524	4	3	226.48	0.100
9790	4524	37	4	73.95	0.000
9791	4524	22	3	215.72	0.000
9792	4524	20	3	11.08	0.000
9793	4525	9	1	101.09	0.000
9794	4525	21	2	232.27	0.150
9795	4526	12	3	129.34	0.000
9796	4526	34	3	120.17	0.050
9797	4527	35	3	44.36	0.050
9798	4527	15	5	104.86	0.100
9799	4527	16	1	77.91	0.050
9800	4527	8	2	32.20	0.100
9801	4528	5	3	686.30	0.000
9802	4529	8	1	29.08	0.050
9803	4529	21	2	254.74	0.000
9804	4530	18	2	93.84	0.000
9805	4531	37	1	75.55	0.000
9806	4531	18	1	86.37	0.000
9807	4531	15	2	94.06	0.000
9808	4531	5	3	629.18	0.000
9809	4532	23	4	111.25	0.000
9810	4533	40	1	51.95	0.150
9811	4534	41	5	60.22	0.050
9812	4534	43	5	15.31	0.150
9813	4535	41	4	61.08	0.150
9814	4535	13	4	10.73	0.000
9815	4536	18	5	83.95	0.150
9816	4536	27	4	11.22	0.000
9817	4537	27	4	11.16	0.000
9818	4537	43	4	14.11	0.000
9819	4537	42	1	8.65	0.100
9820	4538	47	3	10.05	0.000
9821	4538	39	1	74.30	0.150
9822	4539	10	5	17.84	0.000
9823	4539	18	2	92.13	0.000
9824	4540	16	3	87.74	0.000
9825	4541	27	5	11.65	0.100
9826	4541	43	4	13.89	0.000
9827	4541	37	5	75.14	0.050
9828	4542	19	4	233.35	0.000
9829	4542	40	5	56.47	0.000
9830	4542	20	3	11.12	0.150
9831	4543	28	2	11.84	0.150
9832	4543	5	5	686.87	0.000
9833	4544	19	5	242.71	0.050
9834	4545	44	2	15.91	0.050
9835	4545	48	1	17.26	0.000
9836	4546	5	5	667.40	0.150
9837	4546	29	1	65.80	0.100
9838	4546	15	3	94.72	0.100
9839	4547	17	1	40.55	0.000
9840	4548	38	4	51.83	0.000
9841	4549	33	4	62.53	0.000
9842	4550	39	1	75.30	0.000
9843	4551	46	3	13.83	0.000
9844	4552	11	4	61.57	0.000
9845	4552	40	3	52.31	0.000
9846	4553	13	5	11.07	0.150
9847	4554	18	5	96.07	0.000
9848	4554	32	3	80.81	0.100
9849	4555	27	1	12.42	0.000
9850	4555	38	5	54.92	0.000
9851	4556	4	5	203.20	0.150
9852	4556	29	2	66.25	0.000
9853	4557	34	4	105.76	0.000
9854	4557	37	1	75.26	0.150
9855	4557	2	4	47.13	0.000
9856	4558	18	2	87.87	0.100
9857	4558	28	1	12.52	0.050
9858	4558	22	3	216.23	0.000
9859	4558	17	2	36.39	0.000
9860	4559	29	2	67.72	0.050
9861	4560	38	3	56.77	0.050
9862	4560	6	4	613.37	0.100
9863	4560	34	3	119.44	0.100
9864	4560	48	1	16.57	0.000
9865	4561	20	4	10.94	0.050
9866	4562	1	5	583.73	0.000
9867	4562	33	5	68.34	0.000
9868	4562	28	4	11.80	0.000
9869	4562	44	1	16.42	0.150
9870	4563	8	2	27.87	0.100
9871	4563	2	2	46.83	0.100
9872	4564	22	2	219.11	0.150
9873	4564	5	4	610.53	0.000
9874	4564	8	5	30.14	0.000
9875	4565	25	1	71.46	0.150
9876	4566	1	5	582.02	0.050
9877	4566	17	5	37.46	0.000
9878	4567	19	1	255.02	0.000
9879	4567	23	4	110.94	0.000
9880	4567	40	3	56.77	0.000
9881	4567	26	1	30.70	0.100
9882	4568	33	5	66.70	0.000
9883	4568	31	4	100.22	0.000
9884	4568	5	5	623.00	0.150
9885	4569	31	3	97.24	0.000
9886	4569	40	4	50.01	0.150
9887	4569	2	3	45.71	0.050
9888	4569	35	1	46.45	0.000
9889	4570	3	4	272.92	0.100
9890	4570	36	2	62.63	0.000
9891	4571	8	4	31.05	0.100
9892	4571	22	3	197.56	0.000
9893	4572	43	5	13.51	0.100
9894	4572	39	5	71.01	0.000
9895	4573	12	5	121.03	0.150
9896	4574	18	5	86.70	0.000
9897	4575	6	4	597.34	0.000
9898	4575	33	3	59.59	0.000
9899	4576	2	2	44.97	0.050
9900	4577	3	2	257.11	0.100
9901	4577	46	3	15.33	0.000
9902	4578	46	5	15.70	0.100
9903	4579	29	1	65.42	0.050
9904	4579	43	4	13.87	0.100
9905	4580	39	4	79.53	0.000
9906	4580	35	2	46.95	0.000
9907	4580	24	1	56.90	0.050
9908	4581	14	4	32.74	0.000
9909	4582	40	1	50.18	0.000
9910	4583	23	2	110.78	0.150
9911	4583	44	2	17.89	0.150
9912	4584	36	3	66.03	0.000
9913	4584	39	4	72.24	0.000
9914	4584	2	5	46.40	0.050
9915	4584	20	1	11.52	0.100
9916	4585	5	3	637.30	0.150
9917	4585	37	3	70.04	0.150
9918	4585	18	1	85.89	0.000
9919	4585	45	2	8.89	0.150
9920	4586	45	4	9.52	0.000
9921	4586	23	4	104.03	0.100
9922	4587	4	2	202.57	0.100
9923	4588	45	4	8.35	0.050
9924	4588	9	2	103.56	0.100
9925	4588	14	1	36.86	0.000
9926	4588	31	1	97.41	0.000
9927	4589	25	2	74.66	0.000
9928	4589	35	4	42.90	0.000
9929	4590	19	3	256.18	0.050
9930	4591	6	4	645.75	0.000
9931	4591	35	3	47.40	0.050
9932	4591	47	3	9.11	0.000
9933	4591	1	2	534.50	0.000
9934	4592	33	2	66.43	0.050
9935	4593	44	3	16.38	0.000
9936	4593	22	5	215.25	0.000
9937	4594	27	5	12.52	0.000
9938	4595	22	1	198.82	0.000
9939	4595	13	3	11.68	0.050
9940	4595	48	1	17.33	0.050
9941	4596	46	5	15.23	0.000
9942	4596	8	4	32.01	0.000
9943	4596	1	5	567.19	0.100
9944	4596	5	2	676.54	0.100
9945	4597	45	2	9.51	0.050
9946	4597	39	5	78.84	0.000
9947	4597	24	5	50.74	0.000
9948	4598	39	5	76.76	0.050
9949	4598	41	3	59.10	0.150
9950	4599	48	3	16.21	0.000
9951	4600	25	3	72.43	0.000
9952	4600	43	2	13.73	0.100
9953	4601	20	5	12.05	0.100
9954	4602	14	4	34.95	0.150
9955	4602	47	1	10.05	0.100
9956	4602	12	5	121.36	0.000
9957	4602	38	4	53.93	0.000
9958	4603	15	1	90.83	0.000
9959	4603	48	3	16.55	0.100
9960	4603	47	5	10.05	0.000
9961	4603	17	3	40.03	0.000
9962	4604	25	4	71.38	0.000
9963	4604	33	4	62.48	0.000
9964	4605	12	5	123.96	0.150
9965	4606	20	1	11.79	0.050
9966	4607	36	1	65.34	0.000
9967	4608	14	2	36.45	0.000
9968	4608	25	3	79.46	0.150
9969	4609	23	5	98.85	0.000
9970	4609	31	5	98.85	0.000
9971	4610	9	2	111.75	0.050
9972	4610	17	2	38.38	0.000
9973	4611	47	2	8.99	0.000
9974	4612	10	3	17.63	0.150
9975	4613	18	1	95.02	0.000
9976	4613	13	4	12.13	0.150
9977	4614	10	5	17.10	0.000
9978	4614	20	5	11.10	0.100
9979	4615	34	2	118.76	0.000
9980	4616	41	3	61.82	0.050
9981	4616	5	5	606.74	0.100
9982	4617	17	5	36.53	0.150
9983	4617	4	2	215.24	0.000
9984	4618	25	1	73.98	0.000
9985	4619	34	1	105.45	0.000
9986	4620	27	3	12.08	0.050
9987	4620	15	3	91.53	0.000
9988	4620	7	4	227.22	0.050
9989	4621	29	5	69.92	0.050
9990	4621	31	4	88.76	0.000
9991	4621	3	5	248.75	0.000
9992	4622	31	2	88.95	0.100
9993	4623	5	3	657.06	0.000
9994	4623	40	1	48.80	0.000
9995	4624	30	5	49.86	0.050
9996	4624	44	5	17.56	0.000
9997	4625	21	4	229.73	0.100
9998	4625	26	5	28.76	0.050
9999	4625	42	2	8.50	0.000
10000	4625	15	2	98.34	0.050
10001	4626	14	5	35.94	0.000
10002	4626	5	4	675.79	0.100
10003	4627	35	4	47.87	0.000
10004	4627	39	4	78.17	0.000
10005	4628	38	3	57.62	0.100
10006	4628	2	1	42.72	0.150
10007	4628	15	5	103.79	0.000
10008	4629	15	2	98.18	0.100
10009	4630	14	5	33.80	0.000
10010	4630	16	1	79.83	0.100
10011	4631	20	2	10.99	0.100
10012	4632	9	3	115.61	0.050
10013	4633	39	4	71.07	0.000
10014	4633	12	1	130.92	0.000
10015	4633	6	2	566.53	0.050
10016	4634	9	3	116.79	0.150
10017	4634	29	3	67.75	0.100
10018	4635	48	4	15.79	0.000
10019	4635	30	3	50.39	0.150
10020	4635	31	4	95.13	0.000
10021	4636	22	5	208.63	0.100
10022	4636	29	1	62.40	0.050
10023	4637	3	4	268.76	0.100
10024	4637	40	5	54.54	0.000
10025	4638	36	5	62.34	0.050
10026	4639	36	1	62.48	0.100
10027	4639	7	3	229.00	0.000
10028	4640	41	4	61.38	0.000
10029	4640	46	5	14.37	0.050
10030	4641	27	3	12.50	0.100
10031	4641	20	4	11.72	0.150
10032	4642	44	1	17.64	0.100
10033	4642	46	4	15.35	0.050
10034	4642	36	5	61.37	0.000
10035	4642	28	4	11.73	0.000
10036	4643	16	5	77.42	0.000
10037	4643	2	1	47.79	0.000
10038	4643	21	1	222.16	0.050
10039	4644	2	5	42.42	0.050
10040	4645	20	2	10.79	0.050
10041	4646	13	5	12.19	0.000
10042	4646	17	2	36.22	0.000
10043	4646	43	5	13.66	0.050
10044	4647	1	5	529.74	0.000
10045	4647	30	5	50.77	0.000
10046	4647	38	1	54.88	0.000
10047	4648	12	1	133.03	0.150
10048	4649	22	1	215.66	0.050
10049	4649	23	4	113.86	0.000
10050	4649	15	2	98.34	0.000
10051	4650	27	4	11.60	0.150
10052	4650	39	1	72.46	0.000
10053	4651	35	4	48.31	0.150
10054	4651	1	3	547.58	0.050
10055	4651	34	5	115.04	0.050
10056	4651	2	3	43.01	0.100
10057	4652	6	2	581.62	0.000
10058	4652	31	5	101.52	0.050
10059	4652	36	2	67.83	0.150
10060	4653	41	3	58.85	0.150
10061	4653	14	3	33.05	0.150
10062	4653	23	4	101.42	0.000
10063	4653	40	4	51.04	0.000
10064	4654	20	3	10.72	0.050
10065	4654	15	2	94.76	0.100
10066	4654	21	4	240.82	0.000
10067	4654	1	1	545.82	0.150
10068	4655	41	2	59.79	0.050
10069	4655	11	5	60.97	0.000
10070	4656	25	5	77.47	0.000
10071	4657	45	1	8.98	0.000
10072	4657	10	1	17.56	0.000
10073	4657	5	1	687.95	0.150
10074	4658	45	2	8.99	0.150
10075	4658	44	4	15.59	0.150
10076	4658	40	4	54.70	0.000
10077	4658	20	5	10.94	0.000
10078	4659	7	5	224.26	0.100
10079	4660	9	1	109.32	0.050
10080	4661	1	3	581.14	0.100
10081	4661	6	4	575.16	0.000
10082	4661	21	1	250.20	0.050
10083	4662	2	1	48.93	0.050
10084	4662	42	5	8.25	0.000
10085	4663	1	2	586.42	0.000
10086	4663	45	3	9.25	0.100
10087	4663	30	5	52.25	0.000
10088	4663	37	5	69.02	0.000
10089	4664	3	5	246.82	0.000
10090	4664	36	2	69.37	0.000
10091	4665	26	3	27.41	0.000
10092	4666	25	4	70.72	0.000
10093	4667	14	5	33.05	0.100
10094	4668	45	2	8.94	0.000
10095	4668	16	1	86.95	0.000
10096	4668	44	5	17.91	0.100
10097	4669	13	2	11.22	0.050
10098	4669	20	5	11.36	0.000
10099	4670	11	3	63.45	0.000
10100	4670	16	5	80.07	0.050
10101	4671	13	4	10.77	0.000
10102	4671	19	3	236.03	0.000
10103	4671	35	4	46.07	0.150
10104	4671	6	3	572.76	0.000
10105	4672	38	1	57.26	0.000
10106	4673	5	3	616.47	0.000
10107	4674	47	2	9.56	0.000
10108	4675	17	4	35.84	0.050
10109	4676	18	4	84.00	0.100
10110	4677	46	1	13.75	0.000
10111	4677	26	2	28.15	0.000
10112	4678	42	2	8.21	0.000
10113	4678	1	1	576.60	0.000
10114	4679	38	1	54.11	0.100
10115	4679	3	5	261.15	0.100
10116	4679	9	1	102.99	0.000
10117	4679	13	1	11.57	0.000
10118	4680	11	4	62.33	0.000
10119	4681	48	4	16.29	0.000
10120	4681	45	4	9.26	0.150
10121	4682	38	1	59.47	0.000
10122	4682	8	4	30.22	0.050
10123	4683	44	3	17.13	0.150
10124	4683	33	3	59.28	0.000
10125	4683	34	2	114.00	0.000
10126	4683	17	3	40.18	0.100
10127	4684	17	2	36.33	0.100
10128	4684	20	2	11.93	0.000
10129	4684	14	1	35.17	0.100
10130	4684	30	3	51.66	0.000
10131	4685	41	1	59.83	0.150
10132	4685	32	2	88.76	0.000
10133	4685	4	3	227.73	0.050
10134	4686	33	4	61.70	0.050
10135	4686	42	1	9.20	0.150
10136	4687	36	3	70.75	0.000
10137	4688	4	5	210.54	0.050
10138	4689	10	4	16.02	0.150
10139	4689	39	4	74.22	0.000
10140	4690	29	5	66.42	0.150
10141	4691	16	4	78.61	0.050
10142	4692	4	2	225.52	0.000
10143	4692	8	5	30.62	0.000
10144	4692	26	3	28.17	0.050
10145	4692	40	4	52.38	0.100
10146	4693	31	2	93.20	0.150
10147	4694	46	4	13.76	0.000
10148	4694	34	4	112.08	0.100
10149	4695	35	1	47.62	0.100
10150	4695	23	2	105.50	0.100
10151	4696	7	2	221.42	0.050
10152	4696	40	5	49.49	0.150
10153	4697	7	5	224.52	0.000
10154	4698	32	5	82.94	0.150
10155	4698	29	1	61.73	0.150
10156	4699	44	5	15.62	0.050
10157	4699	36	3	65.55	0.000
10158	4700	42	2	8.09	0.050
10159	4700	35	4	44.39	0.000
10160	4700	40	3	52.34	0.050
10161	4701	33	3	64.44	0.100
10162	4701	27	2	11.76	0.000
10163	4702	15	1	92.71	0.150
10164	4703	41	1	65.61	0.000
10165	4704	48	4	16.73	0.000
10166	4705	16	1	87.65	0.150
10167	4705	27	4	12.31	0.000
10168	4706	46	5	14.99	0.100
10169	4707	30	1	45.37	0.150
10170	4707	33	5	68.25	0.050
10171	4708	23	2	98.53	0.150
10172	4709	19	3	252.09	0.150
10173	4709	33	3	64.23	0.100
10174	4710	17	4	39.10	0.000
10175	4711	6	1	644.40	0.100
10176	4712	17	3	36.39	0.150
10177	4712	43	5	14.32	0.050
10178	4713	10	2	17.22	0.100
10179	4714	7	1	219.03	0.000
10180	4714	28	5	12.75	0.000
10181	4715	10	3	15.82	0.100
10182	4716	14	5	33.23	0.000
10183	4717	22	4	215.96	0.150
10184	4717	36	1	66.79	0.000
10185	4717	42	3	8.68	0.000
10186	4717	27	3	11.80	0.000
10187	4718	23	2	113.84	0.100
10188	4718	34	4	109.76	0.000
10189	4719	5	5	691.79	0.000
10190	4719	38	1	59.42	0.000
10191	4719	48	1	15.23	0.100
10192	4720	41	2	60.20	0.100
10193	4720	11	1	57.88	0.000
10194	4720	9	5	105.94	0.000
10195	4721	5	2	636.13	0.000
10196	4721	36	2	63.32	0.100
10197	4721	9	5	112.40	0.000
10198	4722	34	5	117.05	0.050
10199	4722	1	1	530.85	0.000
10200	4722	18	4	95.35	0.000
10201	4723	4	4	212.13	0.000
10202	4723	45	2	9.21	0.000
10203	4724	26	3	31.45	0.000
10204	4725	8	2	32.11	0.050
10205	4725	41	4	68.07	0.050
10206	4725	18	2	86.17	0.150
10207	4725	48	3	15.91	0.050
10208	4726	30	5	51.05	0.000
10209	4726	11	1	63.08	0.000
10210	4727	48	2	17.36	0.000
10211	4727	28	3	12.45	0.000
10212	4727	42	4	9.25	0.000
10213	4728	30	5	46.40	0.000
10214	4729	48	3	17.04	0.050
10215	4729	17	4	37.12	0.000
10216	4729	8	2	31.68	0.000
10217	4729	18	2	89.82	0.000
10218	4730	48	1	15.55	0.150
10219	4730	45	3	8.42	0.000
10220	4731	5	4	689.74	0.150
10221	4732	41	1	62.86	0.050
10222	4732	10	2	16.70	0.100
10223	4732	24	3	53.10	0.000
10224	4732	11	2	62.33	0.150
10225	4733	3	2	277.56	0.000
10226	4734	42	2	9.05	0.000
10227	4734	15	2	91.21	0.050
10228	4735	25	5	77.50	0.000
10229	4736	30	5	52.31	0.100
10230	4737	44	5	15.63	0.000
10231	4738	8	3	30.84	0.050
10232	4738	4	2	230.60	0.050
10233	4738	26	1	30.03	0.000
10234	4738	12	3	123.30	0.150
10235	4739	28	4	11.52	0.050
10236	4740	8	5	28.42	0.000
10237	4740	7	5	229.55	0.000
10238	4740	34	3	105.72	0.050
10239	4741	31	5	99.30	0.000
10240	4741	42	2	8.23	0.050
10241	4742	6	4	642.51	0.000
10242	4742	44	2	17.42	0.000
10243	4742	47	5	9.75	0.150
10244	4743	5	5	640.82	0.000
10245	4744	17	3	37.50	0.000
10246	4744	22	4	195.55	0.000
10247	4744	5	4	659.72	0.000
10248	4745	23	4	99.02	0.000
10249	4745	32	1	91.98	0.100
10250	4745	31	2	94.99	0.000
10251	4745	4	2	217.19	0.000
10252	4746	17	1	39.72	0.000
10253	4746	32	2	82.40	0.100
10254	4746	40	4	49.21	0.000
10255	4747	35	5	43.66	0.050
10256	4747	17	4	37.61	0.150
10257	4747	13	4	11.84	0.150
10258	4748	40	3	50.27	0.000
10259	4748	48	3	16.59	0.000
10260	4749	38	2	53.38	0.050
10261	4749	37	2	70.49	0.000
10262	4749	43	2	14.31	0.000
10263	4749	18	2	84.87	0.050
10264	4750	18	1	96.09	0.000
10265	4750	38	3	58.22	0.050
10266	4750	2	2	44.00	0.100
10267	4751	12	1	119.34	0.000
10268	4751	9	5	103.22	0.000
10269	4752	17	4	39.78	0.000
10270	4752	2	4	44.77	0.000
10271	4753	7	3	204.43	0.050
10272	4753	32	2	90.19	0.100
10273	4754	7	4	227.87	0.050
10274	4755	45	5	8.47	0.150
10275	4755	39	4	80.64	0.000
10276	4755	37	3	69.69	0.000
10277	4756	30	3	50.84	0.000
10278	4757	38	1	57.24	0.000
10279	4757	28	1	11.99	0.000
10280	4757	23	3	107.67	0.050
10281	4758	16	3	84.62	0.000
10282	4759	30	1	46.51	0.150
10283	4759	12	5	121.02	0.000
10284	4759	25	2	70.93	0.100
10285	4759	37	5	70.07	0.000
10286	4760	33	3	67.00	0.000
10287	4760	29	3	67.59	0.000
10288	4760	27	3	11.79	0.000
10289	4761	30	2	51.94	0.000
10290	4761	34	3	119.37	0.150
10291	4762	5	1	639.02	0.050
10292	4762	28	2	11.46	0.100
10293	4762	42	5	8.23	0.100
10294	4763	35	1	47.51	0.000
10295	4764	47	5	9.93	0.000
10296	4765	26	3	30.18	0.050
10297	4765	22	1	208.88	0.000
10298	4766	1	4	561.51	0.050
10299	4766	46	2	13.87	0.100
10300	4767	14	4	36.47	0.100
10301	4768	43	4	15.56	0.100
10302	4768	42	3	8.22	0.000
10303	4768	24	5	52.43	0.100
10304	4769	37	1	76.02	0.000
10305	4770	3	5	243.90	0.050
10306	4770	48	2	17.57	0.000
10307	4770	22	1	219.36	0.150
10308	4771	22	4	211.23	0.000
10309	4772	32	2	92.46	0.000
10310	4772	45	5	9.33	0.000
10311	4773	8	5	28.19	0.000
10312	4773	42	4	8.07	0.000
10313	4774	23	4	103.28	0.000
10314	4774	12	5	123.08	0.150
10315	4775	44	1	15.77	0.000
10316	4776	10	4	17.60	0.000
10317	4777	45	3	8.76	0.150
10318	4778	33	3	67.57	0.000
10319	4778	29	1	71.22	0.000
10320	4779	5	3	618.04	0.000
10321	4780	13	2	12.25	0.000
10322	4781	41	3	59.84	0.000
10323	4781	43	2	14.31	0.000
10324	4782	40	1	49.77	0.050
10325	4782	41	5	60.05	0.000
10326	4782	30	2	46.84	0.100
10327	4783	22	3	221.54	0.000
10328	4783	16	3	81.95	0.000
10329	4783	28	4	11.17	0.000
10330	4783	47	3	9.45	0.150
10331	4784	4	5	213.25	0.100
10332	4784	44	5	15.66	0.000
10333	4784	43	5	14.32	0.050
10334	4785	46	5	15.38	0.000
10335	4786	23	1	114.05	0.050
10336	4786	6	5	642.55	0.100
10337	4787	15	2	97.81	0.050
10338	4787	1	1	611.83	0.000
10339	4788	15	2	100.64	0.000
10340	4789	33	4	61.22	0.000
10341	4790	5	3	621.18	0.000
10342	4791	8	4	30.17	0.000
10343	4791	26	4	28.32	0.100
10344	4792	30	3	47.76	0.100
10345	4793	10	5	17.98	0.000
10346	4794	45	5	8.28	0.100
10347	4794	5	5	609.84	0.000
10348	4795	21	2	239.60	0.000
10349	4796	39	3	80.24	0.150
10350	4796	22	5	199.06	0.050
10351	4797	46	3	15.58	0.000
10352	4797	19	3	239.42	0.000
10353	4797	20	5	11.55	0.100
10354	4798	40	5	52.73	0.000
10355	4799	18	1	92.70	0.000
10356	4800	15	5	100.54	0.100
10357	4800	36	3	66.83	0.000
10358	4801	25	1	76.85	0.000
10359	4801	35	1	45.30	0.150
10360	4801	20	2	11.96	0.100
10361	4801	31	5	94.54	0.000
10362	4802	33	5	67.19	0.100
10363	4802	9	3	105.53	0.000
10364	4803	27	5	11.38	0.100
10365	4803	5	1	650.92	0.150
10366	4803	6	3	604.44	0.100
10367	4804	10	3	16.36	0.000
10368	4804	27	3	12.53	0.000
10369	4805	6	1	557.20	0.100
10370	4805	3	1	248.40	0.150
10371	4805	33	1	62.74	0.000
10372	4806	18	1	85.99	0.150
10373	4806	37	1	69.97	0.000
10374	4807	8	4	28.62	0.100
10375	4808	41	5	65.82	0.000
10376	4809	17	1	35.88	0.000
10377	4809	48	4	16.16	0.100
10378	4810	12	4	126.62	0.150
10379	4811	47	1	9.39	0.000
10380	4811	6	5	564.66	0.000
10381	4812	19	3	255.46	0.000
10382	4812	29	1	66.79	0.000
10383	4813	6	4	599.21	0.000
10384	4813	14	4	36.41	0.100
10385	4813	15	3	93.24	0.000
10386	4813	33	2	62.08	0.050
10387	4814	4	2	209.23	0.000
10388	4814	35	2	47.38	0.150
10389	4815	1	5	578.83	0.100
10390	4816	24	5	56.10	0.000
10391	4816	23	2	109.82	0.050
10392	4817	15	4	91.88	0.050
10393	4817	21	2	230.22	0.000
10394	4817	40	1	49.87	0.000
10395	4818	10	1	17.41	0.150
10396	4819	33	3	66.53	0.150
10397	4819	17	3	39.44	0.100
10398	4819	13	1	11.90	0.100
10399	4820	18	1	89.20	0.050
10400	4820	32	2	88.86	0.100
10401	4820	3	3	261.87	0.000
10402	4821	12	3	129.03	0.000
10403	4822	15	3	101.17	0.050
10404	4822	5	1	651.60	0.100
10405	4822	24	2	53.92	0.050
10406	4822	26	4	29.80	0.100
10407	4823	31	4	90.16	0.000
10408	4823	8	3	32.01	0.000
10409	4823	40	5	54.49	0.150
10410	4823	4	2	208.67	0.050
10411	4824	13	4	10.97	0.150
10412	4824	16	3	76.90	0.000
10413	4825	35	4	46.25	0.150
10414	4825	44	4	17.39	0.000
10415	4826	28	5	12.80	0.000
10416	4826	25	5	76.73	0.100
10417	4827	19	5	241.79	0.100
10418	4827	46	1	13.83	0.000
10419	4828	16	2	78.90	0.000
10420	4828	29	4	68.94	0.000
10421	4828	21	4	251.20	0.150
10422	4829	17	2	36.09	0.050
10423	4829	48	3	17.31	0.000
10424	4829	13	5	11.13	0.000
10425	4829	47	5	9.58	0.000
10426	4830	43	3	15.55	0.000
10427	4831	19	1	226.08	0.050
10428	4831	10	5	17.66	0.050
10429	4832	25	4	74.46	0.000
10430	4832	8	4	30.17	0.150
10431	4833	7	5	213.74	0.050
10432	4833	23	2	101.08	0.050
10433	4834	6	4	604.74	0.050
10434	4834	33	1	59.32	0.100
10435	4835	14	3	33.58	0.150
10436	4835	13	5	11.28	0.000
10437	4836	4	4	215.14	0.100
10438	4837	44	2	17.54	0.000
10439	4838	16	2	80.13	0.000
10440	4838	3	3	262.02	0.000
10441	4839	30	2	52.34	0.150
10442	4839	5	4	628.03	0.000
10443	4839	43	4	15.53	0.000
10444	4840	42	1	9.07	0.150
10445	4841	16	2	88.67	0.000
10446	4841	37	2	78.03	0.000
10447	4842	13	5	12.30	0.150
10448	4842	18	2	95.51	0.000
10449	4843	15	3	98.54	0.000
10450	4843	4	4	224.90	0.100
10451	4844	42	1	9.24	0.050
10452	4844	44	4	15.66	0.000
10453	4845	14	3	36.18	0.100
10454	4845	8	5	29.03	0.000
10455	4845	29	3	64.61	0.000
10456	4845	28	4	12.48	0.000
10457	4846	29	1	64.47	0.000
10458	4846	37	2	69.83	0.000
10459	4846	17	1	40.44	0.150
10460	4846	28	4	12.34	0.000
10461	4847	45	4	8.89	0.050
10462	4847	29	4	68.54	0.100
10463	4848	33	5	62.73	0.000
10464	4848	11	5	60.23	0.000
10465	4848	35	5	47.17	0.100
10466	4849	19	1	232.18	0.150
10467	4850	46	5	14.48	0.050
10468	4850	32	2	89.56	0.100
10469	4851	23	2	103.62	0.000
10470	4852	28	2	11.18	0.000
10471	4852	3	5	260.27	0.150
10472	4852	26	2	28.11	0.000
10473	4853	26	1	30.35	0.000
10474	4854	36	5	62.42	0.000
10475	4855	22	1	201.37	0.000
10476	4855	42	2	9.31	0.000
10477	4855	20	5	12.05	0.000
10478	4855	41	5	62.69	0.000
10479	4856	2	2	43.02	0.000
10480	4856	35	4	46.41	0.000
10481	4856	42	1	9.30	0.150
10482	4857	19	2	230.79	0.100
10483	4858	31	2	88.04	0.000
10484	4858	3	5	240.36	0.000
10485	4858	40	5	56.39	0.000
10486	4858	47	2	9.85	0.000
10487	4859	25	2	71.61	0.000
10488	4860	5	5	674.67	0.000
10489	4860	21	5	244.68	0.000
10490	4861	43	2	15.02	0.000
10491	4862	13	2	11.44	0.150
10492	4862	28	2	11.52	0.100
10493	4863	31	3	100.44	0.000
10494	4863	33	4	63.07	0.000
10495	4863	38	4	60.38	0.000
10496	4863	24	5	50.95	0.150
10497	4864	18	5	93.97	0.050
10498	4864	3	4	262.87	0.000
10499	4864	37	4	75.34	0.000
10500	4865	23	5	112.91	0.000
10501	4865	1	5	539.95	0.150
10502	4865	43	4	14.05	0.000
10503	4866	18	2	91.05	0.100
10504	4867	46	1	14.69	0.000
10505	4868	31	2	95.97	0.000
10506	4868	39	5	81.03	0.100
10507	4868	34	5	110.99	0.050
10508	4869	37	3	74.75	0.100
10509	4869	29	1	62.33	0.000
10510	4870	17	2	38.79	0.000
10511	4870	43	1	15.60	0.100
10512	4871	34	4	115.20	0.000
10513	4872	33	5	60.25	0.100
10514	4872	37	1	70.72	0.000
10515	4873	25	2	70.00	0.150
10516	4873	47	2	9.80	0.000
10517	4873	35	1	45.41	0.000
10518	4874	10	5	17.21	0.000
10519	4875	35	5	48.56	0.000
10520	4876	24	1	50.89	0.150
10521	4876	23	3	110.98	0.150
10522	4876	35	4	46.40	0.100
10523	4877	44	2	17.74	0.000
10524	4877	35	2	44.23	0.150
10525	4878	19	5	235.66	0.000
10526	4879	16	1	88.97	0.150
10527	4879	19	3	227.60	0.000
10528	4880	45	4	9.07	0.150
10529	4881	4	5	219.40	0.000
10530	4881	8	3	31.73	0.050
10531	4882	45	3	9.02	0.100
10532	4883	6	5	622.55	0.000
10533	4883	7	4	210.68	0.050
10534	4883	36	3	69.67	0.100
10535	4883	38	3	58.09	0.000
10536	4884	33	3	64.62	0.000
10537	4884	47	3	10.26	0.000
10538	4884	3	5	267.94	0.000
10539	4884	48	5	16.88	0.000
10540	4885	31	2	87.75	0.000
10541	4885	48	4	15.60	0.000
10542	4885	15	5	99.86	0.000
10543	4885	6	3	563.59	0.000
10544	4886	15	4	94.15	0.000
10545	4887	44	4	16.26	0.050
10546	4888	46	2	14.39	0.150
10547	4888	31	3	97.71	0.000
10548	4889	15	3	94.96	0.150
10549	4889	16	2	86.86	0.000
10550	4890	17	4	40.37	0.000
10551	4890	28	1	12.23	0.050
10552	4890	43	3	14.16	0.000
10553	4890	47	1	9.66	0.000
10554	4891	33	5	63.82	0.000
10555	4892	48	2	16.71	0.000
10556	4893	10	3	15.62	0.050
10557	4893	25	4	79.56	0.000
10558	4893	34	4	114.86	0.000
10559	4893	22	4	193.33	0.050
10560	4894	32	4	89.24	0.000
10561	4894	29	5	70.59	0.100
10562	4895	43	2	14.55	0.000
10563	4895	37	3	69.28	0.150
10564	4895	40	4	53.48	0.100
10565	4895	8	2	31.72	0.000
10566	4896	38	3	54.18	0.150
10567	4896	12	5	129.34	0.000
10568	4897	34	1	111.20	0.000
10569	4898	17	5	36.40	0.100
10570	4898	13	2	10.89	0.050
10571	4898	36	1	66.39	0.050
10572	4898	14	1	34.55	0.150
10573	4899	37	3	71.04	0.050
10574	4900	28	2	11.70	0.100
10575	4901	37	1	78.77	0.000
10576	4901	36	1	60.86	0.050
10577	4901	8	4	30.71	0.150
10578	4902	25	5	69.35	0.000
10579	4902	15	3	97.37	0.000
10580	4903	44	4	16.71	0.000
10581	4904	18	1	93.13	0.050
10582	4904	2	5	45.58	0.000
10583	4904	17	3	35.42	0.050
10584	4905	40	5	49.23	0.000
10585	4906	37	1	76.53	0.150
10586	4906	2	3	47.17	0.000
10587	4906	39	3	75.11	0.000
10588	4907	29	2	71.43	0.000
10589	4907	44	2	16.62	0.000
10590	4907	14	5	37.47	0.150
10591	4908	14	5	37.86	0.000
10592	4909	6	3	622.07	0.000
10593	4909	8	3	29.31	0.050
10594	4910	18	2	95.36	0.050
10595	4910	5	1	611.90	0.100
10596	4911	42	4	8.33	0.050
10597	4912	29	5	68.59	0.050
10598	4912	4	3	225.51	0.000
10599	4912	48	5	16.84	0.100
10600	4913	24	4	56.85	0.000
10601	4913	29	1	71.87	0.100
10602	4914	5	1	656.58	0.100
10603	4914	25	3	70.75	0.000
10604	4915	21	4	255.08	0.050
10605	4916	5	2	700.03	0.100
10606	4916	22	1	215.90	0.150
10607	4916	11	5	57.00	0.050
10608	4917	34	2	117.57	0.000
10609	4918	4	4	219.06	0.000
10610	4919	19	1	234.29	0.150
10611	4919	40	4	55.78	0.050
10612	4920	47	4	9.84	0.000
10613	4920	44	3	16.26	0.100
10614	4920	33	5	61.24	0.000
10615	4921	35	2	46.85	0.000
10616	4921	45	1	9.29	0.000
10617	4921	21	5	253.19	0.150
10618	4922	19	5	250.70	0.100
10619	4922	9	3	111.38	0.150
10620	4923	38	5	56.60	0.000
10621	4924	21	5	249.30	0.050
10622	4925	42	2	8.59	0.000
10623	4925	28	3	12.80	0.000
10624	4926	10	3	16.51	0.000
10625	4926	11	2	56.59	0.100
10626	4927	35	3	44.65	0.000
10627	4928	4	1	201.82	0.000
10628	4928	14	2	36.73	0.000
10629	4929	27	1	12.54	0.050
10630	4929	18	5	87.08	0.000
10631	4929	38	5	55.06	0.000
10632	4930	20	4	12.03	0.150
10633	4931	44	3	17.54	0.000
10634	4931	34	5	109.07	0.000
10635	4932	8	2	30.41	0.000
10636	4933	40	4	52.16	0.000
10637	4933	42	2	8.07	0.000
10638	4933	23	3	110.49	0.000
10639	4933	10	2	16.80	0.100
10640	4934	26	2	30.59	0.000
10641	4935	22	3	195.98	0.000
10642	4935	4	3	209.95	0.150
10643	4935	7	3	207.13	0.050
10644	4936	19	1	226.41	0.100
10645	4936	25	4	78.21	0.100
10646	4937	38	1	56.92	0.000
10647	4938	28	4	11.05	0.100
10648	4938	1	5	528.57	0.000
10649	4938	7	4	205.26	0.050
10650	4938	6	5	560.56	0.050
10651	4939	48	5	16.87	0.150
10652	4940	5	4	614.02	0.100
10653	4940	40	5	49.20	0.150
10654	4941	45	3	9.40	0.100
10655	4942	39	1	75.27	0.100
10656	4942	20	1	11.14	0.050
10657	4942	16	4	81.10	0.150
10658	4943	41	1	60.41	0.000
10659	4944	25	4	73.05	0.150
10660	4945	33	3	63.08	0.100
10661	4945	24	1	56.96	0.050
10662	4945	40	4	55.23	0.050
10663	4946	19	3	242.60	0.100
10664	4946	37	2	73.44	0.050
10665	4946	43	4	13.78	0.000
10666	4946	27	4	11.72	0.000
10667	4947	40	4	50.89	0.100
10668	4948	43	1	14.30	0.000
10669	4948	40	5	52.13	0.000
10670	4948	36	5	65.79	0.000
10671	4949	23	1	103.24	0.000
10672	4950	14	5	32.83	0.100
10673	4950	8	3	30.28	0.100
10674	4951	4	3	201.57	0.000
10675	4951	3	5	257.61	0.150
10676	4951	44	2	17.08	0.150
10677	4951	27	2	11.34	0.000
10678	4952	14	2	34.69	0.100
10679	4952	47	1	9.70	0.100
10680	4953	40	3	52.87	0.000
10681	4953	1	3	574.32	0.100
10682	4954	7	4	232.90	0.150
10683	4955	41	2	64.47	0.050
10684	4955	30	1	47.51	0.000
10685	4955	24	1	54.28	0.000
10686	4956	28	5	11.57	0.000
10687	4956	40	4	51.14	0.150
10688	4957	37	2	68.57	0.000
10689	4957	28	2	11.39	0.000
10690	4958	16	5	80.12	0.000
10691	4958	30	2	51.00	0.000
10692	4959	32	3	88.92	0.000
10693	4959	37	5	74.57	0.100
10694	4959	35	1	46.94	0.050
10695	4959	23	1	102.68	0.000
10696	4960	37	5	76.86	0.000
10697	4960	19	4	224.94	0.100
10698	4960	6	3	611.26	0.000
10699	4961	1	4	550.57	0.050
10700	4961	26	5	30.81	0.150
10701	4962	25	2	73.09	0.100
10702	4962	48	4	16.55	0.050
10703	4963	3	2	251.86	0.000
10704	4963	33	5	65.29	0.000
10705	4964	19	3	244.60	0.100
10706	4964	4	2	221.94	0.150
10707	4965	42	1	9.16	0.050
10708	4965	37	5	73.43	0.000
10709	4966	22	1	191.31	0.000
10710	4966	42	1	8.72	0.000
10711	4966	45	2	8.69	0.000
10712	4967	38	2	52.41	0.000
10713	4967	42	4	8.50	0.000
10714	4967	11	1	58.86	0.050
10715	4968	40	1	55.93	0.050
10716	4968	32	4	90.61	0.050
10717	4968	21	1	221.22	0.000
10718	4968	2	2	48.94	0.150
10719	4969	9	3	107.96	0.000
10720	4970	32	5	88.11	0.000
10721	4970	20	3	11.35	0.000
10722	4971	3	1	248.28	0.000
10723	4971	17	3	41.18	0.050
10724	4971	20	2	12.47	0.050
10725	4971	19	5	253.47	0.000
10726	4972	9	1	105.22	0.150
10727	4973	41	2	67.26	0.050
10728	4974	10	3	17.31	0.000
10729	4974	21	3	225.97	0.100
10730	4975	35	5	45.52	0.150
10731	4976	19	3	221.17	0.050
10732	4976	2	1	44.56	0.000
10733	4977	31	3	102.02	0.050
10734	4977	40	4	49.22	0.000
10735	4977	1	4	580.71	0.150
10736	4978	5	1	612.96	0.000
10737	4979	15	2	104.51	0.000
10738	4980	16	2	81.92	0.000
10739	4981	21	2	243.91	0.000
10740	4981	46	5	15.76	0.000
10741	4982	19	5	232.70	0.000
10742	4983	36	5	63.60	0.050
10743	4983	31	3	88.05	0.000
10744	4983	42	5	8.62	0.000
10745	4983	44	5	17.18	0.100
10746	4984	7	5	212.96	0.000
10747	4984	24	2	54.05	0.100
10748	4984	38	2	58.05	0.000
10749	4985	32	5	90.60	0.000
10750	4985	27	2	11.26	0.150
10751	4986	36	4	70.04	0.000
10752	4987	46	1	14.64	0.150
10753	4988	47	3	9.08	0.000
10754	4988	15	5	93.49	0.000
10755	4989	3	1	271.79	0.000
10756	4990	16	2	81.96	0.000
10757	4991	21	1	239.84	0.000
10758	4991	33	4	68.52	0.150
10759	4991	8	1	27.95	0.050
10760	4991	23	4	106.90	0.100
10761	4992	20	5	11.04	0.100
10762	4993	24	4	54.83	0.000
10763	4993	37	2	75.60	0.100
10764	4994	4	4	217.07	0.050
10765	4995	20	4	12.30	0.150
10766	4995	16	5	82.00	0.150
10767	4996	39	4	75.80	0.100
10768	4996	18	5	91.61	0.000
10769	4997	37	1	71.64	0.000
10770	4998	43	4	14.92	0.050
10771	4998	20	1	11.64	0.150
10772	4999	42	2	8.76	0.050
10773	5000	39	4	75.80	0.150
10774	5000	6	5	601.41	0.050
10775	5001	25	4	69.58	0.150
10776	5001	2	2	48.12	0.050
10777	5001	23	1	102.94	0.000
10778	5002	15	4	92.52	0.000
10779	5002	39	4	73.34	0.000
10780	5003	7	5	229.89	0.000
10781	5003	42	1	8.65	0.050
10782	5004	18	2	91.63	0.150
10783	5004	38	5	55.56	0.050
10784	5005	43	1	13.79	0.050
10785	5005	44	2	16.48	0.150
10786	5006	32	3	82.86	0.000
10787	5006	43	5	15.36	0.000
10788	5006	2	3	44.97	0.000
10789	5007	43	2	13.49	0.000
10790	5007	18	3	89.94	0.100
10791	5008	2	5	44.96	0.000
10792	5009	40	5	50.81	0.000
10793	5010	28	5	11.29	0.000
10794	5010	32	2	80.22	0.050
10795	5011	25	4	78.24	0.000
10796	5012	19	4	236.25	0.000
10797	5012	41	1	67.94	0.050
10798	5012	6	4	569.41	0.000
10799	5013	23	4	103.29	0.000
10800	5013	27	2	11.33	0.000
10801	5013	34	2	107.24	0.000
10802	5013	46	2	14.86	0.000
10803	5014	7	3	213.45	0.000
10804	5014	48	5	16.06	0.100
10805	5015	37	1	75.74	0.000
10806	5015	23	4	101.66	0.000
10807	5016	40	5	55.62	0.000
10808	5016	31	4	88.25	0.050
10809	5017	42	3	8.57	0.050
10810	5018	33	5	65.95	0.000
10811	5019	30	5	46.98	0.100
10812	5020	47	2	9.86	0.150
10813	5021	45	5	8.92	0.100
10814	5021	39	4	78.54	0.150
10815	5022	27	2	12.52	0.050
10816	5022	31	3	101.76	0.000
10817	5022	23	3	103.65	0.000
10818	5023	21	3	229.64	0.000
10819	5023	31	5	99.84	0.100
10820	5023	47	5	9.66	0.100
10821	5024	35	3	44.11	0.000
10822	5024	45	2	9.35	0.000
10823	5025	26	2	27.49	0.100
10824	5026	8	1	31.35	0.050
10825	5026	18	1	84.90	0.150
10826	5026	48	1	15.18	0.100
10827	5027	10	5	17.26	0.100
10828	5027	20	3	12.03	0.000
10829	5028	42	1	8.69	0.000
10830	5029	29	1	71.38	0.100
10831	5030	23	5	106.18	0.000
10832	5031	48	2	15.43	0.000
10833	5032	33	3	65.15	0.000
10834	5032	40	1	55.10	0.000
10835	5032	1	1	608.88	0.000
10836	5032	34	3	118.36	0.000
10837	5033	12	5	119.73	0.050
10838	5033	39	5	76.86	0.150
10839	5033	18	5	94.46	0.000
10840	5034	24	5	50.52	0.100
10841	5035	15	5	102.16	0.000
10842	5035	20	3	11.34	0.000
10843	5035	28	3	12.20	0.150
10844	5035	44	2	15.60	0.000
10845	5036	20	2	11.87	0.000
10846	5037	32	4	81.33	0.000
10847	5038	11	3	61.52	0.100
10848	5038	32	4	83.05	0.000
10849	5038	3	4	261.92	0.000
10850	5039	9	2	114.30	0.050
10851	5039	1	1	593.55	0.150
10852	5039	19	1	232.65	0.000
10853	5039	5	1	678.81	0.000
10854	5040	11	2	59.86	0.000
10855	5040	29	5	66.17	0.000
10856	5041	8	4	31.25	0.100
10857	5041	39	4	76.61	0.000
10858	5041	16	2	79.80	0.050
10859	5041	20	5	12.35	0.100
10860	5042	7	3	231.15	0.050
10861	5043	12	3	124.00	0.000
10862	5043	42	1	9.03	0.100
10863	5044	29	5	71.69	0.000
10864	5044	1	4	606.67	0.050
10865	5045	38	3	52.72	0.000
10866	5046	21	2	255.60	0.050
10867	5046	2	4	45.08	0.000
10868	5047	5	1	663.50	0.000
10869	5047	11	5	59.58	0.000
10870	5048	1	4	603.82	0.000
10871	5048	4	3	199.27	0.000
10872	5048	29	5	63.14	0.050
10873	5048	32	2	83.61	0.000
10874	5049	26	1	29.16	0.000
10875	5049	39	2	79.59	0.050
10876	5050	3	5	270.20	0.000
10877	5050	20	5	11.76	0.000
10878	5051	38	4	59.64	0.050
10879	5051	13	4	11.55	0.150
10880	5052	2	2	48.47	0.150
10881	5052	8	1	30.62	0.100
10882	5052	36	5	62.68	0.000
10883	5052	26	2	29.28	0.050
10884	5053	13	2	10.76	0.000
10885	5054	17	3	40.58	0.000
10886	5054	18	3	91.21	0.000
10887	5055	3	1	262.28	0.050
10888	5056	6	5	645.50	0.150
10889	5057	12	1	119.75	0.150
10890	5058	15	1	101.53	0.100
10891	5059	42	2	8.57	0.000
10892	5059	5	5	605.07	0.050
10893	5059	47	1	10.16	0.150
10894	5059	37	3	74.73	0.150
10895	5060	19	4	224.61	0.150
10896	5060	15	3	91.35	0.000
10897	5060	3	3	273.34	0.000
10898	5061	27	3	11.54	0.100
10899	5062	48	3	16.00	0.050
10900	5062	8	5	29.32	0.000
10901	5063	47	4	9.58	0.100
10902	5063	22	3	193.36	0.150
10903	5064	36	1	69.74	0.150
10904	5064	19	2	255.30	0.150
10905	5065	42	3	8.30	0.000
10906	5065	33	4	63.90	0.000
10907	5066	22	1	206.35	0.000
10908	5067	12	1	131.54	0.000
10909	5067	31	2	97.73	0.150
10910	5067	5	2	643.48	0.050
10911	5068	16	2	82.34	0.000
10912	5068	47	3	10.14	0.150
10913	5068	4	5	202.68	0.150
10914	5069	28	1	12.65	0.150
10915	5070	35	2	45.90	0.000
10916	5071	8	5	30.58	0.000
10917	5072	28	2	11.76	0.000
10918	5072	2	2	48.09	0.000
10919	5072	42	1	9.20	0.000
10920	5072	37	4	75.35	0.000
10921	5073	1	1	553.36	0.000
10922	5074	15	5	96.08	0.150
10923	5074	3	4	246.80	0.000
10924	5074	13	3	11.33	0.150
10925	5075	18	5	90.66	0.100
10926	5076	22	2	196.04	0.000
10927	5077	31	4	102.18	0.000
10928	5078	29	3	67.58	0.050
10929	5078	20	5	11.01	0.100
10930	5079	22	5	202.61	0.000
10931	5079	20	2	10.84	0.050
10932	5080	21	4	222.54	0.000
10933	5080	35	4	43.77	0.000
10934	5080	28	3	12.14	0.100
10935	5081	44	2	17.06	0.000
10936	5081	25	5	71.74	0.000
10937	5082	33	3	66.43	0.150
10938	5082	41	1	61.71	0.150
10939	5082	47	2	9.77	0.100
10940	5083	25	1	78.76	0.150
10941	5083	41	5	65.70	0.000
10942	5084	4	5	213.04	0.000
10943	5084	35	3	42.86	0.000
10944	5085	42	3	8.89	0.000
10945	5085	24	4	49.95	0.000
10946	5086	48	4	15.98	0.100
10947	5086	41	1	64.63	0.150
10948	5087	13	2	11.11	0.000
10949	5088	34	3	116.44	0.150
10950	5088	42	2	8.32	0.150
10951	5088	21	5	241.24	0.000
10952	5089	47	2	10.01	0.050
10953	5089	23	3	113.02	0.050
10954	5089	18	4	92.78	0.000
10955	5089	44	1	17.22	0.100
10956	5090	17	3	38.42	0.000
10957	5090	8	3	29.61	0.000
10958	5090	10	3	15.96	0.000
10959	5090	41	3	66.59	0.150
10960	5091	24	1	51.16	0.000
10961	5091	19	3	242.68	0.150
10962	5091	10	3	17.77	0.000
10963	5092	27	3	10.78	0.100
10964	5092	39	2	76.95	0.050
10965	5092	23	3	107.97	0.100
10966	5092	41	4	67.52	0.000
10967	5093	14	4	33.50	0.000
10968	5093	37	3	73.72	0.050
10969	5093	31	3	92.55	0.100
10970	5093	20	5	12.01	0.100
10971	5094	18	4	86.52	0.000
10972	5094	5	5	662.93	0.000
10973	5094	13	1	11.23	0.000
10974	5094	44	5	16.70	0.050
10975	5095	14	3	35.91	0.000
10976	5096	2	2	48.17	0.050
10977	5097	16	2	83.81	0.000
10978	5097	3	1	271.69	0.100
10979	5097	10	4	17.64	0.150
10980	5098	44	2	15.89	0.000
10981	5099	23	2	110.00	0.000
10982	5099	13	1	10.63	0.000
10983	5100	4	3	203.21	0.050
10984	5101	19	3	248.47	0.150
10985	5101	21	2	237.97	0.000
10986	5101	33	3	62.71	0.000
10987	5101	3	3	269.48	0.150
10988	5102	46	2	13.78	0.150
10989	5103	32	3	82.46	0.000
10990	5104	15	2	92.38	0.050
10991	5104	6	5	623.97	0.000
10992	5104	1	2	529.79	0.100
10993	5105	32	3	83.59	0.150
10994	5105	7	4	203.11	0.050
10995	5105	12	2	135.71	0.150
10996	5105	36	5	63.82	0.050
10997	5106	24	5	54.87	0.000
10998	5107	45	1	8.41	0.000
10999	5107	40	5	49.29	0.100
11000	5108	15	2	95.48	0.150
11001	5108	10	5	16.39	0.100
11002	5109	7	3	211.23	0.050
11003	5109	40	5	51.37	0.100
11004	5109	5	5	634.43	0.150
11005	5109	1	1	540.40	0.000
11006	5110	1	1	600.28	0.000
11007	5110	18	1	89.72	0.150
11008	5111	7	4	223.99	0.150
11009	5112	5	1	612.06	0.000
11010	5112	40	3	54.11	0.100
11011	5112	33	5	65.25	0.150
11012	5112	22	4	206.28	0.150
11013	5113	46	2	14.06	0.150
11014	5113	4	1	212.53	0.000
11015	5114	26	1	29.46	0.100
11016	5115	44	4	16.32	0.100
11017	5116	4	1	223.67	0.000
11018	5117	31	4	99.04	0.000
11019	5117	24	4	51.96	0.000
11020	5118	45	3	9.22	0.000
11021	5118	38	4	55.61	0.000
11022	5118	21	2	229.91	0.050
11023	5119	11	4	62.00	0.050
11024	5120	15	1	94.13	0.150
11025	5120	41	4	65.83	0.100
11026	5121	37	1	68.20	0.000
11027	5121	14	1	37.86	0.100
11028	5121	7	1	202.22	0.100
11029	5121	12	3	131.89	0.000
11030	5122	16	4	81.09	0.100
11031	5122	48	3	16.23	0.150
11032	5122	41	5	66.65	0.000
11033	5122	19	4	239.08	0.150
11034	5123	41	4	62.93	0.000
11035	5124	11	3	60.08	0.000
11036	5124	44	4	16.35	0.100
11037	5125	35	2	46.59	0.150
11038	5125	6	2	583.64	0.000
11039	5126	25	3	75.98	0.000
11040	5126	12	5	128.48	0.000
11041	5126	13	5	11.00	0.150
11042	5126	5	1	631.68	0.100
11043	5127	40	2	50.51	0.150
11044	5128	31	1	102.16	0.100
11045	5128	24	1	51.59	0.150
11046	5128	35	3	44.46	0.000
11047	5129	8	4	28.57	0.150
11048	5130	27	3	12.24	0.000
11049	5130	44	3	16.59	0.000
11050	5130	26	3	28.58	0.100
11051	5130	2	3	42.77	0.050
11052	5131	9	3	103.11	0.000
11053	5132	20	2	10.81	0.000
11054	5133	13	3	11.91	0.000
11055	5133	46	1	14.24	0.000
11056	5134	37	3	76.46	0.000
11057	5134	33	1	65.82	0.100
11058	5135	42	1	8.80	0.050
11059	5136	16	5	81.07	0.000
11060	5137	36	2	61.78	0.000
11061	5138	16	1	80.15	0.100
11062	5138	39	4	77.82	0.000
11063	5138	25	5	73.89	0.000
11064	5138	9	2	109.38	0.150
11065	5139	26	5	30.42	0.100
11066	5139	1	5	590.72	0.000
11067	5140	23	2	110.28	0.050
11068	5141	31	1	100.04	0.050
11069	5142	27	3	10.98	0.000
11070	5142	2	2	44.50	0.100
11071	5143	42	5	8.23	0.150
11072	5143	32	1	79.83	0.050
11073	5143	40	5	55.00	0.000
11074	5144	35	4	44.48	0.100
11075	5144	38	5	52.73	0.000
11076	5145	4	2	200.90	0.050
11077	5146	12	2	124.18	0.100
11078	5147	37	4	73.39	0.000
11079	5148	23	5	97.93	0.050
11080	5148	5	2	702.61	0.000
11081	5148	22	4	207.82	0.000
11082	5149	18	2	93.42	0.100
11083	5149	33	5	66.78	0.150
11084	5149	15	1	100.05	0.000
11085	5150	35	1	48.55	0.000
11086	5150	15	5	100.46	0.150
11087	5151	35	1	44.62	0.100
11088	5151	3	2	247.39	0.150
11089	5152	37	3	77.64	0.000
11090	5152	35	3	44.39	0.000
11091	5152	3	1	273.56	0.100
11092	5153	4	4	208.97	0.050
11093	5154	9	5	114.92	0.000
11094	5154	20	5	10.78	0.000
11095	5154	45	1	8.26	0.150
11096	5155	38	2	54.68	0.000
11097	5156	4	5	225.72	0.000
11098	5157	1	2	571.96	0.000
11099	5157	20	3	11.80	0.100
11100	5157	33	1	63.70	0.100
11101	5158	27	3	11.78	0.050
11102	5159	18	3	91.02	0.000
11103	5159	2	5	42.36	0.000
11104	5160	39	1	77.63	0.100
11105	5161	13	5	10.66	0.150
11106	5162	21	5	239.57	0.050
11107	5163	36	3	69.81	0.000
11108	5163	14	5	35.30	0.000
11109	5163	15	3	102.89	0.050
11110	5164	26	1	30.84	0.100
11111	5164	36	3	64.56	0.000
11112	5165	6	3	562.40	0.000
11113	5165	23	5	97.93	0.150
11114	5166	10	5	16.67	0.000
11115	5166	6	5	641.80	0.000
11116	5167	43	4	15.14	0.000
11117	5167	18	3	91.87	0.100
11118	5168	20	5	11.28	0.000
11119	5169	22	2	195.82	0.050
11120	5169	10	3	17.44	0.100
11121	5169	32	1	85.23	0.150
11122	5170	47	2	10.27	0.000
11123	5171	2	3	45.69	0.000
11124	5171	42	2	8.16	0.100
11125	5172	19	4	237.42	0.000
11126	5172	30	4	45.52	0.050
11127	5173	36	5	64.57	0.000
11128	5173	42	2	9.32	0.000
11129	5174	37	3	73.39	0.000
11130	5174	2	1	46.12	0.050
11131	5174	28	5	12.75	0.000
11132	5175	22	4	212.83	0.000
11133	5176	8	4	31.46	0.000
11134	5177	23	3	107.10	0.000
11135	5178	6	4	615.91	0.000
11136	5178	4	2	225.02	0.000
11137	5179	23	3	112.68	0.100
11138	5179	39	2	81.39	0.100
11139	5179	15	4	101.28	0.050
11140	5179	24	2	57.48	0.000
11141	5180	1	4	568.54	0.100
11142	5181	9	4	108.55	0.100
11143	5182	24	3	50.99	0.000
11144	5182	19	2	231.28	0.000
11145	5182	29	2	61.94	0.050
11146	5183	3	5	240.86	0.100
11147	5183	21	4	240.79	0.000
11148	5184	28	5	11.27	0.100
11149	5185	37	2	78.12	0.000
11150	5185	16	4	87.41	0.100
11151	5185	41	3	66.53	0.100
11152	5185	35	4	45.55	0.000
11153	5186	44	4	17.84	0.000
11154	5187	44	1	17.96	0.050
11155	5187	32	1	82.52	0.000
11156	5188	17	2	40.91	0.150
11157	5188	33	3	61.33	0.000
11158	5189	23	1	108.20	0.150
11159	5189	18	2	94.48	0.050
11160	5190	33	3	68.31	0.100
11161	5190	14	4	37.69	0.100
11162	5191	32	2	80.83	0.000
11163	5192	10	5	17.74	0.150
11164	5192	16	2	77.85	0.000
11165	5193	30	2	51.20	0.000
11166	5193	44	1	17.30	0.100
11167	5194	27	1	11.46	0.000
11168	5194	2	3	46.99	0.000
11169	5194	23	1	110.25	0.000
11170	5195	38	5	52.99	0.150
11171	5196	42	1	8.02	0.000
11172	5196	24	4	52.07	0.000
11173	5196	22	5	193.41	0.050
11174	5197	17	2	37.71	0.050
11175	5197	3	3	246.84	0.100
11176	5198	16	5	85.76	0.150
11177	5198	23	3	107.65	0.000
11178	5199	22	3	206.25	0.000
11179	5200	44	1	16.18	0.000
11180	5201	38	1	59.93	0.000
11181	5202	25	3	73.99	0.150
11182	5203	23	3	105.70	0.000
11183	5203	29	3	70.57	0.050
11184	5203	18	5	93.01	0.000
11185	5203	45	4	9.56	0.000
11186	5204	8	5	31.21	0.100
11187	5204	6	5	632.82	0.050
11188	5204	14	3	36.77	0.000
11189	5204	11	3	60.33	0.000
11190	5205	20	1	11.80	0.000
11191	5206	47	1	9.84	0.000
11192	5207	18	2	82.66	0.150
11193	5207	37	5	76.11	0.000
11194	5208	36	1	60.92	0.000
11195	5209	24	1	56.70	0.150
11196	5209	27	3	11.56	0.000
11197	5209	26	4	27.64	0.100
11198	5209	28	1	11.17	0.050
11199	5210	35	3	42.81	0.000
11200	5210	19	5	243.88	0.000
11201	5210	29	1	70.17	0.100
11202	5211	22	1	197.73	0.000
11203	5211	2	4	45.62	0.000
11204	5212	46	1	15.14	0.000
11205	5212	11	5	58.74	0.000
11206	5213	30	2	50.06	0.000
11207	5213	38	1	51.90	0.050
11208	5214	13	2	11.02	0.000
11209	5214	43	1	13.86	0.050
11210	5215	31	5	100.51	0.000
11211	5215	40	5	54.10	0.150
11212	5215	19	3	226.34	0.000
11213	5216	45	5	9.51	0.150
11214	5216	25	3	72.61	0.150
11215	5216	32	2	79.59	0.100
11216	5217	13	5	10.80	0.100
11217	5218	38	4	59.26	0.100
11218	5218	37	2	70.83	0.050
11219	5219	26	3	30.92	0.050
11220	5219	36	1	62.00	0.100
11221	5220	34	5	117.72	0.100
11222	5220	35	3	43.14	0.000
11223	5221	14	1	33.97	0.000
11224	5222	39	2	71.09	0.000
11225	5222	23	5	100.52	0.100
11226	5222	17	3	38.03	0.000
11227	5223	18	4	87.35	0.000
11228	5223	6	1	606.51	0.000
11229	5223	34	5	109.72	0.000
11230	5223	41	4	64.43	0.150
11231	5224	1	4	597.05	0.150
11232	5224	35	3	47.89	0.000
11233	5225	10	4	17.51	0.000
11234	5225	29	5	65.98	0.100
11235	5225	21	5	249.10	0.050
11236	5226	21	3	228.11	0.000
11237	5226	4	1	226.20	0.000
11238	5226	22	2	210.74	0.000
11239	5227	3	4	247.05	0.050
11240	5227	27	2	10.89	0.100
11241	5227	28	5	12.67	0.000
11242	5228	17	4	35.99	0.150
11243	5229	33	4	59.35	0.100
11244	5229	19	1	230.41	0.000
11245	5230	41	3	67.53	0.100
11246	5230	1	1	581.93	0.000
11247	5231	33	1	66.45	0.000
11248	5232	27	2	12.24	0.100
11249	5232	21	5	228.91	0.100
11250	5233	18	4	89.73	0.050
11251	5234	38	1	60.04	0.000
11252	5234	30	2	51.11	0.000
11253	5235	28	3	12.00	0.050
11254	5235	44	5	17.41	0.100
11255	5236	37	1	73.24	0.100
11256	5236	4	4	207.54	0.050
11257	5237	25	4	73.48	0.000
11258	5237	6	1	647.80	0.150
11259	5238	1	1	541.87	0.050
11260	5238	29	4	63.90	0.000
11261	5238	25	1	74.23	0.000
11262	5238	26	3	28.47	0.100
11263	5239	23	3	107.62	0.150
11264	5239	28	5	11.37	0.000
11265	5239	6	5	629.69	0.000
11266	5239	47	3	10.15	0.000
11267	5240	17	5	35.98	0.000
11268	5241	21	5	236.84	0.000
11269	5241	39	1	81.82	0.000
11270	5242	26	3	28.04	0.100
11271	5242	20	1	11.66	0.050
11272	5243	8	3	29.92	0.100
11273	5243	39	4	79.12	0.050
11274	5243	12	2	137.45	0.050
11275	5243	27	1	12.06	0.050
11276	5244	18	1	86.02	0.100
11277	5244	44	4	15.75	0.000
11278	5244	30	2	47.27	0.050
11279	5244	45	5	9.49	0.100
11280	5245	1	1	589.52	0.000
11281	5246	21	5	250.83	0.000
11282	5246	31	2	93.61	0.150
11283	5246	16	1	85.37	0.100
11284	5246	15	3	90.90	0.050
11285	5247	4	2	222.67	0.050
11286	5247	6	3	558.64	0.000
11287	5248	30	5	48.12	0.100
11288	5249	1	1	528.62	0.000
11289	5249	17	2	35.60	0.000
11290	5249	41	1	60.13	0.050
11291	5250	43	2	15.58	0.100
11292	5250	4	1	220.43	0.000
11293	5250	2	3	48.83	0.050
11294	5251	8	5	29.49	0.100
11295	5252	28	2	12.24	0.000
11296	5253	39	3	80.89	0.150
11297	5254	33	2	60.32	0.000
11298	5254	26	3	27.96	0.050
11299	5254	27	4	11.53	0.000
11300	5255	3	4	278.82	0.100
11301	5256	45	1	8.56	0.150
11302	5257	29	3	63.06	0.000
11303	5257	14	5	36.24	0.100
11304	5258	8	3	31.11	0.100
11305	5259	18	4	84.99	0.000
11306	5260	9	5	114.40	0.100
11307	5260	14	2	37.24	0.050
11308	5261	18	3	92.56	0.050
11309	5261	38	1	53.21	0.150
11310	5261	29	4	66.02	0.150
11311	5261	19	3	221.96	0.100
11312	5262	18	4	94.53	0.000
11313	5262	17	3	36.34	0.150
11314	5263	21	2	240.08	0.100
11315	5264	4	5	202.11	0.100
11316	5264	44	4	17.24	0.000
11317	5264	19	5	244.71	0.150
11318	5265	40	4	55.62	0.000
11319	5266	2	5	49.12	0.150
11320	5266	31	1	91.17	0.150
11321	5266	42	2	8.75	0.000
11322	5267	37	2	69.58	0.000
11323	5267	27	4	11.44	0.000
11324	5268	3	5	265.12	0.050
11325	5268	4	3	219.36	0.100
11326	5268	15	2	92.54	0.000
11327	5269	28	3	11.84	0.100
11328	5269	44	1	18.06	0.050
11329	5269	47	2	9.65	0.150
11330	5269	30	3	51.49	0.000
11331	5270	40	4	51.32	0.000
11332	5271	11	1	61.12	0.050
11333	5271	41	1	64.71	0.100
11334	5272	38	3	56.30	0.100
11335	5272	12	3	120.82	0.150
11336	5272	30	5	50.83	0.150
11337	5273	25	2	80.06	0.050
11338	5273	7	3	207.33	0.050
11339	5274	8	4	29.45	0.100
11340	5275	43	1	15.08	0.000
11341	5276	37	5	78.28	0.050
11342	5276	18	5	86.03	0.150
11343	5276	13	2	10.81	0.100
11344	5277	8	5	28.25	0.150
11345	5278	23	5	101.45	0.100
11346	5278	33	1	62.71	0.050
11347	5279	13	2	11.02	0.000
11348	5279	12	4	135.53	0.000
11349	5279	34	1	105.35	0.100
11350	5280	28	4	12.48	0.050
11351	5280	25	4	72.21	0.050
11352	5280	1	1	610.94	0.100
11353	5281	43	2	14.77	0.000
11354	5281	40	3	55.92	0.100
11355	5282	14	4	36.20	0.050
11356	5282	19	2	240.50	0.000
11357	5282	12	5	134.40	0.000
11358	5283	42	4	8.59	0.000
11359	5284	10	4	16.50	0.000
11360	5284	22	1	201.39	0.050
11361	5284	1	3	576.74	0.000
11362	5284	32	5	87.94	0.050
11363	5285	27	1	11.30	0.000
11364	5286	28	3	12.37	0.000
11365	5287	14	3	35.37	0.000
11366	5287	43	5	15.43	0.050
11367	5287	8	3	31.49	0.050
11368	5288	11	4	58.46	0.100
11369	5288	47	2	9.20	0.150
11370	5289	36	2	63.14	0.000
11371	5289	47	5	9.85	0.000
11372	5289	11	4	60.99	0.000
11373	5290	27	4	10.96	0.000
11374	5290	37	1	68.96	0.000
11375	5291	10	2	17.30	0.000
11376	5291	21	1	221.15	0.000
11377	5291	41	4	61.45	0.100
11378	5291	23	3	100.19	0.050
11379	5292	10	2	17.05	0.000
11380	5293	32	3	82.82	0.100
11381	5293	46	3	15.57	0.000
11382	5294	27	2	10.95	0.150
11383	5294	35	2	45.34	0.000
11384	5295	1	4	580.33	0.000
11385	5296	8	5	30.62	0.000
11386	5297	15	1	90.47	0.000
11387	5297	34	5	106.03	0.150
11388	5298	9	3	114.70	0.100
11389	5299	10	1	15.75	0.000
11390	5299	23	5	103.44	0.000
11391	5300	36	1	69.49	0.000
11392	5301	36	2	61.50	0.000
11393	5301	1	1	603.69	0.050
11394	5301	44	1	17.84	0.000
11395	5302	32	4	89.35	0.000
11396	5302	8	3	28.07	0.000
11397	5302	28	4	11.70	0.150
11398	5302	17	1	37.92	0.100
11399	5303	39	2	80.79	0.000
11400	5303	34	2	114.68	0.000
11401	5304	39	3	76.85	0.150
11402	5304	19	4	224.76	0.050
11403	5305	6	1	584.84	0.150
11404	5305	7	3	215.61	0.050
11405	5305	37	2	68.75	0.000
11406	5305	16	3	78.72	0.150
11407	5306	2	4	46.67	0.000
11408	5307	10	1	16.16	0.050
11409	5308	33	3	63.29	0.050
11410	5308	41	5	66.05	0.000
11411	5308	47	4	10.11	0.100
11412	5309	31	2	98.77	0.100
11413	5310	42	5	8.13	0.000
11414	5311	26	3	27.35	0.000
11415	5312	27	5	11.57	0.000
11416	5312	24	4	51.13	0.150
11417	5312	6	2	565.43	0.050
11418	5312	13	4	11.95	0.000
11419	5313	3	5	271.51	0.000
11420	5313	31	4	101.54	0.050
11421	5314	31	1	96.52	0.050
11422	5314	14	2	35.93	0.150
11423	5315	24	1	56.85	0.000
11424	5316	25	1	77.52	0.000
11425	5316	48	2	16.22	0.100
11426	5316	3	4	240.89	0.000
11427	5316	42	1	8.99	0.050
11428	5317	27	3	11.62	0.000
11429	5317	2	5	48.48	0.100
11430	5318	18	3	96.14	0.050
11431	5318	14	2	34.35	0.000
11432	5319	22	5	208.68	0.000
11433	5320	42	4	9.23	0.000
11434	5321	15	4	93.14	0.000
11435	5321	20	2	12.17	0.000
11436	5321	2	1	49.00	0.000
11437	5322	16	1	88.81	0.100
11438	5322	3	5	264.08	0.000
11439	5323	25	2	71.21	0.000
11440	5324	9	5	103.01	0.000
11441	5325	4	3	207.51	0.000
11442	5325	13	4	11.26	0.050
11443	5325	19	3	237.41	0.150
11444	5326	40	1	55.91	0.100
11445	5326	45	1	8.55	0.000
11446	5326	18	1	84.60	0.000
11447	5326	15	3	104.75	0.000
11448	5327	43	1	14.44	0.000
11449	5327	22	4	210.27	0.050
11450	5328	4	1	224.81	0.050
11451	5329	19	4	245.95	0.000
11452	5329	12	4	127.72	0.050
11453	5329	23	1	105.47	0.000
11454	5330	1	1	563.42	0.000
11455	5330	44	2	16.69	0.000
11456	5330	13	1	11.87	0.000
11457	5331	46	5	14.55	0.000
11458	5331	33	2	69.00	0.050
11459	5331	20	1	11.05	0.150
11460	5331	26	4	28.67	0.100
11461	5332	23	2	104.21	0.000
11462	5332	40	1	50.92	0.000
11463	5332	10	1	16.63	0.050
11464	5333	1	1	577.95	0.050
11465	5333	30	4	46.71	0.100
11466	5333	37	3	69.58	0.000
11467	5333	19	4	240.00	0.000
11468	5334	11	5	56.44	0.000
11469	5334	25	3	76.76	0.100
11470	5334	6	2	607.32	0.000
11471	5334	46	5	13.99	0.000
11472	5335	42	5	8.49	0.150
11473	5335	41	3	63.38	0.000
11474	5336	39	5	73.44	0.000
11475	5337	12	4	129.97	0.100
11476	5337	14	4	34.75	0.000
11477	5338	31	3	101.75	0.100
11478	5339	30	5	51.69	0.000
11479	5339	2	4	45.71	0.100
11480	5339	26	3	31.53	0.100
11481	5340	48	5	16.29	0.150
11482	5340	47	2	9.46	0.150
11483	5340	7	1	213.21	0.000
11484	5340	11	3	57.05	0.150
11485	5341	14	2	35.61	0.000
11486	5341	23	4	107.62	0.100
11487	5341	45	1	8.65	0.150
11488	5342	23	4	102.23	0.000
11489	5343	7	1	228.79	0.100
11490	5343	34	4	114.04	0.050
11491	5344	44	4	16.03	0.100
11492	5344	27	2	10.77	0.000
11493	5344	10	1	16.95	0.050
11494	5344	42	2	8.85	0.050
11495	5345	2	4	42.47	0.000
11496	5345	7	4	215.30	0.050
11497	5346	33	4	64.87	0.100
11498	5347	37	1	75.59	0.000
11499	5348	41	4	67.57	0.150
11500	5349	2	4	43.10	0.150
11501	5350	40	2	49.91	0.000
11502	5350	18	2	84.01	0.000
11503	5351	11	4	57.10	0.000
11504	5352	33	1	65.83	0.000
11505	5352	15	5	100.12	0.100
11506	5353	38	3	57.37	0.050
11507	5353	40	4	49.89	0.000
11508	5354	30	2	51.88	0.000
11509	5354	27	1	10.91	0.150
11510	5354	18	1	92.33	0.150
11511	5355	14	5	32.76	0.000
11512	5355	24	5	54.74	0.050
11513	5356	12	5	125.54	0.150
11514	5356	24	1	56.32	0.050
11515	5356	26	1	27.25	0.100
11516	5357	42	5	8.27	0.150
11517	5357	46	5	13.69	0.000
11518	5357	1	3	595.56	0.000
11519	5357	7	5	212.47	0.000
11520	5358	23	2	101.17	0.000
11521	5358	29	3	64.20	0.100
11522	5359	2	1	48.42	0.000
11523	5359	44	3	15.77	0.000
11524	5360	10	2	16.79	0.000
11525	5360	34	3	113.34	0.050
11526	5360	1	2	575.37	0.150
11527	5360	3	4	267.27	0.000
11528	5361	28	4	11.78	0.000
11529	5362	19	3	251.70	0.100
11530	5363	25	4	76.97	0.000
11531	5363	44	3	17.27	0.150
11532	5364	33	4	62.37	0.050
11533	5364	12	4	130.39	0.000
11534	5365	27	4	11.33	0.000
11535	5365	42	5	8.34	0.000
11536	5366	36	5	63.34	0.000
11537	5366	15	4	94.63	0.000
11538	5367	41	5	64.58	0.050
11539	5367	29	1	67.39	0.150
11540	5368	47	1	9.28	0.000
11541	5368	2	2	47.90	0.050
11542	5369	1	4	549.15	0.000
11543	5369	45	1	9.10	0.100
11544	5370	7	2	224.85	0.000
11545	5370	23	4	108.63	0.000
11546	5370	8	5	31.87	0.100
11547	5370	16	2	82.98	0.000
11548	5371	43	1	15.13	0.000
11549	5371	28	3	12.14	0.050
11550	5371	27	3	10.80	0.100
11551	5372	32	4	81.28	0.000
11552	5373	13	5	12.18	0.000
11553	5374	20	4	10.97	0.150
11554	5374	40	3	52.19	0.000
11555	5375	2	4	42.94	0.000
11556	5376	34	4	114.41	0.000
11557	5376	43	1	14.91	0.000
11558	5376	23	2	105.77	0.050
11559	5376	42	1	8.20	0.050
11560	5377	6	2	636.41	0.100
11561	5378	43	3	14.95	0.000
11562	5378	9	2	105.28	0.000
11563	5379	9	3	100.96	0.000
11564	5379	26	4	29.15	0.150
11565	5379	10	2	16.34	0.050
11566	5380	47	3	10.28	0.150
11567	5380	41	1	62.25	0.000
11568	5381	22	4	217.41	0.050
11569	5381	24	3	57.10	0.000
11570	5382	30	1	52.61	0.000
11571	5382	7	3	215.42	0.000
11572	5382	39	4	72.53	0.100
11573	5382	25	3	76.67	0.000
11574	5383	37	4	68.82	0.000
11575	5383	32	1	83.11	0.000
11576	5384	3	1	271.62	0.050
11577	5384	7	4	229.92	0.050
11578	5385	2	1	47.79	0.150
11579	5385	36	2	67.41	0.000
11580	5385	11	3	63.04	0.000
11581	5385	3	2	275.85	0.100
11582	5386	4	1	209.32	0.000
11583	5386	16	1	81.82	0.100
11584	5387	44	2	17.84	0.050
11585	5388	26	4	30.34	0.000
11586	5388	10	5	16.47	0.000
11587	5389	8	4	31.01	0.050
11588	5389	10	4	16.72	0.100
11589	5390	38	5	58.96	0.150
11590	5390	28	4	12.56	0.000
11591	5391	38	1	52.41	0.100
11592	5392	12	4	122.32	0.000
11593	5392	35	4	46.88	0.050
11594	5393	21	2	255.51	0.000
11595	5394	30	5	46.91	0.000
11596	5395	8	2	31.93	0.000
11597	5396	18	5	88.23	0.100
11598	5396	14	3	36.92	0.000
11599	5396	40	3	50.25	0.150
11600	5397	6	2	590.67	0.000
11601	5397	27	2	11.80	0.000
11602	5397	34	3	121.28	0.150
11603	5397	13	3	11.55	0.000
11604	5398	16	3	88.02	0.050
11605	5399	2	5	44.68	0.000
11606	5400	40	4	51.83	0.050
11607	5400	20	1	10.78	0.000
11608	5400	3	2	243.11	0.050
11609	5401	37	2	69.68	0.000
11610	5401	34	3	111.01	0.050
11611	5402	4	4	202.30	0.000
11612	5403	47	2	9.16	0.000
11613	5404	10	2	16.92	0.100
11614	5405	20	1	12.01	0.050
11615	5406	33	2	60.21	0.050
11616	5406	36	3	61.11	0.000
11617	5407	7	3	220.27	0.000
11618	5407	46	2	15.82	0.100
11619	5407	35	2	46.68	0.000
11620	5408	16	5	81.05	0.100
11621	5408	36	1	66.14	0.000
11622	5408	39	4	78.59	0.050
11623	5409	16	2	79.28	0.000
11624	5409	19	1	224.82	0.150
11625	5410	17	1	39.45	0.000
11626	5410	43	2	13.42	0.000
11627	5410	35	4	43.77	0.050
11628	5411	9	4	116.57	0.000
11629	5411	38	5	56.43	0.000
11630	5412	12	4	121.15	0.000
11631	5412	43	4	15.47	0.000
11632	5413	46	1	14.79	0.000
11633	5413	6	2	581.94	0.000
11634	5413	33	5	64.64	0.000
11635	5413	15	1	90.52	0.150
11636	5414	14	2	34.00	0.000
11637	5414	41	2	64.08	0.150
11638	5415	10	2	17.65	0.000
11639	5415	25	4	70.61	0.000
11640	5416	1	2	610.01	0.050
11641	5417	12	1	126.33	0.150
11642	5417	38	4	52.39	0.050
11643	5418	36	2	68.64	0.100
11644	5418	14	4	36.29	0.150
11645	5418	28	4	11.75	0.000
11646	5418	27	1	11.67	0.100
11647	5419	15	4	97.72	0.100
11648	5419	32	2	83.33	0.050
11649	5420	10	1	16.07	0.150
11650	5421	35	5	46.93	0.000
11651	5421	39	5	80.76	0.150
11652	5422	27	3	11.05	0.150
11653	5422	12	3	133.68	0.000
11654	5423	20	1	10.69	0.000
11655	5423	34	5	105.21	0.000
11656	5424	21	2	227.84	0.000
11657	5425	22	1	195.21	0.000
11658	5425	16	4	87.24	0.150
11659	5425	30	5	51.34	0.000
11660	5425	15	1	92.62	0.000
11661	5426	19	1	255.28	0.000
11662	5427	37	3	78.20	0.000
11663	5427	24	2	51.52	0.100
11664	5427	11	5	56.27	0.150
11665	5428	4	1	213.02	0.100
11666	5428	15	1	94.54	0.000
11667	5429	21	2	249.84	0.000
11668	5429	19	4	235.38	0.000
11669	5429	1	1	595.10	0.000
11670	5430	36	4	63.50	0.000
11671	5430	27	4	12.55	0.100
11672	5431	30	1	45.90	0.150
11673	5431	7	3	233.39	0.150
11674	5431	36	1	70.93	0.000
11675	5432	12	2	123.81	0.000
11676	5433	46	1	15.17	0.050
11677	5434	32	2	91.20	0.000
11678	5434	13	4	11.60	0.000
11679	5434	48	4	15.55	0.100
11680	5435	32	3	92.57	0.100
11681	5435	35	4	43.42	0.000
11682	5436	23	5	109.21	0.100
11683	5436	42	2	9.30	0.050
11684	5437	24	4	50.46	0.000
11685	5437	47	1	10.30	0.050
11686	5438	16	1	76.87	0.000
11687	5438	43	4	14.20	0.000
11688	5439	2	4	48.91	0.000
11689	5439	24	5	51.82	0.000
11690	5439	33	1	66.66	0.150
11691	5440	29	2	69.81	0.100
11692	5440	18	5	90.14	0.000
11693	5441	37	1	77.78	0.050
11694	5442	25	4	71.85	0.050
11695	5442	19	2	239.92	0.000
11696	5442	37	5	69.51	0.100
11697	5442	40	4	53.03	0.000
11698	5443	37	4	75.26	0.000
11699	5443	19	5	249.81	0.050
11700	5444	48	2	17.39	0.150
11701	5444	18	5	95.85	0.000
11702	5444	41	2	60.28	0.100
11703	5445	27	5	12.34	0.000
11704	5445	3	5	277.56	0.100
11705	5446	33	3	68.09	0.050
11706	5446	41	4	63.91	0.100
11707	5447	35	2	43.07	0.000
11708	5447	3	5	243.75	0.150
11709	5448	25	3	80.03	0.100
11710	5448	48	5	16.80	0.000
11711	5448	22	2	198.53	0.000
11712	5449	46	5	14.06	0.000
11713	5449	47	3	9.50	0.100
11714	5449	3	3	277.10	0.150
11715	5449	36	3	64.48	0.150
11716	5450	18	1	93.78	0.150
11717	5451	22	2	222.26	0.150
11718	5451	32	2	84.17	0.150
11719	5452	26	5	28.57	0.050
11720	5452	20	3	11.70	0.000
11721	5452	25	1	69.17	0.000
11722	5452	8	4	29.88	0.150
11723	5453	45	1	9.26	0.000
11724	5453	10	5	16.91	0.050
11725	5454	36	4	69.12	0.000
11726	5454	20	1	11.88	0.000
11727	5454	23	3	104.77	0.100
11728	5454	44	4	17.84	0.050
11729	5455	31	2	102.13	0.000
11730	5456	1	3	535.70	0.100
11731	5456	41	2	62.85	0.050
11732	5457	11	4	63.69	0.000
11733	5457	18	1	91.17	0.150
11734	5458	34	4	120.26	0.100
11735	5458	11	5	60.93	0.000
11736	5459	13	2	11.70	0.150
11737	5459	1	2	532.67	0.000
11738	5460	13	5	12.06	0.000
11739	5461	48	4	16.47	0.000
11740	5461	37	1	77.55	0.000
11741	5462	34	2	113.84	0.100
11742	5462	41	1	61.13	0.000
11743	5463	2	1	44.34	0.000
11744	5463	13	3	12.21	0.050
11745	5464	34	2	109.53	0.150
11746	5464	25	5	79.76	0.100
11747	5464	29	5	65.93	0.000
11748	5465	21	4	238.10	0.000
11749	5465	16	2	84.69	0.000
11750	5465	32	3	85.32	0.100
11751	5465	27	5	10.95	0.000
11752	5466	29	3	68.36	0.000
11753	5466	17	4	37.85	0.000
11754	5466	46	3	13.76	0.000
11755	5466	1	4	533.88	0.000
11756	5467	40	5	50.48	0.150
11757	5467	9	2	101.20	0.000
11758	5468	27	1	12.39	0.000
11759	5469	8	3	30.80	0.150
11760	5469	13	1	11.10	0.000
11761	5469	12	1	129.86	0.000
11762	5469	46	1	15.22	0.150
11763	5470	3	3	246.94	0.050
11764	5471	19	5	248.39	0.000
11765	5471	28	5	12.60	0.050
11766	5471	22	4	202.16	0.050
11767	5472	3	5	239.46	0.000
11768	5473	22	1	214.78	0.150
11769	5473	21	4	228.91	0.050
11770	5474	44	1	15.64	0.100
11771	5474	13	5	10.69	0.150
11772	5474	31	3	92.77	0.050
11773	5474	40	4	51.93	0.050
11774	5475	41	5	61.94	0.050
11775	5475	26	2	29.02	0.050
11776	5475	40	3	55.52	0.000
11777	5475	46	4	15.31	0.050
11778	5476	35	4	47.22	0.150
11779	5476	37	1	76.12	0.000
11780	5476	24	1	54.87	0.000
11781	5477	45	1	9.37	0.050
11782	5478	11	5	58.00	0.050
11783	5478	1	1	560.60	0.000
11784	5479	16	1	80.17	0.000
11785	5479	17	4	37.54	0.150
11786	5479	39	2	75.46	0.150
11787	5479	48	2	16.23	0.000
11788	5480	19	2	220.69	0.050
11789	5480	7	2	204.21	0.000
11790	5481	47	3	10.22	0.150
11791	5482	43	4	14.81	0.000
11792	5482	47	3	9.88	0.000
11793	5483	46	3	13.58	0.000
11794	5483	31	3	91.75	0.000
11795	5484	41	2	64.83	0.000
11796	5484	43	3	14.04	0.000
11797	5485	10	4	15.73	0.100
11798	5485	34	5	105.26	0.000
11799	5485	11	4	61.60	0.100
11800	5486	26	2	28.69	0.000
11801	5486	21	4	232.03	0.100
11802	5486	39	2	78.42	0.100
11803	5486	27	2	10.90	0.050
11804	5487	7	2	202.66	0.050
11805	5487	9	2	101.63	0.050
11806	5487	34	2	120.61	0.000
11807	5488	21	5	242.31	0.150
11808	5488	24	2	50.39	0.000
11809	5488	11	5	56.27	0.050
11810	5489	44	5	16.18	0.050
11811	5489	30	2	46.18	0.100
11812	5489	32	5	86.75	0.100
11813	5489	6	1	565.13	0.000
11814	5490	26	2	28.50	0.100
11815	5491	12	3	136.58	0.150
11816	5491	36	4	69.15	0.000
11817	5491	21	5	230.91	0.100
11818	5491	4	4	218.37	0.000
11819	5492	21	1	227.79	0.000
11820	5492	34	3	105.71	0.000
11821	5493	25	4	72.82	0.000
11822	5494	15	4	96.19	0.150
11823	5494	4	4	213.93	0.000
11824	5494	1	4	561.36	0.000
11825	5495	21	1	228.36	0.000
11826	5495	37	4	75.03	0.150
11827	5496	29	5	70.58	0.050
11828	5497	27	3	11.67	0.100
11829	5498	34	5	113.72	0.000
11830	5499	20	5	11.19	0.100
11831	5499	46	5	14.68	0.150
11832	5500	9	1	103.26	0.050
11833	5500	34	1	111.83	0.000
11834	5501	29	4	65.11	0.000
11835	5501	3	1	257.03	0.000
11836	5502	45	2	8.59	0.000
11837	5503	36	3	68.66	0.000
11838	5503	27	5	10.94	0.000
11839	5504	7	2	214.02	0.000
11840	5504	46	5	14.12	0.050
11841	5505	48	3	15.66	0.050
11842	5505	32	3	83.30	0.000
11843	5506	40	1	52.19	0.000
11844	5506	25	2	79.75	0.000
11845	5506	35	2	44.16	0.150
11846	5507	30	1	52.01	0.050
11847	5507	7	2	207.98	0.050
11848	5507	29	4	62.47	0.000
11849	5508	10	2	16.41	0.000
11850	5508	32	3	86.90	0.000
11851	5509	14	3	33.19	0.150
11852	5510	30	4	46.10	0.000
11853	5511	37	2	70.65	0.000
11854	5511	25	1	71.64	0.000
11855	5511	13	4	11.21	0.000
11856	5512	4	5	223.71	0.150
11857	5512	32	5	92.45	0.050
11858	5512	34	3	106.27	0.000
11859	5513	36	1	65.53	0.000
11860	5514	32	5	81.00	0.050
11861	5515	3	1	247.24	0.050
11862	5515	29	2	63.24	0.050
11863	5515	47	2	9.24	0.000
11864	5515	27	4	10.83	0.050
11865	5516	33	5	67.61	0.000
11866	5516	22	2	192.37	0.150
11867	5516	37	1	72.88	0.000
11868	5516	32	5	85.48	0.000
11869	5517	40	5	50.28	0.150
11870	5517	24	1	56.81	0.150
11871	5517	10	2	15.51	0.000
11872	5517	36	4	61.43	0.150
11873	5518	32	3	81.32	0.150
11874	5518	25	4	72.35	0.000
11875	5519	1	5	559.67	0.000
11876	5519	7	4	225.83	0.100
11877	5519	42	5	8.90	0.100
11878	5520	26	3	28.57	0.050
11879	5521	15	2	92.01	0.050
11880	5521	20	1	11.92	0.050
11881	5522	7	5	201.73	0.000
11882	5522	32	3	87.16	0.150
11883	5522	16	5	79.25	0.100
11884	5522	30	5	47.85	0.150
11885	5523	38	4	55.70	0.000
11886	5523	2	3	48.27	0.000
11887	5524	14	2	38.04	0.100
11888	5525	19	1	256.39	0.050
11889	5525	47	3	9.22	0.000
11890	5525	25	5	80.53	0.000
11891	5526	28	4	11.30	0.000
11892	5527	17	1	41.07	0.100
11893	5527	12	5	118.25	0.000
11894	5528	48	3	17.61	0.150
11895	5528	4	2	199.69	0.150
11896	5529	20	3	12.07	0.050
11897	5529	32	2	90.95	0.150
11898	5529	26	5	27.59	0.150
11899	5530	6	4	638.58	0.100
11900	5530	4	4	206.95	0.150
11901	5530	29	2	65.33	0.150
11902	5530	48	1	15.37	0.150
11903	5531	24	2	54.72	0.000
11904	5531	6	2	615.11	0.100
11905	5531	22	3	220.75	0.000
11906	5532	48	2	16.24	0.000
11907	5533	26	5	28.63	0.150
11908	5533	21	3	243.82	0.000
11909	5533	47	2	9.14	0.000
11910	5533	48	1	17.39	0.050
11911	5534	24	5	54.40	0.000
11912	5534	36	3	68.72	0.100
11913	5535	48	2	17.06	0.000
11914	5535	18	2	87.97	0.100
11915	5535	19	4	245.50	0.050
11916	5536	33	5	61.36	0.000
11917	5536	27	1	11.76	0.000
11918	5536	24	2	51.66	0.000
11919	5536	45	3	9.29	0.000
11920	5537	31	5	94.55	0.000
11921	5537	3	3	266.52	0.100
11922	5537	23	2	100.74	0.150
11923	5538	19	4	220.76	0.050
11924	5538	43	5	13.72	0.000
11925	5539	20	4	11.19	0.000
11926	5539	7	2	230.14	0.000
11927	5540	13	5	11.95	0.100
11928	5541	9	4	111.02	0.100
11929	5542	30	2	45.77	0.100
11930	5542	32	3	79.85	0.000
11931	5543	47	5	9.07	0.000
11932	5544	16	1	82.75	0.000
11933	5544	11	1	60.50	0.000
11934	5545	42	5	9.15	0.000
11935	5545	33	1	67.37	0.100
11936	5546	9	3	105.50	0.100
11937	5547	15	4	104.86	0.150
11938	5548	16	4	89.64	0.000
11939	5549	25	3	75.04	0.050
11940	5550	27	3	10.87	0.050
11941	5550	2	1	44.44	0.000
11942	5551	45	4	8.23	0.000
11943	5551	40	1	52.22	0.100
11944	5551	14	1	37.47	0.000
11945	5551	15	1	92.09	0.100
11946	5552	14	4	37.42	0.100
11947	5552	13	5	11.45	0.000
11948	5552	29	5	70.18	0.100
11949	5552	36	4	63.71	0.150
11950	5553	19	4	252.39	0.150
11951	5553	12	2	134.41	0.050
11952	5554	16	2	83.17	0.150
11953	5554	1	3	572.96	0.000
11954	5555	45	2	8.70	0.000
11955	5555	21	3	226.32	0.000
11956	5555	13	1	11.84	0.050
11957	5555	47	5	8.99	0.000
11958	5556	41	4	60.15	0.000
11959	5556	19	5	226.88	0.000
11960	5556	46	3	13.94	0.000
11961	5557	10	5	17.91	0.000
11962	5558	9	5	107.09	0.000
11963	5559	20	5	11.76	0.100
11964	5559	47	4	9.83	0.150
11965	5560	20	1	10.96	0.000
11966	5561	34	1	109.73	0.100
11967	5561	41	3	61.10	0.100
11968	5561	23	2	101.28	0.000
11969	5561	36	5	66.99	0.000
11970	5562	15	5	96.12	0.050
11971	5562	6	4	626.50	0.000
11972	5563	33	4	62.25	0.000
11973	5563	35	5	44.88	0.100
11974	5563	3	3	247.09	0.000
11975	5563	18	2	84.63	0.000
11976	5564	4	2	225.09	0.100
11977	5565	10	5	15.57	0.050
11978	5565	11	4	58.49	0.100
11979	5565	29	4	64.77	0.100
11980	5566	7	2	217.50	0.150
11981	5566	12	5	122.86	0.100
11982	5566	3	1	239.88	0.050
11983	5567	18	5	86.32	0.150
11984	5567	8	5	28.43	0.100
11985	5567	38	2	58.43	0.150
11986	5568	17	4	40.17	0.000
11987	5568	16	5	79.38	0.100
11988	5568	26	5	29.45	0.050
11989	5569	12	1	122.28	0.000
11990	5570	10	4	17.60	0.000
11991	5571	7	2	233.95	0.150
11992	5571	27	1	12.50	0.000
11993	5572	28	3	11.12	0.000
11994	5573	15	3	104.25	0.000
11995	5573	44	1	16.10	0.150
11996	5574	11	4	65.59	0.000
11997	5574	26	5	27.66	0.000
11998	5574	1	2	564.15	0.100
11999	5575	2	4	46.45	0.000
12000	5575	33	1	60.26	0.000
12001	5576	24	4	49.97	0.100
12002	5576	39	1	76.22	0.000
12003	5576	20	5	11.23	0.050
12004	5576	32	4	84.44	0.000
12005	5577	19	2	235.35	0.150
12006	5577	20	4	12.36	0.000
12007	5578	29	2	71.54	0.050
12008	5578	12	3	122.43	0.150
12009	5578	40	2	54.46	0.100
12010	5579	24	1	50.74	0.050
12011	5579	33	2	64.97	0.150
12012	5579	35	4	46.74	0.150
12013	5580	15	2	94.26	0.000
12014	5580	22	4	204.27	0.100
12015	5581	14	4	35.39	0.050
12016	5581	47	5	10.00	0.050
12017	5582	16	2	88.96	0.150
12018	5583	37	5	76.61	0.100
12019	5584	41	5	60.74	0.000
12020	5585	13	4	10.76	0.050
12021	5586	27	4	10.78	0.000
12022	5587	28	3	12.65	0.150
12023	5587	7	4	214.29	0.050
12024	5588	12	3	119.54	0.000
12025	5589	38	1	54.26	0.000
12026	5590	23	1	106.84	0.000
12027	5591	34	5	108.33	0.150
12028	5591	16	4	84.57	0.000
12029	5591	27	2	11.73	0.050
12030	5592	39	1	75.17	0.150
12031	5593	21	2	231.18	0.000
12032	5593	24	5	54.42	0.150
12033	5594	48	5	15.56	0.100
12034	5594	8	3	30.42	0.000
12035	5595	39	3	78.05	0.150
12036	5595	48	3	15.55	0.100
12037	5595	23	2	102.43	0.050
12038	5596	1	3	530.06	0.150
12039	5596	47	2	9.28	0.000
12040	5596	21	2	232.06	0.150
12041	5597	38	2	55.67	0.150
12042	5597	25	4	71.84	0.100
12043	5598	24	4	54.99	0.150
12044	5598	12	5	120.81	0.150
12045	5599	21	2	219.42	0.000
12046	5600	42	2	8.21	0.000
12047	5601	16	1	77.94	0.000
12048	5601	36	3	67.67	0.000
12049	5602	13	5	11.51	0.000
12050	5602	24	2	55.94	0.000
12051	5603	32	5	88.15	0.100
12052	5603	4	1	214.91	0.150
12053	5603	35	3	47.84	0.000
12054	5603	16	5	77.55	0.000
12055	5604	4	4	200.50	0.100
12056	5604	37	4	77.64	0.000
12057	5604	15	3	100.09	0.150
12058	5605	12	5	131.40	0.000
12059	5606	42	5	8.25	0.000
12060	5607	37	4	77.59	0.100
12061	5607	29	4	62.91	0.000
12062	5607	1	1	596.92	0.000
12063	5608	28	5	12.16	0.000
12064	5608	29	2	66.40	0.050
12065	5608	27	1	12.07	0.000
12066	5608	18	5	90.67	0.050
12067	5609	8	1	29.33	0.050
12068	5609	29	5	69.19	0.000
12069	5609	16	5	88.19	0.150
12070	5610	11	2	58.97	0.100
12071	5610	24	2	53.34	0.000
12072	5610	17	1	39.20	0.100
12073	5610	32	4	80.99	0.100
12074	5611	14	3	37.52	0.000
12075	5612	16	1	87.20	0.150
12076	5612	46	4	15.39	0.050
12077	5613	26	4	31.08	0.000
12078	5614	37	4	77.11	0.050
12079	5615	16	5	84.66	0.150
12080	5615	19	1	220.51	0.150
12081	5615	18	3	96.22	0.150
12082	5616	4	4	212.85	0.050
12083	5617	23	4	109.49	0.000
12084	5617	35	1	49.13	0.000
12085	5617	40	5	55.67	0.100
12086	5618	10	5	17.64	0.000
12087	5619	7	1	214.94	0.050
12088	5620	45	2	9.17	0.100
12089	5620	7	3	233.34	0.000
12090	5620	3	4	261.19	0.050
12091	5620	8	2	30.93	0.100
12092	5621	48	5	15.59	0.000
12093	5621	46	5	14.97	0.150
12094	5622	1	5	590.33	0.150
12095	5622	34	3	120.50	0.000
12096	5622	38	3	55.36	0.000
12097	5623	17	3	35.55	0.100
12098	5623	31	5	97.31	0.000
12099	5623	14	4	37.51	0.150
12100	5624	31	3	98.16	0.100
12101	5624	6	2	609.24	0.000
12102	5624	2	3	43.58	0.000
12103	5625	25	1	69.52	0.050
12104	5625	42	5	9.16	0.000
12105	5626	11	5	58.79	0.100
12106	5626	37	1	72.25	0.150
12107	5627	32	2	90.56	0.000
12108	5627	36	1	65.47	0.100
12109	5628	8	4	29.06	0.000
12110	5628	13	1	11.60	0.150
12111	5628	27	2	12.32	0.150
12112	5629	16	5	84.47	0.100
12113	5630	25	4	79.22	0.000
12114	5631	7	3	208.30	0.000
12115	5631	42	4	8.12	0.000
12116	5631	40	5	55.48	0.100
12117	5632	46	3	15.28	0.150
12118	5633	3	5	269.20	0.000
12119	5634	26	1	30.70	0.000
12120	5634	47	5	9.21	0.100
12121	5634	35	2	43.54	0.150
12122	5634	39	5	73.36	0.050
12123	5635	6	5	600.63	0.050
12124	5636	8	1	32.20	0.150
12125	5636	23	4	109.97	0.150
12126	5636	36	5	64.70	0.000
12127	5637	35	5	48.88	0.050
12128	5637	34	3	107.49	0.050
12129	5637	23	5	110.65	0.150
12130	5637	42	4	9.05	0.150
12131	5638	46	4	13.59	0.050
12132	5638	2	5	48.47	0.000
12133	5638	39	1	72.86	0.000
12134	5639	9	5	110.81	0.000
12135	5640	11	1	63.97	0.000
12136	5640	40	1	56.54	0.100
12137	5641	30	5	50.42	0.150
12138	5641	2	1	48.34	0.000
12139	5642	47	2	9.84	0.000
12140	5642	27	3	11.63	0.150
12141	5643	14	5	33.83	0.150
12142	5644	38	1	54.38	0.050
12143	5644	31	2	101.04	0.000
12144	5644	3	4	239.98	0.100
12145	5644	27	2	10.92	0.100
12146	5645	39	1	78.09	0.100
12147	5645	22	4	198.88	0.000
12148	5645	42	5	8.89	0.000
12149	5645	8	4	27.94	0.100
12150	5646	27	1	11.11	0.000
12151	5646	33	1	68.30	0.100
12152	5646	20	5	11.00	0.100
12153	5646	12	5	128.47	0.050
12154	5647	14	4	33.16	0.100
12155	5648	43	4	13.56	0.000
12156	5648	44	3	16.56	0.050
12157	5649	34	1	107.73	0.150
12158	5649	10	3	15.55	0.150
12159	5650	45	2	8.46	0.050
12160	5650	4	2	227.97	0.050
12161	5650	38	1	59.30	0.000
12162	5651	47	5	9.51	0.000
12163	5651	34	3	118.62	0.000
12164	5652	7	2	205.29	0.000
12165	5652	4	4	208.33	0.150
12166	5653	47	1	10.23	0.000
12167	5653	30	1	48.26	0.000
12168	5653	25	3	72.46	0.000
12169	5654	35	3	43.16	0.050
12170	5654	25	1	76.69	0.000
12171	5654	32	5	82.51	0.000
12172	5654	9	4	109.72	0.000
12173	5655	22	3	211.79	0.050
12174	5655	1	2	527.96	0.000
12175	5655	23	4	101.93	0.050
12176	5656	23	2	99.99	0.000
12177	5656	27	1	12.25	0.000
12178	5657	3	2	243.78	0.000
12179	5657	25	2	70.34	0.000
12180	5658	11	5	57.11	0.100
12181	5659	13	4	11.07	0.000
12182	5659	22	5	201.25	0.100
12183	5659	28	2	12.68	0.000
12184	5659	11	5	61.63	0.000
12185	5660	30	4	52.07	0.000
12186	5660	35	4	46.50	0.150
12187	5661	7	1	212.15	0.000
12188	5661	16	5	79.65	0.000
12189	5662	20	3	11.45	0.100
12190	5662	44	4	15.88	0.000
12191	5663	33	5	63.33	0.000
12192	5664	32	5	84.94	0.150
12193	5664	20	5	12.18	0.150
12194	5665	4	3	199.23	0.100
12195	5665	44	2	16.59	0.150
12196	5666	13	3	10.70	0.050
12197	5666	9	2	113.81	0.000
12198	5667	35	5	46.55	0.000
12199	5667	14	4	32.85	0.000
12200	5667	6	1	587.86	0.100
12201	5668	18	1	89.37	0.050
12202	5668	6	3	634.24	0.050
12203	5669	6	3	607.25	0.000
12204	5670	14	2	32.72	0.000
12205	5670	10	3	15.83	0.150
12206	5670	46	2	15.66	0.000
12207	5670	13	4	10.72	0.100
12208	5671	46	2	13.80	0.000
12209	5672	23	1	106.24	0.000
12210	5673	9	1	100.59	0.000
12211	5674	29	4	70.91	0.000
12212	5675	18	4	83.98	0.100
12213	5675	16	1	89.08	0.000
12214	5675	47	1	9.00	0.000
12215	5675	12	4	123.30	0.000
12216	5676	29	4	71.35	0.000
12217	5676	4	2	223.51	0.100
12218	5676	19	3	223.45	0.150
12219	5677	46	3	14.63	0.000
12220	5677	48	5	17.30	0.150
12221	5677	45	1	9.14	0.150
12222	5678	46	2	13.77	0.000
12223	5678	3	2	262.60	0.050
12224	5679	26	3	29.80	0.150
12225	5680	20	3	12.41	0.000
12226	5680	42	1	9.27	0.100
12227	5680	39	3	78.23	0.150
12228	5681	44	2	15.78	0.050
12229	5682	29	5	62.94	0.000
12230	5683	47	2	10.06	0.000
12231	5684	12	2	133.64	0.100
12232	5685	10	5	18.00	0.100
12233	5685	9	5	108.32	0.000
12234	5686	7	3	233.34	0.000
12235	5686	40	2	55.86	0.050
12236	5686	38	3	56.52	0.050
12237	5687	45	2	8.51	0.050
12238	5687	10	4	17.12	0.000
12239	5688	40	5	53.65	0.100
12240	5688	27	1	12.40	0.050
12241	5688	21	3	227.48	0.000
12242	5689	28	3	12.84	0.100
12243	5690	41	4	61.47	0.150
12244	5691	45	4	8.26	0.000
12245	5691	6	4	604.99	0.100
12246	5692	38	5	54.18	0.100
12247	5692	37	3	72.12	0.000
12248	5693	4	1	226.20	0.100
12249	5693	23	4	108.10	0.000
12250	5693	37	5	68.20	0.150
12251	5693	6	5	575.03	0.000
12252	5694	33	3	61.47	0.100
12253	5694	18	4	86.71	0.050
12254	5695	17	1	36.03	0.100
12255	5695	8	4	29.16	0.050
12256	5695	16	1	79.20	0.150
12257	5696	7	1	225.44	0.000
12258	5696	43	4	15.18	0.100
12259	5696	11	5	59.17	0.000
12260	5696	10	3	17.19	0.100
12261	5697	40	1	49.17	0.000
12262	5697	39	1	73.30	0.000
12263	5697	25	2	69.96	0.000
12264	5698	48	1	15.19	0.150
12265	5698	43	1	15.16	0.100
12266	5699	27	3	11.68	0.000
12267	5699	25	1	77.88	0.000
12268	5700	3	5	256.14	0.000
12269	5700	4	3	219.29	0.000
12270	5701	40	4	56.70	0.150
12271	5701	19	3	253.02	0.000
12272	5702	19	3	233.93	0.100
12273	5702	30	5	50.35	0.000
12274	5703	25	4	77.48	0.000
12275	5704	26	4	27.69	0.000
12276	5705	13	1	11.54	0.000
12277	5705	17	5	40.02	0.050
12278	5705	39	2	77.84	0.000
12279	5706	14	3	36.25	0.050
12280	5707	37	3	68.32	0.000
12281	5708	33	5	68.02	0.150
12282	5709	7	1	227.85	0.000
12283	5709	37	4	69.76	0.000
12284	5709	18	2	90.47	0.100
12285	5710	40	1	55.47	0.050
12286	5710	22	1	214.84	0.050
12287	5710	48	3	16.02	0.100
12288	5711	29	3	69.32	0.000
12289	5712	41	3	67.98	0.050
12290	5713	39	5	74.70	0.050
12291	5714	30	2	49.84	0.050
12292	5715	32	4	86.73	0.000
12293	5716	46	5	15.49	0.000
12294	5716	45	4	8.62	0.000
12295	5716	26	1	28.22	0.050
12296	5717	7	2	205.07	0.100
12297	5718	1	2	553.96	0.000
12298	5718	19	5	230.88	0.000
12299	5718	39	5	80.50	0.000
12300	5718	33	1	65.02	0.000
12301	5719	14	4	35.90	0.000
12302	5720	29	4	71.34	0.100
12303	5720	35	5	49.55	0.000
12304	5720	38	3	59.26	0.000
12305	5721	47	5	9.37	0.000
12306	5722	6	2	585.73	0.100
12307	5722	48	5	15.37	0.000
12308	5723	4	1	213.38	0.100
12309	5723	8	2	31.98	0.000
12310	5724	20	1	11.31	0.050
12311	5724	41	3	62.38	0.000
12312	5725	45	5	8.76	0.100
12313	5725	43	3	15.32	0.150
12314	5726	12	4	132.21	0.000
12315	5726	44	3	18.00	0.000
12316	5726	15	2	92.00	0.100
12317	5727	15	4	98.94	0.000
12318	5727	23	1	105.72	0.000
12319	5727	21	3	246.33	0.000
12320	5727	2	3	45.28	0.050
12321	5728	1	5	603.36	0.050
12322	5728	15	4	99.89	0.000
12323	5728	8	1	32.18	0.000
12324	5729	34	5	105.87	0.100
12325	5730	17	3	38.03	0.000
12326	5730	1	1	606.57	0.000
12327	5731	39	5	80.87	0.100
12328	5732	3	1	276.61	0.000
12329	5733	30	3	50.99	0.150
12330	5733	18	4	85.07	0.000
12331	5733	15	2	92.49	0.050
12332	5734	32	2	89.09	0.000
12333	5735	10	3	16.06	0.000
12334	5735	20	2	11.46	0.000
12335	5736	17	1	39.11	0.050
12336	5737	46	5	15.61	0.000
12337	5738	34	1	115.72	0.000
12338	5738	27	3	12.03	0.000
12339	5738	35	2	45.61	0.000
12340	5739	1	2	553.46	0.050
12341	5739	46	2	13.77	0.000
12342	5739	19	1	241.39	0.000
12343	5740	18	5	93.06	0.100
12344	5741	32	2	90.20	0.050
12345	5741	44	2	16.83	0.000
12346	5742	36	1	68.42	0.100
12347	5743	11	3	62.61	0.050
12348	5744	23	2	110.26	0.100
12349	5744	40	5	52.76	0.100
12350	5745	27	2	11.21	0.000
12351	5746	33	5	68.97	0.050
12352	5746	14	2	36.90	0.150
12353	5747	36	1	69.95	0.000
12354	5747	25	3	76.21	0.100
12355	5747	30	1	47.24	0.000
12356	5748	18	4	87.98	0.000
12357	5748	20	3	11.68	0.000
12358	5749	33	1	65.57	0.000
12359	5749	7	2	211.97	0.000
12360	5749	3	3	267.75	0.150
12361	5750	28	2	11.75	0.000
12362	5750	36	3	66.63	0.050
12363	5751	4	1	208.37	0.100
12364	5751	34	5	115.40	0.000
12365	5751	7	5	221.82	0.000
12366	5752	34	4	120.97	0.150
12367	5752	19	5	253.32	0.000
12368	5752	18	5	87.35	0.050
12369	5753	44	1	17.88	0.050
12370	5753	7	3	223.97	0.000
12371	5753	16	2	89.10	0.050
12372	5753	32	1	88.44	0.100
12373	5754	35	3	48.39	0.100
12374	5755	35	5	43.70	0.000
12375	5755	32	1	82.04	0.000
12376	5756	39	4	74.74	0.000
12377	5756	7	3	221.96	0.150
12378	5757	3	5	247.82	0.150
12379	5757	1	2	552.69	0.000
12380	5758	26	2	28.20	0.000
12381	5758	3	4	268.50	0.000
12382	5759	17	1	35.60	0.150
12383	5760	16	5	85.21	0.000
12384	5760	45	3	8.95	0.050
12385	5760	23	3	106.58	0.000
12386	5761	47	3	9.00	0.000
12387	5761	29	2	65.54	0.150
12388	5762	20	1	10.83	0.150
12389	5762	30	2	50.25	0.000
12390	5762	39	3	79.61	0.050
12391	5763	11	5	56.83	0.150
12392	5764	8	5	31.29	0.000
12393	5764	22	4	214.27	0.000
12394	5765	8	5	27.85	0.000
12395	5766	32	2	87.25	0.050
12396	5766	17	1	39.68	0.050
12397	5766	34	4	121.69	0.000
12398	5767	4	3	203.10	0.000
12399	5767	34	5	107.96	0.000
12400	5767	6	2	614.51	0.050
12401	5767	14	4	33.98	0.050
12402	5768	46	1	15.41	0.100
12403	5768	48	4	16.85	0.000
12404	5769	46	2	14.58	0.000
12405	5769	35	4	46.17	0.000
12406	5770	28	2	12.00	0.000
12407	5771	19	4	252.88	0.000
12408	5772	2	4	48.79	0.000
12409	5772	15	5	101.85	0.100
12410	5773	8	1	31.96	0.000
12411	5773	41	1	66.90	0.000
12412	5773	7	5	216.80	0.000
12413	5774	43	4	14.29	0.100
12414	5774	9	5	116.74	0.100
12415	5774	46	2	15.07	0.000
12416	5775	21	1	226.02	0.000
12417	5775	23	4	105.09	0.050
12418	5776	42	2	8.83	0.000
12419	5776	9	1	103.80	0.000
12420	5777	46	5	13.87	0.150
12421	5777	15	1	93.09	0.100
12422	5777	38	3	57.72	0.150
12423	5778	39	1	79.45	0.000
12424	5778	45	5	8.88	0.000
12425	5778	23	4	109.27	0.000
12426	5778	14	1	33.35	0.000
12427	5779	9	3	111.46	0.150
12428	5780	3	4	269.46	0.150
12429	5781	42	1	9.16	0.150
12430	5781	10	3	17.61	0.100
12431	5782	29	1	64.05	0.150
12432	5782	46	5	13.81	0.050
12433	5783	12	4	135.91	0.050
12434	5783	31	2	97.97	0.050
12435	5783	38	1	53.74	0.050
12436	5784	40	2	50.39	0.050
12437	5784	32	5	83.38	0.050
12438	5785	36	3	64.83	0.050
12439	5785	9	2	104.16	0.100
12440	5785	10	4	15.82	0.100
12441	5786	48	5	16.96	0.000
12442	5786	26	3	30.00	0.150
12443	5786	47	3	9.94	0.000
12444	5787	17	5	38.24	0.000
12445	5787	38	3	58.63	0.050
12446	5788	11	4	60.56	0.000
12447	5789	48	2	15.59	0.150
12448	5789	14	1	33.82	0.000
12449	5789	9	1	104.23	0.050
12450	5789	17	2	39.91	0.000
12451	5790	32	2	82.07	0.100
12452	5790	36	2	62.52	0.000
12453	5790	4	1	200.77	0.150
12454	5790	25	2	75.39	0.050
12455	5791	16	1	77.85	0.150
12456	5791	19	5	255.97	0.000
12457	5792	31	2	95.44	0.000
12458	5793	10	2	15.95	0.000
12459	5793	36	3	67.36	0.000
12460	5793	4	4	199.59	0.000
12461	5793	1	1	572.97	0.000
12462	5794	47	5	9.10	0.000
12463	5794	45	4	9.33	0.100
12464	5794	8	5	31.85	0.000
12465	5794	18	2	82.87	0.100
12466	5795	8	5	28.72	0.000
12467	5795	46	4	14.66	0.000
12468	5796	3	2	273.81	0.000
12469	5796	8	4	28.99	0.000
12470	5796	18	4	94.31	0.000
12471	5796	16	5	85.45	0.150
12472	5797	8	1	28.60	0.000
12473	5797	44	1	15.78	0.050
12474	5797	15	3	93.21	0.050
12475	5797	32	1	81.98	0.100
12476	5798	21	3	241.87	0.000
12477	5798	20	1	11.69	0.000
12478	5799	42	1	8.33	0.100
12479	5799	44	2	16.79	0.000
12480	5799	13	4	11.59	0.000
12481	5799	46	2	13.95	0.000
12482	5800	20	3	11.60	0.150
12483	5801	44	5	16.56	0.000
12484	5802	13	1	11.10	0.000
12485	5803	45	3	9.11	0.050
12486	5803	43	2	15.42	0.050
12487	5803	23	3	107.79	0.000
12488	5804	24	1	53.78	0.000
12489	5804	20	2	11.92	0.000
12490	5805	42	4	8.10	0.050
12491	5806	7	2	222.18	0.000
12492	5807	44	4	16.13	0.000
12493	5807	16	2	83.13	0.000
12494	5807	10	2	15.52	0.000
12495	5807	41	1	64.85	0.150
12496	5808	4	2	210.63	0.000
12497	5808	19	3	252.81	0.050
12498	5808	10	3	16.61	0.000
12499	5809	31	3	96.84	0.000
12500	5809	17	3	37.66	0.000
12501	5809	2	4	47.45	0.000
12502	5809	7	1	210.62	0.000
12503	5810	17	2	39.80	0.000
12504	5811	4	4	220.49	0.000
12505	5811	28	2	11.34	0.150
12506	5812	11	1	56.86	0.050
12507	5812	43	3	14.47	0.000
12508	5812	34	3	121.34	0.050
12509	5813	43	4	15.25	0.100
12510	5813	14	2	36.98	0.150
12511	5814	26	5	28.27	0.050
12512	5814	19	5	226.15	0.050
12513	5814	46	5	15.31	0.000
12514	5815	11	2	59.42	0.000
12515	5816	33	2	66.77	0.000
12516	5816	19	4	240.53	0.000
12517	5816	11	3	62.20	0.000
12518	5817	31	2	95.58	0.100
12519	5817	2	2	46.84	0.000
12520	5817	33	5	63.10	0.000
12521	5817	11	5	57.73	0.150
12522	5818	7	1	228.61	0.000
12523	5818	29	3	64.63	0.000
12524	5818	21	4	237.44	0.050
12525	5819	23	2	107.94	0.100
12526	5819	43	3	13.79	0.000
12527	5819	4	1	214.90	0.050
12528	5820	17	4	36.54	0.100
12529	5820	44	1	18.09	0.000
12530	5820	6	1	594.42	0.000
12531	5820	16	1	88.90	0.100
12532	5821	32	3	92.14	0.000
12533	5821	48	2	16.01	0.000
12534	5821	45	4	9.34	0.000
12535	5821	25	1	75.28	0.000
12536	5822	36	3	66.40	0.000
12537	5822	8	2	30.75	0.100
12538	5822	2	4	44.67	0.000
12539	5822	7	3	229.43	0.100
12540	5823	42	1	9.13	0.100
12541	5823	16	3	88.47	0.000
12542	5824	20	3	12.19	0.000
12543	5824	48	2	17.64	0.150
12544	5824	15	4	101.83	0.000
12545	5824	13	1	10.82	0.150
12546	5825	37	3	70.64	0.100
12547	5825	17	2	39.57	0.150
12548	5825	7	2	206.45	0.000
12549	5825	43	1	14.69	0.000
12550	5826	27	5	11.39	0.000
12551	5826	11	1	60.76	0.150
12552	5826	12	4	132.10	0.000
12553	5827	48	2	16.90	0.000
12554	5827	9	1	107.81	0.100
12555	5827	20	4	11.47	0.100
12556	5828	15	2	97.71	0.100
12557	5829	19	1	229.27	0.150
12558	5829	44	4	16.16	0.000
12559	5830	45	1	8.59	0.100
12560	5830	22	5	200.51	0.150
12561	5830	10	1	15.61	0.100
12562	5831	33	3	66.66	0.100
12563	5831	7	5	202.42	0.100
12564	5831	26	1	29.44	0.050
12565	5831	4	3	225.56	0.000
12566	5832	48	3	17.01	0.000
12567	5832	6	5	613.54	0.100
12568	5832	20	4	11.92	0.100
12569	5832	8	3	30.95	0.000
12570	5833	30	5	52.68	0.100
12571	5834	6	2	632.07	0.050
12572	5834	36	1	61.35	0.000
12573	5834	28	5	12.78	0.000
12574	5834	23	3	111.14	0.050
12575	5835	27	1	11.37	0.100
12576	5835	44	1	17.08	0.000
12577	5836	31	3	93.38	0.100
12578	5836	7	2	204.83	0.000
12579	5837	6	3	630.69	0.100
12580	5837	1	5	539.67	0.100
12581	5838	24	3	56.18	0.000
12582	5838	26	4	30.66	0.100
12583	5838	18	2	82.94	0.000
12584	5838	38	1	56.86	0.100
12585	5839	16	1	79.32	0.000
12586	5840	46	2	14.67	0.150
12587	5840	36	4	68.74	0.000
12588	5841	43	3	14.02	0.000
12589	5841	33	4	68.24	0.000
12590	5841	19	5	245.80	0.150
12591	5842	6	5	627.33	0.100
12592	5842	12	3	136.52	0.150
12593	5842	32	4	86.70	0.000
12594	5843	21	2	223.97	0.150
12595	5844	23	1	111.40	0.100
12596	5844	4	2	204.53	0.000
12597	5845	10	5	15.86	0.100
12598	5845	13	4	11.36	0.000
12599	5845	27	2	10.91	0.000
12600	5846	32	4	80.61	0.000
12601	5847	48	1	16.13	0.050
12602	5848	2	5	45.86	0.000
12603	5849	40	5	52.77	0.050
12604	5849	39	1	78.15	0.000
12605	5850	20	3	12.13	0.000
12606	5850	34	1	114.04	0.050
12607	5850	37	2	69.19	0.150
12608	5850	47	1	9.23	0.000
12609	5851	41	1	61.64	0.150
12610	5851	44	3	16.08	0.100
12611	5852	46	1	14.49	0.000
12612	5853	36	4	65.33	0.000
12613	5853	38	1	56.55	0.150
12614	5854	17	3	39.02	0.000
12615	5855	16	2	80.57	0.000
12616	5855	42	4	8.46	0.000
12617	5855	35	3	42.78	0.100
12618	5855	31	4	97.50	0.050
12619	5856	23	5	109.88	0.150
12620	5856	30	1	51.71	0.000
12621	5856	35	1	43.34	0.000
12622	5857	23	1	112.71	0.000
12623	5858	45	3	9.14	0.100
12624	5859	9	5	109.21	0.000
12625	5860	48	5	17.00	0.100
12626	5860	10	4	16.25	0.050
12627	5860	13	2	10.80	0.000
12628	5860	39	5	72.22	0.000
12629	5861	7	2	224.83	0.000
12630	5861	2	4	48.32	0.100
12631	5862	39	3	80.56	0.150
12632	5863	39	5	75.16	0.050
12633	5864	44	5	16.18	0.000
12634	5865	44	2	16.72	0.100
12635	5865	48	4	15.94	0.000
12636	5866	6	1	634.93	0.000
12637	5866	45	4	8.67	0.100
12638	5867	11	2	56.92	0.000
12639	5867	16	3	77.66	0.000
12640	5868	13	3	11.23	0.050
12641	5868	29	1	61.88	0.150
12642	5869	1	5	572.02	0.000
12643	5870	10	5	16.09	0.000
12644	5871	43	3	14.50	0.000
12645	5871	24	1	52.31	0.000
12646	5872	8	1	30.03	0.000
12647	5872	29	4	63.64	0.000
12648	5872	14	5	33.02	0.000
12649	5873	42	4	8.14	0.050
12650	5874	31	4	96.52	0.150
12651	5874	27	4	11.41	0.000
12652	5875	24	3	57.01	0.100
12653	5875	14	2	37.56	0.000
12654	5875	38	2	53.59	0.050
12655	5876	9	3	106.52	0.000
12656	5876	30	4	45.59	0.100
12657	5877	25	1	74.89	0.100
12658	5877	7	4	219.91	0.050
12659	5878	20	5	10.98	0.000
12660	5878	37	2	76.90	0.100
12661	5878	9	5	100.64	0.000
12662	5878	10	1	17.84	0.100
12663	5879	44	4	15.77	0.000
12664	5879	35	5	49.38	0.150
12665	5879	21	4	234.78	0.050
12666	5879	7	2	210.83	0.000
12667	5880	11	3	64.60	0.000
12668	5880	6	3	634.80	0.150
12669	5881	32	1	80.14	0.150
12670	5881	33	2	64.20	0.000
12671	5881	7	4	209.45	0.000
12672	5881	34	1	111.11	0.150
12673	5882	42	1	8.65	0.150
12674	5882	33	1	65.02	0.150
12675	5883	19	2	242.69	0.000
12676	5884	39	5	74.14	0.000
12677	5884	42	3	9.21	0.050
12678	5884	47	5	10.09	0.150
12679	5885	19	4	240.86	0.050
12680	5886	6	1	563.88	0.000
12681	5886	34	3	106.09	0.000
12682	5887	14	1	37.59	0.150
12683	5887	2	5	45.04	0.050
12684	5887	6	3	588.08	0.050
12685	5888	7	1	224.87	0.000
12686	5888	29	2	64.30	0.150
12687	5889	27	3	11.98	0.000
12688	5889	29	2	71.78	0.000
12689	5889	40	2	51.80	0.000
12690	5890	22	4	198.47	0.000
12691	5890	16	2	86.19	0.100
12692	5891	24	4	51.35	0.150
12693	5891	32	5	83.85	0.050
12694	5891	2	4	46.57	0.000
12695	5891	22	2	213.10	0.000
12696	5892	48	4	16.76	0.050
12697	5892	46	3	14.63	0.000
12698	5893	37	2	75.63	0.050
12699	5893	23	1	103.89	0.150
12700	5894	36	4	69.59	0.050
12701	5895	38	5	56.52	0.000
12702	5895	21	5	231.91	0.000
12703	5895	40	2	50.90	0.000
12704	5896	20	1	11.29	0.050
12705	5896	3	1	239.84	0.100
12706	5896	26	2	29.16	0.000
12707	5896	24	1	53.80	0.000
12708	5897	34	4	117.09	0.150
12709	5897	27	3	12.41	0.100
12710	5898	27	5	11.28	0.000
12711	5898	31	1	100.69	0.150
12712	5899	46	5	14.10	0.000
12713	5899	22	4	208.19	0.000
12714	5899	27	4	11.97	0.000
12715	5900	29	4	67.54	0.000
12716	5900	7	4	210.91	0.150
12717	5900	11	4	61.59	0.100
12718	5901	47	2	10.35	0.050
12719	5901	37	4	77.85	0.100
12720	5902	6	3	601.22	0.000
12721	5902	22	4	199.07	0.000
12722	5902	20	2	12.19	0.000
12723	5903	9	1	100.38	0.000
12724	5904	31	4	102.06	0.000
12725	5904	6	2	576.22	0.150
12726	5905	16	5	81.79	0.150
12727	5906	29	4	62.88	0.000
12728	5906	36	3	67.59	0.150
12729	5906	48	1	15.56	0.000
12730	5907	35	2	48.07	0.000
12731	5907	19	2	233.90	0.000
12732	5907	21	5	237.14	0.050
12733	5907	15	3	98.88	0.000
12734	5908	29	1	66.97	0.000
12735	5908	33	1	63.96	0.000
12736	5909	27	1	12.34	0.000
12737	5909	34	5	110.39	0.000
12738	5910	41	2	67.84	0.000
12739	5910	14	2	36.43	0.050
12740	5911	32	1	85.97	0.100
12741	5911	21	4	221.11	0.100
12742	5912	21	2	228.41	0.000
12743	5912	26	1	30.97	0.050
12744	5912	36	4	62.70	0.150
12745	5912	13	1	11.40	0.050
12746	5913	28	4	11.82	0.050
12747	5914	11	1	57.36	0.100
12748	5914	34	2	113.67	0.100
12749	5914	33	3	62.13	0.100
12750	5915	40	2	51.08	0.050
12751	5915	32	3	86.44	0.100
12752	5916	8	1	30.06	0.000
12753	5917	7	5	202.06	0.150
12754	5918	34	5	110.50	0.000
12755	5919	29	2	63.30	0.000
12756	5919	45	5	8.32	0.100
12757	5919	23	5	113.22	0.100
12758	5919	25	1	75.07	0.050
12759	5920	36	2	65.48	0.150
12760	5920	16	2	79.50	0.050
12761	5920	28	5	12.53	0.000
12762	5921	36	2	64.37	0.050
12763	5921	12	4	130.18	0.050
12764	5921	32	3	83.94	0.000
12765	5921	45	5	9.55	0.100
12766	5922	46	1	14.69	0.050
12767	5922	11	4	64.69	0.100
12768	5923	4	3	219.06	0.000
12769	5924	42	5	8.29	0.000
12770	5925	8	4	30.57	0.000
12771	5926	13	2	11.95	0.100
12772	5927	36	3	68.89	0.000
12773	5927	10	3	15.81	0.050
12774	5927	19	2	247.61	0.050
12775	5928	24	4	57.44	0.050
12776	5929	1	5	589.48	0.050
12777	5929	24	4	54.04	0.000
12778	5930	20	4	12.42	0.000
12779	5930	12	2	128.36	0.050
12780	5930	30	4	52.52	0.000
12781	5930	39	5	76.48	0.050
12782	5931	31	1	96.01	0.000
12783	5932	48	4	16.52	0.100
12784	5933	41	4	67.12	0.000
12785	5934	16	4	84.56	0.100
12786	5934	25	5	72.12	0.050
12787	5934	31	5	91.66	0.050
12788	5934	12	1	130.61	0.150
12789	5935	44	5	15.76	0.100
12790	5936	31	3	97.14	0.000
12791	5936	15	4	103.86	0.000
12792	5937	25	1	72.19	0.000
12793	5938	15	1	95.03	0.100
12794	5938	30	3	47.63	0.000
12795	5938	42	1	8.19	0.000
12796	5939	12	1	118.54	0.000
12797	5939	23	1	105.88	0.000
12798	5940	44	1	16.09	0.150
12799	5940	36	3	65.93	0.000
12800	5941	44	2	16.43	0.050
12801	5941	36	2	69.90	0.000
12802	5942	18	2	85.17	0.000
12803	5942	48	3	17.44	0.000
12804	5942	7	5	204.46	0.000
12805	5943	37	5	77.94	0.000
12806	5943	24	5	54.41	0.100
12807	5943	25	1	69.81	0.000
12808	5943	31	4	88.65	0.000
12809	5944	40	2	52.72	0.150
12810	5944	8	5	31.20	0.150
12811	5945	29	2	63.28	0.000
12812	5945	28	2	12.08	0.150
12813	5946	40	1	56.65	0.050
12814	5947	9	4	109.16	0.050
12815	5947	8	1	29.72	0.000
12816	5948	35	1	48.71	0.000
12817	5948	40	1	50.80	0.150
12818	5948	8	3	31.09	0.100
12819	5948	2	1	45.42	0.100
12820	5949	43	3	14.80	0.100
12821	5949	4	4	205.49	0.150
12822	5950	21	4	232.02	0.000
12823	5950	44	2	16.39	0.050
12824	5951	2	2	44.76	0.100
12825	5951	18	2	93.17	0.100
12826	5952	23	4	101.57	0.000
12827	5952	31	5	95.93	0.150
12828	5952	25	1	72.51	0.050
12829	5952	11	1	57.82	0.100
12830	5953	46	4	14.10	0.000
12831	5954	42	5	8.81	0.000
12832	5954	36	5	62.53	0.050
12833	5954	45	4	8.68	0.050
12834	5955	7	3	228.91	0.000
12835	5955	23	5	113.42	0.050
12836	5955	18	4	95.57	0.150
12837	5956	18	4	88.43	0.000
12838	5956	45	1	8.89	0.000
12839	5956	36	3	67.38	0.000
12840	5956	26	1	28.94	0.000
12841	5957	15	3	90.63	0.000
12842	5957	20	1	12.38	0.000
12843	5958	36	5	68.42	0.050
12844	5958	10	3	17.57	0.100
12845	5958	18	3	93.03	0.150
12846	5959	19	5	233.12	0.100
12847	5959	6	4	609.03	0.000
12848	5959	43	5	14.09	0.000
12849	5959	8	3	29.07	0.150
12850	5960	24	4	56.80	0.000
12851	5961	44	4	16.42	0.150
12852	5962	23	5	100.22	0.000
12853	5962	16	2	86.70	0.000
12854	5963	39	5	78.41	0.000
12855	5963	29	5	65.39	0.150
12856	5963	20	1	11.45	0.000
12857	5964	11	2	63.45	0.000
12858	5965	44	4	18.09	0.100
12859	5965	9	1	104.15	0.000
12860	5966	13	2	10.97	0.000
12861	5966	28	4	12.86	0.100
12862	5966	12	3	130.88	0.050
12863	5967	43	4	15.38	0.100
12864	5968	30	3	49.78	0.000
12865	5969	7	1	205.06	0.050
12866	5970	9	4	106.80	0.100
12867	5971	29	3	65.32	0.000
12868	5972	29	1	69.75	0.150
12869	5973	17	5	38.79	0.050
12870	5974	28	2	11.22	0.000
12871	5975	8	4	30.87	0.150
12872	5976	32	2	91.87	0.000
12873	5976	13	5	12.23	0.000
12874	5977	4	2	223.97	0.050
12875	5977	26	2	28.10	0.000
12876	5978	44	1	16.97	0.050
12877	5979	38	1	52.79	0.150
12878	5979	23	5	111.24	0.000
12879	5979	32	5	90.03	0.150
12880	5979	2	1	45.05	0.100
12881	5980	13	3	12.21	0.150
12882	5980	22	5	206.78	0.150
12883	5980	40	4	52.89	0.000
12884	5980	45	2	9.54	0.000
12885	5981	28	3	11.17	0.150
12886	5981	41	2	66.35	0.000
12887	5981	25	2	79.80	0.000
12888	5981	47	4	9.90	0.000
12889	5982	32	5	91.06	0.050
12890	5982	24	3	52.85	0.000
12891	5983	3	5	266.34	0.000
12892	5983	22	5	211.91	0.050
12893	5983	15	4	94.93	0.150
12894	5984	27	5	12.15	0.000
12895	5985	18	1	87.76	0.150
12896	5985	29	3	65.55	0.050
12897	5986	44	4	16.81	0.150
12898	5986	30	3	50.90	0.050
12899	5987	23	4	98.33	0.150
12900	5987	36	2	61.81	0.100
12901	5988	30	4	51.73	0.100
12902	5988	42	5	9.29	0.000
12903	5988	7	4	234.90	0.050
12904	5988	4	5	212.41	0.000
12905	5989	3	2	255.66	0.150
12906	5989	6	5	596.35	0.000
12907	5990	28	3	11.33	0.000
12908	5991	3	5	239.43	0.000
12909	5991	13	5	11.55	0.000
12910	5992	15	1	90.82	0.000
12911	5993	40	2	52.09	0.100
12912	5994	4	2	203.63	0.100
12913	5994	12	3	127.70	0.100
12914	5995	17	1	41.10	0.050
12915	5995	33	3	65.47	0.000
12916	5995	27	2	11.32	0.150
12917	5995	30	5	52.14	0.100
12918	5996	40	1	52.48	0.050
12919	5996	3	4	256.28	0.000
12920	5996	24	3	51.01	0.000
12921	5997	10	1	16.15	0.000
12922	5997	7	5	205.86	0.100
12923	5997	14	5	33.24	0.000
12924	5998	17	1	40.14	0.150
12925	5999	20	3	12.17	0.000
12926	5999	25	5	74.29	0.150
12927	6000	20	2	11.33	0.000
12928	6001	29	2	62.15	0.000
12929	6001	20	3	10.87	0.000
12930	6002	6	3	588.91	0.000
12931	6002	2	5	42.72	0.000
12932	6002	45	5	8.90	0.000
12933	6002	11	1	56.91	0.000
12934	6003	48	5	15.96	0.000
12935	6004	7	5	216.35	0.000
12936	6004	42	1	8.90	0.000
12937	6004	25	1	69.45	0.000
12938	6005	9	1	111.48	0.100
12939	6006	11	1	56.25	0.100
12940	6006	9	5	107.36	0.050
12941	6007	23	2	105.03	0.100
12942	6007	14	4	36.82	0.050
12943	6007	35	5	44.77	0.050
12944	6008	11	3	57.13	0.100
12945	6009	45	1	8.28	0.150
12946	6009	30	5	52.01	0.000
12947	6009	47	5	10.20	0.000
12948	6009	11	4	59.06	0.000
12949	6010	47	3	10.14	0.100
12950	6010	2	5	46.14	0.100
12951	6011	20	4	12.20	0.100
12952	6011	46	2	14.47	0.000
12953	6012	8	2	28.44	0.000
12954	6012	31	5	94.17	0.100
12955	6012	30	4	46.69	0.000
12956	6013	9	2	103.90	0.000
12957	6014	17	3	38.66	0.000
12958	6015	4	5	210.45	0.000
12959	6016	19	2	251.99	0.000
12960	6016	36	4	65.49	0.000
12961	6017	26	2	27.92	0.050
12962	6017	39	5	71.25	0.000
12963	6017	42	4	9.12	0.050
12964	6017	7	5	224.12	0.100
12965	6018	21	2	226.52	0.100
12966	6018	10	4	15.51	0.050
12967	6018	13	2	11.33	0.050
12968	6018	36	5	69.10	0.000
12969	6019	14	5	33.68	0.000
12970	6019	41	1	60.42	0.000
12971	6019	7	3	230.53	0.150
12972	6020	19	3	246.91	0.100
12973	6021	4	5	198.34	0.150
12974	6021	33	1	67.60	0.000
12975	6022	8	5	30.33	0.000
12976	6022	38	4	52.32	0.000
12977	6022	31	2	89.47	0.150
12978	6023	28	1	11.74	0.000
12979	6023	9	5	115.57	0.150
12980	6024	9	2	106.65	0.100
12981	6024	43	4	13.55	0.100
12982	6025	34	2	122.34	0.100
12983	6025	14	5	36.34	0.150
12984	6025	16	1	86.65	0.000
12985	6026	34	1	120.28	0.000
12986	6027	2	2	47.97	0.050
12987	6027	4	5	204.58	0.000
12988	6028	9	2	108.96	0.000
12989	6029	11	3	56.96	0.000
12990	6030	40	2	52.40	0.000
12991	6031	4	4	213.78	0.150
12992	6031	27	3	11.99	0.000
12993	6031	14	3	35.96	0.000
12994	6031	47	3	9.55	0.100
12995	6032	16	1	82.97	0.000
12996	6032	32	3	81.21	0.100
12997	6033	7	1	205.16	0.000
12998	6033	48	3	17.39	0.050
12999	6033	17	3	35.81	0.000
13000	6034	38	4	54.18	0.100
13001	6035	23	1	105.15	0.000
13002	6036	35	5	44.96	0.000
13003	6037	45	3	9.51	0.000
13004	6038	9	3	102.69	0.000
13005	6039	42	2	9.03	0.000
13006	6040	41	2	65.68	0.000
13007	6040	29	4	65.24	0.000
13008	6040	20	3	12.31	0.000
13009	6040	26	4	28.48	0.050
13010	6041	34	5	112.13	0.000
13011	6041	4	4	213.39	0.000
13012	6042	12	3	135.76	0.000
13013	6043	22	1	204.67	0.000
13014	6044	38	1	59.71	0.000
13015	6045	2	2	43.81	0.000
13016	6045	38	5	59.41	0.000
13017	6045	47	4	9.65	0.150
13018	6046	45	2	9.05	0.150
13019	6047	41	4	66.24	0.000
13020	6047	33	3	64.59	0.000
13021	6048	32	2	87.36	0.100
13022	6048	46	1	14.09	0.150
13023	6049	47	5	10.25	0.000
13024	6049	24	3	56.88	0.000
13025	6049	43	3	15.05	0.000
13026	6049	39	4	81.88	0.050
13027	6050	25	2	79.63	0.000
13028	6050	38	3	55.14	0.000
13029	6050	40	3	48.71	0.000
13030	6051	2	5	49.17	0.000
13031	6051	25	4	75.95	0.000
13032	6052	31	5	88.92	0.150
13033	6052	24	2	53.02	0.050
13034	6053	41	3	60.93	0.050
13035	6054	12	1	127.67	0.000
13036	6054	42	5	8.29	0.150
13037	6055	20	5	11.87	0.000
13038	6055	45	2	8.71	0.150
13039	6055	3	2	254.49	0.000
13040	6055	37	1	75.39	0.000
13041	6056	13	2	10.93	0.000
13042	6057	27	1	11.56	0.000
13043	6057	38	1	52.82	0.100
13044	6057	34	2	109.11	0.000
13045	6057	21	5	245.40	0.150
13046	6058	35	2	47.42	0.000
13047	6058	19	3	252.38	0.000
13048	6059	37	1	76.87	0.000
13049	6059	35	3	44.51	0.000
13050	6059	18	2	96.22	0.150
13051	6060	44	2	15.76	0.000
13052	6060	28	5	12.64	0.000
13053	6061	4	5	219.22	0.000
13054	6062	10	2	16.38	0.150
13055	6063	14	1	36.63	0.000
13056	6064	22	1	209.92	0.000
13057	6064	38	1	52.43	0.150
13058	6064	23	5	112.50	0.050
13059	6064	45	4	8.93	0.000
13060	6065	3	2	244.92	0.000
13061	6065	7	4	230.49	0.150
13062	6066	25	4	71.31	0.150
13063	6067	26	5	27.40	0.000
13064	6068	29	3	64.06	0.150
13065	6068	18	3	94.33	0.100
13066	6069	3	4	242.30	0.000
13067	6069	20	3	12.08	0.150
13068	6069	31	4	89.12	0.050
13069	6069	2	3	44.44	0.050
13070	6070	1	3	572.23	0.000
13071	6071	36	3	69.89	0.000
13072	6072	36	5	62.63	0.100
13073	6072	37	4	69.55	0.100
13074	6072	2	4	48.45	0.000
13075	6073	9	5	103.66	0.000
13076	6073	4	5	228.47	0.000
13077	6073	12	3	119.53	0.000
13078	6073	43	1	13.70	0.100
13079	6074	1	4	531.36	0.000
13080	6075	17	2	38.18	0.000
13081	6076	8	1	28.51	0.100
13082	6077	8	3	30.26	0.000
13083	6077	15	1	103.46	0.000
13084	6078	36	1	62.83	0.000
13085	6078	8	1	27.99	0.100
13086	6078	16	1	89.47	0.050
13087	6079	2	2	47.50	0.050
13088	6079	7	4	206.89	0.000
13089	6080	34	3	122.23	0.000
13090	6081	18	1	93.25	0.100
13091	6082	21	2	222.26	0.000
13092	6083	37	2	70.99	0.000
13093	6083	3	3	253.70	0.100
13094	6084	14	4	37.29	0.100
13095	6084	32	3	81.03	0.050
13096	6085	21	2	220.28	0.000
13097	6085	13	1	11.00	0.000
13098	6085	23	4	108.70	0.050
13099	6086	14	3	37.11	0.000
13100	6086	46	2	13.90	0.000
13101	6087	28	4	12.10	0.050
13102	6087	41	2	63.18	0.000
13103	6087	38	5	59.18	0.000
13104	6088	25	4	70.84	0.150
13105	6088	9	4	101.31	0.050
13106	6088	33	3	65.59	0.000
13107	6088	36	5	61.07	0.000
13108	6089	44	1	16.75	0.050
13109	6089	43	5	14.77	0.150
13110	6089	29	1	69.65	0.150
13111	6090	47	2	9.79	0.000
13112	6090	36	4	63.19	0.000
13113	6090	6	3	585.09	0.000
13114	6091	43	5	13.46	0.150
13115	6091	32	5	90.37	0.100
13116	6092	19	5	249.30	0.000
13117	6092	9	2	105.58	0.150
13118	6092	20	5	12.45	0.050
13119	6092	47	3	9.79	0.100
13120	6093	22	3	212.26	0.000
13121	6093	13	1	11.82	0.050
13122	6094	36	2	67.43	0.100
13123	6094	8	2	29.40	0.100
13124	6094	17	2	40.75	0.000
13125	6095	4	4	229.68	0.000
13126	6096	19	5	235.14	0.050
13127	6097	25	3	76.57	0.000
13128	6098	28	1	11.91	0.100
13129	6098	19	4	221.36	0.000
13130	6098	24	4	53.59	0.100
13131	6098	2	5	47.45	0.100
13132	6099	38	1	55.83	0.000
13133	6099	20	1	10.82	0.100
13134	6100	29	3	61.81	0.000
13135	6100	20	5	11.63	0.150
13136	6101	10	3	15.67	0.100
13137	6101	1	2	551.98	0.000
13138	6101	7	2	234.97	0.150
13139	6102	13	1	11.92	0.050
13140	6102	47	5	10.13	0.150
13141	6103	30	2	47.01	0.100
13142	6104	9	4	115.17	0.000
13143	6104	35	4	42.62	0.150
13144	6104	21	4	236.37	0.000
13145	6104	10	4	17.92	0.000
13146	6105	46	1	14.32	0.000
13147	6105	38	5	57.24	0.000
13148	6105	42	4	9.04	0.100
13149	6106	18	3	85.03	0.000
13150	6107	20	2	12.10	0.100
13151	6108	39	1	79.65	0.050
13152	6109	31	1	98.26	0.150
13153	6110	41	4	65.16	0.150
13154	6110	35	1	48.10	0.000
13155	6110	42	3	8.81	0.050
13156	6111	34	4	108.98	0.000
13157	6111	7	2	229.83	0.100
13158	6111	30	1	50.66	0.050
13159	6112	3	4	256.72	0.000
13160	6113	8	4	31.75	0.050
13161	6113	44	5	16.20	0.000
13162	6114	19	1	232.07	0.000
13163	6115	4	3	215.29	0.150
13164	6115	30	3	48.21	0.050
13165	6116	13	2	12.18	0.050
13166	6117	47	1	9.43	0.100
13167	6117	48	4	16.03	0.150
13168	6118	27	5	12.05	0.000
13169	6118	29	3	66.82	0.050
13170	6119	37	2	70.08	0.150
13171	6119	26	5	31.48	0.000
13172	6119	23	2	104.47	0.150
13173	6119	27	3	11.32	0.000
13174	6120	2	3	45.48	0.000
13175	6120	22	5	207.16	0.000
13176	6120	24	3	54.18	0.000
13177	6121	36	2	65.66	0.100
13178	6121	1	5	575.83	0.100
13179	6121	2	2	43.03	0.100
13180	6122	38	5	56.38	0.150
13181	6123	33	5	67.93	0.000
13182	6123	21	4	221.25	0.050
13183	6124	12	2	128.79	0.000
13184	6124	1	2	594.82	0.050
13185	6125	47	4	9.51	0.100
13186	6126	36	2	69.06	0.100
13187	6127	27	5	12.18	0.000
13188	6128	35	1	44.07	0.000
13189	6128	13	5	11.79	0.000
13190	6128	41	1	67.40	0.050
13191	6129	43	5	15.19	0.000
13192	6129	20	4	12.33	0.150
13193	6130	15	4	104.33	0.000
13194	6130	47	1	9.29	0.000
13195	6131	6	3	602.10	0.150
13196	6132	23	4	112.51	0.150
13197	6132	17	5	40.80	0.050
13198	6133	18	3	87.71	0.000
13199	6133	40	2	54.79	0.000
13200	6134	26	2	29.20	0.000
13201	6134	28	3	12.66	0.050
13202	6134	35	2	45.82	0.100
13203	6135	8	1	29.52	0.050
13204	6136	43	5	14.67	0.000
13205	6136	30	5	45.80	0.050
13206	6136	48	3	17.65	0.050
13207	6136	40	3	53.02	0.000
13208	6137	36	4	62.14	0.050
13209	6137	21	2	232.10	0.050
13210	6137	29	3	68.04	0.100
13211	6137	45	4	8.41	0.100
13212	6138	7	5	206.07	0.100
13213	6138	13	3	11.22	0.050
13214	6138	21	5	225.39	0.150
13215	6139	29	3	65.39	0.000
13216	6139	1	4	534.44	0.050
13217	6139	17	5	38.74	0.000
13218	6139	45	3	8.99	0.000
13219	6140	44	4	17.39	0.050
13220	6140	6	2	558.31	0.000
13221	6140	29	5	62.19	0.150
13222	6140	30	4	47.51	0.050
13223	6141	7	2	206.64	0.000
13224	6141	11	2	58.44	0.000
13225	6141	44	2	17.37	0.000
13226	6141	1	2	589.01	0.000
13227	6142	16	2	87.01	0.000
13228	6143	22	3	196.10	0.100
13229	6144	34	3	120.30	0.100
13230	6144	32	2	85.40	0.000
13231	6145	46	2	15.19	0.050
13232	6145	43	3	13.97	0.050
13233	6146	16	2	81.88	0.000
13234	6146	4	5	204.01	0.000
13235	6147	31	4	99.96	0.050
13236	6148	2	3	44.20	0.000
13237	6148	41	4	62.32	0.000
13238	6149	15	3	103.92	0.150
13239	6149	28	2	11.20	0.000
13240	6150	37	2	73.07	0.000
13241	6150	45	2	9.01	0.150
13242	6151	7	2	219.19	0.150
13243	6151	47	2	10.18	0.000
13244	6152	1	2	530.26	0.000
13245	6152	22	3	210.41	0.000
13246	6153	14	2	32.92	0.000
13247	6154	43	3	13.75	0.000
13248	6154	11	1	57.12	0.000
13249	6155	12	3	124.23	0.000
13250	6155	19	5	224.02	0.000
13251	6156	8	4	32.16	0.100
13252	6156	12	1	133.77	0.050
13253	6156	25	5	80.01	0.000
13254	6157	48	1	16.78	0.000
13255	6158	29	5	67.29	0.000
13256	6159	25	3	76.86	0.000
13257	6160	27	5	11.62	0.000
13258	6160	29	2	65.52	0.000
13259	6160	14	2	36.43	0.000
13260	6160	35	3	49.52	0.000
13261	6161	7	4	234.31	0.100
13262	6161	34	1	106.00	0.050
13263	6162	6	1	633.53	0.050
13264	6163	36	2	68.12	0.100
13265	6163	28	1	12.78	0.000
13266	6163	11	1	64.60	0.150
13267	6163	38	1	59.65	0.050
13268	6164	19	2	224.05	0.050
13269	6164	31	2	90.65	0.000
13270	6165	32	3	87.78	0.150
13271	6165	30	4	50.15	0.000
13272	6166	46	1	15.56	0.050
13273	6167	28	2	11.47	0.000
13274	6168	34	2	112.09	0.000
13275	6169	7	3	225.15	0.000
13276	6170	44	3	17.98	0.050
13277	6171	30	5	46.62	0.000
13278	6171	1	5	598.05	0.100
13279	6172	21	3	241.23	0.000
13280	6173	28	5	12.68	0.000
13281	6173	3	5	252.43	0.150
13282	6173	7	5	230.87	0.050
13283	6173	43	4	15.44	0.000
13284	6174	3	1	251.21	0.050
13285	6174	34	1	111.05	0.150
13286	6175	11	2	59.81	0.050
13287	6175	21	1	220.51	0.000
13288	6175	18	1	89.09	0.000
13289	6176	43	3	14.14	0.100
13290	6176	26	4	28.98	0.100
13291	6176	11	5	63.65	0.050
13292	6177	1	4	584.69	0.050
13293	6178	3	1	260.91	0.100
13294	6178	42	5	8.08	0.150
13295	6179	35	4	49.28	0.100
13296	6180	29	3	66.46	0.050
13297	6180	34	2	106.51	0.000
13298	6180	33	5	66.03	0.050
13299	6180	22	2	192.46	0.050
13300	6181	40	2	50.82	0.150
13301	6181	32	3	92.79	0.050
13302	6181	22	2	214.01	0.000
13303	6181	3	5	269.93	0.000
13304	6182	23	5	105.60	0.000
13305	6182	43	1	15.08	0.100
13306	6182	46	2	14.02	0.000
13307	6182	34	4	114.65	0.150
13308	6183	32	3	86.38	0.000
13309	6184	44	1	16.34	0.000
13310	6184	46	4	13.77	0.100
13311	6185	7	4	226.63	0.000
13312	6185	10	1	15.91	0.050
13313	6186	40	5	53.02	0.050
13314	6186	18	2	92.64	0.150
13315	6187	7	4	231.08	0.150
13316	6188	12	2	122.75	0.000
13317	6188	16	5	78.88	0.150
13318	6189	47	2	9.76	0.050
13319	6189	4	2	202.91	0.100
13320	6190	45	2	9.52	0.100
13321	6190	22	2	207.20	0.050
13322	6190	26	5	29.77	0.000
13323	6190	25	5	80.02	0.000
13324	6191	31	5	98.03	0.150
13325	6192	17	4	37.06	0.000
13326	6193	36	4	65.67	0.000
13327	6193	45	3	8.75	0.000
13328	6193	18	5	86.15	0.100
13329	6193	30	5	49.88	0.100
13330	6194	25	3	79.38	0.050
13331	6194	1	5	563.90	0.000
13332	6194	35	3	48.38	0.000
13333	6194	22	1	203.16	0.050
13334	6195	22	2	205.89	0.000
13335	6195	36	5	62.80	0.150
13336	6196	16	5	81.72	0.100
13337	6196	6	1	558.67	0.050
13338	6197	17	4	37.95	0.050
13339	6198	12	2	129.95	0.100
13340	6198	17	1	40.67	0.000
13341	6199	20	4	11.50	0.000
13342	6199	17	2	36.85	0.000
13343	6200	22	1	206.79	0.100
13344	6200	42	4	8.80	0.000
13345	6200	30	4	45.43	0.150
13346	6201	39	3	73.58	0.000
13347	6202	48	5	16.93	0.000
13348	6202	19	3	242.25	0.000
13349	6203	32	3	91.54	0.050
13350	6204	18	1	93.54	0.050
13351	6205	3	2	260.71	0.050
13352	6205	32	3	88.19	0.050
13353	6206	47	5	9.04	0.000
13354	6207	40	4	54.90	0.050
13355	6208	34	4	110.53	0.100
13356	6209	23	3	112.87	0.000
13357	6209	10	4	15.84	0.100
13358	6210	18	1	86.41	0.000
13359	6210	17	4	40.67	0.000
13360	6211	24	1	51.54	0.000
13361	6212	7	3	212.43	0.050
13362	6213	23	1	105.92	0.150
13363	6214	10	2	15.47	0.050
13364	6214	31	3	91.37	0.150
13365	6214	8	1	30.46	0.000
13366	6215	18	4	83.46	0.100
13367	6215	48	5	15.60	0.000
13368	6216	33	1	62.97	0.000
13369	6216	6	1	576.00	0.000
13370	6217	39	4	70.44	0.000
13371	6217	8	3	29.48	0.100
13372	6217	23	2	109.04	0.050
13373	6217	18	2	94.39	0.150
13374	6218	40	4	56.18	0.000
13375	6218	3	5	276.17	0.000
13376	6219	14	1	32.82	0.050
13377	6220	12	4	136.73	0.000
13378	6220	13	1	10.62	0.150
13379	6220	41	4	65.21	0.100
13380	6221	38	5	56.38	0.000
13381	6221	31	5	102.00	0.000
13382	6222	25	3	73.18	0.100
13383	6223	4	1	223.40	0.100
13384	6223	44	5	15.62	0.000
13385	6224	33	4	65.00	0.000
13386	6224	8	2	32.39	0.000
13387	6224	7	4	232.54	0.100
13388	6224	45	5	9.27	0.000
13389	6225	12	3	132.44	0.000
13390	6226	23	1	111.85	0.000
13391	6226	1	5	586.78	0.100
13392	6227	11	4	58.58	0.000
13393	6228	3	3	260.89	0.000
13394	6229	8	5	29.74	0.050
13395	6229	35	3	45.88	0.000
13396	6230	35	3	48.13	0.000
13397	6230	43	1	15.58	0.000
13398	6231	26	3	31.23	0.100
13399	6232	40	3	52.80	0.100
13400	6233	32	4	82.45	0.100
13401	6233	25	2	76.78	0.150
13402	6233	7	1	212.26	0.150
13403	6233	48	1	15.70	0.000
13404	6234	9	1	113.25	0.100
13405	6234	48	5	17.07	0.050
13406	6234	10	2	17.01	0.000
13407	6234	23	2	112.89	0.150
13408	6235	47	5	10.42	0.050
13409	6235	3	3	248.79	0.150
13410	6235	10	2	17.45	0.000
13411	6236	38	2	57.63	0.000
13412	6236	9	4	113.33	0.000
13413	6236	42	1	8.77	0.150
13414	6236	47	1	9.03	0.150
13415	6237	43	2	15.21	0.100
13416	6237	15	5	100.37	0.000
13417	6238	10	2	15.53	0.000
13418	6238	21	2	233.04	0.100
13419	6238	16	1	85.26	0.000
13420	6239	11	4	64.74	0.000
13421	6239	30	5	51.28	0.100
13422	6239	38	1	60.01	0.000
13423	6239	20	5	11.21	0.000
13424	6240	19	2	244.72	0.000
13425	6240	36	3	63.57	0.000
13426	6241	16	4	84.14	0.150
13427	6241	23	4	111.33	0.150
13428	6241	12	5	121.18	0.050
13429	6241	15	3	93.08	0.000
13430	6242	31	5	101.32	0.050
13431	6242	4	5	202.21	0.050
13432	6243	12	2	127.74	0.000
13433	6243	18	1	92.68	0.100
13434	6243	43	3	14.12	0.000
13435	6243	42	4	8.11	0.000
13436	6244	17	1	38.37	0.000
13437	6244	11	2	62.58	0.100
13438	6244	23	1	110.70	0.150
13439	6245	44	1	17.83	0.150
13440	6246	45	3	9.36	0.000
13441	6247	14	4	33.34	0.000
13442	6248	38	1	58.25	0.050
13443	6249	41	2	58.42	0.050
13444	6249	2	1	43.99	0.000
13445	6249	21	2	221.29	0.000
13446	6250	4	2	210.65	0.100
13447	6250	12	5	135.04	0.050
13448	6251	21	1	221.49	0.000
13449	6251	9	1	111.18	0.000
13450	6252	28	2	12.42	0.000
13451	6252	20	1	11.09	0.000
13452	6253	16	1	79.24	0.050
13453	6254	19	3	221.21	0.150
13454	6255	26	5	31.73	0.050
13455	6256	44	4	16.04	0.000
13456	6257	4	2	200.03	0.000
13457	6257	18	3	91.49	0.000
13458	6258	37	1	75.04	0.000
13459	6258	23	3	100.20	0.000
13460	6259	42	2	9.03	0.000
13461	6260	37	4	73.75	0.150
13462	6260	8	1	29.26	0.000
13463	6261	35	4	48.79	0.000
13464	6262	10	4	17.09	0.150
13465	6262	32	5	87.78	0.150
13466	6263	39	3	70.64	0.000
13467	6264	29	3	64.76	0.000
13468	6264	28	3	11.18	0.100
13469	6265	42	3	9.21	0.000
13470	6265	43	3	15.01	0.050
13471	6266	4	1	215.15	0.150
13472	6266	13	2	11.06	0.000
13473	6267	39	4	72.62	0.050
13474	6268	26	1	27.52	0.150
13475	6268	16	2	80.42	0.100
13476	6269	8	5	30.25	0.150
13477	6269	46	1	14.77	0.000
13478	6269	25	4	79.00	0.000
13479	6269	39	2	71.57	0.100
13480	6270	26	4	31.50	0.000
13481	6271	3	3	268.37	0.000
13482	6271	28	2	11.79	0.050
13483	6271	21	5	222.18	0.000
13484	6272	26	3	29.78	0.100
13485	6273	2	2	47.29	0.000
13486	6274	15	2	104.34	0.050
13487	6275	6	1	623.73	0.050
13488	6275	30	3	51.49	0.000
13489	6275	12	1	128.70	0.100
13490	6275	14	3	33.56	0.100
13491	6276	7	2	204.74	0.100
13492	6276	46	1	15.64	0.050
13493	6277	26	4	29.92	0.000
13494	6278	7	5	217.66	0.050
13495	6279	26	1	27.74	0.000
13496	6280	7	3	233.67	0.000
13497	6280	3	3	262.40	0.000
13498	6280	24	3	55.06	0.100
13499	6281	34	5	109.76	0.100
13500	6281	2	1	43.97	0.100
13501	6282	23	1	101.49	0.000
13502	6282	21	3	221.35	0.100
13503	6282	3	5	241.38	0.000
13504	6282	25	3	73.06	0.000
13505	6283	20	4	11.51	0.000
13506	6283	27	2	11.65	0.000
13507	6283	10	4	17.72	0.000
13508	6284	8	2	30.78	0.000
13509	6284	9	4	111.53	0.100
13510	6285	22	1	201.31	0.150
13511	6285	48	1	17.06	0.000
13512	6286	21	1	250.04	0.100
13513	6286	15	4	94.86	0.000
13514	6286	44	1	15.79	0.150
13515	6286	40	1	56.19	0.150
13516	6287	39	3	76.80	0.000
13517	6287	1	5	533.71	0.000
13518	6287	22	2	196.03	0.000
13519	6288	32	1	81.86	0.050
13520	6288	33	4	60.84	0.000
13521	6289	29	4	69.01	0.100
13522	6289	3	4	269.21	0.050
13523	6290	30	5	45.58	0.000
13524	6290	24	4	51.08	0.000
13525	6291	40	3	56.50	0.000
13526	6291	45	2	8.21	0.150
13527	6291	17	5	38.60	0.150
13528	6292	45	4	9.46	0.150
13529	6293	14	3	34.26	0.150
13530	6293	15	4	101.36	0.000
13531	6293	47	5	9.41	0.000
13532	6294	26	1	28.35	0.100
13533	6294	19	3	236.19	0.050
13534	6294	20	3	11.28	0.000
13535	6295	2	4	44.53	0.050
13536	6296	27	1	11.23	0.100
13537	6296	35	1	43.71	0.000
13538	6297	41	1	68.05	0.150
13539	6297	33	4	66.82	0.000
13540	6297	3	4	277.04	0.000
13541	6298	45	1	8.70	0.000
13542	6298	47	3	10.21	0.100
13543	6298	12	2	131.75	0.100
13544	6299	44	1	17.60	0.000
13545	6299	8	4	29.05	0.050
13546	6300	6	4	587.30	0.000
13547	6300	20	4	11.35	0.100
13548	6301	44	5	17.05	0.000
13549	6302	28	1	11.77	0.050
13550	6302	25	4	74.66	0.000
13551	6303	23	5	99.98	0.000
13552	6303	12	2	128.19	0.000
13553	6304	10	4	15.67	0.150
13554	6305	3	5	257.00	0.000
13555	6306	26	1	28.04	0.150
13556	6306	28	1	11.35	0.050
13557	6306	14	5	35.48	0.000
13558	6306	25	1	72.11	0.150
13559	6307	6	1	563.54	0.150
13560	6307	28	2	12.07	0.150
13561	6308	16	5	84.18	0.100
13562	6309	43	3	15.32	0.150
13563	6310	17	1	37.83	0.050
13564	6310	46	3	15.06	0.150
13565	6310	12	4	132.67	0.100
13566	6311	45	5	9.05	0.050
13567	6311	30	4	50.61	0.000
13568	6312	13	3	12.10	0.050
13569	6312	31	3	97.35	0.050
13570	6313	6	3	628.92	0.100
13571	6313	9	3	102.39	0.000
13572	6314	24	1	54.66	0.000
13573	6314	13	2	10.74	0.000
13574	6315	22	3	220.20	0.000
13575	6316	39	2	76.24	0.000
13576	6316	24	5	54.18	0.050
13577	6316	18	2	85.66	0.000
13578	6317	1	2	587.85	0.050
13579	6318	48	3	17.36	0.000
13580	6318	16	5	89.31	0.100
13581	6319	48	3	15.38	0.000
13582	6320	30	3	47.92	0.000
13583	6320	10	1	17.45	0.000
13584	6320	36	2	63.14	0.100
13585	6320	1	5	606.86	0.000
13586	6321	44	4	17.62	0.000
13587	6321	8	1	30.72	0.000
13588	6322	33	1	62.92	0.000
13589	6322	25	3	73.26	0.150
13590	6322	19	5	223.82	0.000
13591	6323	2	5	48.89	0.050
13592	6323	44	3	16.32	0.150
13593	6323	46	2	14.89	0.100
13594	6323	15	3	97.01	0.000
13595	6324	4	1	218.07	0.150
13596	6325	37	5	73.26	0.000
13597	6326	4	1	223.07	0.000
13598	6326	9	5	114.39	0.000
13599	6327	8	5	29.92	0.150
13600	6327	20	1	11.66	0.000
13601	6328	33	3	62.98	0.000
13602	6329	44	1	15.71	0.000
13603	6329	34	5	108.74	0.000
13604	6330	13	5	12.16	0.100
13605	6330	6	1	619.34	0.150
13606	6330	36	2	65.75	0.100
13607	6330	31	2	90.10	0.000
13608	6331	20	2	11.64	0.150
13609	6331	36	5	66.41	0.000
13610	6331	6	3	582.76	0.000
13611	6332	12	5	121.42	0.100
13612	6332	26	2	27.90	0.000
13613	6332	34	3	106.39	0.150
13614	6332	17	2	39.19	0.150
13615	6333	31	2	89.19	0.000
13616	6334	17	3	37.11	0.000
13617	6334	26	4	28.36	0.100
13618	6335	43	2	14.15	0.050
13619	6335	7	3	217.55	0.150
13620	6336	33	4	62.85	0.100
13621	6336	14	5	33.68	0.150
13622	6337	19	4	249.24	0.100
13623	6337	9	1	110.66	0.000
13624	6338	8	5	29.11	0.000
13625	6338	35	4	42.64	0.150
13626	6339	35	3	48.14	0.000
13627	6340	42	2	8.36	0.000
13628	6341	35	3	47.75	0.050
13629	6341	24	1	54.57	0.000
13630	6341	6	1	591.12	0.150
13631	6342	22	5	209.51	0.000
13632	6342	15	4	99.00	0.050
13633	6342	10	4	17.16	0.100
13634	6343	8	4	28.66	0.000
13635	6344	12	3	137.71	0.150
13636	6345	24	3	52.60	0.000
13637	6345	13	5	11.85	0.050
13638	6345	30	2	47.46	0.000
13639	6346	23	5	105.66	0.000
13640	6346	15	3	91.53	0.000
13641	6347	13	5	10.71	0.000
13642	6348	42	2	8.38	0.100
13643	6348	17	2	38.47	0.100
13644	6349	43	1	13.60	0.050
13645	6349	13	4	10.98	0.000
13646	6350	21	5	231.46	0.050
13647	6350	27	2	12.17	0.000
13648	6351	41	5	62.02	0.050
13649	6351	32	4	89.27	0.050
13650	6351	9	4	113.97	0.000
13651	6351	25	1	71.54	0.000
13652	6352	26	4	30.12	0.000
13653	6353	10	1	16.62	0.100
13654	6353	2	4	42.49	0.100
13655	6353	46	1	14.44	0.000
13656	6354	35	1	42.76	0.050
13657	6355	45	5	9.25	0.000
13658	6355	1	2	572.09	0.000
13659	6355	17	1	40.02	0.000
13660	6356	13	3	12.24	0.100
13661	6356	16	4	79.90	0.000
13662	6356	32	4	89.93	0.100
13663	6356	11	4	56.41	0.050
13664	6357	6	2	557.52	0.050
13665	6357	7	4	215.92	0.100
13666	6358	39	4	72.25	0.150
13667	6359	11	5	62.07	0.050
13668	6359	36	2	65.20	0.000
13669	6360	19	5	237.50	0.050
13670	6361	28	3	12.25	0.150
13671	6361	34	3	107.17	0.050
13672	6362	35	1	47.35	0.000
13673	6362	30	1	48.24	0.100
13674	6363	31	5	90.68	0.150
13675	6364	47	5	10.08	0.000
13676	6364	18	1	84.54	0.000
13677	6365	23	1	111.90	0.000
13678	6366	4	4	230.08	0.100
13679	6367	24	5	57.11	0.000
13680	6368	26	4	29.23	0.050
13681	6368	34	3	118.36	0.000
13682	6369	30	2	46.00	0.000
13683	6369	8	5	29.77	0.000
13684	6370	11	5	60.92	0.150
13685	6371	26	5	29.96	0.150
13686	6372	45	2	8.40	0.100
13687	6372	11	2	56.38	0.150
13688	6373	21	3	243.18	0.000
13689	6373	37	5	79.18	0.000
13690	6373	20	4	11.68	0.000
13691	6373	3	2	239.47	0.150
13692	6374	1	1	535.00	0.000
13693	6374	29	3	70.09	0.000
13694	6375	41	1	60.93	0.100
13695	6375	35	4	44.11	0.000
13696	6376	46	4	14.30	0.000
13697	6377	40	1	52.35	0.150
13698	6377	29	4	66.71	0.000
13699	6377	11	4	58.79	0.050
13700	6377	4	3	212.25	0.000
13701	6378	45	5	8.74	0.000
13702	6378	13	2	11.33	0.150
13703	6378	25	3	73.57	0.000
13704	6378	18	2	84.72	0.000
13705	6379	13	5	11.11	0.000
13706	6379	23	2	110.66	0.150
13707	6379	10	3	16.48	0.150
13708	6379	44	1	15.65	0.000
13709	6380	37	4	71.85	0.150
13710	6380	35	4	48.66	0.150
13711	6380	3	4	246.15	0.100
13712	6381	25	1	78.33	0.100
13713	6381	42	1	8.01	0.100
13714	6382	11	3	56.52	0.100
13715	6383	25	1	77.98	0.100
13716	6384	46	1	15.57	0.050
13717	6385	4	2	205.25	0.000
13718	6385	45	1	8.67	0.000
13719	6386	47	4	8.96	0.050
13720	6387	32	4	82.38	0.000
13721	6388	13	4	11.35	0.000
13722	6388	1	2	603.16	0.000
13723	6388	22	1	191.58	0.000
13724	6389	33	2	61.50	0.000
13725	6390	23	1	99.97	0.050
13726	6390	18	1	91.63	0.050
13727	6391	42	4	8.58	0.100
13728	6392	9	3	108.70	0.000
13729	6393	33	3	66.68	0.100
13730	6393	31	1	89.41	0.050
13731	6393	45	1	8.34	0.150
13732	6393	21	2	226.78	0.100
13733	6394	15	5	102.45	0.100
13734	6395	2	5	47.35	0.000
13735	6395	42	5	9.28	0.050
13736	6396	8	2	30.99	0.050
13737	6396	9	1	102.04	0.000
13738	6397	28	3	12.13	0.150
13739	6397	32	4	85.88	0.100
13740	6398	25	5	75.84	0.000
13741	6399	4	1	222.99	0.000
13742	6400	24	5	50.40	0.100
13743	6401	7	1	222.77	0.150
13744	6402	37	2	68.52	0.000
13745	6402	47	1	9.63	0.150
13746	6402	40	2	54.25	0.000
13747	6402	3	4	274.56	0.000
13748	6403	16	5	86.83	0.000
13749	6403	36	4	67.30	0.000
13750	6403	33	3	69.01	0.050
13751	6403	38	1	54.10	0.000
13752	6404	9	4	106.48	0.050
13753	6405	20	5	11.61	0.050
13754	6406	13	2	12.21	0.000
13755	6406	4	4	217.75	0.050
13756	6406	35	4	48.28	0.000
13757	6407	8	5	31.82	0.150
13758	6408	24	3	50.65	0.100
13759	6408	9	1	109.45	0.050
13760	6408	10	4	17.03	0.100
13761	6409	48	5	15.63	0.100
13762	6409	22	4	198.28	0.050
13763	6409	43	1	15.35	0.000
13764	6410	22	4	202.91	0.000
13765	6410	2	1	44.79	0.150
13766	6410	47	2	9.30	0.000
13767	6411	33	4	61.97	0.000
13768	6411	30	5	48.44	0.000
13769	6412	9	1	110.46	0.000
13770	6412	26	2	30.89	0.000
13771	6412	34	1	120.32	0.000
13772	6413	48	4	17.09	0.000
13773	6414	40	1	52.59	0.000
13774	6414	42	1	8.18	0.150
13775	6415	24	2	50.96	0.000
13776	6415	15	1	104.37	0.000
13777	6415	27	3	12.45	0.150
13778	6416	20	2	10.89	0.000
13779	6416	3	2	260.07	0.000
13780	6416	15	2	98.27	0.000
13781	6416	14	5	33.54	0.150
13782	6417	11	5	61.66	0.050
13783	6417	35	5	44.11	0.050
13784	6418	36	3	69.61	0.150
13785	6418	42	5	8.68	0.000
13786	6419	13	5	11.17	0.100
13787	6419	41	3	62.35	0.050
13788	6419	48	5	17.23	0.000
13789	6420	1	1	556.38	0.000
13790	6421	12	1	127.99	0.000
13791	6422	36	3	70.64	0.150
13792	6423	8	3	28.25	0.150
13793	6423	6	4	595.96	0.150
13794	6424	42	3	8.17	0.050
13795	6424	32	2	90.94	0.150
13796	6425	14	3	32.89	0.000
13797	6425	11	2	56.81	0.000
13798	6426	6	3	612.31	0.000
13799	6426	39	1	78.49	0.000
13800	6426	31	5	92.90	0.100
13801	6426	1	3	584.14	0.100
13802	6427	37	2	70.99	0.000
13803	6428	6	5	632.04	0.000
13804	6428	35	2	48.90	0.000
13805	6429	6	2	613.62	0.000
13806	6430	13	1	10.95	0.150
13807	6430	38	5	60.11	0.000
13808	6431	16	5	82.04	0.050
13809	6431	23	1	106.71	0.000
13810	6432	48	2	16.74	0.000
13811	6432	40	2	54.46	0.000
13812	6432	21	2	229.82	0.100
13813	6432	7	5	219.17	0.050
13814	6433	28	2	12.18	0.000
13815	6434	14	4	35.76	0.150
13816	6434	16	1	86.29	0.000
13817	6435	20	2	11.05	0.000
13818	6436	42	2	9.29	0.000
13819	6437	10	3	16.79	0.000
13820	6438	28	4	11.79	0.050
13821	6438	2	5	46.69	0.100
13822	6438	43	3	13.80	0.050
13823	6438	36	1	62.24	0.100
13824	6439	15	1	96.09	0.000
13825	6440	39	1	72.96	0.100
13826	6440	35	3	43.96	0.000
13827	6440	34	5	114.31	0.000
13828	6440	33	5	67.66	0.050
13829	6441	37	4	75.85	0.000
13830	6441	30	2	49.00	0.150
13831	6442	18	1	85.83	0.050
13832	6442	33	5	65.44	0.050
13833	6443	41	4	62.90	0.000
13834	6444	8	5	27.83	0.000
13835	6445	37	4	68.47	0.000
13836	6446	25	5	70.44	0.100
13837	6446	41	5	67.20	0.000
13838	6446	35	3	46.42	0.000
13839	6447	16	3	81.82	0.050
13840	6448	34	5	115.30	0.000
13841	6448	4	5	202.25	0.000
13842	6448	27	1	11.87	0.000
13843	6449	8	4	29.26	0.150
13844	6450	31	2	92.90	0.100
13845	6451	12	2	126.52	0.050
13846	6451	21	5	224.96	0.000
13847	6451	35	2	42.89	0.050
13848	6451	17	4	37.83	0.050
13849	6452	24	2	54.34	0.100
13850	6452	2	3	48.31	0.000
13851	6453	43	5	14.58	0.100
13852	6453	28	2	11.76	0.000
13853	6454	47	2	9.19	0.150
13854	6454	10	2	16.69	0.150
13855	6454	22	3	218.11	0.050
13856	6454	27	4	11.46	0.000
13857	6455	10	1	17.93	0.000
13858	6455	47	4	10.22	0.100
13859	6456	44	3	17.16	0.050
13860	6457	48	2	16.09	0.000
13861	6457	16	3	86.76	0.000
13862	6457	42	4	8.80	0.000
13863	6458	10	1	17.97	0.000
13864	6458	31	5	91.75	0.150
13865	6459	11	5	59.79	0.050
13866	6459	6	4	632.55	0.000
13867	6460	37	4	74.37	0.000
13868	6461	29	5	67.34	0.100
13869	6462	24	5	53.70	0.150
13870	6463	3	2	277.37	0.100
13871	6464	26	3	29.76	0.100
13872	6464	25	1	77.53	0.000
13873	6464	38	2	52.21	0.150
13874	6465	21	4	244.98	0.100
13875	6465	38	5	56.51	0.000
13876	6466	33	5	68.95	0.000
13877	6467	40	1	49.83	0.000
13878	6467	46	1	15.30	0.000
13879	6467	36	5	63.10	0.150
13880	6467	24	5	57.07	0.000
13881	6468	39	4	72.88	0.050
13882	6469	42	3	8.01	0.000
13883	6470	28	5	12.13	0.000
13884	6471	35	4	48.39	0.050
13885	6471	17	5	36.39	0.100
13886	6471	30	4	51.71	0.000
13887	6471	12	1	130.29	0.000
13888	6472	20	4	10.91	0.150
13889	6472	36	3	70.17	0.050
13890	6472	30	2	47.58	0.000
13891	6472	10	3	15.56	0.050
13892	6473	35	3	44.59	0.000
13893	6473	42	3	9.27	0.150
13894	6474	41	3	59.18	0.000
13895	6474	36	4	68.42	0.000
13896	6475	47	2	10.43	0.050
13897	6476	13	4	11.45	0.000
13898	6477	44	1	17.84	0.000
13899	6478	12	4	131.45	0.000
13900	6479	34	3	110.37	0.000
13901	6479	8	4	28.00	0.050
13902	6479	43	3	15.42	0.000
13903	6479	20	5	11.24	0.150
13904	6480	16	4	81.32	0.000
13905	6480	46	4	15.11	0.150
13906	6480	40	3	52.88	0.000
13907	6481	15	3	96.78	0.000
13908	6481	36	2	63.70	0.000
13909	6481	25	2	78.20	0.100
13910	6481	47	4	9.90	0.000
13911	6482	7	3	208.57	0.000
13912	6482	18	3	88.78	0.150
13913	6482	17	2	39.33	0.000
13914	6483	21	5	255.67	0.000
13915	6484	13	1	11.77	0.000
13916	6484	31	5	89.15	0.150
13917	6485	40	3	53.16	0.050
13918	6485	1	2	608.91	0.100
13919	6485	22	2	194.82	0.000
13920	6485	43	1	15.34	0.100
13921	6486	28	4	11.32	0.100
13922	6487	39	5	74.31	0.000
13923	6488	47	3	9.36	0.000
13924	6489	15	5	100.38	0.000
13925	6489	25	5	69.48	0.150
13926	6489	46	4	14.44	0.150
13927	6489	10	5	17.06	0.050
13928	6490	47	1	9.51	0.050
13929	6490	11	1	61.65	0.000
13930	6491	14	4	34.19	0.100
13931	6491	38	2	58.11	0.100
13932	6491	16	1	79.20	0.150
13933	6491	8	1	30.22	0.100
13934	6492	10	3	16.49	0.000
13935	6492	11	5	58.30	0.000
13936	6493	32	1	89.56	0.000
13937	6493	22	5	207.99	0.150
13938	6494	40	4	49.33	0.000
13939	6495	44	1	16.92	0.050
13940	6495	26	5	29.20	0.000
13941	6496	42	4	8.67	0.000
13942	6496	22	4	209.63	0.150
13943	6496	16	5	86.64	0.050
13944	6496	34	2	119.05	0.000
13945	6497	46	4	15.04	0.000
13946	6497	44	2	16.10	0.050
13947	6497	14	5	36.49	0.150
13948	6497	48	5	17.02	0.000
13949	6498	13	1	11.59	0.100
13950	6498	23	2	112.61	0.000
13951	6498	33	5	59.25	0.000
13952	6499	3	2	241.99	0.050
13953	6500	37	4	73.14	0.100
13954	6500	42	5	8.43	0.100
13955	6500	29	4	62.48	0.150
13956	6500	18	3	87.39	0.000
13957	6501	46	3	15.00	0.050
13958	6501	45	5	8.99	0.100
13959	6501	42	2	9.32	0.050
13960	6502	38	3	51.87	0.050
13961	6502	32	4	83.05	0.050
13962	6502	31	1	98.97	0.050
13963	6503	22	2	212.72	0.100
13964	6503	33	5	63.93	0.050
13965	6504	15	5	91.50	0.100
13966	6505	20	5	10.82	0.050
13967	6505	41	1	62.75	0.000
13968	6506	45	3	8.99	0.050
13969	6506	3	2	250.49	0.000
13970	6506	4	2	219.11	0.100
13971	6506	24	2	49.94	0.150
13972	6507	25	4	69.80	0.000
13973	6508	9	5	104.11	0.050
13974	6509	37	3	75.77	0.000
13975	6509	48	2	17.28	0.150
13976	6509	45	2	8.42	0.000
13977	6509	14	4	35.48	0.050
13978	6510	32	2	83.10	0.100
13979	6510	42	5	8.88	0.150
13980	6511	19	1	220.66	0.000
13981	6512	9	1	107.75	0.000
13982	6512	1	5	583.67	0.000
13983	6512	28	5	12.47	0.050
13984	6513	2	1	46.17	0.000
13985	6514	19	3	241.31	0.000
13986	6514	35	4	45.57	0.050
13987	6515	20	4	11.51	0.000
13988	6515	44	1	16.29	0.150
13989	6515	21	4	221.21	0.000
13990	6516	33	4	67.68	0.150
13991	6516	38	4	54.22	0.050
13992	6516	37	2	72.44	0.050
13993	6517	29	4	65.58	0.000
13994	6517	17	3	38.52	0.000
13995	6518	19	2	251.17	0.100
13996	6519	11	4	60.71	0.150
13997	6519	25	3	78.00	0.000
13998	6520	4	3	209.18	0.050
13999	6520	48	1	15.38	0.000
14000	6520	16	5	82.86	0.000
14001	6520	25	2	76.70	0.000
14002	6521	4	5	201.59	0.000
14003	6521	36	2	60.96	0.000
14004	6522	48	5	17.28	0.050
14005	6523	25	3	71.39	0.000
14006	6524	36	5	63.35	0.150
14007	6524	30	2	48.21	0.100
14008	6525	30	1	48.69	0.150
14009	6526	10	1	17.56	0.100
14010	6526	4	5	217.73	0.000
14011	6526	11	4	63.97	0.050
14012	6527	46	2	14.07	0.150
14013	6527	17	5	35.98	0.100
14014	6527	1	5	531.26	0.050
14015	6527	8	5	30.69	0.100
14016	6528	15	4	96.17	0.000
14017	6528	30	4	47.32	0.150
14018	6529	6	4	560.10	0.100
14019	6530	16	3	80.52	0.100
14020	6531	11	3	61.97	0.000
14021	6531	40	3	50.02	0.050
14022	6532	28	3	12.55	0.000
14023	6532	21	4	238.00	0.100
14024	6533	2	5	46.92	0.000
14025	6533	43	1	13.79	0.000
14026	6533	38	4	59.04	0.000
14027	6533	29	3	71.21	0.100
14028	6534	8	4	31.64	0.000
14029	6534	26	2	28.22	0.150
14030	6534	6	2	592.66	0.050
14031	6535	33	1	67.51	0.100
14032	6536	41	5	63.40	0.000
14033	6536	10	2	16.06	0.000
14034	6537	4	1	228.75	0.050
14035	6537	34	3	118.52	0.000
14036	6538	20	1	11.81	0.000
14037	6539	7	2	218.83	0.050
14038	6540	11	1	56.84	0.000
14039	6540	38	2	57.50	0.000
14040	6540	41	3	64.71	0.000
14041	6541	4	5	210.76	0.050
14042	6541	26	1	31.17	0.100
14043	6542	39	5	75.10	0.100
14044	6542	6	2	578.56	0.150
14045	6543	44	1	16.32	0.000
14046	6544	38	3	54.34	0.000
14047	6545	7	4	211.44	0.000
14048	6545	46	4	15.46	0.050
14049	6546	13	3	11.61	0.000
14050	6546	15	5	105.26	0.050
14051	6546	40	5	56.28	0.100
14052	6546	12	5	129.15	0.100
14053	6547	14	4	33.43	0.000
14054	6548	34	4	105.72	0.000
14055	6548	9	2	110.29	0.150
14056	6549	24	1	54.18	0.000
14057	6550	45	5	8.91	0.100
14058	6550	18	5	86.30	0.000
14059	6551	21	5	245.68	0.150
14060	6552	35	4	45.36	0.050
14061	6552	20	3	11.04	0.000
14062	6553	37	5	72.85	0.050
14063	6553	26	4	30.30	0.000
14064	6553	9	2	106.97	0.050
14065	6553	10	4	17.24	0.000
14066	6554	26	3	31.48	0.150
14067	6554	24	5	52.93	0.150
14068	6554	33	2	63.58	0.100
14069	6554	7	5	207.63	0.000
14070	6555	39	2	80.68	0.150
14071	6555	3	1	270.73	0.000
14072	6556	23	2	102.14	0.150
14073	6556	21	5	247.49	0.000
14074	6556	14	3	33.41	0.050
14075	6557	26	5	29.03	0.000
14076	6557	22	2	201.01	0.150
14077	6558	30	4	49.34	0.000
14078	6558	3	2	268.66	0.050
14079	6559	33	5	66.00	0.050
14080	6559	14	3	35.35	0.000
14081	6559	16	2	85.57	0.100
14082	6559	36	4	69.54	0.000
14083	6560	48	5	15.61	0.000
14084	6560	33	4	63.92	0.150
14085	6560	29	5	65.04	0.050
14086	6561	9	3	103.73	0.000
14087	6561	42	5	8.04	0.100
14088	6562	40	4	49.59	0.000
14089	6562	30	4	50.48	0.050
14090	6562	39	2	77.38	0.050
14091	6563	38	1	59.88	0.050
14092	6564	39	5	76.08	0.000
14093	6564	1	5	553.67	0.150
14094	6565	28	2	11.11	0.000
14095	6566	22	2	222.87	0.000
14096	6567	20	5	11.25	0.000
14097	6568	28	1	11.31	0.100
14098	6568	32	2	90.28	0.000
14099	6569	23	4	112.30	0.050
14100	6569	8	4	32.04	0.000
14101	6570	46	3	15.45	0.100
14102	6571	38	2	57.73	0.100
14103	6571	45	5	9.16	0.100
14104	6572	24	1	56.58	0.100
14105	6573	2	1	46.49	0.000
14106	6574	23	1	104.70	0.050
14107	6574	21	1	233.53	0.000
14108	6574	45	2	8.48	0.050
14109	6574	41	4	60.18	0.050
14110	6575	46	4	13.92	0.000
14111	6576	36	1	65.84	0.100
14112	6577	2	1	49.22	0.100
14113	6578	26	4	27.22	0.050
14114	6578	24	4	55.22	0.100
14115	6578	35	3	43.34	0.000
14116	6578	43	4	13.62	0.000
14117	6579	8	5	29.36	0.000
14118	6580	22	1	204.28	0.050
14119	6580	36	5	64.35	0.150
14120	6581	12	1	133.93	0.050
14121	6581	44	3	16.28	0.050
14122	6582	18	2	93.84	0.000
14123	6583	25	2	79.70	0.000
14124	6583	21	3	251.84	0.050
14125	6584	26	4	29.95	0.000
14126	6584	9	2	105.62	0.000
14127	6584	29	1	65.05	0.000
14128	6584	42	3	8.50	0.000
14129	6585	20	5	11.06	0.000
14130	6586	27	4	12.21	0.050
14131	6587	19	1	225.92	0.100
14132	6588	31	5	99.05	0.000
14133	6588	27	5	11.59	0.150
14134	6589	29	3	71.38	0.000
14135	6590	21	2	228.44	0.050
14136	6591	20	1	11.46	0.100
14137	6591	35	2	45.01	0.000
14138	6591	2	4	46.03	0.050
14139	6592	45	3	9.06	0.000
14140	6593	29	4	69.86	0.050
14141	6593	14	2	36.87	0.000
14142	6593	12	3	118.66	0.000
14143	6594	23	4	100.00	0.050
14144	6595	38	4	59.01	0.000
14145	6596	14	5	35.29	0.050
14146	6596	16	4	87.45	0.050
14147	6597	38	2	53.47	0.000
14148	6597	16	4	85.74	0.150
14149	6598	1	3	609.40	0.000
14150	6599	8	4	30.43	0.050
14151	6599	35	1	45.63	0.050
14152	6600	10	2	17.89	0.000
14153	6601	20	3	12.40	0.100
14154	6602	44	4	16.36	0.050
14155	6603	7	3	207.67	0.050
14156	6603	42	1	9.02	0.150
14157	6604	20	1	12.14	0.100
14158	6604	6	5	578.74	0.100
14159	6604	29	2	62.81	0.000
14160	6605	15	4	95.41	0.100
14161	6606	18	2	89.18	0.050
14162	6607	36	3	65.79	0.000
14163	6608	4	5	212.86	0.000
14164	6608	33	3	62.71	0.000
14165	6609	13	3	12.21	0.000
14166	6609	31	5	92.00	0.000
14167	6610	20	2	10.75	0.000
14168	6610	38	3	57.10	0.000
14169	6611	23	2	100.29	0.150
14170	6611	12	3	133.81	0.150
14171	6612	39	5	79.88	0.050
14172	6612	28	4	11.49	0.100
14173	6613	44	4	17.70	0.000
14174	6614	34	3	107.48	0.000
14175	6614	13	2	11.04	0.000
14176	6615	10	3	17.66	0.000
14177	6615	6	3	637.68	0.050
14178	6616	21	5	227.44	0.000
14179	6616	22	5	213.88	0.000
14180	6616	36	1	64.56	0.150
14181	6617	41	5	61.46	0.150
14182	6618	8	1	32.24	0.050
14183	6618	24	2	55.23	0.100
14184	6618	7	4	217.24	0.000
14185	6619	8	4	31.36	0.050
14186	6619	43	1	13.83	0.000
14187	6620	36	4	64.24	0.000
14188	6621	9	4	110.32	0.050
14189	6621	43	5	15.19	0.050
14190	6622	33	3	60.44	0.000
14191	6622	23	4	105.05	0.100
14192	6623	12	2	118.67	0.000
14193	6623	32	3	89.19	0.150
14194	6623	10	5	15.88	0.000
14195	6624	18	2	84.11	0.000
14196	6625	48	2	17.00	0.000
14197	6626	2	5	47.67	0.150
14198	6626	20	1	11.69	0.000
14199	6626	11	2	62.79	0.000
14200	6626	13	2	10.72	0.000
14201	6627	33	4	59.65	0.150
14202	6627	21	1	255.61	0.050
14203	6627	29	4	63.04	0.000
14204	6628	46	1	15.17	0.150
14205	6628	30	2	47.34	0.000
14206	6629	15	1	96.85	0.000
14207	6629	18	4	89.92	0.000
14208	6630	28	4	11.86	0.000
14209	6631	2	2	42.42	0.050
14210	6631	7	3	234.08	0.050
14211	6631	8	1	31.80	0.050
14212	6632	18	5	90.58	0.150
14213	6632	42	5	9.02	0.150
14214	6633	45	2	8.60	0.150
14215	6634	21	5	221.46	0.150
14216	6635	30	1	45.94	0.000
14217	6635	35	5	46.67	0.050
14218	6635	8	5	27.91	0.000
14219	6636	26	3	31.75	0.000
14220	6637	35	1	46.14	0.000
14221	6637	7	4	208.90	0.000
14222	6637	31	3	91.06	0.150
14223	6637	34	1	119.29	0.000
14224	6638	15	1	91.02	0.000
14225	6638	19	5	239.36	0.000
14226	6639	44	2	16.35	0.000
14227	6639	3	4	249.16	0.000
14228	6640	41	4	64.28	0.000
14229	6641	22	2	199.48	0.000
14230	6641	15	3	101.39	0.000
14231	6642	8	3	29.53	0.000
14232	6643	13	5	11.30	0.050
14233	6643	45	5	8.66	0.000
14234	6643	4	4	203.62	0.000
14235	6643	24	2	52.50	0.000
14236	6644	41	4	60.90	0.000
14237	6644	32	5	86.82	0.150
14238	6644	47	1	9.21	0.000
14239	6645	46	4	15.20	0.000
14240	6645	38	5	59.62	0.000
14241	6646	35	5	49.40	0.050
14242	6647	40	1	51.72	0.150
14243	6647	12	4	134.65	0.000
14244	6648	38	4	60.33	0.100
14245	6648	14	4	36.47	0.150
14246	6648	1	1	605.49	0.050
14247	6648	6	2	586.44	0.050
14248	6649	47	1	9.94	0.000
14249	6649	19	2	232.35	0.050
14250	6650	11	4	62.60	0.050
14251	6650	18	3	84.30	0.100
14252	6651	45	1	9.46	0.100
14253	6651	48	1	15.19	0.050
14254	6651	3	1	252.36	0.000
14255	6652	31	1	101.03	0.050
14256	6652	24	1	56.97	0.150
14257	6653	42	1	9.03	0.000
14258	6654	16	5	78.52	0.050
14259	6654	21	5	227.17	0.000
14260	6655	46	4	15.31	0.150
14261	6655	1	5	609.07	0.050
14262	6655	6	2	619.71	0.000
14263	6656	2	4	42.72	0.000
14264	6657	24	4	54.31	0.150
14265	6657	18	3	95.03	0.000
14266	6657	11	5	61.32	0.000
14267	6657	43	5	15.35	0.000
14268	6658	12	2	123.03	0.000
14269	6658	38	2	55.84	0.050
14270	6659	21	3	253.35	0.000
14271	6659	40	2	53.94	0.100
14272	6659	26	2	27.93	0.000
14273	6660	30	2	50.17	0.000
14274	6660	13	4	11.00	0.000
14275	6660	14	2	37.48	0.050
14276	6660	42	2	8.50	0.050
14277	6661	1	5	527.22	0.050
14278	6662	12	5	125.24	0.000
14279	6663	42	5	9.15	0.000
14280	6663	24	4	57.32	0.150
14281	6664	4	3	206.18	0.050
14282	6664	36	2	67.93	0.000
14283	6665	27	4	11.39	0.100
14284	6666	19	4	238.42	0.000
14285	6667	43	5	14.26	0.100
14286	6667	35	4	43.37	0.100
14287	6667	21	1	219.35	0.000
14288	6668	15	1	98.29	0.000
14289	6668	42	5	8.35	0.150
14290	6669	22	3	193.30	0.150
14291	6669	25	1	74.45	0.000
14292	6669	1	1	595.33	0.000
14293	6670	8	2	27.83	0.100
14294	6671	36	2	64.45	0.000
14295	6672	7	2	224.40	0.050
14296	6672	28	1	11.35	0.050
14297	6673	4	3	209.93	0.100
14298	6673	20	2	11.70	0.000
14299	6673	35	2	48.84	0.000
14300	6673	25	3	72.96	0.000
14301	6674	30	1	52.39	0.000
14302	6674	10	3	15.94	0.000
14303	6674	43	4	14.64	0.150
14304	6674	41	3	64.76	0.050
14305	6675	22	2	208.17	0.050
14306	6675	12	2	124.29	0.100
14307	6675	35	3	42.77	0.000
14308	6676	24	1	53.24	0.000
14309	6677	19	4	222.30	0.000
14310	6677	7	5	205.11	0.000
14311	6677	41	1	63.76	0.150
14312	6678	6	2	618.78	0.100
14313	6678	27	5	11.06	0.100
14314	6678	32	4	90.90	0.150
14315	6679	43	3	15.12	0.150
14316	6679	4	3	203.13	0.150
14317	6680	44	5	16.61	0.000
14318	6680	26	5	30.97	0.050
14319	6681	35	3	48.80	0.000
14320	6681	10	4	15.80	0.050
14321	6682	38	1	53.25	0.150
14322	6682	9	2	110.90	0.000
14323	6682	20	5	11.63	0.150
14324	6683	14	1	32.73	0.150
14325	6684	11	4	58.11	0.050
14326	6685	7	3	204.23	0.000
14327	6685	35	1	48.60	0.000
14328	6685	17	1	36.15	0.000
14329	6685	48	3	16.81	0.000
14330	6686	36	1	69.25	0.000
14331	6686	18	4	94.48	0.000
14332	6687	44	5	16.18	0.100
14333	6688	12	3	137.36	0.000
14334	6688	11	4	58.70	0.150
14335	6689	2	3	45.69	0.000
14336	6690	16	3	84.79	0.050
14337	6690	28	2	11.32	0.100
14338	6690	26	3	27.79	0.000
14339	6690	9	2	114.56	0.150
14340	6691	2	3	42.46	0.000
14341	6692	36	2	67.09	0.100
14342	6692	45	2	9.30	0.000
14343	6692	12	1	123.79	0.000
14344	6693	41	4	61.99	0.000
14345	6693	15	4	103.17	0.050
14346	6693	26	4	27.79	0.100
14347	6694	17	1	39.26	0.100
14348	6695	6	2	558.27	0.000
14349	6696	24	2	53.76	0.000
14350	6696	8	5	28.64	0.050
14351	6697	23	3	102.43	0.100
14352	6697	9	3	101.97	0.150
14353	6698	16	3	79.99	0.000
14354	6698	15	2	94.18	0.100
14355	6698	29	4	71.17	0.150
14356	6698	36	4	64.58	0.050
14357	6699	40	1	50.82	0.000
14358	6700	24	2	55.73	0.000
14359	6700	46	2	14.42	0.000
14360	6701	13	2	10.78	0.000
14361	6701	28	1	11.21	0.000
14362	6702	17	2	36.93	0.000
14363	6702	13	2	11.76	0.150
14364	6702	36	4	62.71	0.150
14365	6703	33	4	68.64	0.000
14366	6703	32	5	89.12	0.050
14367	6704	6	5	609.07	0.000
14368	6704	37	5	73.57	0.000
14369	6705	42	5	8.52	0.000
14370	6706	13	1	11.27	0.000
14371	6706	46	3	15.35	0.000
14372	6706	20	1	11.50	0.000
14373	6707	36	5	65.85	0.000
14374	6707	28	4	12.48	0.050
14375	6708	47	4	9.18	0.150
14376	6708	31	3	100.74	0.050
14377	6709	12	1	129.09	0.000
14378	6709	15	5	93.83	0.000
14379	6709	38	3	55.62	0.100
14380	6709	13	3	10.65	0.000
14381	6710	9	1	104.09	0.000
14382	6711	7	4	209.18	0.000
14383	6712	34	3	106.57	0.000
14384	6712	2	3	48.40	0.150
14385	6712	30	2	52.71	0.000
14386	6713	10	2	16.02	0.000
14387	6713	26	2	29.14	0.000
14388	6714	3	5	264.73	0.050
14389	6714	20	5	10.84	0.000
14390	6714	19	3	228.31	0.150
14391	6714	1	5	552.01	0.100
14392	6715	6	3	609.16	0.100
14393	6715	16	5	83.47	0.050
14394	6715	19	4	251.89	0.000
14395	6715	29	4	63.49	0.000
14396	6716	17	4	37.87	0.000
14397	6716	1	2	547.91	0.000
14398	6716	33	5	60.79	0.050
14399	6716	20	3	11.06	0.000
14400	6717	13	1	10.85	0.100
14401	6718	14	3	37.77	0.050
14402	6719	39	2	77.17	0.150
14403	6719	13	4	11.56	0.000
14404	6720	6	2	602.44	0.050
14405	6721	36	2	64.43	0.000
14406	6721	41	5	62.95	0.050
14407	6722	25	4	78.99	0.000
14408	6723	14	3	34.71	0.000
14409	6723	17	1	38.71	0.150
14410	6723	29	3	71.64	0.050
14411	6723	37	5	73.32	0.000
14412	6724	18	5	87.90	0.150
14413	6725	36	1	67.22	0.050
14414	6726	36	1	68.83	0.100
14415	6726	23	2	103.57	0.000
14416	6726	6	1	630.03	0.150
14417	6727	34	3	107.11	0.000
14418	6727	7	4	211.59	0.100
14419	6728	45	2	8.29	0.000
14420	6729	16	2	87.10	0.000
14421	6729	10	4	15.62	0.000
14422	6729	4	5	199.70	0.100
14423	6729	40	4	49.66	0.000
14424	6730	6	4	578.43	0.000
14425	6731	3	1	253.27	0.000
14426	6731	13	3	10.98	0.000
14427	6732	47	1	9.89	0.150
14428	6732	24	1	53.52	0.150
14429	6732	13	1	11.91	0.000
14430	6732	18	1	92.68	0.100
14431	6733	2	3	45.35	0.000
14432	6734	27	1	11.23	0.000
14433	6734	39	1	78.01	0.050
14434	6734	24	2	54.73	0.100
14435	6735	46	1	13.98	0.100
14436	6735	30	1	46.72	0.000
14437	6735	33	2	63.32	0.050
14438	6735	22	2	214.04	0.000
14439	6736	40	3	53.79	0.000
14440	6737	6	1	625.32	0.050
14441	6737	47	1	9.20	0.150
14442	6738	13	2	11.58	0.100
14443	6738	2	5	46.61	0.150
14444	6739	33	3	64.81	0.100
14445	6740	32	1	84.21	0.000
14446	6740	30	2	46.55	0.000
14447	6741	35	3	46.20	0.000
14448	6741	17	5	36.94	0.100
14449	6742	47	3	10.19	0.000
14450	6742	46	3	15.22	0.000
14451	6742	18	5	84.00	0.050
14452	6743	11	5	58.82	0.050
14453	6744	7	1	224.58	0.150
14454	6744	32	4	91.06	0.000
14455	6744	3	4	243.60	0.100
14456	6744	47	4	9.35	0.050
14457	6745	22	5	192.59	0.150
14458	6745	41	1	59.60	0.100
14459	6746	22	2	213.67	0.050
14460	6746	17	2	37.80	0.050
14461	6746	33	2	61.87	0.000
14462	6746	14	3	34.19	0.000
14463	6747	24	5	55.48	0.100
14464	6747	29	1	62.93	0.000
14465	6748	10	3	16.86	0.050
14466	6749	2	2	43.24	0.050
14467	6749	33	1	62.32	0.050
14468	6750	8	2	27.92	0.000
14469	6750	28	2	11.76	0.000
14470	6751	46	3	14.95	0.000
14471	6751	44	2	15.72	0.000
14472	6751	22	1	205.10	0.000
14473	6752	33	4	68.46	0.050
14474	6753	7	2	221.44	0.050
14475	6753	8	2	31.94	0.000
14476	6753	31	5	98.03	0.050
14477	6754	25	4	78.19	0.000
14478	6754	10	4	15.65	0.000
14479	6754	9	5	106.61	0.000
14480	6755	31	5	99.27	0.000
14481	6755	17	3	36.72	0.000
14482	6756	31	3	101.02	0.000
14483	6757	30	5	52.36	0.000
14484	6757	37	5	77.42	0.150
14485	6757	18	5	89.23	0.050
14486	6757	22	3	203.16	0.000
14487	6758	46	1	13.72	0.000
14488	6758	25	4	79.78	0.050
14489	6758	15	1	96.02	0.050
14490	6758	1	2	542.32	0.150
14491	6759	46	4	15.60	0.100
14492	6759	16	2	82.11	0.100
14493	6759	10	5	15.51	0.000
14494	6760	28	4	12.67	0.100
14495	6760	25	2	75.55	0.000
14496	6761	22	4	213.50	0.000
14497	6762	11	3	63.36	0.050
14498	6762	27	3	11.05	0.000
14499	6762	14	5	37.23	0.050
14500	6763	38	2	57.25	0.000
14501	6763	8	5	30.43	0.000
14502	6763	48	4	16.62	0.000
14503	6763	44	4	17.59	0.100
14504	6764	47	2	9.20	0.100
14505	6764	1	3	584.79	0.000
14506	6765	17	2	37.99	0.050
14507	6765	10	5	16.69	0.150
14508	6765	9	2	111.08	0.050
14509	6765	43	4	15.14	0.150
14510	6766	32	5	92.67	0.050
14511	6766	27	5	11.80	0.000
14512	6767	20	1	11.21	0.100
14513	6767	25	1	77.13	0.150
14514	6768	46	4	13.87	0.000
14515	6769	16	5	86.67	0.050
14516	6770	37	2	75.65	0.000
14517	6771	46	1	15.35	0.000
14518	6772	29	4	71.05	0.000
14519	6772	44	2	17.87	0.100
14520	6773	36	3	66.92	0.000
14521	6774	48	5	15.20	0.100
14522	6774	39	2	75.97	0.150
14523	6774	36	5	64.19	0.000
14524	6775	48	2	16.66	0.000
14525	6775	15	4	93.00	0.000
14526	6776	14	5	37.30	0.000
14527	6777	48	3	15.33	0.100
14528	6777	30	2	45.55	0.000
14529	6777	7	2	234.33	0.000
14530	6778	35	2	46.51	0.000
14531	6778	24	1	54.17	0.000
14532	6779	14	5	33.12	0.000
14533	6779	35	1	43.88	0.000
14534	6779	1	4	596.72	0.000
14535	6780	40	5	50.70	0.000
14536	6780	36	5	61.62	0.150
14537	6781	4	4	229.35	0.100
14538	6781	15	3	102.39	0.000
14539	6781	28	3	11.78	0.000
14540	6782	43	2	14.02	0.150
14541	6783	26	5	29.44	0.000
14542	6783	36	4	70.66	0.150
14543	6784	22	4	198.75	0.000
14544	6784	43	2	14.15	0.150
14545	6785	17	2	37.86	0.000
14546	6786	8	2	28.68	0.000
14547	6786	17	3	39.24	0.100
14548	6786	27	1	11.89	0.000
14549	6787	38	4	55.23	0.000
14550	6788	9	4	109.58	0.150
14551	6789	22	2	220.93	0.000
14552	6789	13	5	11.30	0.000
14553	6790	40	1	54.29	0.000
14554	6791	39	1	81.08	0.100
14555	6791	22	3	204.80	0.100
14556	6791	17	4	40.32	0.000
14557	6791	9	3	112.44	0.000
14558	6792	42	2	8.58	0.150
14559	6793	25	3	69.57	0.000
14560	6793	6	4	624.69	0.000
14561	6793	20	2	11.38	0.000
14562	6793	15	2	97.87	0.000
14563	6794	47	2	9.23	0.100
14564	6794	22	5	210.09	0.050
14565	6794	31	2	96.01	0.100
14566	6795	16	1	80.17	0.100
14567	6796	16	2	84.54	0.050
14568	6796	8	5	32.23	0.000
14569	6796	36	5	67.38	0.100
14570	6797	21	5	222.08	0.000
14571	6797	4	1	224.63	0.000
14572	6798	23	2	101.38	0.000
14573	6798	21	1	238.06	0.100
14574	6799	20	4	11.87	0.050
14575	6800	15	5	95.10	0.150
14576	6800	8	4	28.60	0.050
14577	6800	9	3	115.69	0.000
14578	6801	3	3	254.02	0.150
14579	6802	24	2	50.53	0.100
14580	6802	45	5	8.84	0.100
14581	6803	9	5	101.64	0.050
14582	6804	45	4	9.49	0.050
14583	6804	25	3	75.52	0.000
14584	6805	17	5	39.67	0.000
14585	6806	43	1	14.13	0.000
14586	6806	13	3	11.88	0.150
14587	6807	32	1	84.92	0.050
14588	6808	23	1	107.38	0.050
14589	6809	8	1	30.89	0.000
14590	6809	37	4	73.85	0.000
14591	6810	20	5	11.09	0.150
14592	6810	28	4	12.02	0.150
14593	6811	3	5	272.94	0.100
14594	6812	37	1	69.91	0.000
14595	6813	8	2	30.91	0.000
14596	6814	11	2	63.16	0.000
14597	6815	12	1	124.58	0.100
14598	6816	28	2	12.40	0.000
14599	6817	6	1	610.91	0.150
14600	6817	21	5	254.69	0.000
14601	6818	31	1	100.44	0.150
14602	6819	3	1	251.49	0.000
14603	6820	21	2	231.60	0.000
14604	6820	7	3	209.40	0.050
14605	6820	25	4	78.84	0.000
14606	6820	28	3	11.81	0.150
14607	6821	7	5	214.77	0.050
14608	6821	32	2	84.60	0.000
14609	6822	42	2	8.38	0.050
14610	6822	30	5	45.78	0.150
14611	6823	31	1	94.83	0.100
14612	6823	13	1	10.60	0.000
14613	6823	3	5	260.58	0.000
14614	6824	33	3	67.95	0.000
14615	6824	4	1	209.98	0.000
14616	6824	11	5	57.45	0.050
14617	6824	24	3	55.68	0.100
14618	6825	7	5	218.42	0.000
14619	6826	25	2	76.87	0.150
14620	6827	22	3	219.37	0.100
14621	6828	41	2	63.32	0.000
14622	6828	4	3	205.73	0.000
14623	6829	22	1	196.74	0.000
14624	6830	24	1	55.45	0.000
14625	6830	28	1	12.34	0.100
14626	6830	35	4	47.54	0.150
14627	6831	31	4	96.67	0.050
14628	6831	10	5	17.97	0.150
14629	6831	11	4	61.29	0.100
14630	6831	6	1	562.54	0.100
14631	6832	19	5	244.16	0.000
14632	6832	2	4	43.42	0.150
14633	6832	25	1	75.54	0.000
14634	6833	44	1	17.53	0.050
14635	6833	31	1	94.72	0.150
14636	6834	3	5	243.84	0.150
14637	6834	4	1	200.35	0.000
14638	6835	40	4	53.51	0.150
14639	6835	36	3	67.15	0.050
14640	6835	14	3	34.74	0.100
14641	6836	14	4	37.53	0.150
14642	6836	15	1	95.69	0.000
14643	6837	39	5	77.92	0.000
14644	6837	42	1	9.09	0.000
14645	6837	2	2	48.62	0.000
14646	6837	22	5	206.37	0.050
14647	6838	20	5	11.83	0.050
14648	6838	12	4	128.02	0.050
14649	6839	22	3	199.61	0.100
14650	6839	25	5	80.42	0.000
14651	6840	36	5	70.64	0.050
14652	6840	12	1	122.74	0.000
14653	6840	10	5	16.14	0.000
14654	6840	40	1	50.94	0.000
14655	6841	6	1	580.18	0.150
14656	6842	32	1	86.85	0.150
14657	6842	2	5	45.24	0.150
14658	6842	42	4	8.53	0.050
14659	6843	26	4	27.32	0.150
14660	6843	1	4	548.25	0.150
14661	6843	39	2	75.71	0.000
14662	6843	10	1	16.43	0.150
14663	6844	38	1	51.96	0.000
14664	6845	20	3	11.23	0.000
14665	6846	12	1	128.43	0.000
14666	6847	42	3	8.54	0.150
14667	6848	12	5	120.21	0.150
14668	6848	1	3	531.59	0.000
14669	6848	15	1	93.59	0.000
14670	6848	28	5	12.33	0.100
14671	6849	48	4	17.54	0.000
14672	6849	42	4	9.26	0.050
14673	6850	1	4	552.20	0.000
14674	6850	2	2	42.57	0.000
14675	6850	13	3	12.27	0.100
14676	6851	2	5	43.10	0.050
14677	6851	26	5	29.15	0.150
14678	6852	37	1	76.92	0.000
14679	6852	44	4	16.69	0.150
14680	6852	23	3	103.34	0.100
14681	6852	18	4	90.57	0.050
14682	6853	48	4	15.29	0.150
14683	6854	48	1	16.44	0.000
14684	6854	16	2	81.96	0.050
14685	6854	38	1	56.12	0.050
14686	6855	4	3	213.58	0.000
14687	6855	44	2	17.02	0.000
14688	6856	11	3	58.75	0.000
14689	6856	48	1	16.97	0.050
14690	6857	4	1	226.86	0.000
14691	6858	47	3	10.02	0.000
14692	6859	19	5	239.25	0.000
14693	6859	29	5	71.43	0.050
14694	6859	41	2	62.09	0.000
14695	6860	18	2	89.43	0.000
14696	6860	4	2	230.09	0.000
14697	6860	47	5	9.14	0.000
14698	6860	14	3	33.90	0.100
14699	6861	38	2	55.68	0.000
14700	6861	41	5	62.22	0.000
14701	6862	40	5	52.04	0.050
14702	6862	1	5	574.14	0.050
14703	6862	3	2	256.57	0.100
14704	6863	44	4	17.65	0.000
14705	6864	46	2	14.08	0.000
14706	6864	32	2	83.39	0.000
14707	6865	48	1	17.15	0.000
14708	6866	27	5	11.99	0.000
14709	6866	41	4	68.09	0.050
14710	6866	38	4	53.04	0.150
14711	6867	8	3	29.97	0.000
14712	6867	16	3	81.27	0.050
14713	6868	36	2	70.83	0.000
14714	6869	7	3	201.73	0.000
14715	6870	42	3	8.84	0.000
14716	6870	33	1	60.69	0.050
14717	6870	35	3	48.06	0.000
14718	6870	21	2	238.78	0.150
14719	6871	6	1	576.87	0.100
14720	6871	35	5	42.70	0.150
14721	6871	11	1	61.87	0.050
14722	6871	22	5	209.19	0.000
14723	6872	23	2	113.11	0.050
14724	6873	16	5	89.17	0.000
14725	6873	20	5	11.10	0.000
14726	6873	46	4	13.70	0.000
14727	6874	25	1	71.04	0.000
14728	6875	7	4	231.62	0.100
14729	6875	26	4	30.93	0.000
14730	6875	16	3	80.06	0.050
14731	6875	25	4	70.36	0.000
14732	6876	7	3	215.60	0.150
14733	6876	16	5	84.19	0.150
14734	6876	2	2	46.47	0.000
14735	6876	37	2	72.47	0.100
14736	6877	34	2	105.53	0.000
14737	6877	36	3	67.47	0.000
14738	6877	39	4	74.65	0.050
14739	6878	20	3	11.55	0.150
14740	6878	11	4	57.21	0.000
14741	6879	48	3	15.71	0.000
14742	6879	9	3	108.68	0.100
14743	6880	14	3	34.55	0.150
14744	6880	3	2	242.01	0.050
14745	6880	8	2	29.81	0.000
14746	6880	12	2	120.14	0.150
14747	6881	44	2	16.10	0.150
14748	6881	34	3	121.31	0.100
14749	6882	47	3	9.88	0.000
14750	6883	15	3	100.97	0.000
14751	6883	4	3	220.84	0.050
14752	6883	10	2	15.93	0.050
14753	6883	21	2	224.50	0.050
14754	6884	15	3	95.24	0.150
14755	6884	25	4	73.36	0.000
14756	6884	8	5	29.98	0.100
14757	6884	24	4	55.19	0.000
14758	6885	20	5	10.70	0.100
14759	6885	9	5	114.43	0.000
14760	6886	10	2	17.42	0.000
14761	6886	48	3	15.24	0.150
14762	6887	27	4	10.89	0.000
14763	6888	4	4	199.96	0.100
14764	6888	1	5	574.98	0.100
14765	6889	32	5	92.38	0.050
14766	6889	21	4	222.78	0.000
14767	6889	26	1	27.79	0.000
14768	6889	20	1	11.51	0.000
14769	6890	32	2	81.34	0.000
14770	6890	20	2	11.64	0.000
14771	6891	48	1	15.19	0.050
14772	6891	3	3	244.53	0.000
14773	6892	33	2	60.24	0.000
14774	6893	37	4	71.43	0.050
14775	6894	6	4	608.83	0.100
14776	6895	33	1	60.34	0.150
14777	6895	38	2	52.82	0.150
14778	6896	17	4	38.46	0.100
14779	6896	14	5	38.00	0.000
14780	6897	47	5	8.95	0.000
14781	6898	6	5	594.03	0.050
14782	6899	38	5	58.43	0.150
14783	6899	23	5	110.93	0.150
14784	6899	32	4	81.98	0.150
14785	6899	25	2	75.95	0.000
14786	6900	25	4	79.06	0.000
14787	6900	22	3	209.50	0.000
14788	6900	11	3	61.15	0.000
14789	6900	13	2	12.16	0.000
14790	6901	27	1	12.09	0.100
14791	6901	8	4	31.85	0.150
14792	6901	6	2	626.28	0.050
14793	6902	17	1	40.18	0.000
14794	6903	46	3	15.27	0.000
14795	6903	24	1	53.26	0.100
14796	6903	36	3	65.91	0.050
14797	6904	32	5	91.82	0.000
14798	6904	33	1	61.14	0.100
14799	6905	16	4	81.95	0.150
14800	6905	46	2	15.76	0.150
14801	6905	14	3	34.85	0.100
14802	6905	44	2	17.43	0.000
14803	6906	24	5	55.53	0.150
14804	6906	47	4	9.98	0.000
14805	6907	31	2	102.22	0.000
14806	6907	1	5	549.88	0.000
14807	6908	43	4	14.02	0.050
14808	6909	45	5	8.87	0.050
14809	6909	25	3	73.47	0.000
14810	6909	48	5	16.96	0.000
14811	6910	8	3	30.26	0.000
14812	6910	18	5	90.51	0.000
14813	6910	36	5	70.26	0.050
14814	6911	46	3	14.52	0.050
14815	6912	23	5	105.09	0.050
14816	6913	16	2	89.45	0.100
14817	6913	42	1	9.28	0.000
14818	6914	19	4	232.40	0.000
14819	6914	15	2	100.18	0.100
14820	6915	38	4	53.97	0.000
14821	6916	14	3	37.47	0.000
14822	6916	33	5	67.89	0.100
14823	6917	8	1	32.12	0.000
14824	6918	30	1	46.60	0.000
14825	6918	38	4	53.12	0.000
14826	6918	14	1	37.16	0.050
14827	6919	9	1	106.31	0.100
14828	6919	11	5	58.83	0.050
14829	6920	14	5	35.68	0.050
14830	6920	40	5	48.73	0.100
14831	6921	27	2	12.11	0.000
14832	6921	16	3	87.33	0.000
14833	6922	35	3	44.63	0.000
14834	6922	19	1	227.55	0.000
14835	6922	25	4	69.62	0.000
14836	6923	25	1	75.85	0.150
14837	6923	11	1	62.54	0.000
14838	6923	6	4	556.90	0.050
14839	6924	40	3	53.77	0.000
14840	6924	30	4	46.78	0.100
14841	6925	10	4	16.02	0.000
14842	6925	36	5	68.11	0.150
14843	6925	42	1	8.78	0.000
14844	6925	22	2	198.98	0.050
14845	6926	18	1	90.46	0.000
14846	6926	41	2	64.94	0.000
14847	6926	26	1	31.61	0.150
14848	6927	30	4	49.82	0.000
14849	6928	3	3	250.20	0.000
14850	6928	36	5	62.69	0.000
14851	6928	10	4	16.04	0.000
14852	6929	24	1	54.59	0.000
14853	6929	33	4	67.93	0.150
14854	6930	26	5	28.72	0.150
14855	6931	40	2	55.16	0.050
14856	6932	26	5	29.97	0.000
14857	6932	46	2	15.70	0.100
14858	6932	22	3	203.43	0.000
14859	6933	15	5	93.96	0.100
14860	6933	40	5	54.41	0.000
14861	6934	2	2	47.67	0.050
14862	6935	39	4	76.81	0.000
14863	6935	47	4	9.06	0.150
14864	6936	24	4	50.56	0.000
14865	6936	40	5	52.69	0.000
14866	6936	22	2	221.81	0.000
14867	6936	13	1	10.67	0.150
14868	6937	32	4	91.08	0.050
14869	6937	19	3	248.20	0.050
14870	6937	29	5	68.71	0.000
14871	6938	33	3	68.58	0.150
14872	6938	45	4	8.48	0.100
14873	6938	8	3	28.05	0.150
14874	6938	37	1	70.19	0.150
14875	6939	21	4	254.62	0.000
14876	6939	42	1	8.38	0.050
14877	6940	18	5	84.13	0.000
14878	6941	41	4	62.99	0.050
14879	6941	37	2	72.41	0.100
14880	6942	17	3	36.81	0.050
14881	6943	36	2	68.09	0.150
14882	6944	39	5	79.99	0.150
14883	6944	7	1	218.20	0.150
14884	6945	43	1	15.24	0.050
14885	6945	18	3	86.29	0.000
14886	6945	14	5	32.86	0.000
14887	6946	10	3	15.82	0.050
14888	6946	1	1	532.34	0.000
14889	6947	40	3	54.99	0.000
14890	6947	43	2	14.15	0.100
14891	6948	28	2	11.76	0.000
14892	6949	3	4	258.06	0.100
14893	6949	17	2	38.54	0.000
14894	6949	23	1	110.75	0.000
14895	6949	21	3	254.69	0.000
14896	6950	23	5	99.46	0.150
14897	6950	14	1	36.64	0.000
14898	6950	1	3	526.42	0.050
14899	6951	15	1	101.29	0.050
14900	6951	8	3	30.28	0.100
14901	6952	38	1	60.08	0.000
14902	6952	2	2	43.85	0.000
14903	6952	42	5	8.47	0.100
14904	6952	44	1	17.87	0.150
14905	6953	47	1	9.22	0.050
14906	6953	16	5	83.84	0.150
14907	6953	34	5	110.84	0.050
14908	6954	46	1	15.27	0.000
14909	6954	37	1	72.59	0.150
14910	6954	7	1	205.48	0.150
14911	6955	6	1	642.50	0.000
14912	6955	28	2	11.76	0.000
14913	6955	7	5	204.00	0.050
14914	6956	13	3	11.37	0.000
14915	6956	12	4	133.64	0.150
14916	6957	18	5	92.70	0.050
14917	6957	35	4	45.01	0.050
14918	6957	31	1	88.35	0.000
14919	6958	23	3	106.16	0.050
14920	6959	8	5	29.73	0.150
14921	6960	18	3	89.33	0.000
14922	6961	46	1	14.79	0.000
14923	6962	48	3	16.49	0.150
14924	6962	17	4	40.89	0.150
14925	6963	37	4	76.93	0.150
14926	6963	44	1	16.24	0.000
14927	6964	24	2	50.28	0.100
14928	6965	12	1	127.01	0.100
14929	6966	44	3	17.69	0.000
14930	6967	34	2	113.53	0.100
14931	6968	11	3	59.13	0.150
14932	6969	14	5	35.74	0.150
14933	6969	42	1	8.73	0.000
14934	6969	44	5	15.58	0.100
14935	6969	2	3	45.83	0.100
14936	6970	19	2	234.97	0.150
14937	6971	43	5	13.80	0.000
14938	6971	10	5	17.27	0.050
14939	6972	24	2	51.61	0.000
14940	6972	47	5	9.07	0.100
14941	6972	12	5	125.47	0.000
14942	6972	43	2	13.49	0.000
14943	6973	40	4	51.32	0.100
14944	6974	7	4	217.10	0.100
14945	6974	2	5	47.13	0.000
14946	6975	40	4	56.54	0.150
14947	6975	33	5	68.05	0.000
14948	6976	40	4	50.65	0.050
14949	6976	42	1	8.05	0.150
14950	6976	16	3	77.80	0.050
14951	6976	33	3	65.78	0.000
14952	6977	48	4	15.24	0.000
14953	6977	40	2	50.30	0.050
14954	6978	40	4	56.34	0.000
14955	6978	39	2	73.28	0.000
14956	6979	1	2	570.11	0.000
14957	6980	10	1	17.65	0.050
14958	6980	36	1	67.17	0.050
14959	6981	26	4	30.78	0.000
14960	6981	27	4	11.23	0.100
14961	6982	26	2	31.61	0.150
14962	6983	43	4	15.59	0.150
14963	6984	17	3	39.71	0.000
14964	6985	22	3	191.42	0.000
14965	6985	39	5	74.73	0.100
14966	6985	12	3	123.70	0.000
14967	6985	27	3	10.79	0.000
14968	6986	33	1	62.26	0.000
14969	6986	42	5	9.13	0.000
14970	6986	9	2	102.20	0.100
14971	6987	10	2	15.98	0.150
14972	6987	17	1	40.99	0.150
14973	6988	20	4	11.93	0.050
14974	6988	4	1	198.45	0.000
14975	6988	9	4	113.20	0.100
14976	6988	17	3	35.99	0.000
14977	6989	42	3	8.58	0.000
14978	6989	33	4	59.77	0.000
14979	6989	12	2	118.89	0.150
14980	6990	21	2	249.96	0.150
14981	6990	25	1	70.13	0.150
14982	6991	12	1	123.54	0.150
14983	6991	24	5	51.87	0.000
14984	6992	33	2	68.00	0.050
14985	6992	14	2	37.02	0.050
14986	6993	47	4	10.25	0.150
14987	6994	36	1	68.77	0.000
14988	6994	3	1	261.04	0.000
14989	6994	12	5	127.62	0.000
14990	6995	3	4	275.42	0.100
14991	6996	21	5	230.45	0.150
14992	6996	25	1	70.12	0.000
14993	6997	42	3	8.82	0.000
14994	6997	46	2	13.67	0.150
14995	6997	30	4	46.69	0.050
14996	6998	18	4	85.12	0.150
14997	6999	37	1	77.37	0.100
14998	6999	2	5	46.02	0.000
14999	6999	8	3	29.40	0.050
15000	7000	37	2	71.18	0.000
15001	7000	43	4	14.92	0.000
15002	7001	44	3	17.72	0.100
15003	7001	42	2	8.44	0.000
15004	7001	9	3	101.64	0.050
15005	7002	45	3	9.45	0.100
15006	7002	25	5	77.82	0.100
15007	7002	29	5	65.82	0.000
15008	7003	10	1	16.06	0.000
15009	7003	14	4	32.98	0.000
15010	7003	11	5	60.36	0.050
15011	7004	31	2	96.07	0.000
15012	7004	25	5	77.56	0.000
15013	7004	7	2	223.90	0.000
15014	7004	8	4	30.82	0.050
15015	7005	14	2	34.29	0.000
15016	7005	44	5	18.12	0.150
15017	7006	7	3	203.58	0.000
15018	7006	9	2	102.88	0.050
15019	7006	42	5	8.21	0.000
15020	7006	24	1	51.04	0.000
15021	7007	32	1	83.69	0.000
15022	7007	36	1	64.06	0.000
15023	7007	26	2	29.12	0.000
15024	7008	29	3	68.12	0.000
15025	7009	3	4	262.29	0.000
15026	7009	21	4	243.81	0.100
15027	7009	35	3	47.94	0.000
15028	7010	8	2	29.83	0.000
15029	7011	20	5	10.98	0.100
15030	7012	31	5	89.28	0.100
15031	7012	20	1	11.13	0.000
15032	7013	28	1	11.92	0.150
15033	7013	31	5	89.27	0.050
15034	7014	44	4	17.32	0.050
15035	7015	20	2	12.11	0.000
15036	7015	2	3	44.05	0.000
15037	7016	42	5	8.07	0.050
15038	7017	37	5	75.67	0.150
15039	7017	10	4	16.62	0.000
15040	7018	18	3	88.76	0.100
15041	7019	8	3	28.99	0.150
15042	7019	35	1	45.14	0.150
15043	7020	18	2	94.89	0.050
15044	7020	19	4	246.14	0.000
15045	7021	17	2	41.15	0.000
15046	7021	22	4	205.90	0.000
15047	7021	44	5	16.75	0.050
15048	7022	8	5	28.39	0.050
15049	7022	7	2	219.49	0.100
15050	7022	24	3	52.53	0.000
15051	7023	4	4	213.59	0.050
15052	7023	8	5	29.84	0.000
15053	7023	20	3	11.91	0.100
15054	7024	24	2	56.89	0.000
15055	7025	1	1	529.00	0.050
15056	7026	7	1	209.06	0.050
15057	7026	37	5	68.37	0.000
15058	7027	44	3	17.02	0.000
15059	7027	2	2	45.34	0.000
15060	7028	34	5	113.49	0.000
15061	7028	6	2	558.15	0.150
15062	7029	31	2	93.72	0.050
15063	7029	21	5	241.95	0.050
15064	7029	4	4	214.42	0.000
15065	7030	30	4	50.64	0.150
15066	7031	31	4	88.99	0.150
15067	7031	22	3	218.30	0.000
15068	7031	19	3	222.28	0.100
15069	7031	18	2	92.54	0.050
15070	7032	47	3	9.62	0.100
15071	7032	13	1	12.04	0.050
15072	7033	44	3	17.44	0.050
15073	7033	15	4	100.95	0.100
15074	7034	15	5	96.27	0.000
15075	7035	47	2	9.20	0.050
15076	7035	22	1	212.87	0.100
15077	7036	24	3	52.04	0.000
15078	7037	39	2	74.22	0.000
15079	7037	13	3	12.34	0.000
15080	7038	9	3	113.34	0.150
15081	7039	44	2	15.98	0.150
15082	7040	35	5	49.61	0.050
15083	7040	6	3	583.04	0.000
15084	7041	44	1	17.53	0.000
15085	7042	11	3	58.82	0.150
15086	7043	29	5	71.91	0.150
15087	7044	12	1	134.14	0.100
15088	7044	42	2	9.17	0.150
15089	7044	1	3	606.56	0.000
15090	7045	14	3	37.69	0.000
15091	7046	34	5	109.52	0.000
15092	7046	27	4	10.97	0.000
15093	7047	36	2	64.30	0.000
15094	7047	13	4	12.16	0.150
15095	7048	14	2	37.37	0.000
15096	7049	21	2	220.19	0.000
15097	7049	6	1	645.28	0.100
15098	7049	20	1	11.42	0.000
15099	7049	29	2	70.71	0.150
15100	7050	40	3	49.91	0.000
15101	7050	1	5	598.10	0.000
15102	7051	41	3	62.06	0.150
15103	7051	44	4	17.18	0.050
15104	7051	9	1	111.91	0.000
15105	7051	19	1	238.63	0.000
15106	7052	18	2	95.19	0.000
15107	7052	6	1	614.85	0.000
15108	7052	46	2	13.96	0.000
15109	7052	2	4	43.61	0.000
15110	7053	24	2	49.77	0.050
15111	7054	32	5	89.57	0.000
15112	7054	1	2	571.44	0.000
15113	7055	16	4	82.41	0.000
15114	7055	43	1	15.27	0.000
15115	7056	43	1	15.24	0.000
15116	7056	25	4	72.11	0.150
15117	7056	18	1	88.91	0.050
15118	7057	26	1	28.77	0.000
15119	7057	40	2	50.52	0.000
15120	7058	32	3	81.91	0.000
15121	7059	43	3	15.10	0.100
15122	7059	1	1	563.43	0.150
15123	7059	30	5	46.08	0.000
15124	7060	27	1	11.36	0.000
15125	7060	10	5	16.55	0.000
15126	7061	34	2	112.48	0.100
15127	7061	33	2	60.12	0.000
15128	7062	4	1	208.11	0.100
15129	7062	30	4	47.82	0.000
15130	7062	14	3	36.56	0.150
15131	7063	3	2	257.29	0.000
15132	7063	34	4	114.53	0.100
15133	7063	41	3	62.22	0.000
15134	7063	26	4	29.36	0.100
15135	7064	7	3	234.89	0.150
15136	7065	43	1	15.56	0.050
15137	7065	35	2	47.87	0.000
15138	7066	43	2	15.15	0.000
15139	7066	21	4	243.44	0.050
15140	7066	1	4	564.30	0.000
15141	7066	23	5	101.74	0.150
15142	7067	25	3	80.11	0.000
15143	7068	46	5	15.11	0.000
15144	7068	1	5	597.47	0.150
15145	7069	16	2	88.44	0.000
15146	7069	6	1	563.66	0.100
15147	7069	9	3	112.59	0.050
15148	7070	9	5	101.04	0.050
15149	7071	39	1	81.84	0.050
15150	7072	24	5	49.96	0.000
15151	7072	44	5	16.56	0.000
15152	7073	32	3	86.84	0.000
15153	7074	18	5	91.26	0.000
15154	7075	45	2	8.89	0.000
15155	7076	28	1	12.49	0.000
15156	7077	19	2	252.93	0.100
15157	7077	9	5	103.91	0.000
15158	7078	7	3	220.52	0.000
15159	7078	3	1	274.53	0.100
15160	7078	36	1	64.47	0.150
15161	7079	25	4	70.93	0.150
15162	7079	48	5	17.00	0.100
15163	7080	19	3	240.70	0.000
15164	7081	34	5	110.96	0.050
15165	7081	24	2	54.14	0.000
15166	7082	37	1	79.12	0.050
15167	7083	28	3	12.75	0.150
15168	7083	13	5	11.73	0.000
15169	7084	46	5	14.68	0.000
15170	7084	38	1	53.52	0.000
15171	7084	2	2	43.97	0.000
15172	7085	32	3	88.48	0.050
15173	7086	28	1	12.36	0.150
15174	7086	21	4	252.77	0.050
15175	7087	11	3	58.75	0.000
15176	7088	28	3	11.85	0.000
15177	7088	17	1	38.69	0.000
15178	7089	2	4	42.86	0.150
15179	7089	34	3	112.95	0.000
15180	7090	8	3	31.57	0.050
15181	7090	20	2	11.54	0.150
15182	7091	11	4	58.68	0.000
15183	7091	48	2	15.39	0.050
15184	7092	41	5	59.80	0.050
15185	7092	20	4	10.81	0.000
15186	7093	13	1	12.24	0.050
15187	7093	38	1	59.29	0.100
15188	7094	17	3	40.17	0.050
15189	7094	34	5	113.81	0.000
15190	7094	31	3	95.32	0.000
15191	7094	35	5	44.21	0.000
15192	7095	12	4	129.10	0.000
15193	7095	7	2	218.04	0.050
15194	7095	47	4	9.30	0.150
15195	7095	30	5	46.72	0.000
15196	7096	9	4	107.34	0.000
15197	7097	7	4	211.88	0.000
15198	7098	18	1	89.28	0.050
15199	7099	30	2	45.52	0.000
15200	7100	10	5	17.00	0.000
15201	7100	20	1	10.86	0.150
15202	7100	32	3	91.85	0.000
15203	7101	19	1	242.61	0.100
15204	7101	18	2	87.12	0.050
15205	7102	22	4	197.65	0.100
15206	7102	30	3	46.23	0.150
15207	7103	44	4	17.89	0.100
15208	7103	28	4	12.20	0.050
15209	7104	1	4	592.01	0.000
15210	7104	41	2	63.20	0.050
15211	7104	47	3	10.27	0.050
15212	7105	1	5	573.69	0.100
15213	7105	31	1	101.10	0.000
15214	7106	23	5	102.51	0.000
15215	7106	48	2	17.63	0.050
15216	7107	41	5	61.26	0.150
15217	7107	23	5	103.40	0.150
15218	7108	2	4	42.20	0.150
15219	7109	32	2	92.11	0.000
15220	7110	35	4	46.12	0.100
15221	7110	22	5	192.20	0.000
15222	7111	18	1	93.00	0.000
15223	7111	36	3	69.11	0.050
15224	7112	44	3	16.61	0.000
15225	7113	16	5	83.88	0.000
15226	7114	14	3	33.75	0.000
15227	7114	25	3	73.28	0.050
15228	7115	34	4	118.61	0.000
15229	7115	29	3	64.39	0.100
15230	7116	36	5	66.44	0.050
15231	7116	11	2	64.23	0.000
15232	7117	34	2	113.06	0.150
15233	7118	27	5	11.18	0.050
15234	7119	33	1	64.17	0.000
15235	7119	38	4	54.05	0.100
15236	7119	10	1	16.84	0.000
15237	7120	25	1	78.31	0.000
15238	7121	12	4	121.83	0.100
15239	7122	32	2	89.63	0.000
15240	7123	26	1	28.36	0.000
15241	7123	40	1	56.44	0.100
15242	7123	46	1	15.22	0.000
15243	7123	30	5	51.62	0.000
15244	7124	22	5	193.94	0.000
15245	7124	40	4	55.27	0.000
15246	7124	25	2	75.13	0.000
15247	7125	2	4	49.09	0.150
15248	7125	4	5	230.45	0.050
15249	7125	9	3	115.00	0.100
15250	7125	41	3	66.59	0.100
15251	7126	22	2	192.12	0.000
15252	7126	23	5	113.72	0.000
15253	7127	38	2	57.09	0.000
15254	7127	21	4	226.67	0.000
15255	7127	3	1	265.84	0.000
15256	7128	32	4	84.94	0.000
15257	7129	34	5	120.31	0.000
15258	7129	11	2	58.81	0.000
15259	7130	34	5	115.07	0.000
15260	7130	19	4	250.57	0.150
15261	7130	42	2	8.89	0.050
15262	7131	37	3	77.96	0.000
15263	7131	43	5	14.10	0.000
15264	7131	29	5	62.01	0.000
15265	7131	18	3	89.48	0.150
15266	7132	36	3	67.45	0.000
15267	7132	11	3	63.03	0.050
15268	7133	22	3	214.56	0.000
15269	7133	26	5	30.89	0.000
15270	7134	28	3	11.44	0.000
15271	7135	47	2	9.89	0.000
15272	7135	25	4	69.59	0.000
15273	7135	6	3	620.27	0.050
15274	7135	18	4	87.17	0.000
15275	7136	40	3	49.52	0.000
15276	7136	3	3	250.26	0.100
15277	7136	35	4	49.10	0.000
15278	7137	1	2	531.64	0.000
15279	7137	8	2	32.31	0.000
15280	7137	25	4	71.64	0.000
15281	7137	26	1	29.36	0.000
15282	7138	34	4	114.85	0.000
15283	7139	24	2	54.04	0.100
15284	7139	6	1	629.53	0.050
15285	7140	10	2	16.94	0.050
15286	7140	30	4	52.30	0.150
15287	7141	13	5	11.61	0.000
15288	7142	21	2	239.27	0.000
15289	7142	35	1	43.34	0.000
15290	7142	33	2	68.65	0.100
15291	7142	20	5	11.08	0.000
15292	7143	20	5	11.61	0.100
15293	7143	47	1	9.60	0.000
15294	7144	43	3	14.39	0.050
15295	7144	34	2	107.51	0.000
15296	7145	20	3	11.02	0.050
15297	7145	7	1	215.96	0.100
15298	7145	30	3	51.41	0.100
15299	7146	3	2	256.54	0.000
15300	7146	43	2	14.52	0.000
15301	7146	40	5	51.29	0.100
15302	7146	48	4	15.52	0.000
15303	7147	38	2	58.27	0.050
15304	7147	14	3	37.19	0.000
15305	7147	23	4	113.21	0.000
15306	7147	35	2	42.73	0.000
15307	7148	32	1	92.41	0.150
15308	7148	27	4	11.90	0.000
15309	7148	22	4	222.57	0.100
15310	7149	21	3	253.90	0.100
15311	7149	41	1	61.40	0.050
15312	7149	20	1	12.03	0.050
15313	7150	35	5	44.15	0.100
15314	7150	16	5	79.39	0.000
15315	7151	26	4	31.08	0.050
15316	7151	44	4	17.13	0.000
15317	7151	11	5	59.45	0.000
15318	7151	23	5	99.81	0.150
15319	7152	6	4	599.00	0.100
15320	7152	42	1	9.24	0.150
15321	7153	36	4	68.73	0.050
15322	7154	42	2	8.29	0.150
15323	7154	36	1	68.16	0.050
15324	7154	33	3	64.16	0.000
15325	7154	6	1	568.40	0.000
15326	7155	30	5	48.12	0.050
15327	7155	31	4	97.45	0.100
15328	7155	15	2	98.95	0.000
15329	7155	18	1	94.18	0.100
15330	7156	7	3	230.38	0.050
15331	7156	11	3	59.20	0.000
15332	7157	18	2	82.92	0.050
15333	7158	43	2	14.67	0.000
15334	7159	34	5	119.60	0.000
15335	7159	27	4	11.68	0.000
15336	7159	12	3	121.59	0.000
15337	7159	36	1	63.27	0.150
15338	7160	36	3	64.00	0.150
15339	7161	12	2	134.22	0.000
15340	7161	30	2	45.78	0.000
15341	7162	11	5	59.75	0.050
15342	7163	35	4	46.22	0.150
15343	7163	26	1	29.83	0.000
15344	7164	14	2	35.55	0.100
15345	7164	41	5	66.57	0.000
15346	7165	12	1	132.97	0.000
15347	7165	22	1	196.75	0.050
15348	7165	8	3	29.99	0.000
15349	7166	34	2	117.03	0.000
15350	7166	11	5	56.75	0.050
15351	7167	3	2	253.75	0.000
15352	7167	24	3	50.53	0.000
15353	7167	2	4	44.80	0.000
15354	7168	40	5	50.06	0.100
15355	7168	12	2	134.29	0.150
15356	7168	30	3	50.92	0.000
15357	7169	29	3	66.38	0.150
15358	7170	42	3	8.67	0.000
15359	7170	10	5	16.22	0.100
15360	7170	25	5	75.55	0.000
15361	7171	34	1	116.67	0.100
15362	7171	2	4	44.29	0.000
15363	7171	10	1	16.89	0.000
15364	7171	15	1	90.79	0.100
15365	7172	23	5	109.27	0.000
15366	7172	21	2	231.83	0.000
15367	7173	46	2	15.78	0.000
15368	7173	2	4	44.53	0.100
15369	7173	20	3	11.58	0.000
15370	7173	8	2	30.09	0.000
15371	7174	9	5	101.89	0.050
15372	7175	2	3	46.17	0.050
15373	7175	16	4	84.01	0.000
15374	7175	24	1	56.12	0.150
15375	7175	7	3	202.01	0.000
15376	7176	41	4	60.56	0.100
15377	7176	33	5	66.21	0.000
15378	7177	39	2	75.46	0.100
15379	7177	31	4	96.01	0.150
15380	7178	46	1	14.84	0.000
15381	7178	26	2	28.78	0.000
15382	7179	31	3	100.02	0.000
15383	7179	15	4	96.27	0.150
15384	7179	13	4	11.25	0.050
15385	7180	18	3	87.39	0.000
15386	7181	43	3	15.56	0.000
15387	7181	47	5	9.77	0.000
15388	7181	36	4	61.85	0.150
15389	7181	40	2	54.27	0.050
15390	7182	16	3	78.63	0.100
15391	7183	34	4	116.13	0.100
15392	7184	47	1	9.65	0.000
15393	7184	26	2	29.94	0.000
15394	7185	46	3	15.31	0.000
15395	7185	9	3	113.61	0.000
15396	7185	18	1	86.43	0.000
15397	7186	16	3	89.40	0.000
15398	7186	1	1	593.71	0.000
15399	7186	46	2	15.00	0.050
15400	7187	2	3	42.30	0.000
15401	7187	21	5	224.98	0.000
15402	7188	48	4	16.05	0.000
15403	7188	35	5	43.77	0.000
15404	7188	42	4	8.80	0.050
15405	7189	30	5	49.92	0.000
15406	7190	10	2	17.09	0.150
15407	7190	18	1	82.63	0.000
15408	7190	36	3	66.00	0.000
15409	7190	23	5	107.74	0.000
15410	7191	32	1	92.64	0.000
15411	7191	25	2	73.45	0.050
15412	7191	6	1	583.19	0.150
15413	7192	14	2	35.26	0.000
15414	7193	9	3	108.90	0.150
15415	7193	23	3	109.94	0.150
15416	7193	41	5	63.27	0.000
15417	7193	19	4	235.33	0.150
15418	7194	3	4	263.85	0.100
15419	7195	47	3	9.85	0.100
15420	7195	22	5	207.40	0.000
15421	7196	43	5	15.22	0.150
15422	7197	48	4	17.59	0.000
15423	7197	33	4	65.47	0.050
15424	7197	28	5	12.42	0.000
15425	7198	40	5	54.58	0.100
15426	7198	33	1	63.36	0.100
15427	7199	17	2	36.80	0.150
15428	7200	28	2	11.72	0.000
15429	7201	12	2	127.82	0.000
15430	7201	3	3	269.07	0.050
15431	7201	32	1	87.83	0.150
15432	7202	10	4	16.89	0.000
15433	7202	48	2	15.29	0.000
15434	7203	19	3	245.29	0.000
15435	7203	11	3	57.36	0.000
15436	7204	34	5	110.38	0.000
15437	7204	40	2	49.47	0.000
15438	7204	15	2	104.22	0.000
15439	7204	9	5	113.16	0.000
15440	7205	46	5	14.11	0.000
15441	7205	42	5	9.34	0.000
15442	7206	10	3	16.60	0.000
15443	7206	19	3	249.26	0.050
15444	7207	6	1	577.75	0.050
15445	7208	47	5	10.07	0.100
15446	7208	32	5	82.82	0.100
15447	7208	39	3	76.33	0.150
15448	7208	14	4	35.61	0.000
15449	7209	4	3	199.09	0.000
15450	7210	26	3	30.39	0.000
15451	7210	44	2	16.29	0.000
15452	7211	21	3	226.38	0.100
15453	7212	8	4	32.39	0.050
15454	7212	48	1	16.92	0.000
15455	7213	14	3	35.92	0.100
15456	7213	48	3	15.46	0.000
15457	7213	39	3	73.61	0.000
15458	7213	24	1	56.96	0.000
15459	7214	8	5	29.26	0.050
15460	7214	44	5	15.60	0.000
15461	7214	35	1	45.22	0.000
15462	7215	26	5	30.12	0.050
15463	7215	30	5	48.09	0.000
15464	7215	35	3	47.86	0.150
15465	7215	47	5	9.04	0.050
15466	7216	40	3	49.03	0.000
15467	7216	14	2	37.16	0.150
15468	7216	39	5	75.08	0.050
15469	7216	30	3	49.32	0.050
15470	7217	1	2	535.17	0.050
15471	7217	21	5	250.92	0.050
15472	7218	31	1	94.44	0.000
15473	7218	35	1	48.83	0.000
15474	7219	25	2	79.79	0.000
15475	7220	29	4	71.56	0.100
15476	7220	35	4	48.59	0.150
15477	7220	39	3	76.55	0.000
15478	7220	17	1	41.26	0.100
15479	7221	12	4	119.17	0.000
15480	7222	19	5	227.46	0.000
15481	7223	29	2	62.49	0.000
15482	7224	24	5	49.76	0.100
15483	7225	28	5	12.19	0.000
15484	7225	12	2	134.48	0.000
15485	7225	7	2	218.45	0.100
15486	7226	28	2	12.54	0.100
15487	7226	14	3	37.13	0.000
15488	7227	48	5	15.76	0.000
15489	7228	35	2	49.40	0.100
15490	7228	29	2	71.88	0.100
15491	7228	20	2	11.27	0.100
15492	7228	30	4	50.61	0.050
15493	7229	2	4	43.27	0.000
15494	7229	6	4	568.34	0.100
15495	7229	32	5	92.25	0.150
15496	7229	15	2	101.48	0.050
15497	7230	16	2	85.53	0.050
15498	7231	6	3	612.68	0.050
15499	7231	43	1	14.58	0.100
15500	7232	25	2	71.76	0.000
15501	7233	41	5	61.51	0.100
15502	7233	39	3	77.51	0.000
15503	7234	1	2	556.76	0.000
15504	7234	2	2	47.57	0.000
15505	7235	31	2	93.68	0.000
15506	7235	17	5	40.33	0.150
15507	7236	19	4	256.20	0.150
15508	7237	33	3	63.75	0.000
15509	7238	16	4	80.63	0.000
15510	7238	13	2	11.37	0.000
15511	7238	24	2	54.31	0.000
15512	7238	26	3	28.76	0.050
15513	7239	23	5	100.26	0.000
15514	7239	9	3	115.10	0.000
15515	7240	1	3	602.43	0.150
15516	7240	4	3	219.82	0.000
15517	7241	15	2	104.51	0.000
15518	7241	22	5	208.66	0.000
15519	7242	15	3	94.36	0.000
15520	7242	34	4	119.17	0.000
15521	7242	32	4	79.82	0.050
15522	7242	41	5	65.16	0.150
15523	7243	6	1	563.70	0.000
15524	7243	47	3	9.98	0.000
15525	7243	44	4	16.16	0.100
15526	7243	8	3	31.83	0.000
15527	7244	44	4	16.88	0.050
15528	7244	13	5	11.45	0.000
15529	7244	40	5	52.39	0.050
15530	7244	7	5	231.76	0.000
15531	7245	20	5	11.79	0.000
15532	7245	26	1	30.07	0.050
15533	7246	42	5	8.58	0.050
15534	7246	15	5	102.17	0.000
15535	7247	34	1	109.46	0.000
15536	7247	17	3	38.71	0.150
15537	7248	28	3	12.08	0.150
15538	7248	19	4	247.23	0.000
15539	7248	34	2	108.07	0.150
15540	7249	28	1	11.16	0.100
15541	7250	21	5	240.29	0.000
15542	7251	14	2	35.18	0.050
15543	7251	6	2	594.09	0.100
15544	7251	9	3	100.49	0.000
15545	7252	23	2	109.95	0.100
15546	7252	47	3	9.65	0.150
15547	7253	37	2	74.09	0.100
15548	7254	48	3	17.32	0.000
15549	7254	9	4	114.55	0.150
15550	7255	4	3	203.24	0.000
15551	7255	43	2	13.62	0.000
15552	7256	2	1	42.36	0.100
15553	7257	9	4	114.63	0.000
15554	7258	32	3	80.75	0.100
15555	7258	30	4	47.05	0.000
15556	7259	23	1	112.35	0.000
15557	7260	27	3	10.98	0.000
15558	7260	30	2	46.72	0.000
15559	7260	19	4	240.05	0.000
15560	7260	15	4	99.54	0.000
15561	7261	42	1	8.01	0.050
15562	7261	29	5	70.11	0.000
15563	7261	24	3	54.29	0.000
15564	7261	32	3	88.21	0.150
15565	7262	40	3	55.50	0.150
15566	7263	32	2	83.86	0.050
15567	7263	11	5	58.22	0.050
15568	7263	45	5	8.57	0.050
15569	7263	44	4	17.91	0.000
15570	7264	32	3	86.65	0.050
15571	7265	6	5	569.12	0.100
15572	7266	42	5	8.12	0.000
15573	7267	18	1	84.08	0.050
15574	7267	33	1	61.43	0.000
15575	7268	37	2	69.74	0.000
15576	7269	20	2	12.35	0.000
15577	7270	40	5	49.65	0.000
15578	7270	25	2	76.10	0.100
15579	7271	19	5	221.38	0.000
15580	7271	3	1	275.18	0.000
15581	7272	17	2	40.97	0.000
15582	7272	25	1	69.99	0.050
15583	7273	47	2	10.05	0.000
15584	7273	18	1	82.58	0.000
15585	7273	17	2	36.05	0.000
15586	7274	41	3	65.79	0.000
15587	7274	13	5	11.46	0.100
15588	7275	23	1	109.54	0.100
15589	7275	4	1	226.41	0.150
15590	7276	4	5	200.49	0.000
15591	7276	44	5	17.45	0.150
15592	7277	34	2	121.43	0.050
15593	7277	23	1	109.75	0.100
15594	7278	24	4	51.84	0.000
15595	7278	15	4	97.04	0.000
15596	7278	26	5	28.71	0.000
15597	7279	28	2	12.33	0.050
15598	7280	14	5	36.71	0.150
15599	7280	27	4	12.40	0.000
15600	7280	34	3	116.52	0.050
15601	7281	38	5	55.58	0.150
15602	7281	28	2	12.82	0.000
15603	7281	42	4	8.24	0.050
15604	7282	23	1	98.33	0.000
15605	7282	21	3	239.32	0.000
15606	7283	43	3	13.45	0.000
15607	7283	23	4	110.17	0.050
15608	7283	7	3	202.01	0.050
15609	7283	11	3	59.28	0.000
15610	7284	13	5	12.07	0.000
15611	7284	33	4	60.56	0.000
15612	7284	18	1	83.43	0.150
15613	7284	25	4	74.65	0.150
15614	7285	10	5	17.04	0.050
15615	7285	17	4	40.04	0.000
15616	7285	8	1	29.58	0.050
15617	7286	31	4	92.96	0.000
15618	7286	39	5	81.74	0.000
15619	7286	23	1	101.70	0.100
15620	7286	22	1	223.04	0.100
15621	7287	9	4	108.82	0.000
15622	7287	32	3	79.85	0.150
15623	7287	40	2	50.36	0.000
15624	7287	27	4	11.51	0.000
15625	7288	41	3	64.64	0.150
15626	7288	46	5	15.46	0.150
15627	7288	31	2	91.79	0.000
15628	7289	48	3	15.64	0.000
15629	7289	2	3	48.95	0.150
15630	7290	36	5	69.17	0.000
15631	7290	41	5	67.20	0.150
15632	7291	39	4	80.49	0.000
15633	7291	40	2	53.82	0.000
15634	7291	9	4	116.00	0.150
15635	7291	21	2	231.15	0.050
15636	7292	26	4	30.12	0.000
15637	7292	10	4	15.66	0.000
15638	7292	25	5	78.74	0.000
15639	7292	7	3	222.01	0.000
15640	7293	35	5	48.38	0.050
15641	7293	40	2	50.12	0.050
15642	7293	45	1	8.22	0.050
15643	7293	21	1	235.65	0.050
15644	7294	3	3	266.98	0.000
15645	7294	25	5	74.37	0.000
15646	7294	22	3	198.42	0.000
15647	7295	18	5	90.30	0.050
15648	7295	34	4	110.81	0.050
15649	7295	17	2	40.36	0.150
15650	7295	1	2	565.96	0.100
15651	7296	11	1	61.22	0.100
15652	7297	3	1	274.21	0.000
15653	7297	16	3	85.90	0.000
15654	7298	12	5	120.82	0.150
15655	7299	19	5	237.95	0.050
15656	7299	39	3	79.06	0.050
15657	7299	25	4	77.10	0.000
15658	7299	17	4	35.97	0.100
15659	7300	6	1	606.58	0.000
15660	7300	14	5	33.95	0.000
15661	7300	48	4	16.13	0.000
15662	7301	46	5	14.54	0.000
15663	7301	27	5	10.85	0.000
15664	7302	30	3	49.19	0.050
15665	7303	25	5	74.26	0.100
15666	7303	34	3	113.40	0.150
15667	7304	7	4	212.08	0.100
15668	7304	18	1	93.90	0.000
15669	7304	30	4	45.97	0.150
15670	7304	45	4	8.46	0.000
15671	7305	11	5	57.25	0.000
15672	7305	16	4	89.11	0.000
15673	7305	22	1	203.42	0.000
15674	7305	23	5	106.75	0.000
15675	7306	29	2	70.70	0.000
15676	7307	31	4	98.77	0.100
15677	7307	21	3	220.26	0.150
15678	7307	46	5	15.77	0.050
15679	7308	38	4	53.33	0.150
15680	7308	36	5	70.44	0.100
15681	7309	10	5	16.44	0.000
15682	7310	16	5	81.14	0.050
15683	7310	23	4	100.91	0.150
15684	7310	2	2	43.16	0.000
15685	7310	17	5	36.89	0.000
15686	7311	19	1	221.56	0.100
15687	7311	17	4	36.32	0.100
15688	7311	36	5	61.71	0.050
15689	7311	33	1	59.64	0.150
15690	7312	11	3	59.58	0.000
15691	7312	20	4	10.90	0.100
15692	7312	16	5	84.78	0.000
15693	7313	16	3	77.02	0.000
15694	7313	24	5	53.43	0.000
15695	7314	37	3	73.78	0.000
15696	7314	46	3	15.24	0.100
15697	7315	11	4	57.79	0.000
15698	7316	6	5	567.06	0.000
15699	7316	8	3	31.45	0.000
15700	7316	43	5	15.59	0.000
15701	7317	1	4	581.52	0.100
15702	7318	25	1	79.56	0.100
15703	7318	44	5	18.03	0.150
15704	7318	18	1	83.38	0.000
15705	7319	38	4	60.40	0.100
15706	7320	13	4	11.02	0.000
15707	7321	8	5	28.99	0.100
15708	7322	47	5	10.06	0.050
15709	7322	31	5	89.34	0.000
15710	7323	36	2	69.43	0.000
15711	7324	43	3	14.32	0.000
15712	7324	41	1	63.55	0.000
15713	7325	11	3	58.13	0.000
15714	7325	13	5	12.14	0.150
15715	7325	36	2	64.30	0.000
15716	7325	12	4	126.21	0.000
15717	7326	20	5	11.03	0.000
15718	7326	15	3	101.48	0.000
15719	7327	12	2	121.78	0.100
15720	7327	4	5	220.91	0.100
15721	7328	25	4	76.67	0.100
15722	7329	27	1	11.60	0.050
15723	7329	29	4	66.95	0.100
15724	7330	44	3	17.93	0.150
15725	7330	31	5	97.85	0.000
15726	7330	46	4	13.61	0.050
15727	7331	9	5	103.72	0.100
15728	7332	41	1	59.99	0.000
15729	7333	30	1	51.80	0.000
15730	7333	8	1	30.79	0.000
15731	7334	31	5	91.14	0.000
15732	7334	46	5	14.73	0.050
15733	7334	2	1	47.69	0.000
15734	7334	30	3	47.96	0.150
15735	7335	34	5	105.46	0.000
15736	7336	10	2	17.04	0.000
15737	7336	20	3	11.06	0.000
15738	7337	12	5	128.47	0.000
15739	7337	6	5	637.63	0.000
15740	7338	6	4	560.25	0.000
15741	7338	27	3	12.33	0.150
15742	7338	20	1	11.94	0.050
15743	7338	44	3	17.76	0.000
15744	7339	10	5	15.88	0.000
15745	7339	14	4	35.66	0.150
15746	7339	11	5	61.23	0.100
15747	7340	32	2	82.12	0.000
15748	7340	28	1	11.47	0.150
15749	7340	24	1	50.61	0.000
15750	7340	3	5	263.29	0.000
15751	7341	35	2	46.55	0.000
15752	7342	3	3	266.59	0.050
15753	7343	41	2	65.17	0.000
15754	7343	11	5	59.59	0.000
15755	7344	48	5	15.67	0.000
15756	7345	29	4	67.61	0.000
15757	7345	48	3	17.67	0.050
15758	7346	1	3	591.10	0.000
15759	7346	2	4	42.53	0.000
15760	7346	48	4	16.75	0.150
15761	7347	44	4	15.58	0.000
15762	7348	14	3	36.54	0.100
15763	7349	9	4	113.45	0.150
15764	7349	47	3	10.14	0.000
15765	7349	42	4	8.38	0.050
15766	7349	17	5	40.54	0.050
15767	7350	18	4	95.52	0.100
15768	7350	6	2	646.06	0.150
15769	7350	1	4	564.25	0.000
15770	7351	44	1	17.16	0.000
15771	7351	47	4	10.03	0.050
15772	7352	24	4	51.01	0.000
15773	7353	43	1	14.02	0.050
15774	7354	4	1	207.86	0.050
15775	7355	28	3	12.39	0.000
15776	7356	41	2	63.90	0.000
15777	7356	29	1	67.87	0.000
15778	7356	23	1	109.40	0.000
15779	7357	33	2	66.20	0.000
15780	7357	10	5	17.03	0.150
15781	7357	16	2	78.38	0.050
15782	7357	26	5	29.83	0.000
15783	7358	24	3	50.41	0.100
15784	7358	18	5	87.47	0.100
15785	7358	40	3	56.40	0.000
15786	7358	48	3	15.56	0.100
15787	7359	18	3	83.83	0.050
15788	7359	3	2	272.66	0.050
15789	7360	40	3	54.98	0.150
15790	7361	14	5	34.34	0.000
15791	7362	29	3	65.03	0.000
15792	7362	36	3	66.20	0.050
15793	7362	30	3	46.91	0.050
15794	7363	40	3	51.09	0.150
15795	7363	43	4	15.61	0.150
15796	7363	36	2	69.14	0.000
15797	7364	16	5	81.27	0.150
15798	7364	28	4	12.17	0.100
15799	7364	30	1	47.53	0.000
15800	7365	21	5	229.88	0.000
15801	7365	14	5	35.51	0.000
15802	7365	35	3	45.71	0.000
15803	7366	42	5	8.95	0.000
15804	7366	37	2	69.24	0.000
15805	7366	47	3	9.16	0.100
15806	7366	4	1	230.24	0.000
15807	7367	32	3	85.92	0.050
15808	7367	34	3	106.50	0.000
15809	7368	34	3	105.49	0.150
15810	7368	9	1	115.07	0.100
15811	7368	48	4	17.60	0.050
15812	7368	8	4	30.34	0.000
15813	7369	7	2	210.12	0.000
15814	7370	28	1	11.33	0.000
15815	7370	25	5	78.10	0.000
15816	7371	21	2	230.89	0.150
15817	7371	31	2	97.52	0.000
15818	7372	2	5	43.15	0.100
15819	7372	10	2	15.47	0.000
15820	7373	24	5	53.73	0.050
15821	7374	34	1	110.81	0.150
15822	7375	10	3	17.29	0.100
15823	7376	36	3	70.54	0.050
15824	7376	25	5	72.25	0.050
15825	7377	3	1	260.33	0.100
15826	7378	48	4	17.04	0.100
15827	7378	45	4	9.05	0.000
15828	7378	11	4	64.14	0.000
15829	7378	2	4	44.71	0.000
15830	7379	18	1	84.57	0.100
15831	7379	28	5	11.17	0.050
15832	7380	16	3	78.89	0.050
15833	7381	36	3	70.81	0.000
15834	7382	13	5	10.68	0.150
15835	7383	14	1	35.70	0.000
15836	7383	21	3	228.26	0.000
15837	7383	29	2	63.39	0.000
15838	7384	11	5	57.22	0.050
15839	7385	20	2	11.88	0.100
15840	7386	23	2	98.38	0.050
15841	7387	6	2	564.57	0.000
15842	7387	43	4	14.79	0.000
15843	7387	42	3	8.68	0.000
15844	7388	24	4	53.54	0.000
15845	7388	14	5	34.54	0.050
15846	7389	10	1	17.36	0.000
15847	7389	20	3	12.43	0.000
15848	7390	21	5	242.17	0.000
15849	7390	15	2	104.82	0.050
15850	7391	33	4	63.61	0.050
15851	7391	7	3	221.37	0.100
15852	7391	30	1	48.11	0.000
15853	7392	6	3	617.38	0.000
15854	7392	24	2	50.01	0.000
15855	7392	26	5	27.50	0.000
15856	7392	20	1	11.88	0.000
15857	7393	4	1	226.08	0.050
15858	7394	25	3	77.66	0.050
15859	7394	28	3	11.64	0.000
15860	7395	46	3	13.85	0.150
15861	7395	37	1	75.65	0.050
15862	7396	9	2	100.48	0.150
15863	7396	16	4	80.39	0.150
15864	7397	12	4	125.49	0.000
15865	7398	33	1	65.85	0.050
15866	7398	11	3	57.97	0.150
15867	7399	18	1	87.72	0.000
15868	7399	37	5	77.37	0.000
15869	7399	15	1	98.42	0.050
15870	7400	25	2	70.33	0.150
15871	7400	31	1	88.54	0.150
15872	7400	40	4	53.74	0.150
15873	7401	17	3	37.99	0.100
15874	7401	19	1	226.41	0.050
15875	7402	26	4	31.28	0.000
15876	7402	37	3	71.93	0.000
15877	7402	30	1	46.97	0.050
15878	7402	29	5	62.03	0.150
15879	7403	47	5	9.51	0.050
15880	7403	10	5	16.94	0.050
15881	7403	7	3	216.54	0.150
15882	7403	46	2	15.42	0.050
15883	7404	1	3	540.57	0.000
15884	7405	27	4	12.55	0.150
15885	7406	32	2	89.75	0.150
15886	7406	40	2	52.47	0.100
15887	7407	27	2	12.25	0.000
15888	7407	43	2	14.06	0.100
15889	7407	11	4	63.67	0.050
15890	7407	9	1	114.57	0.000
15891	7408	9	4	116.40	0.050
15892	7408	48	5	15.92	0.050
15893	7409	26	3	28.72	0.000
15894	7409	30	2	47.37	0.000
15895	7409	47	2	9.77	0.000
15896	7409	42	2	9.10	0.000
15897	7410	36	3	61.66	0.050
15898	7410	15	5	104.60	0.000
15899	7411	46	5	14.12	0.100
15900	7411	25	2	78.40	0.000
15901	7412	42	3	9.16	0.100
15902	7413	46	1	13.91	0.050
15903	7414	44	5	18.11	0.100
15904	7414	45	1	8.51	0.050
15905	7414	21	5	228.93	0.150
15906	7415	19	2	245.60	0.000
15907	7415	23	3	107.38	0.000
15908	7416	42	2	8.71	0.000
15909	7416	47	4	9.13	0.050
15910	7417	37	4	75.25	0.000
15911	7417	9	1	104.03	0.150
15912	7418	13	2	10.66	0.000
15913	7419	24	5	57.05	0.000
15914	7419	48	1	16.71	0.000
15915	7420	1	1	538.35	0.000
15916	7420	24	5	51.00	0.000
15917	7420	22	1	194.80	0.050
15918	7421	48	2	16.35	0.000
15919	7421	2	3	48.25	0.100
15920	7421	12	1	128.66	0.100
15921	7422	3	2	270.27	0.000
15922	7422	18	4	95.48	0.100
15923	7422	11	1	62.71	0.000
15924	7423	18	4	88.68	0.150
15925	7424	43	4	15.08	0.100
15926	7425	38	4	54.85	0.150
15927	7425	15	3	97.93	0.000
15928	7426	24	3	50.74	0.000
15929	7426	11	4	60.92	0.000
15930	7427	39	1	75.12	0.150
15931	7427	32	4	88.71	0.150
15932	7427	12	3	122.24	0.000
15933	7428	48	3	17.28	0.050
15934	7428	39	1	71.41	0.150
15935	7428	35	5	44.16	0.000
15936	7428	43	2	14.92	0.000
15937	7429	41	2	58.65	0.000
15938	7429	12	2	133.95	0.000
15939	7430	19	1	227.97	0.100
15940	7430	46	3	14.84	0.050
15941	7430	35	5	47.63	0.000
15942	7430	41	3	60.70	0.000
15943	7431	44	5	16.83	0.150
15944	7431	36	4	63.06	0.000
15945	7432	48	2	16.41	0.000
15946	7432	38	3	57.07	0.050
15947	7432	35	3	46.81	0.000
15948	7432	6	1	563.25	0.000
15949	7433	3	4	255.09	0.150
15950	7434	42	4	8.47	0.000
15951	7435	46	1	15.45	0.100
15952	7436	6	2	606.28	0.000
15953	7436	28	4	11.85	0.050
15954	7436	11	1	65.09	0.000
15955	7436	29	3	69.79	0.100
15956	7437	19	2	237.74	0.050
15957	7437	3	3	240.63	0.150
15958	7437	20	3	11.46	0.000
15959	7437	17	4	37.70	0.050
15960	7438	10	3	17.78	0.000
15961	7438	8	1	32.29	0.000
15962	7439	17	4	37.78	0.000
15963	7439	25	2	76.82	0.000
15964	7439	42	4	8.04	0.100
15965	7439	20	2	12.16	0.000
15966	7440	45	1	8.36	0.150
15967	7440	31	4	96.60	0.000
15968	7440	32	1	82.33	0.000
15969	7440	40	3	49.45	0.000
15970	7441	10	5	15.86	0.050
15971	7441	42	1	8.74	0.000
15972	7442	47	3	9.10	0.050
15973	7443	33	4	68.18	0.150
15974	7444	13	4	11.51	0.050
15975	7444	17	1	38.30	0.150
15976	7444	44	5	17.83	0.000
15977	7445	16	4	89.33	0.100
15978	7445	25	1	75.66	0.000
15979	7445	18	3	94.72	0.050
15980	7446	12	1	131.03	0.000
15981	7446	31	3	101.15	0.000
15982	7447	42	3	8.55	0.000
15983	7448	13	1	11.03	0.000
15984	7448	7	5	223.06	0.050
15985	7449	46	5	14.32	0.150
15986	7449	26	1	30.23	0.150
15987	7450	23	3	110.16	0.000
15988	7451	34	5	119.03	0.100
15989	7451	36	4	70.39	0.000
15990	7452	45	2	9.18	0.150
15991	7452	20	1	12.38	0.150
15992	7452	47	5	10.39	0.050
15993	7453	30	4	45.75	0.000
15994	7454	32	4	90.19	0.150
15995	7454	9	1	113.86	0.000
15996	7454	41	4	66.31	0.000
15997	7455	4	4	225.92	0.050
15998	7455	13	3	11.78	0.100
15999	7456	32	3	84.00	0.150
16000	7456	43	1	13.45	0.000
16001	7456	8	1	31.13	0.000
16002	7456	20	5	11.86	0.000
16003	7457	1	1	535.38	0.000
16004	7457	19	2	238.76	0.000
16005	7458	31	2	97.77	0.000
16006	7458	26	2	28.55	0.000
16007	7459	11	1	57.97	0.050
16008	7460	16	3	86.29	0.000
16009	7460	41	2	64.00	0.000
16010	7460	14	4	36.13	0.000
16011	7461	29	5	62.39	0.050
16012	7461	3	1	258.91	0.000
16013	7462	29	2	69.00	0.000
16014	7462	33	5	68.10	0.150
16015	7463	18	2	83.02	0.000
16016	7463	27	4	10.84	0.150
16017	7464	9	4	104.45	0.000
16018	7465	9	5	109.62	0.000
16019	7465	40	2	49.63	0.000
16020	7466	10	3	16.37	0.100
16021	7466	1	4	583.18	0.000
16022	7467	41	3	61.26	0.050
16023	7467	1	5	591.55	0.000
16024	7467	20	1	12.06	0.150
16025	7468	38	2	57.05	0.000
16026	7468	14	5	34.37	0.150
16027	7469	17	1	38.98	0.000
16028	7469	32	2	81.76	0.100
16029	7470	36	1	61.20	0.100
16030	7470	1	1	609.22	0.150
16031	7470	9	3	100.92	0.000
16032	7471	29	4	66.48	0.000
16033	7472	46	2	14.13	0.000
16034	7472	10	3	17.19	0.150
16035	7472	16	2	78.94	0.150
16036	7473	2	1	44.39	0.100
16037	7473	40	5	55.25	0.150
16038	7474	21	4	223.47	0.000
16039	7474	11	3	60.70	0.000
16040	7475	4	4	228.49	0.000
16041	7475	44	3	15.72	0.100
16042	7476	40	3	53.95	0.000
16043	7476	23	1	105.86	0.000
16044	7477	22	4	204.43	0.100
16045	7478	24	5	49.90	0.100
16046	7478	33	3	65.63	0.150
16047	7479	10	4	16.46	0.000
16048	7479	11	1	59.73	0.150
16049	7480	26	4	29.65	0.000
16050	7480	13	4	11.27	0.150
16051	7480	19	2	249.95	0.050
16052	7480	24	2	50.84	0.000
16053	7481	10	5	15.85	0.000
16054	7481	31	3	91.11	0.050
16055	7482	7	1	214.09	0.100
16056	7482	30	1	48.72	0.100
16057	7483	16	2	77.48	0.150
16058	7483	39	5	72.49	0.100
16059	7483	17	3	38.84	0.000
16060	7483	40	5	52.70	0.000
16061	7484	36	1	65.84	0.150
16062	7484	10	1	16.70	0.050
16063	7484	7	5	235.23	0.000
16064	7485	37	4	79.13	0.150
16065	7485	1	1	610.83	0.100
16066	7486	42	5	8.81	0.150
16067	7486	32	5	91.20	0.050
16068	7487	21	4	245.60	0.000
16069	7487	9	2	106.87	0.000
16070	7488	43	2	13.51	0.150
16071	7488	33	3	66.78	0.100
16072	7489	37	5	72.89	0.100
16073	7489	27	2	11.02	0.000
16074	7489	29	4	66.16	0.100
16075	7490	44	2	17.39	0.000
16076	7490	40	2	49.19	0.000
16077	7491	44	4	16.37	0.000
16078	7491	28	1	11.61	0.000
16079	7491	47	4	9.87	0.000
16080	7492	33	2	61.67	0.050
16081	7493	36	4	68.49	0.050
16082	7494	28	5	12.79	0.150
16083	7494	31	2	97.61	0.100
16084	7494	33	5	66.46	0.000
16085	7495	6	4	616.86	0.150
16086	7496	6	2	642.74	0.000
16087	7497	21	2	245.13	0.150
16088	7497	4	1	203.89	0.050
16089	7497	40	3	56.49	0.050
16090	7497	30	2	47.95	0.050
16091	7498	11	1	61.99	0.050
16092	7498	28	4	12.69	0.000
16093	7498	39	3	71.49	0.050
16094	7498	18	2	84.79	0.150
16095	7499	14	2	34.84	0.050
16096	7499	40	1	51.56	0.000
16097	7500	19	5	252.75	0.150
16098	7500	7	4	235.30	0.150
16099	7500	13	1	11.06	0.050
16100	7500	43	2	14.09	0.100
16101	7501	24	1	56.54	0.000
16102	7501	4	3	217.67	0.150
16103	7502	10	1	15.87	0.150
16104	7503	12	1	127.49	0.000
16105	7503	8	5	32.14	0.000
16106	7504	23	5	112.00	0.050
16107	7505	24	5	55.23	0.000
16108	7505	32	4	87.53	0.000
16109	7505	37	3	72.85	0.150
16110	7505	9	5	100.64	0.000
16111	7506	38	4	58.69	0.000
16112	7507	14	5	34.18	0.050
16113	7508	42	3	8.39	0.050
16114	7509	18	4	83.70	0.150
16115	7509	33	3	62.27	0.100
16116	7510	26	3	29.97	0.000
16117	7510	4	1	231.30	0.000
16118	7510	46	4	13.84	0.000
16119	7511	22	2	199.12	0.050
16120	7512	17	2	39.33	0.150
16121	7513	7	2	227.53	0.000
16122	7513	47	4	9.87	0.000
16123	7514	23	2	98.31	0.000
16124	7514	48	2	15.34	0.000
16125	7515	25	5	75.32	0.050
16126	7516	18	2	87.55	0.050
16127	7516	11	3	65.29	0.000
16128	7517	21	1	220.10	0.000
16129	7518	27	1	11.43	0.000
16130	7519	35	2	45.13	0.050
16131	7520	25	4	80.13	0.000
16132	7521	32	5	81.08	0.050
16133	7521	30	3	48.94	0.000
16134	7522	29	4	67.75	0.000
16135	7523	40	3	56.22	0.150
16136	7523	35	3	43.31	0.000
16137	7523	15	2	95.82	0.000
16138	7523	10	2	17.98	0.000
16139	7524	28	3	11.92	0.000
16140	7525	36	2	66.40	0.000
16141	7526	27	3	12.52	0.100
16142	7527	28	2	11.65	0.100
16143	7527	16	5	78.92	0.100
16144	7528	39	3	79.90	0.000
16145	7528	18	5	87.95	0.000
16146	7528	22	2	209.91	0.000
16147	7528	37	3	72.24	0.000
16148	7529	10	5	15.75	0.050
16149	7529	28	1	12.06	0.000
16150	7530	15	5	100.45	0.000
16151	7530	3	1	274.55	0.000
16152	7530	1	5	610.93	0.000
16153	7531	43	1	15.43	0.000
16154	7531	12	4	127.76	0.100
16155	7532	9	2	114.88	0.000
16156	7532	32	4	85.91	0.050
16157	7533	37	3	70.00	0.100
16158	7534	3	5	249.66	0.000
16159	7534	41	4	59.27	0.000
16160	7535	37	1	75.83	0.000
16161	7535	43	4	13.58	0.050
16162	7535	46	5	14.91	0.000
16163	7536	34	3	113.98	0.100
16164	7536	20	4	11.03	0.150
16165	7536	24	3	54.84	0.000
16166	7537	6	5	609.88	0.150
16167	7538	35	1	47.72	0.000
16168	7538	44	3	16.07	0.000
16169	7539	39	1	72.39	0.150
16170	7540	2	2	47.06	0.150
16171	7541	12	5	134.61	0.000
16172	7542	34	3	106.57	0.050
16173	7542	17	4	39.60	0.000
16174	7542	42	4	8.39	0.150
16175	7542	38	4	54.78	0.050
16176	7543	44	3	17.53	0.000
16177	7544	41	1	64.91	0.150
16178	7545	12	3	137.80	0.150
16179	7546	43	5	13.64	0.000
16180	7547	37	2	77.57	0.000
16181	7547	46	3	15.07	0.100
16182	7547	4	3	218.77	0.150
16183	7547	34	2	116.00	0.000
16184	7548	18	4	93.33	0.000
16185	7549	40	4	51.37	0.150
16186	7550	2	2	42.66	0.000
16187	7550	7	4	225.49	0.000
16188	7551	11	1	57.16	0.050
16189	7552	15	1	98.39	0.100
16190	7553	34	4	106.72	0.000
16191	7554	37	5	73.58	0.000
16192	7555	27	3	12.53	0.000
16193	7555	1	4	526.78	0.000
16194	7556	23	2	99.45	0.000
16195	7557	16	3	78.04	0.000
16196	7557	38	2	59.90	0.000
16197	7557	12	5	120.12	0.150
16198	7558	16	1	79.59	0.000
16199	7559	31	5	88.50	0.000
16200	7559	7	4	206.04	0.000
16201	7560	40	3	56.09	0.150
16202	7561	31	1	90.81	0.050
16203	7561	37	4	71.99	0.000
16204	7562	30	2	46.27	0.050
16205	7562	17	3	35.83	0.050
16206	7563	31	3	93.10	0.000
16207	7563	2	4	44.40	0.000
16208	7564	35	2	49.12	0.000
16209	7564	33	2	64.70	0.000
16210	7565	46	1	14.33	0.000
16211	7565	21	5	244.26	0.150
16212	7565	37	3	74.78	0.000
16213	7565	41	3	63.94	0.050
16214	7566	13	1	10.71	0.000
16215	7566	15	2	101.50	0.000
16216	7566	29	4	65.58	0.000
16217	7566	35	5	48.66	0.150
16218	7567	17	1	38.72	0.150
16219	7568	17	5	35.96	0.150
16220	7568	36	1	64.14	0.150
16221	7568	45	5	8.38	0.050
16222	7568	43	5	13.61	0.000
16223	7569	22	4	199.60	0.000
16224	7569	33	4	59.64	0.150
16225	7570	31	4	90.25	0.150
16226	7570	41	3	64.77	0.000
16227	7570	25	3	75.47	0.050
16228	7571	20	3	12.05	0.000
16229	7571	31	5	88.42	0.100
16230	7572	2	5	47.90	0.000
16231	7572	32	4	80.20	0.100
16232	7572	27	5	11.67	0.000
16233	7573	13	1	11.22	0.100
16234	7574	14	4	33.01	0.000
16235	7575	17	2	40.77	0.100
16236	7575	41	1	65.11	0.000
16237	7575	23	1	99.61	0.000
16238	7576	29	3	67.00	0.150
16239	7577	32	3	80.84	0.100
16240	7578	23	4	103.55	0.000
16241	7578	41	3	67.72	0.150
16242	7578	28	4	12.30	0.150
16243	7579	7	2	218.05	0.000
16244	7579	46	5	14.10	0.100
16245	7579	35	3	48.86	0.000
16246	7579	42	3	8.74	0.050
16247	7580	42	1	8.54	0.150
16248	7581	12	4	125.98	0.150
16249	7581	31	4	90.25	0.050
16250	7582	45	5	9.20	0.050
16251	7582	38	2	58.19	0.000
16252	7583	45	1	8.58	0.150
16253	7583	33	2	62.40	0.100
16254	7584	31	3	98.96	0.000
16255	7584	39	1	77.61	0.100
16256	7585	6	2	641.27	0.150
16257	7585	34	4	119.53	0.050
16258	7585	18	4	92.48	0.000
16259	7586	6	5	633.06	0.000
16260	7586	30	2	48.33	0.050
16261	7587	12	5	127.41	0.150
16262	7588	46	3	15.16	0.000
16263	7588	40	5	53.09	0.050
16264	7588	20	1	12.42	0.000
16265	7588	15	2	98.97	0.050
16266	7589	43	5	15.34	0.000
16267	7589	19	2	248.71	0.100
16268	7589	1	5	607.17	0.000
16269	7589	23	1	103.16	0.000
16270	7590	31	4	98.91	0.000
16271	7590	47	3	9.80	0.100
16272	7590	2	2	48.95	0.000
16273	7591	48	2	17.50	0.100
16274	7591	33	1	62.36	0.150
16275	7591	6	2	580.35	0.000
16276	7591	7	5	232.16	0.050
16277	7592	11	4	60.05	0.100
16278	7593	20	3	11.43	0.000
16279	7593	1	1	554.08	0.000
16280	7594	38	4	57.85	0.000
16281	7594	30	5	46.47	0.100
16282	7594	24	1	51.16	0.000
16283	7595	9	4	108.76	0.150
16284	7595	25	5	80.33	0.000
16285	7596	17	1	35.77	0.050
16286	7596	30	1	45.86	0.000
16287	7596	40	1	49.17	0.000
16288	7596	18	2	94.00	0.000
16289	7597	18	3	84.76	0.000
16290	7598	47	3	9.44	0.150
16291	7598	14	4	36.04	0.150
16292	7599	29	5	61.85	0.100
16293	7600	6	1	561.37	0.150
16294	7600	31	5	90.16	0.000
16295	7600	11	5	60.69	0.050
16296	7601	28	5	12.33	0.000
16297	7601	25	4	71.98	0.000
16298	7602	2	1	45.72	0.150
16299	7602	17	4	37.71	0.050
16300	7603	28	5	11.96	0.100
16301	7604	18	2	87.15	0.000
16302	7604	41	3	63.40	0.150
16303	7605	41	4	66.64	0.000
16304	7606	13	2	11.23	0.150
16305	7606	33	1	65.25	0.000
16306	7607	33	1	67.11	0.100
16307	7608	10	4	17.78	0.050
16308	7608	8	1	30.45	0.000
16309	7609	39	2	76.78	0.000
16310	7609	26	1	30.74	0.000
16311	7610	40	5	48.95	0.150
16312	7610	42	5	8.54	0.150
16313	7610	10	4	15.61	0.050
16314	7610	43	5	15.58	0.000
16315	7611	17	4	38.04	0.050
16316	7612	15	2	103.79	0.000
16317	7613	44	5	17.61	0.150
16318	7613	24	1	54.01	0.000
16319	7614	4	4	202.03	0.000
16320	7615	20	4	11.34	0.000
16321	7615	42	1	8.38	0.000
16322	7616	10	2	17.61	0.000
16323	7616	14	1	34.68	0.000
16324	7617	1	1	560.23	0.050
16325	7617	39	4	77.17	0.050
16326	7617	44	4	16.23	0.050
16327	7618	16	2	81.38	0.000
16328	7618	48	2	17.54	0.000
16329	7619	33	2	60.52	0.050
16330	7619	10	3	15.63	0.000
16331	7620	38	4	55.82	0.000
16332	7621	38	3	52.20	0.150
16333	7621	36	5	65.45	0.050
16334	7621	30	3	48.72	0.050
16335	7622	28	5	12.55	0.100
16336	7623	43	3	15.32	0.150
16337	7623	21	5	242.30	0.050
16338	7624	46	3	14.12	0.000
16339	7624	44	2	17.82	0.100
16340	7625	9	2	102.75	0.000
16341	7625	42	2	9.27	0.150
16342	7626	42	2	8.40	0.050
16343	7626	20	4	10.77	0.150
16344	7627	28	1	12.08	0.000
16345	7627	4	1	208.17	0.050
16346	7627	37	2	69.65	0.000
16347	7627	36	5	62.03	0.150
16348	7628	14	5	33.92	0.050
16349	7628	22	5	209.98	0.000
16350	7629	3	1	243.77	0.150
16351	7630	37	4	77.01	0.100
16352	7630	45	1	9.47	0.000
16353	7630	20	4	11.10	0.000
16354	7630	40	2	50.06	0.000
16355	7631	47	2	9.61	0.000
16356	7631	25	5	74.53	0.000
16357	7631	26	5	28.32	0.000
16358	7632	22	2	200.05	0.000
16359	7633	36	2	70.15	0.000
16360	7633	37	3	68.52	0.050
16361	7634	38	4	52.87	0.050
16362	7634	6	3	573.02	0.050
16363	7635	36	3	62.89	0.000
16364	7635	44	4	16.74	0.150
16365	7636	25	2	76.67	0.100
16366	7637	17	1	37.12	0.050
16367	7637	26	3	29.30	0.000
16368	7638	30	2	48.70	0.000
16369	7638	18	4	86.28	0.000
16370	7638	13	1	12.22	0.000
16371	7639	18	3	86.58	0.100
16372	7640	29	4	70.19	0.050
16373	7640	1	1	542.67	0.100
16374	7641	6	3	560.40	0.000
16375	7641	11	3	65.25	0.000
16376	7642	7	2	214.68	0.100
16377	7642	6	2	590.91	0.050
16378	7642	16	1	77.97	0.050
16379	7643	25	3	70.78	0.100
16380	7643	21	1	251.97	0.000
16381	7644	31	4	88.01	0.150
16382	7645	35	1	43.64	0.100
16383	7645	42	2	8.29	0.150
16384	7646	36	3	63.08	0.100
16385	7646	13	2	10.98	0.050
16386	7646	32	1	91.03	0.000
16387	7647	45	3	9.26	0.100
16388	7647	26	3	30.37	0.000
16389	7647	12	5	118.72	0.000
16390	7648	11	3	56.41	0.000
16391	7648	48	4	17.04	0.150
16392	7648	34	3	110.53	0.050
16393	7649	32	2	82.15	0.000
16394	7649	9	1	101.15	0.000
16395	7649	25	4	77.61	0.000
16396	7649	33	3	60.60	0.000
16397	7650	16	4	82.90	0.000
16398	7650	37	3	73.94	0.050
16399	7650	39	3	75.93	0.000
16400	7651	43	2	13.63	0.000
16401	7652	7	4	209.91	0.000
16402	7652	25	5	79.18	0.000
16403	7652	35	2	46.31	0.000
16404	7653	31	2	91.93	0.000
16405	7654	8	3	28.03	0.050
16406	7654	20	2	10.92	0.000
16407	7655	17	1	37.90	0.050
16408	7656	7	4	223.80	0.050
16409	7656	44	4	16.05	0.050
16410	7656	23	2	98.88	0.000
16411	7657	48	3	17.46	0.050
16412	7658	13	4	11.02	0.050
16413	7658	36	3	61.61	0.150
16414	7659	34	2	115.83	0.000
16415	7659	6	1	610.10	0.000
16416	7659	27	2	11.35	0.150
16417	7660	41	1	61.35	0.000
16418	7660	30	1	47.37	0.000
16419	7661	4	3	219.80	0.000
16420	7661	11	2	65.33	0.150
16421	7661	27	1	11.90	0.000
16422	7661	39	4	72.90	0.150
16423	7662	21	3	238.35	0.050
16424	7662	15	5	93.50	0.100
16425	7663	30	5	52.55	0.050
16426	7663	13	2	10.93	0.000
16427	7664	34	5	116.28	0.050
16428	7665	23	5	99.92	0.100
16429	7666	3	3	262.66	0.000
16430	7666	11	5	62.73	0.050
16431	7667	37	5	73.70	0.150
16432	7667	38	3	59.71	0.050
16433	7668	15	1	102.36	0.000
16434	7668	1	5	612.44	0.000
16435	7668	2	5	47.75	0.150
16436	7668	45	3	9.34	0.150
16437	7669	20	3	11.38	0.000
16438	7669	9	3	113.53	0.000
16439	7669	16	4	84.70	0.000
16440	7670	19	2	237.37	0.000
16441	7671	10	2	16.00	0.000
16442	7671	46	5	14.73	0.150
16443	7672	48	3	16.19	0.050
16444	7673	14	1	37.82	0.000
16445	7673	29	1	71.57	0.000
16446	7674	26	1	28.36	0.100
16447	7674	43	5	14.54	0.050
16448	7674	46	1	15.83	0.000
16449	7675	37	5	78.37	0.000
16450	7675	36	3	66.39	0.000
16451	7675	10	3	16.84	0.000
16452	7676	17	3	38.95	0.050
16453	7677	18	3	91.58	0.000
16454	7677	37	3	71.47	0.100
16455	7677	27	5	11.97	0.000
16456	7678	43	4	14.84	0.050
16457	7678	47	4	9.88	0.150
16458	7678	4	1	198.54	0.100
16459	7678	14	5	36.62	0.000
16460	7679	14	5	36.26	0.000
16461	7679	21	3	250.80	0.000
16462	7679	42	1	8.39	0.000
16463	7680	16	3	81.57	0.000
16464	7681	27	4	11.03	0.000
16465	7682	25	4	78.20	0.100
16466	7682	20	5	12.32	0.050
16467	7682	3	2	273.15	0.000
16468	7682	1	2	576.35	0.000
16469	7683	39	5	78.26	0.100
16470	7684	46	1	15.19	0.100
16471	7684	6	1	638.92	0.150
16472	7685	10	2	17.21	0.000
16473	7685	46	1	14.35	0.150
16474	7686	30	4	48.81	0.150
16475	7687	33	3	64.03	0.000
16476	7688	13	2	12.15	0.050
16477	7688	10	2	16.33	0.150
16478	7689	20	2	12.10	0.100
16479	7689	31	4	95.10	0.150
16480	7689	23	5	113.64	0.000
16481	7690	31	5	90.25	0.000
16482	7691	31	1	88.25	0.150
16483	7691	4	1	201.46	0.100
16484	7692	37	4	72.36	0.000
16485	7693	29	3	66.30	0.100
16486	7693	6	2	605.28	0.150
16487	7694	37	5	76.85	0.150
16488	7695	20	1	10.85	0.050
16489	7696	48	1	15.54	0.150
16490	7697	22	2	204.49	0.100
16491	7697	1	3	529.47	0.150
16492	7697	23	4	98.69	0.000
16493	7697	11	4	65.35	0.000
16494	7698	32	4	87.72	0.000
16495	7698	47	1	10.04	0.000
16496	7699	30	3	52.19	0.150
16497	7699	9	5	101.63	0.000
16498	7700	28	2	12.60	0.100
16499	7701	14	2	33.17	0.000
16500	7702	28	5	12.06	0.000
16501	7702	42	3	9.21	0.000
16502	7702	46	3	15.68	0.000
16503	7703	43	5	15.01	0.100
16504	7703	29	3	70.67	0.000
16505	7704	2	4	49.13	0.100
16506	7704	13	5	10.74	0.000
16507	7704	29	5	63.13	0.100
16508	7704	21	3	242.62	0.050
16509	7705	16	5	80.13	0.100
16510	7705	24	2	50.86	0.000
16511	7706	4	1	212.32	0.100
16512	7706	34	3	109.24	0.050
16513	7706	1	4	541.76	0.000
16514	7707	6	2	602.20	0.100
16515	7708	39	2	73.49	0.150
16516	7708	1	1	530.56	0.100
16517	7709	42	3	8.82	0.000
16518	7709	2	4	45.62	0.050
16519	7709	4	2	221.95	0.000
16520	7710	18	3	86.38	0.000
16521	7710	30	3	45.45	0.100
16522	7711	19	5	225.13	0.000
16523	7711	17	5	38.14	0.000
16524	7711	44	4	16.49	0.000
16525	7711	42	4	9.28	0.000
16526	7712	6	1	629.78	0.100
16527	7713	17	1	38.18	0.050
16528	7713	47	3	10.00	0.150
16529	7713	7	5	204.08	0.000
16530	7714	40	1	55.66	0.050
16531	7714	47	3	9.29	0.050
16532	7714	26	2	27.53	0.000
16533	7715	14	3	33.12	0.000
16534	7716	27	1	11.07	0.000
16535	7717	14	1	36.24	0.100
16536	7717	44	3	16.05	0.000
16537	7717	48	5	15.98	0.100
16538	7717	42	3	8.46	0.050
16539	7718	12	2	137.05	0.000
16540	7719	37	5	78.55	0.150
16541	7719	23	4	113.76	0.150
16542	7719	35	1	48.76	0.150
16543	7719	9	1	103.33	0.000
16544	7720	3	3	267.38	0.100
16545	7720	16	3	86.57	0.050
16546	7721	46	1	14.27	0.000
16547	7722	36	5	61.71	0.050
16548	7722	25	2	72.65	0.000
16549	7723	35	4	48.08	0.000
16550	7723	4	2	203.40	0.000
16551	7724	12	2	118.43	0.000
16552	7725	30	1	49.12	0.100
16553	7726	42	2	8.16	0.000
16554	7727	17	3	38.52	0.000
16555	7727	37	1	77.87	0.100
16556	7728	4	2	211.08	0.000
16557	7728	23	4	113.34	0.000
16558	7728	37	5	70.15	0.150
16559	7728	13	3	10.67	0.000
16560	7729	18	2	85.90	0.000
16561	7729	47	4	9.61	0.000
16562	7730	8	4	30.25	0.000
16563	7730	25	4	76.58	0.000
16564	7731	34	2	117.59	0.100
16565	7732	27	4	12.36	0.000
16566	7732	39	1	73.52	0.100
16567	7732	28	2	11.78	0.000
16568	7733	11	3	56.59	0.000
16569	7733	13	4	10.83	0.000
16570	7734	36	4	62.44	0.000
16571	7735	48	2	15.25	0.050
16572	7735	32	2	86.33	0.050
16573	7735	46	4	14.66	0.150
16574	7735	28	4	12.06	0.100
16575	7736	7	1	209.91	0.150
16576	7736	23	5	104.91	0.000
16577	7736	6	3	588.57	0.000
16578	7737	10	3	15.68	0.150
16579	7737	15	5	94.15	0.000
16580	7738	38	5	51.94	0.150
16581	7738	41	3	60.65	0.000
16582	7738	7	5	233.10	0.050
16583	7738	8	4	31.95	0.000
16584	7739	43	2	13.59	0.000
16585	7739	15	2	97.25	0.050
16586	7739	13	4	11.86	0.100
16587	7740	23	1	97.97	0.000
16588	7740	42	5	9.08	0.000
16589	7740	4	2	203.41	0.000
16590	7741	43	3	13.51	0.050
16591	7741	21	5	239.11	0.050
16592	7741	28	2	11.41	0.000
16593	7742	1	5	538.80	0.000
16594	7743	16	3	84.59	0.000
16595	7743	9	3	107.46	0.150
16596	7744	34	4	114.52	0.150
16597	7745	46	2	15.06	0.150
16598	7745	11	5	61.65	0.000
16599	7745	19	1	221.91	0.000
16600	7745	45	3	8.92	0.050
16601	7746	44	1	16.83	0.100
16602	7746	11	4	60.87	0.150
16603	7747	46	5	14.38	0.100
16604	7747	2	1	45.99	0.000
16605	7747	31	4	93.45	0.000
16606	7747	4	4	213.13	0.000
16607	7748	12	2	124.97	0.100
16608	7749	35	3	45.87	0.050
16609	7750	42	4	8.27	0.050
16610	7750	20	3	11.08	0.050
16611	7751	33	2	63.35	0.000
16612	7751	41	4	62.77	0.000
16613	7752	16	3	81.84	0.000
16614	7752	14	2	32.92	0.100
16615	7752	31	2	100.15	0.000
16616	7753	22	1	211.46	0.000
16617	7753	34	5	108.93	0.000
16618	7754	35	3	47.74	0.100
16619	7755	27	4	11.03	0.050
16620	7756	46	3	15.73	0.000
16621	7757	24	4	56.45	0.050
16622	7758	43	4	13.81	0.000
16623	7758	17	1	39.60	0.150
16624	7759	4	5	209.23	0.050
16625	7760	33	1	59.82	0.000
16626	7760	26	3	30.65	0.150
16627	7761	11	5	58.66	0.150
16628	7761	26	4	27.99	0.000
16629	7762	7	1	229.40	0.000
16630	7762	34	1	122.07	0.100
16631	7762	27	4	11.72	0.050
16632	7763	36	2	66.91	0.150
16633	7763	42	1	9.06	0.000
16634	7763	18	4	94.90	0.000
16635	7764	16	4	79.01	0.100
16636	7764	9	2	116.77	0.000
16637	7765	16	1	79.71	0.000
16638	7765	46	3	13.91	0.050
16639	7766	23	2	99.16	0.000
16640	7767	24	2	50.30	0.000
16641	7767	41	3	65.45	0.000
16642	7767	36	5	62.10	0.000
16643	7767	44	4	15.91	0.000
16644	7768	32	1	86.78	0.000
16645	7769	1	1	530.16	0.100
16646	7770	34	4	119.56	0.000
16647	7770	29	1	66.81	0.000
16648	7771	34	3	114.87	0.000
16649	7772	38	4	53.16	0.000
16650	7772	37	4	70.63	0.100
16651	7772	12	1	120.84	0.100
16652	7773	17	5	36.44	0.100
16653	7773	40	3	50.95	0.000
16654	7774	27	2	11.71	0.000
16655	7775	26	4	30.39	0.000
16656	7775	47	4	10.34	0.000
16657	7776	41	2	63.72	0.050
16658	7776	39	1	75.60	0.000
16659	7776	44	1	15.94	0.000
16660	7777	28	4	11.14	0.100
16661	7777	46	2	14.69	0.150
16662	7778	48	1	15.87	0.000
16663	7779	48	2	16.71	0.150
16664	7780	30	5	47.66	0.000
16665	7780	47	4	9.59	0.150
16666	7780	22	3	211.96	0.000
16667	7780	24	5	51.94	0.100
16668	7781	45	4	8.94	0.050
16669	7781	44	5	16.32	0.150
16670	7781	26	3	29.64	0.000
16671	7782	26	4	31.14	0.050
16672	7782	17	5	39.49	0.150
16673	7783	44	5	16.50	0.100
16674	7783	11	3	61.15	0.150
16675	7783	40	1	54.14	0.000
16676	7783	37	1	77.67	0.000
16677	7784	32	2	80.66	0.050
16678	7784	8	3	28.50	0.000
16679	7785	8	2	30.09	0.000
16680	7785	18	2	85.43	0.100
16681	7785	3	3	249.84	0.100
16682	7785	16	4	82.46	0.000
16683	7786	31	1	89.73	0.150
16684	7786	17	5	40.19	0.000
16685	7787	48	5	17.04	0.000
16686	7788	26	5	29.97	0.150
16687	7788	20	3	10.79	0.150
16688	7789	2	4	42.65	0.000
16689	7790	14	1	34.09	0.000
16690	7791	18	1	87.66	0.000
16691	7791	28	5	12.11	0.000
16692	7791	46	3	13.58	0.050
16693	7792	33	1	66.15	0.150
16694	7793	17	1	41.23	0.000
16695	7794	37	2	72.57	0.000
16696	7794	42	1	8.35	0.000
16697	7794	35	1	45.44	0.000
16698	7794	2	2	45.67	0.000
16699	7795	17	3	36.01	0.050
16700	7795	25	4	74.77	0.000
16701	7795	13	5	12.29	0.100
16702	7795	14	4	37.91	0.000
16703	7796	36	2	64.80	0.100
16704	7797	18	2	87.07	0.000
16705	7798	14	1	36.58	0.000
16706	7798	35	4	49.03	0.150
16707	7799	21	2	237.24	0.000
16708	7800	26	3	30.70	0.150
16709	7800	13	2	11.67	0.000
16710	7800	18	3	82.89	0.000
16711	7800	41	3	66.32	0.000
16712	7801	32	3	83.31	0.100
16713	7801	17	2	38.58	0.150
16714	7802	8	5	28.44	0.000
16715	7803	1	2	580.61	0.000
16716	7803	29	5	70.78	0.000
16717	7804	33	4	64.29	0.150
16718	7804	20	5	11.67	0.050
16719	7805	36	2	62.56	0.000
16720	7805	38	4	53.67	0.100
16721	7806	40	2	49.79	0.150
16722	7806	22	4	195.66	0.050
16723	7807	15	1	101.08	0.000
16724	7808	43	4	13.98	0.100
16725	7808	8	4	30.11	0.000
16726	7808	2	4	46.61	0.000
16727	7808	12	4	119.83	0.000
16728	7809	8	1	28.57	0.000
16729	7809	15	5	95.39	0.000
16730	7809	47	4	9.36	0.000
16731	7810	25	1	73.25	0.050
16732	7811	9	4	105.20	0.100
16733	7812	11	1	60.75	0.000
16734	7813	1	3	591.19	0.050
16735	7813	33	3	60.34	0.000
16736	7814	41	3	65.88	0.050
16737	7815	10	1	17.46	0.000
16738	7816	32	2	80.42	0.100
16739	7816	6	1	592.62	0.050
16740	7817	38	1	56.14	0.000
16741	7817	48	3	16.28	0.050
16742	7817	17	3	36.46	0.000
16743	7817	9	3	115.74	0.150
16744	7818	6	3	631.29	0.000
16745	7818	8	4	31.65	0.100
16746	7818	38	1	53.33	0.000
16747	7819	36	3	65.94	0.150
16748	7820	13	1	11.72	0.050
16749	7820	17	3	36.53	0.100
16750	7821	29	1	69.36	0.000
16751	7822	34	3	113.70	0.150
16752	7822	15	5	101.63	0.000
16753	7823	18	5	85.40	0.000
16754	7823	47	5	10.27	0.050
16755	7823	4	2	202.50	0.050
16756	7824	15	3	92.18	0.150
16757	7824	12	2	124.82	0.100
16758	7825	10	5	15.59	0.050
16759	7825	26	5	30.47	0.050
16760	7825	7	5	202.85	0.000
16761	7826	42	3	8.95	0.100
16762	7826	13	1	11.47	0.000
16763	7827	45	2	9.42	0.000
16764	7828	16	5	78.53	0.150
16765	7828	4	2	214.81	0.000
16766	7828	2	5	47.81	0.000
16767	7828	3	3	250.04	0.000
16768	7829	15	3	101.87	0.150
16769	7829	6	5	644.69	0.150
16770	7830	1	4	601.68	0.150
16771	7830	8	5	27.89	0.000
16772	7830	35	1	43.53	0.050
16773	7831	17	2	41.14	0.100
16774	7832	41	1	60.39	0.000
16775	7832	18	2	87.86	0.000
16776	7832	11	3	57.24	0.000
16777	7833	8	5	31.01	0.100
16778	7833	44	1	16.49	0.000
16779	7833	23	2	101.69	0.150
16780	7833	19	3	231.11	0.000
16781	7834	20	2	11.76	0.000
16782	7835	41	1	60.64	0.150
16783	7835	22	5	200.81	0.050
16784	7835	46	3	14.49	0.150
16785	7836	39	5	70.57	0.000
16786	7836	7	1	217.35	0.000
16787	7837	7	3	234.40	0.150
16788	7837	6	3	638.56	0.100
16789	7838	41	4	67.35	0.000
16790	7838	27	1	11.26	0.100
16791	7838	22	2	205.12	0.050
16792	7838	38	2	56.15	0.000
16793	7839	16	3	80.45	0.000
16794	7839	6	5	646.37	0.050
16795	7839	14	2	33.74	0.100
16796	7840	44	4	17.22	0.050
16797	7840	47	4	8.96	0.100
16798	7841	35	2	43.09	0.150
16799	7841	26	3	27.61	0.000
16800	7842	30	2	52.12	0.050
16801	7843	38	3	56.78	0.000
16802	7844	6	4	575.51	0.100
16803	7844	35	1	45.04	0.100
16804	7844	22	5	217.84	0.000
16805	7844	40	2	48.78	0.000
16806	7845	6	4	572.19	0.000
16807	7845	48	1	16.89	0.000
16808	7846	35	2	48.94	0.150
16809	7846	33	3	64.75	0.100
16810	7847	4	2	215.99	0.000
16811	7847	35	2	44.62	0.000
16812	7848	41	3	62.69	0.000
16813	7849	39	3	77.12	0.000
16814	7850	26	2	30.88	0.100
16815	7851	32	2	87.27	0.050
16816	7852	40	2	51.92	0.050
16817	7853	2	4	46.77	0.100
16818	7853	18	4	82.97	0.000
16819	7853	9	1	102.35	0.050
16820	7853	46	5	14.25	0.050
16821	7854	8	3	30.54	0.050
16822	7854	29	4	71.96	0.000
16823	7854	28	5	12.53	0.050
16824	7854	9	5	108.04	0.100
16825	7855	43	1	15.50	0.050
16826	7856	45	2	8.57	0.150
16827	7856	42	5	9.15	0.150
16828	7857	7	3	223.98	0.000
16829	7857	33	4	59.34	0.000
16830	7857	43	5	14.81	0.000
16831	7858	4	2	221.67	0.100
16832	7858	46	2	15.66	0.100
16833	7859	27	4	11.51	0.000
16834	7859	33	4	62.47	0.000
16835	7859	36	2	69.89	0.000
16836	7859	10	3	17.29	0.100
16837	7860	44	5	17.49	0.000
16838	7860	42	1	8.48	0.150
16839	7860	17	1	37.75	0.000
16840	7860	37	5	75.19	0.000
16841	7861	35	4	48.79	0.000
16842	7861	34	2	106.11	0.100
16843	7861	44	4	17.13	0.100
16844	7862	21	5	222.07	0.000
16845	7863	12	1	132.56	0.000
16846	7863	37	4	70.26	0.150
16847	7864	28	3	12.19	0.050
16848	7864	44	2	17.82	0.150
16849	7864	38	1	57.40	0.150
16850	7864	15	4	104.41	0.000
16851	7865	35	1	48.41	0.000
16852	7866	45	2	9.34	0.100
16853	7866	28	5	11.78	0.000
16854	7866	32	3	87.64	0.000
16855	7867	41	4	60.75	0.100
16856	7868	4	1	225.49	0.000
16857	7868	20	2	12.40	0.000
16858	7869	19	4	241.41	0.000
16859	7869	34	1	109.57	0.000
16860	7869	43	2	14.56	0.050
16861	7870	17	3	40.48	0.000
16862	7870	28	3	11.65	0.050
16863	7870	8	4	28.67	0.100
16864	7871	24	5	50.06	0.000
16865	7872	31	3	96.08	0.000
16866	7872	40	4	55.08	0.150
16867	7873	25	1	80.02	0.000
16868	7873	18	5	94.71	0.050
16869	7873	27	5	10.80	0.000
16870	7874	3	4	274.54	0.100
16871	7875	28	5	11.63	0.100
16872	7875	27	1	10.95	0.000
16873	7876	13	1	10.75	0.150
16874	7877	15	1	99.44	0.050
16875	7878	44	3	17.34	0.000
16876	7878	8	3	31.82	0.000
16877	7879	29	5	71.59	0.000
16878	7880	1	4	567.20	0.150
16879	7880	29	3	65.62	0.050
16880	7881	34	1	122.08	0.050
16881	7881	3	5	258.37	0.150
16882	7882	19	2	229.06	0.000
16883	7882	15	1	100.90	0.050
16884	7882	7	1	207.40	0.100
16885	7883	27	2	11.24	0.000
16886	7883	18	3	85.12	0.000
16887	7883	10	2	17.43	0.000
16888	7884	38	4	52.46	0.000
16889	7884	40	1	50.10	0.050
16890	7885	24	3	53.95	0.000
16891	7885	48	2	15.54	0.050
16892	7885	32	5	86.51	0.000
16893	7885	46	5	14.86	0.100
16894	7886	27	1	11.46	0.000
16895	7886	19	3	221.60	0.000
16896	7886	9	4	102.80	0.000
16897	7887	20	1	12.10	0.000
16898	7887	18	1	89.89	0.000
16899	7887	31	3	100.32	0.050
16900	7888	15	1	104.91	0.000
16901	7888	6	2	628.01	0.000
16902	7888	31	3	101.02	0.000
16903	7888	18	1	84.86	0.000
16904	7889	8	2	31.83	0.150
16905	7889	36	3	64.32	0.050
16906	7890	48	2	15.99	0.000
16907	7890	35	4	45.13	0.150
16908	7890	27	2	11.46	0.050
16909	7890	1	5	544.12	0.100
16910	7891	45	3	9.25	0.000
16911	7891	38	5	54.19	0.050
16912	7891	7	4	227.75	0.000
16913	7892	21	2	231.34	0.000
16914	7893	12	5	118.69	0.000
16915	7893	35	5	44.92	0.100
16916	7894	39	4	75.12	0.150
16917	7894	42	1	8.60	0.050
16918	7894	35	3	48.40	0.000
16919	7894	25	1	79.06	0.000
16920	7895	45	2	8.66	0.000
16921	7895	1	2	584.72	0.000
16922	7895	26	4	31.26	0.150
16923	7896	29	3	65.13	0.000
16924	7896	34	1	121.89	0.100
16925	7896	28	2	12.35	0.000
16926	7897	2	5	48.67	0.150
16927	7898	2	3	42.21	0.150
16928	7899	38	2	52.49	0.150
16929	7900	3	5	239.44	0.000
16930	7900	17	1	39.59	0.050
16931	7900	37	3	72.27	0.000
16932	7901	42	4	8.46	0.100
16933	7901	10	3	17.28	0.000
16934	7902	8	5	31.05	0.050
16935	7902	14	4	34.72	0.050
16936	7902	25	1	74.90	0.000
16937	7902	29	1	68.53	0.000
16938	7903	24	2	56.45	0.000
16939	7904	15	5	100.00	0.000
16940	7905	32	4	91.86	0.000
16941	7906	20	1	12.02	0.100
16942	7907	36	1	67.14	0.000
16943	7907	9	3	103.46	0.150
16944	7908	48	1	17.60	0.000
16945	7909	36	4	65.61	0.000
16946	7910	46	3	13.99	0.050
16947	7911	33	3	60.05	0.000
16948	7912	12	3	130.90	0.000
16949	7912	44	1	15.75	0.000
16950	7912	3	3	266.91	0.150
16951	7912	32	5	85.13	0.050
16952	7913	11	5	59.21	0.000
16953	7914	37	4	78.69	0.050
16954	7915	2	4	44.60	0.150
16955	7916	17	3	36.20	0.100
16956	7916	33	3	68.09	0.050
16957	7916	18	2	86.78	0.050
16958	7916	26	2	28.17	0.100
16959	7917	31	4	95.52	0.000
16960	7917	10	3	15.99	0.000
16961	7917	35	3	44.99	0.000
16962	7917	12	2	125.80	0.000
16963	7918	22	5	208.29	0.100
16964	7919	12	1	127.88	0.000
16965	7920	33	4	64.71	0.050
16966	7921	30	4	45.35	0.000
16967	7921	21	1	239.78	0.100
16968	7922	25	2	73.07	0.050
16969	7922	27	5	11.24	0.100
16970	7923	42	3	9.23	0.050
16971	7923	32	2	86.22	0.000
16972	7924	9	1	108.80	0.000
16973	7924	25	4	75.01	0.100
16974	7924	22	1	214.16	0.050
16975	7925	2	5	46.25	0.000
16976	7925	11	4	58.21	0.000
16977	7925	46	1	15.64	0.000
16978	7926	43	1	13.96	0.000
16979	7926	1	3	610.30	0.000
16980	7927	1	4	535.13	0.100
16981	7927	22	1	199.48	0.000
16982	7927	3	4	276.12	0.000
16983	7927	30	1	47.15	0.150
16984	7928	31	2	95.44	0.050
16985	7928	41	4	60.49	0.100
16986	7928	18	3	92.89	0.000
16987	7928	45	3	9.14	0.150
16988	7929	37	3	77.64	0.050
16989	7929	32	1	84.18	0.000
16990	7930	34	1	118.37	0.000
16991	7931	28	2	12.56	0.100
16992	7931	13	4	11.71	0.000
16993	7932	16	5	87.57	0.050
16994	7932	9	2	112.23	0.000
16995	7932	14	2	35.24	0.050
16996	7933	7	3	212.86	0.050
16997	7933	31	3	89.12	0.000
16998	7933	17	2	40.66	0.100
16999	7933	47	4	9.95	0.000
17000	7934	45	2	8.79	0.050
17001	7935	47	3	10.05	0.000
17002	7936	44	5	15.58	0.050
17003	7937	42	5	8.31	0.000
17004	7937	8	2	29.93	0.050
17005	7938	8	2	31.02	0.050
17006	7939	11	5	59.99	0.000
17007	7940	42	4	9.31	0.100
17008	7940	39	4	70.63	0.100
17009	7941	6	3	596.37	0.050
17010	7941	31	4	93.33	0.050
17011	7941	3	4	242.94	0.000
17012	7941	32	2	90.37	0.000
17013	7942	22	1	193.07	0.000
17014	7942	10	4	16.41	0.100
17015	7943	24	1	57.52	0.000
17016	7943	46	2	13.69	0.000
17017	7943	38	4	58.10	0.000
17018	7944	41	2	63.38	0.150
17019	7945	34	4	120.67	0.000
17020	7945	48	5	15.88	0.100
17021	7946	16	4	82.12	0.000
17022	7946	32	3	79.62	0.150
17023	7947	24	2	56.12	0.000
17024	7947	38	5	59.48	0.000
17025	7948	42	4	8.33	0.000
17026	7948	11	3	56.70	0.100
17027	7948	48	4	15.53	0.050
17028	7949	27	5	11.00	0.000
17029	7949	44	4	16.36	0.000
17030	7949	13	5	11.76	0.050
17031	7949	37	4	69.57	0.000
17032	7950	26	4	29.04	0.000
17033	7950	43	5	13.74	0.150
17034	7951	9	5	103.64	0.000
17035	7952	15	4	104.90	0.150
17036	7952	34	1	111.02	0.000
17037	7952	37	1	78.10	0.000
17038	7952	1	5	555.65	0.150
17039	7953	3	1	243.73	0.000
17040	7954	3	5	242.45	0.050
17041	7954	38	5	52.95	0.150
17042	7955	4	4	207.48	0.000
17043	7955	15	5	94.48	0.100
17044	7956	4	5	200.51	0.000
17045	7956	38	4	57.45	0.000
17046	7957	43	3	14.32	0.100
17047	7958	31	2	88.03	0.000
17048	7958	26	3	30.05	0.000
17049	7958	40	4	53.68	0.000
17050	7959	16	5	84.88	0.000
17051	7959	20	4	12.46	0.000
17052	7959	46	2	13.68	0.100
17053	7959	28	4	12.40	0.000
17054	7960	14	3	37.10	0.000
17055	7960	9	2	103.76	0.000
17056	7960	11	1	61.50	0.000
17057	7960	13	4	10.89	0.000
17058	7961	17	3	38.94	0.050
17059	7962	40	2	49.31	0.050
17060	7963	44	3	16.77	0.000
17061	7963	1	1	568.11	0.000
17062	7963	14	2	34.26	0.150
17063	7964	14	3	37.88	0.000
17064	7965	3	2	248.96	0.100
17065	7966	42	5	9.08	0.150
17066	7966	6	4	609.43	0.150
17067	7966	48	2	17.31	0.150
17068	7966	22	5	192.85	0.000
17069	7967	17	5	36.92	0.000
17070	7968	9	1	112.24	0.150
17071	7968	38	3	56.04	0.000
17072	7968	15	4	100.31	0.000
17073	7969	34	5	113.10	0.000
17074	7970	26	3	29.17	0.000
17075	7971	23	3	105.69	0.050
17076	7971	13	1	10.75	0.100
17077	7971	1	5	570.88	0.150
17078	7972	22	5	199.85	0.050
17079	7972	8	4	28.08	0.100
17080	7972	15	4	100.01	0.100
17081	7972	12	1	122.47	0.100
17082	7973	9	4	115.36	0.000
17083	7973	6	5	565.79	0.000
17084	7973	22	3	219.76	0.100
17085	7973	10	2	16.80	0.050
17086	7974	45	4	8.75	0.150
17087	7974	38	2	57.68	0.000
17088	7974	7	4	218.83	0.150
17089	7974	36	4	62.51	0.000
17090	7975	2	5	43.03	0.000
17091	7975	37	5	75.38	0.000
17092	7976	3	1	240.87	0.000
17093	7976	22	3	197.55	0.150
17094	7977	8	4	31.50	0.000
17095	7977	1	2	612.40	0.000
17096	7977	42	1	8.67	0.050
17097	7978	13	2	12.18	0.050
17098	7979	30	3	45.76	0.150
17099	7979	47	5	9.50	0.100
17100	7979	23	2	112.71	0.000
17101	7979	26	1	28.57	0.100
17102	7980	44	4	17.01	0.100
17103	7980	28	3	12.18	0.000
17104	7980	45	3	9.05	0.050
17105	7980	8	5	31.19	0.100
17106	7981	17	4	37.40	0.000
17107	7981	15	3	96.78	0.050
17108	7981	44	2	17.34	0.150
17109	7982	2	3	45.97	0.000
17110	7982	25	5	73.88	0.050
17111	7982	31	2	97.86	0.150
17112	7982	39	3	72.28	0.050
17113	7983	34	1	108.32	0.000
17114	7984	8	2	30.18	0.000
17115	7985	29	2	71.75	0.000
17116	7985	48	2	16.59	0.150
17117	7985	38	4	55.06	0.000
17118	7986	38	5	54.32	0.000
17119	7986	28	1	12.13	0.050
17120	7986	48	1	17.01	0.000
17121	7986	41	5	60.19	0.150
17122	7987	3	3	239.42	0.000
17123	7988	7	3	214.13	0.050
17124	7988	24	2	54.18	0.000
17125	7989	6	1	578.45	0.000
17126	7989	29	5	69.90	0.050
17127	7989	22	2	200.46	0.150
17128	7990	1	1	567.43	0.100
17129	7990	28	2	12.18	0.000
17130	7991	42	2	8.65	0.050
17131	7991	23	3	107.60	0.000
17132	7991	12	4	136.11	0.000
17133	7991	25	1	69.42	0.100
17134	7992	15	5	90.51	0.000
17135	7993	36	1	68.84	0.050
17136	7993	16	5	80.33	0.000
17137	7993	15	2	92.09	0.050
17138	7994	21	4	223.52	0.000
17139	7995	2	4	43.91	0.150
17140	7995	4	5	223.90	0.150
17141	7995	35	3	47.28	0.100
17142	7995	42	4	8.32	0.100
17143	7996	2	1	43.83	0.000
17144	7996	32	3	88.03	0.050
17145	7996	38	4	59.22	0.100
17146	7996	41	4	59.34	0.100
17147	7997	8	4	29.88	0.100
17148	7998	22	5	218.95	0.150
17149	7999	39	3	75.92	0.000
17150	7999	35	1	45.19	0.100
17151	8000	19	5	256.12	0.000
17152	8000	11	5	56.61	0.000
17153	8000	36	1	63.65	0.000
17154	8000	7	4	206.76	0.000
17155	8001	32	2	92.21	0.000
17156	8001	23	5	105.73	0.150
17157	8001	37	4	74.08	0.000
17158	8001	1	4	600.57	0.000
17159	8002	33	3	59.42	0.000
17160	8003	13	3	11.09	0.100
17161	8004	17	2	36.68	0.150
17162	8004	15	4	99.92	0.000
17163	8004	37	1	68.01	0.000
17164	8005	26	3	27.49	0.000
17165	8005	27	4	11.41	0.100
17166	8005	19	2	241.59	0.150
17167	8005	24	4	53.99	0.000
17168	8006	28	2	11.78	0.050
17169	8006	1	1	551.78	0.150
17170	8006	46	1	15.63	0.000
17171	8006	40	1	54.12	0.050
17172	8007	41	2	64.29	0.100
17173	8008	22	1	216.43	0.000
17174	8009	41	3	66.10	0.150
17175	8009	30	4	50.19	0.000
17176	8009	11	4	57.08	0.000
17177	8009	33	2	61.08	0.150
17178	8010	24	5	55.83	0.100
17179	8010	19	2	245.79	0.100
17180	8011	41	1	65.34	0.100
17181	8011	45	2	8.49	0.050
17182	8012	6	1	558.32	0.100
17183	8012	19	2	231.71	0.000
17184	8013	40	3	50.67	0.050
17185	8013	30	4	48.23	0.000
17186	8014	18	5	88.27	0.000
17187	8014	32	3	90.06	0.050
17188	8014	10	4	17.71	0.100
17189	8015	48	1	16.53	0.000
17190	8015	19	3	236.47	0.050
17191	8015	45	2	9.26	0.000
17192	8016	26	4	29.69	0.100
17193	8017	17	2	37.19	0.000
17194	8017	19	3	254.60	0.000
17195	8017	2	5	44.78	0.150
17196	8017	36	5	68.68	0.000
17197	8018	39	3	78.45	0.050
17198	8019	31	1	89.40	0.000
17199	8019	23	3	98.62	0.000
17200	8019	36	3	69.80	0.000
17201	8020	15	3	91.23	0.150
17202	8021	42	2	8.49	0.000
17203	8022	18	3	92.49	0.050
17204	8022	35	5	44.73	0.000
17205	8023	45	2	8.60	0.000
17206	8024	34	5	117.00	0.000
17207	8024	41	3	63.16	0.000
17208	8024	28	4	11.86	0.000
17209	8025	47	2	9.95	0.050
17210	8026	42	5	8.39	0.000
17211	8026	28	2	11.03	0.000
17212	8027	6	3	617.88	0.100
17213	8027	24	5	52.41	0.000
17214	8027	34	4	110.55	0.000
17215	8028	10	2	17.35	0.000
17216	8029	44	3	17.89	0.000
17217	8029	3	5	249.38	0.000
17218	8030	19	3	248.40	0.000
17219	8030	30	1	46.73	0.150
17220	8030	4	1	226.48	0.000
17221	8031	44	5	17.82	0.000
17222	8032	33	2	59.71	0.150
17223	8032	13	5	11.78	0.100
17224	8032	26	5	27.71	0.000
17225	8033	36	4	64.04	0.000
17226	8034	38	1	52.56	0.100
17227	8034	3	1	278.63	0.100
17228	8035	42	5	8.66	0.000
17229	8036	9	2	109.46	0.000
17230	8037	46	5	14.15	0.000
17231	8037	17	5	40.21	0.000
17232	8038	14	1	33.47	0.150
17233	8038	30	2	52.11	0.000
17234	8038	21	3	219.84	0.150
17235	8038	8	3	27.92	0.050
17236	8039	30	2	46.29	0.100
17237	8040	41	4	60.42	0.000
17238	8040	15	4	98.32	0.000
17239	8041	9	1	113.22	0.000
17240	8041	21	5	224.36	0.050
17241	8041	40	4	50.74	0.100
17242	8042	7	1	214.54	0.100
17243	8042	36	1	70.57	0.050
17244	8042	29	1	62.18	0.150
17245	8043	25	2	77.01	0.050
17246	8043	10	3	16.15	0.050
17247	8043	6	3	585.53	0.000
17248	8043	29	5	69.96	0.150
17249	8044	31	4	94.18	0.000
17250	8044	15	4	92.98	0.150
17251	8045	37	3	70.78	0.000
17252	8045	14	1	37.52	0.050
17253	8045	13	5	12.08	0.050
17254	8046	41	4	58.95	0.000
17255	8047	19	2	246.55	0.150
17256	8047	35	3	47.56	0.050
17257	8048	3	3	265.66	0.000
17258	8048	30	5	49.19	0.000
17259	8049	42	1	8.03	0.050
17260	8049	1	5	533.12	0.100
17261	8050	42	4	8.64	0.000
17262	8051	26	4	28.56	0.100
17263	8052	4	2	198.57	0.150
17264	8053	6	1	617.18	0.150
17265	8053	41	4	64.07	0.000
17266	8054	17	3	40.73	0.050
17267	8054	4	5	217.75	0.050
17268	8055	37	2	71.21	0.150
17269	8056	4	2	213.28	0.000
17270	8056	37	3	70.01	0.150
17271	8057	31	5	94.66	0.150
17272	8057	44	4	17.12	0.000
17273	8058	45	1	8.47	0.000
17274	8059	42	5	9.34	0.100
17275	8059	46	4	13.66	0.000
17276	8060	21	3	241.03	0.000
17277	8060	35	4	44.23	0.100
17278	8060	24	2	50.65	0.000
17279	8061	32	3	89.69	0.150
17280	8061	16	5	87.28	0.000
17281	8061	19	5	245.57	0.000
17282	8062	2	1	46.37	0.150
17283	8062	18	2	84.29	0.100
17284	8063	27	1	11.08	0.000
17285	8063	10	2	16.85	0.150
17286	8064	23	2	103.64	0.100
17287	8064	12	5	126.80	0.000
17288	8065	36	2	61.58	0.000
17289	8065	35	5	47.19	0.000
17290	8066	22	4	196.58	0.050
17291	8066	19	1	232.69	0.150
17292	8067	31	3	90.82	0.000
17293	8067	26	1	28.60	0.000
17294	8067	10	3	16.38	0.000
17295	8068	8	4	29.21	0.150
17296	8068	12	1	135.53	0.000
17297	8068	46	1	13.69	0.050
17298	8069	19	5	231.22	0.000
17299	8069	47	3	9.11	0.150
17300	8070	48	4	17.22	0.100
17301	8070	15	3	103.12	0.100
17302	8070	39	5	80.14	0.050
17303	8070	20	5	10.98	0.000
17304	8071	38	1	52.75	0.100
17305	8072	41	3	65.65	0.000
17306	8072	8	2	30.64	0.000
17307	8073	9	2	114.07	0.000
17308	8073	21	5	250.89	0.100
17309	8073	22	1	213.71	0.150
17310	8073	6	3	582.36	0.000
17311	8074	47	4	9.51	0.000
17312	8074	26	3	27.72	0.150
17313	8074	25	4	69.31	0.000
17314	8075	47	2	9.28	0.000
17315	8075	27	1	10.87	0.100
17316	8076	40	3	49.55	0.000
17317	8076	1	1	580.23	0.100
17318	8076	41	3	63.40	0.000
17319	8076	28	3	12.45	0.000
17320	8077	14	2	36.90	0.000
17321	8077	29	2	63.10	0.150
17322	8078	7	5	208.26	0.000
17323	8078	25	4	80.27	0.050
17324	8078	12	1	123.20	0.100
17325	8078	8	2	28.84	0.150
17326	8079	28	1	12.21	0.000
17327	8080	48	2	17.52	0.000
17328	8081	46	4	14.01	0.100
17329	8081	31	5	89.00	0.150
17330	8081	19	3	252.55	0.000
17331	8082	7	4	228.39	0.150
17332	8082	46	3	13.75	0.000
17333	8082	3	1	258.17	0.150
17334	8082	13	4	11.81	0.000
17335	8083	24	2	49.97	0.000
17336	8083	1	1	572.46	0.150
17337	8084	4	1	220.46	0.050
17338	8084	39	5	81.98	0.150
17339	8084	19	5	252.20	0.100
17340	8084	30	1	51.64	0.100
17341	8085	3	1	249.32	0.150
17342	8085	45	2	9.27	0.150
17343	8085	16	2	89.35	0.100
17344	8086	2	4	46.85	0.150
17345	8086	18	4	92.07	0.000
17346	8086	24	2	49.98	0.050
17347	8086	10	5	16.66	0.050
17348	8087	21	3	253.81	0.100
17349	8087	29	4	62.93	0.050
17350	8088	47	2	9.31	0.100
17351	8088	40	5	55.94	0.000
17352	8089	38	1	56.99	0.150
17353	8089	24	2	52.24	0.000
17354	8090	25	3	74.37	0.000
17355	8091	31	2	88.60	0.150
17356	8091	48	4	17.10	0.100
17357	8092	29	2	62.17	0.000
17358	8092	19	4	225.02	0.000
17359	8093	14	4	35.94	0.100
17360	8093	28	4	11.67	0.000
17361	8093	6	3	578.19	0.000
17362	8094	27	1	12.39	0.150
17363	8094	44	5	15.75	0.150
17364	8095	16	2	78.54	0.000
17365	8096	38	5	52.95	0.000
17366	8097	41	2	60.35	0.100
17367	8097	20	1	11.01	0.150
17368	8098	45	5	9.29	0.000
17369	8099	42	5	8.31	0.000
17370	8099	46	4	15.46	0.000
17371	8099	31	5	94.02	0.000
17372	8099	34	3	111.23	0.000
17373	8100	3	3	251.22	0.150
17374	8100	22	1	196.30	0.150
17375	8101	37	5	69.55	0.150
17376	8102	8	1	31.30	0.000
17377	8102	47	1	10.41	0.050
17378	8103	34	2	114.52	0.000
17379	8103	9	1	111.55	0.000
17380	8104	11	4	62.97	0.150
17381	8104	27	1	11.76	0.000
17382	8105	29	1	64.59	0.000
17383	8105	44	1	16.03	0.050
17384	8105	33	4	65.39	0.000
17385	8105	40	4	54.21	0.050
17386	8106	20	4	11.04	0.000
17387	8107	32	1	80.56	0.100
17388	8107	19	4	253.76	0.000
17389	8108	47	5	9.90	0.000
17390	8108	39	4	77.05	0.000
17391	8108	15	5	94.39	0.000
17392	8109	37	4	72.87	0.150
17393	8109	35	2	45.88	0.000
17394	8110	34	5	120.83	0.100
17395	8110	28	1	12.46	0.000
17396	8110	3	4	255.79	0.000
17397	8111	40	5	55.12	0.000
17398	8111	21	4	245.87	0.000
17399	8111	25	4	79.61	0.000
17400	8111	33	2	67.15	0.000
17401	8112	44	5	16.21	0.150
17402	8112	29	4	66.95	0.050
17403	8112	31	2	101.49	0.100
17404	8113	2	1	47.88	0.000
17405	8114	43	5	14.57	0.150
17406	8114	17	4	37.43	0.000
17407	8114	26	1	30.95	0.000
17408	8115	8	2	30.39	0.100
17409	8115	19	5	230.96	0.100
17410	8115	18	5	84.11	0.100
17411	8116	30	1	46.52	0.100
17412	8117	26	4	29.98	0.000
17413	8117	22	5	208.00	0.000
17414	8117	11	3	58.07	0.100
17415	8117	37	1	74.03	0.100
17416	8118	3	2	263.23	0.000
17417	8119	26	4	30.66	0.000
17418	8119	23	3	111.68	0.100
17419	8119	48	3	17.58	0.050
17420	8119	44	1	17.98	0.000
17421	8120	11	3	63.49	0.000
17422	8120	38	3	52.94	0.000
17423	8121	11	4	60.25	0.150
17424	8121	13	5	10.82	0.000
17425	8122	14	4	34.33	0.000
17426	8122	25	2	76.55	0.050
17427	8123	37	2	74.23	0.000
17428	8123	3	5	278.88	0.000
17429	8123	29	2	64.20	0.000
17430	8124	45	1	9.56	0.000
17431	8125	10	4	17.25	0.000
17432	8125	33	5	65.22	0.150
17433	8125	27	3	12.27	0.150
17434	8126	43	4	15.12	0.000
17435	8126	1	2	548.71	0.100
17436	8127	28	1	12.37	0.150
17437	8128	22	4	218.23	0.150
17438	8128	21	3	241.25	0.050
17439	8129	10	1	16.69	0.050
17440	8130	45	3	9.05	0.050
17441	8130	14	2	34.68	0.050
17442	8131	13	1	11.46	0.000
17443	8131	29	1	62.79	0.050
17444	8132	19	1	222.84	0.000
17445	8133	7	2	210.14	0.150
17446	8133	31	4	96.88	0.000
17447	8134	21	3	229.76	0.150
17448	8134	38	3	59.10	0.000
17449	8135	48	1	17.17	0.000
17450	8136	46	1	13.73	0.000
17451	8136	44	3	16.69	0.000
17452	8137	1	4	579.61	0.000
17453	8137	41	2	62.08	0.050
17454	8138	42	2	8.28	0.050
17455	8139	21	5	227.90	0.000
17456	8140	37	3	68.61	0.000
17457	8140	32	3	90.92	0.000
17458	8141	23	1	102.01	0.000
17459	8142	22	4	194.73	0.100
17460	8142	24	1	57.69	0.000
17461	8143	40	2	51.14	0.000
17462	8143	48	3	17.50	0.050
17463	8143	14	3	35.33	0.000
17464	8143	37	4	71.97	0.050
17465	8144	47	5	10.29	0.100
17466	8144	19	4	245.08	0.150
17467	8145	24	4	53.52	0.000
17468	8146	17	3	40.62	0.100
17469	8147	21	3	237.20	0.000
17470	8147	8	1	31.73	0.050
17471	8147	38	1	54.99	0.000
17472	8148	23	5	111.39	0.000
17473	8148	35	1	45.26	0.000
17474	8148	48	4	16.97	0.150
17475	8148	38	2	52.39	0.000
17476	8149	36	4	67.53	0.100
17477	8149	34	4	105.36	0.100
17478	8149	24	2	54.13	0.150
17479	8150	20	3	12.36	0.000
17480	8150	17	4	39.13	0.050
17481	8151	22	1	203.48	0.000
17482	8151	1	4	542.73	0.000
17483	8152	35	4	43.35	0.000
17484	8153	13	1	12.24	0.050
17485	8153	26	1	27.25	0.050
17486	8153	40	3	48.83	0.000
17487	8154	10	4	15.45	0.000
17488	8155	17	4	40.17	0.000
17489	8155	20	3	11.16	0.100
17490	8155	40	1	52.95	0.000
17491	8156	10	2	15.44	0.000
17492	8156	14	1	35.43	0.050
17493	8156	27	4	11.03	0.000
17494	8156	43	3	15.08	0.000
17495	8157	13	3	11.67	0.050
17496	8157	15	5	97.07	0.000
17497	8158	31	5	100.02	0.000
17498	8159	37	5	76.82	0.000
17499	8159	11	2	62.41	0.000
17500	8160	6	2	608.16	0.100
17501	8160	30	3	46.74	0.000
17502	8161	24	4	57.62	0.000
17503	8162	11	2	61.23	0.000
17504	8162	44	3	17.04	0.100
17505	8163	9	1	116.06	0.000
17506	8164	2	5	44.51	0.050
17507	8165	25	1	77.75	0.100
17508	8165	38	3	59.50	0.000
17509	8166	38	3	57.33	0.150
17510	8166	43	2	13.87	0.100
17511	8166	44	1	17.18	0.050
17512	8166	12	3	136.86	0.100
17513	8167	31	1	100.63	0.000
17514	8167	18	3	83.19	0.050
17515	8168	28	4	12.22	0.050
17516	8168	27	5	11.14	0.050
17517	8169	46	5	13.76	0.000
17518	8169	29	2	64.32	0.150
17519	8170	29	1	71.44	0.000
17520	8170	2	3	48.77	0.100
17521	8170	18	2	83.14	0.100
17522	8171	28	1	11.59	0.100
17523	8171	11	4	59.95	0.100
17524	8171	23	2	100.42	0.150
17525	8171	4	2	216.20	0.150
17526	8172	10	5	16.32	0.000
17527	8172	19	3	251.92	0.000
17528	8173	44	4	17.82	0.000
17529	8173	12	2	123.77	0.050
17530	8173	31	1	96.45	0.000
17531	8174	30	5	49.21	0.000
17532	8175	1	2	598.83	0.050
17533	8175	33	1	64.46	0.000
17534	8176	39	2	78.11	0.150
17535	8177	43	4	14.52	0.100
17536	8177	17	3	35.70	0.000
17537	8177	12	4	130.55	0.000
17538	8178	40	1	51.59	0.150
17539	8178	35	3	48.81	0.150
17540	8179	23	1	107.25	0.100
17541	8179	25	4	73.14	0.000
17542	8179	3	2	253.32	0.000
17543	8179	48	5	17.63	0.050
17544	8180	41	4	67.37	0.000
17545	8180	20	3	11.29	0.000
17546	8180	15	3	92.91	0.000
17547	8181	35	3	48.46	0.000
17548	8182	32	3	89.25	0.000
17549	8182	18	3	83.32	0.100
17550	8183	10	2	16.99	0.100
17551	8183	8	3	31.69	0.050
17552	8184	35	5	48.37	0.050
17553	8184	19	2	223.91	0.150
17554	8185	38	5	53.53	0.050
17555	8185	26	1	30.18	0.100
17556	8185	28	4	11.28	0.150
17557	8185	1	2	593.96	0.050
17558	8186	33	2	64.13	0.000
17559	8187	11	1	60.98	0.100
17560	8188	1	3	567.11	0.050
17561	8188	23	4	99.47	0.050
17562	8189	41	1	59.94	0.050
17563	8189	16	3	84.65	0.000
17564	8189	21	4	242.91	0.150
17565	8189	26	5	30.55	0.000
17566	8190	32	1	83.59	0.100
17567	8191	7	5	232.67	0.100
17568	8191	16	4	77.15	0.000
17569	8191	8	5	29.63	0.000
17570	8191	13	2	10.74	0.000
17571	8192	33	3	67.27	0.000
17572	8192	19	1	246.71	0.000
17573	8192	30	1	50.36	0.050
17574	8192	26	2	28.59	0.000
17575	8193	35	4	43.63	0.150
17576	8193	18	1	95.97	0.150
17577	8193	3	1	244.37	0.100
17578	8194	44	3	15.76	0.100
17579	8194	8	3	29.91	0.150
17580	8195	33	4	68.22	0.050
17581	8196	21	1	230.22	0.000
17582	8196	44	5	17.05	0.100
17583	8197	39	5	77.72	0.000
17584	8198	28	1	11.59	0.100
17585	8199	1	1	593.92	0.000
17586	8200	8	5	29.78	0.100
17587	8200	30	1	47.91	0.000
17588	8200	7	1	214.38	0.000
17589	8201	13	1	11.12	0.100
17590	8202	17	4	38.98	0.100
17591	8203	18	4	89.38	0.100
17592	8203	30	5	47.58	0.000
17593	8204	42	5	9.34	0.000
17594	8204	26	2	28.18	0.000
17595	8204	21	1	239.41	0.000
17596	8205	17	2	40.56	0.000
17597	8206	35	1	46.34	0.150
17598	8206	17	2	39.48	0.050
17599	8206	2	1	42.64	0.000
17600	8206	1	3	534.30	0.050
17601	8207	29	5	68.70	0.000
17602	8208	16	1	86.27	0.150
17603	8208	11	1	61.22	0.100
17604	8208	4	1	220.83	0.150
17605	8208	48	3	15.85	0.000
17606	8209	27	4	12.16	0.000
17607	8209	35	5	43.53	0.050
17608	8209	28	1	11.45	0.100
17609	8210	14	3	34.05	0.100
17610	8210	7	2	232.51	0.000
17611	8211	30	1	46.63	0.050
17612	8212	48	3	16.42	0.000
17613	8213	12	1	134.88	0.000
17614	8214	37	4	70.30	0.050
17615	8215	29	2	64.74	0.000
17616	8216	2	3	48.21	0.000
17617	8216	18	5	86.18	0.100
17618	8216	20	2	11.37	0.000
17619	8217	44	4	16.83	0.000
17620	8217	39	3	71.25	0.100
17621	8218	34	3	119.76	0.150
17622	8218	46	4	13.87	0.000
17623	8218	42	3	9.11	0.100
17624	8219	34	4	109.75	0.150
17625	8219	40	1	51.07	0.000
17626	8219	6	3	575.88	0.100
17627	8220	11	2	57.23	0.000
17628	8221	48	5	15.42	0.150
17629	8222	40	5	48.68	0.050
17630	8222	34	5	107.07	0.150
17631	8223	1	5	551.51	0.000
17632	8223	18	2	88.84	0.150
17633	8223	31	3	94.63	0.150
17634	8224	19	1	239.54	0.000
17635	8224	13	5	10.84	0.000
17636	8224	11	2	65.33	0.150
17637	8224	2	2	48.42	0.000
17638	8225	24	3	52.34	0.000
17639	8226	33	4	66.35	0.000
17640	8226	7	5	230.80	0.150
17641	8227	15	3	98.52	0.000
17642	8227	12	5	123.64	0.100
17643	8227	34	1	120.93	0.150
17644	8228	26	3	29.76	0.100
17645	8228	37	2	75.23	0.000
17646	8228	6	2	607.48	0.000
17647	8229	14	3	32.94	0.100
17648	8229	11	1	57.82	0.000
17649	8230	35	3	47.67	0.050
17650	8230	20	3	12.15	0.000
17651	8231	1	2	551.05	0.000
17652	8231	33	5	61.68	0.000
17653	8232	20	3	11.47	0.100
17654	8232	27	4	11.16	0.000
17655	8232	44	5	17.63	0.000
17656	8233	17	3	36.14	0.000
17657	8233	47	2	9.95	0.000
17658	8233	24	3	55.57	0.150
17659	8233	20	4	12.43	0.000
17660	8234	17	4	37.84	0.000
17661	8234	24	2	54.68	0.050
17662	8235	36	1	62.81	0.050
17663	8235	14	2	33.36	0.100
17664	8235	35	1	42.61	0.000
17665	8235	12	4	131.39	0.150
17666	8236	2	3	43.58	0.000
17667	8236	27	5	11.36	0.000
17668	8236	43	2	14.48	0.100
17669	8237	39	5	73.13	0.000
17670	8238	46	5	15.31	0.000
17671	8238	25	2	77.52	0.050
17672	8239	26	5	27.31	0.000
17673	8239	18	1	83.42	0.000
17674	8240	38	4	55.29	0.050
17675	8241	32	3	91.61	0.000
17676	8242	32	5	88.69	0.000
17677	8243	10	2	16.53	0.000
17678	8244	36	4	66.94	0.100
17679	8244	34	3	121.18	0.000
17680	8244	6	1	606.43	0.000
17681	8244	7	4	217.22	0.100
17682	8245	48	4	16.83	0.150
17683	8246	23	2	105.17	0.100
17684	8246	10	1	16.13	0.000
17685	8246	25	4	72.64	0.150
17686	8247	2	3	42.74	0.050
17687	8248	36	2	60.86	0.150
17688	8248	20	3	12.11	0.100
17689	8249	34	5	116.25	0.000
17690	8249	11	2	63.75	0.050
17691	8249	44	1	17.21	0.000
17692	8249	47	3	10.25	0.100
17693	8250	38	5	52.76	0.000
17694	8251	8	5	28.70	0.000
17695	8252	1	1	592.54	0.150
17696	8252	15	1	100.63	0.000
17697	8253	47	2	9.79	0.000
17698	8254	36	5	64.94	0.100
17699	8255	33	1	66.53	0.150
17700	8256	46	5	14.34	0.100
17701	8256	15	2	102.96	0.000
17702	8257	36	4	66.17	0.000
17703	8257	48	5	16.87	0.100
17704	8258	29	5	71.08	0.000
17705	8258	40	5	49.04	0.100
17706	8259	21	5	231.79	0.050
17707	8259	2	5	44.63	0.050
17708	8260	8	1	31.11	0.000
17709	8260	2	2	42.88	0.050
17710	8260	36	3	68.14	0.000
17711	8261	27	3	12.44	0.000
17712	8261	36	2	67.52	0.000
17713	8261	32	4	81.71	0.150
17714	8262	24	1	51.47	0.000
17715	8262	3	1	275.50	0.000
17716	8263	17	2	36.23	0.000
17717	8263	3	3	268.48	0.050
17718	8263	30	2	47.64	0.150
17719	8264	10	1	17.93	0.050
17720	8265	12	2	129.60	0.000
17721	8265	28	2	12.82	0.150
17722	8265	30	3	47.54	0.100
17723	8265	16	4	80.05	0.050
17724	8266	45	2	8.76	0.150
17725	8267	4	2	204.31	0.100
17726	8267	25	2	78.52	0.000
17727	8267	23	1	111.85	0.000
17728	8268	44	5	15.71	0.050
17729	8268	48	4	17.58	0.050
17730	8268	33	2	62.57	0.000
17731	8269	8	5	31.95	0.000
17732	8269	44	2	16.68	0.000
17733	8270	35	1	44.72	0.100
17734	8271	43	5	13.45	0.100
17735	8272	26	2	31.50	0.150
17736	8273	47	5	9.78	0.150
17737	8274	41	1	59.35	0.150
17738	8275	21	5	220.67	0.150
17739	8275	43	5	15.51	0.150
17740	8275	25	4	70.09	0.000
17741	8275	7	5	207.20	0.000
17742	8276	21	5	249.20	0.050
17743	8276	7	5	228.16	0.000
17744	8276	28	2	12.82	0.100
17745	8276	34	4	112.72	0.000
17746	8277	48	5	17.15	0.000
17747	8277	30	3	51.29	0.000
17748	8278	2	1	42.31	0.000
17749	8278	37	3	68.07	0.050
17750	8279	41	1	60.80	0.050
17751	8279	34	3	119.34	0.000
17752	8280	40	1	51.75	0.000
17753	8281	2	4	42.49	0.000
17754	8281	38	4	54.76	0.150
17755	8281	3	4	255.91	0.100
17756	8282	18	4	84.43	0.000
17757	8283	24	5	56.03	0.000
17758	8283	42	2	8.19	0.000
17759	8284	46	3	14.10	0.100
17760	8284	22	5	220.01	0.150
17761	8285	10	4	15.60	0.150
17762	8286	43	1	15.50	0.050
17763	8286	8	1	29.59	0.000
17764	8286	21	1	223.01	0.000
17765	8287	12	1	119.63	0.000
17766	8287	36	2	61.75	0.050
17767	8287	7	4	222.07	0.050
17768	8287	4	1	220.92	0.100
17769	8288	36	4	69.48	0.000
17770	8289	36	1	65.91	0.100
17771	8289	1	1	542.22	0.000
17772	8290	17	1	36.94	0.100
17773	8290	25	3	75.93	0.000
17774	8291	8	2	29.19	0.000
17775	8291	31	1	96.97	0.100
17776	8291	42	3	8.87	0.000
17777	8292	42	4	9.13	0.100
17778	8292	10	2	16.51	0.050
17779	8292	28	3	11.75	0.000
17780	8293	11	5	65.20	0.000
17781	8294	43	3	13.77	0.000
17782	8294	39	5	71.03	0.150
17783	8294	6	2	556.19	0.000
17784	8295	48	5	16.87	0.000
17785	8295	45	5	9.26	0.050
17786	8296	18	5	90.84	0.150
17787	8296	36	4	64.00	0.100
17788	8297	41	2	65.95	0.150
17789	8298	10	5	17.01	0.000
17790	8298	25	2	79.31	0.100
17791	8299	15	2	99.95	0.100
17792	8299	18	3	83.66	0.000
17793	8300	44	1	17.28	0.100
17794	8300	32	4	81.89	0.150
17795	8301	6	2	571.09	0.000
17796	8301	41	5	67.81	0.100
17797	8301	21	4	239.40	0.050
17798	8301	42	2	8.14	0.000
17799	8302	47	5	9.14	0.050
17800	8302	35	3	46.06	0.100
17801	8303	27	5	12.34	0.000
17802	8303	16	1	88.13	0.000
17803	8303	43	5	14.70	0.000
17804	8304	33	1	65.78	0.000
17805	8305	45	4	9.28	0.100
17806	8305	28	5	11.07	0.000
17807	8305	16	2	82.15	0.150
17808	8305	11	2	61.87	0.000
17809	8306	12	1	135.64	0.150
17810	8307	3	2	266.19	0.000
17811	8307	12	3	124.12	0.050
17812	8307	15	4	99.03	0.100
17813	8307	9	3	102.25	0.150
17814	8308	24	3	49.59	0.050
17815	8309	9	5	114.03	0.150
17816	8310	22	5	205.64	0.000
17817	8310	12	3	127.02	0.100
17818	8310	15	3	104.59	0.150
17819	8311	17	5	35.52	0.000
17820	8311	37	1	72.26	0.100
17821	8312	31	4	90.53	0.050
17822	8313	9	2	104.05	0.000
17823	8313	39	3	73.44	0.050
17824	8314	13	1	11.97	0.150
17825	8314	24	5	52.60	0.000
17826	8314	11	2	60.14	0.000
17827	8315	26	2	28.51	0.150
17828	8316	28	5	11.88	0.100
17829	8317	41	1	61.05	0.000
17830	8317	28	3	11.69	0.000
17831	8317	39	1	76.21	0.050
17832	8318	13	3	11.00	0.150
17833	8319	31	5	92.64	0.050
17834	8319	25	2	75.82	0.050
17835	8319	36	3	65.38	0.000
17836	8319	9	1	100.57	0.100
17837	8320	14	4	35.29	0.000
17838	8320	1	5	548.64	0.000
17839	8321	12	1	130.16	0.000
17840	8321	22	2	213.27	0.000
17841	8322	44	2	17.89	0.150
17842	8322	42	5	8.37	0.000
17843	8322	33	2	60.63	0.000
17844	8322	48	4	15.41	0.100
17845	8323	28	4	11.67	0.100
17846	8323	12	5	124.57	0.150
17847	8324	34	4	113.32	0.000
17848	8325	27	2	11.96	0.000
17849	8325	2	4	43.34	0.150
17850	8325	24	1	56.44	0.000
17851	8326	7	3	208.43	0.000
17852	8327	46	4	13.61	0.050
17853	8327	12	2	119.58	0.000
17854	8328	43	5	14.08	0.150
17855	8328	12	3	135.38	0.000
17856	8328	19	4	239.52	0.150
17857	8328	8	2	31.93	0.000
17858	8329	32	1	89.97	0.050
17859	8330	47	2	9.85	0.000
17860	8331	15	4	104.27	0.000
17861	8331	32	3	84.35	0.000
17862	8331	29	2	64.59	0.150
17863	8331	6	4	634.80	0.050
17864	8332	10	5	15.47	0.000
17865	8333	19	4	245.84	0.100
17866	8334	12	5	134.09	0.000
17867	8334	30	5	48.93	0.000
17868	8335	7	4	233.76	0.100
17869	8336	29	2	65.22	0.000
17870	8336	8	1	28.14	0.000
17871	8337	42	3	8.33	0.150
17872	8338	3	2	273.03	0.050
17873	8339	34	3	121.02	0.000
17874	8340	27	1	11.30	0.150
17875	8340	45	3	8.58	0.050
17876	8341	14	4	36.79	0.050
17877	8342	4	3	205.78	0.000
17878	8343	13	3	12.24	0.000
17879	8344	12	4	119.30	0.000
17880	8344	35	1	48.48	0.000
17881	8345	3	3	268.40	0.000
17882	8345	48	4	15.45	0.000
17883	8346	17	5	35.78	0.000
17884	8347	45	4	9.12	0.000
17885	8347	37	5	74.56	0.150
17886	8348	13	4	10.60	0.050
17887	8348	10	3	15.60	0.050
17888	8349	11	3	58.89	0.000
17889	8349	27	1	11.16	0.000
17890	8349	14	1	36.59	0.000
17891	8350	1	1	576.52	0.000
17892	8350	2	4	48.51	0.000
17893	8350	13	5	12.23	0.000
17894	8350	43	1	15.09	0.000
17895	8351	3	4	275.76	0.000
17896	8351	17	5	37.17	0.000
17897	8352	11	5	61.78	0.050
17898	8353	22	1	214.86	0.000
17899	8353	24	1	57.66	0.000
17900	8353	13	5	11.73	0.000
17901	8354	19	1	242.63	0.000
17902	8354	7	1	208.88	0.000
17903	8355	31	5	94.67	0.000
17904	8355	46	4	14.14	0.150
17905	8356	22	5	207.40	0.000
17906	8356	33	4	59.92	0.150
17907	8357	17	2	39.67	0.100
17908	8357	26	2	28.98	0.000
17909	8357	31	3	91.00	0.050
17910	8358	43	1	15.36	0.000
17911	8359	31	3	88.10	0.150
17912	8359	42	5	8.46	0.100
17913	8359	29	4	63.55	0.050
17914	8360	24	5	57.69	0.150
17915	8361	23	5	112.41	0.000
17916	8361	24	4	55.08	0.150
17917	8362	8	2	32.17	0.100
17918	8363	11	1	60.60	0.150
17919	8364	4	1	205.73	0.000
17920	8364	45	1	9.10	0.100
17921	8364	46	1	15.53	0.000
17922	8364	26	2	28.43	0.050
17923	8365	11	1	62.49	0.150
17924	8366	10	5	17.26	0.050
17925	8366	35	1	47.63	0.000
17926	8367	11	3	61.67	0.000
17927	8368	48	4	16.51	0.000
17928	8368	46	1	15.13	0.000
17929	8368	29	5	68.29	0.050
17930	8369	42	2	8.69	0.100
17931	8369	10	1	17.73	0.050
17932	8370	12	1	132.87	0.050
17933	8370	3	4	269.74	0.000
17934	8371	29	5	64.19	0.150
17935	8371	22	1	211.63	0.000
17936	8371	21	2	220.33	0.050
17937	8371	35	2	49.11	0.050
17938	8372	34	2	108.62	0.000
17939	8373	33	4	66.69	0.100
17940	8374	45	4	8.95	0.150
17941	8374	47	5	9.07	0.000
17942	8374	1	1	554.60	0.000
17943	8375	35	5	49.34	0.000
17944	8375	24	4	56.55	0.150
17945	8376	32	1	79.61	0.100
17946	8376	43	5	14.44	0.000
17947	8377	24	4	51.67	0.150
17948	8377	17	5	38.45	0.050
17949	8377	19	3	248.34	0.100
17950	8377	25	2	70.83	0.000
17951	8378	43	1	14.77	0.000
17952	8378	32	4	89.61	0.050
17953	8378	41	4	65.61	0.150
17954	8379	23	5	102.79	0.000
17955	8379	24	2	57.05	0.150
17956	8379	11	3	63.05	0.000
17957	8380	47	1	9.78	0.050
17958	8380	6	5	598.82	0.000
17959	8381	38	5	56.36	0.150
17960	8382	41	3	66.54	0.150
17961	8382	14	4	33.03	0.000
17962	8382	24	2	51.94	0.150
17963	8382	12	3	118.20	0.000
17964	8383	33	2	59.95	0.000
17965	8383	45	2	8.73	0.000
17966	8384	13	4	11.97	0.150
17967	8384	44	5	17.55	0.050
17968	8384	19	3	231.34	0.050
17969	8385	41	3	62.29	0.100
17970	8386	19	4	239.79	0.150
17971	8387	18	2	94.89	0.100
17972	8387	9	5	115.07	0.000
17973	8388	44	4	15.92	0.150
17974	8389	35	5	44.22	0.100
17975	8390	41	5	64.46	0.000
17976	8391	45	4	8.63	0.000
17977	8391	47	5	10.09	0.000
17978	8391	11	3	57.05	0.150
17979	8392	41	1	63.45	0.150
17980	8392	15	1	100.34	0.000
17981	8393	3	5	275.34	0.100
17982	8393	37	5	75.22	0.100
17983	8394	22	2	197.90	0.050
17984	8394	4	4	205.25	0.150
17985	8394	28	2	12.13	0.050
17986	8395	46	3	15.38	0.150
17987	8395	27	4	12.43	0.000
17988	8395	11	2	62.16	0.000
17989	8396	18	2	93.65	0.150
17990	8396	43	2	15.22	0.050
17991	8396	17	5	40.60	0.000
17992	8397	17	4	38.37	0.050
17993	8398	17	4	36.91	0.000
17994	8398	7	1	211.48	0.100
17995	8399	24	2	50.73	0.050
17996	8399	11	1	58.97	0.050
17997	8399	30	2	48.09	0.000
17998	8399	33	5	63.26	0.000
17999	8400	43	5	14.22	0.000
18000	8400	8	5	29.92	0.000
18001	8400	4	4	198.92	0.150
18002	8401	24	3	55.76	0.000
18003	8402	16	1	82.09	0.100
18004	8403	27	5	11.27	0.000
18005	8403	9	5	102.88	0.000
18006	8404	10	5	16.42	0.100
18007	8404	42	5	8.84	0.000
18008	8404	36	2	66.53	0.000
18009	8405	19	5	247.88	0.000
18010	8406	34	4	117.22	0.000
18011	8407	7	4	217.00	0.000
18012	8407	30	1	50.47	0.000
18013	8408	12	3	135.02	0.000
18014	8408	3	4	278.74	0.000
18015	8409	42	3	8.89	0.000
18016	8409	31	4	89.50	0.050
18017	8410	47	5	9.98	0.000
18018	8410	6	2	613.42	0.000
18019	8411	1	2	561.07	0.050
18020	8411	22	3	211.96	0.000
18021	8412	31	1	92.11	0.050
18022	8413	21	3	250.21	0.050
18023	8414	29	4	62.68	0.000
18024	8414	26	5	29.36	0.000
18025	8415	46	2	14.20	0.100
18026	8416	25	5	74.07	0.000
18027	8416	20	2	11.94	0.050
18028	8417	10	2	17.62	0.050
18029	8417	37	3	70.74	0.100
18030	8417	35	4	48.80	0.100
18031	8417	25	2	72.14	0.000
18032	8418	21	1	237.74	0.000
18033	8419	3	3	276.45	0.000
18034	8419	47	2	9.50	0.100
18035	8420	25	2	80.58	0.050
18036	8420	23	3	102.02	0.000
18037	8421	28	2	11.60	0.050
18038	8422	45	5	8.66	0.050
18039	8422	36	4	65.28	0.100
18040	8422	48	1	15.80	0.050
18041	8423	23	1	108.68	0.000
18042	8424	21	5	232.95	0.100
18043	8424	12	1	121.49	0.100
18044	8425	6	2	642.65	0.050
18045	8426	23	3	107.99	0.100
18046	8427	12	4	122.45	0.100
18047	8427	13	4	11.45	0.050
18048	8428	44	5	16.13	0.000
18049	8428	41	4	61.83	0.050
18050	8428	47	5	8.96	0.000
18051	8428	7	4	220.21	0.050
18052	8429	6	2	644.90	0.050
18053	8429	44	3	15.81	0.150
18054	8429	27	3	11.47	0.100
18055	8429	41	1	66.06	0.000
18056	8430	9	2	113.82	0.050
18057	8431	19	2	235.31	0.000
18058	8431	16	4	86.03	0.000
18059	8431	24	4	52.32	0.000
18060	8431	47	2	9.15	0.000
18061	8432	36	1	68.21	0.150
18062	8433	29	4	71.14	0.150
18063	8433	11	2	61.40	0.150
18064	8433	43	4	15.13	0.100
18065	8433	27	5	11.92	0.150
18066	8434	47	4	9.14	0.150
18067	8434	27	1	12.37	0.000
18068	8434	16	2	83.85	0.050
18069	8435	30	1	50.25	0.000
18070	8436	45	4	8.74	0.050
18071	8436	47	1	9.11	0.050
18072	8436	9	1	100.94	0.050
18073	8436	4	5	228.58	0.000
18074	8437	39	3	80.40	0.000
18075	8437	13	2	11.91	0.000
18076	8438	38	3	53.49	0.100
18077	8438	17	5	39.51	0.000
18078	8439	13	2	11.56	0.000
18079	8439	12	1	127.99	0.000
18080	8439	36	2	70.37	0.100
18081	8439	26	1	29.94	0.050
18082	8440	23	1	98.77	0.000
18083	8440	34	2	116.36	0.000
18084	8440	25	5	71.87	0.050
18085	8441	38	3	56.46	0.000
18086	8442	28	2	12.32	0.000
18087	8443	11	5	61.07	0.050
18088	8443	3	3	259.82	0.000
18089	8444	38	5	52.71	0.150
18090	8444	40	3	55.86	0.100
18091	8444	24	1	52.98	0.100
18092	8445	25	4	76.90	0.100
18093	8446	19	5	244.73	0.150
18094	8446	24	3	56.74	0.050
18095	8447	18	3	92.66	0.150
18096	8448	40	4	49.53	0.000
18097	8448	31	4	88.27	0.100
18098	8449	33	2	65.23	0.050
18099	8450	4	4	229.07	0.000
18100	8450	22	3	218.71	0.000
18101	8451	40	2	56.16	0.000
18102	8452	31	5	93.38	0.100
18103	8453	18	5	94.89	0.050
18104	8453	43	1	14.16	0.000
18105	8454	19	4	233.77	0.000
18106	8455	4	3	230.31	0.000
18107	8456	48	5	16.92	0.100
18108	8457	17	3	38.80	0.150
18109	8458	30	2	48.92	0.100
18110	8458	21	3	225.01	0.000
18111	8458	3	2	247.40	0.050
18112	8458	31	5	101.76	0.000
18113	8459	47	3	9.01	0.150
18114	8459	32	2	89.31	0.100
18115	8459	36	2	65.25	0.000
18116	8460	36	4	70.17	0.000
18117	8460	22	2	221.92	0.000
18118	8461	8	5	31.77	0.000
18119	8462	1	1	558.37	0.000
18120	8463	28	3	11.03	0.150
18121	8464	32	4	87.54	0.000
18122	8464	44	5	18.11	0.100
18123	8465	29	3	66.08	0.100
18124	8465	10	5	17.77	0.000
18125	8465	44	5	17.54	0.150
18126	8465	32	3	82.66	0.000
18127	8466	20	2	11.88	0.000
18128	8467	29	1	66.52	0.050
18129	8467	14	4	35.13	0.150
18130	8468	23	4	98.77	0.000
18131	8468	15	1	95.11	0.050
18132	8469	14	3	37.96	0.150
18133	8469	48	2	15.49	0.000
18134	8469	32	1	83.09	0.000
18135	8469	11	5	63.82	0.050
18136	8470	44	1	16.93	0.000
18137	8470	2	2	44.49	0.000
18138	8470	36	4	62.85	0.000
18139	8470	23	4	112.59	0.000
18140	8471	11	4	58.26	0.050
18141	8472	41	3	64.85	0.050
18142	8473	38	1	55.62	0.000
18143	8473	47	4	9.02	0.000
18144	8474	21	4	227.53	0.000
18145	8474	8	3	29.99	0.150
18146	8474	25	1	74.64	0.050
18147	8474	29	5	63.23	0.000
18148	8475	10	4	15.61	0.000
18149	8475	1	4	566.53	0.000
18150	8476	23	3	99.13	0.150
18151	8476	31	3	90.84	0.000
18152	8477	17	5	36.65	0.100
18153	8477	6	5	569.99	0.100
18154	8478	45	2	8.76	0.050
18155	8478	40	1	54.31	0.150
18156	8478	34	1	110.29	0.000
18157	8479	27	1	12.36	0.000
18158	8480	46	4	15.31	0.000
18159	8480	35	4	47.19	0.050
18160	8480	7	3	230.09	0.100
18161	8480	9	2	108.55	0.000
18162	8481	12	4	122.49	0.000
18163	8482	16	5	87.65	0.150
18164	8482	45	3	9.52	0.150
18165	8482	19	1	235.78	0.000
18166	8483	46	2	14.22	0.100
18167	8483	28	2	12.51	0.000
18168	8484	33	1	68.18	0.000
18169	8484	3	5	254.22	0.050
18170	8485	22	3	208.63	0.050
18171	8486	6	2	632.45	0.050
18172	8486	37	3	77.52	0.000
18173	8487	15	4	92.56	0.000
18174	8488	31	3	90.80	0.000
18175	8488	27	2	11.78	0.150
18176	8489	39	1	78.21	0.100
18177	8489	10	4	15.44	0.150
18178	8489	23	2	111.04	0.000
18179	8490	16	1	87.20	0.050
18180	8491	42	1	8.57	0.150
18181	8491	38	5	52.38	0.000
18182	8492	45	4	8.51	0.000
18183	8493	18	5	93.20	0.000
18184	8493	27	1	11.34	0.100
18185	8494	46	2	15.27	0.000
18186	8494	48	2	16.96	0.100
18187	8494	40	2	56.00	0.000
18188	8495	31	3	96.05	0.000
18189	8495	2	4	47.69	0.000
18190	8495	22	5	219.82	0.000
18191	8496	19	5	256.61	0.000
18192	8496	7	4	231.44	0.000
18193	8496	15	5	104.00	0.050
18194	8497	8	5	29.87	0.000
18195	8497	22	3	211.88	0.000
18196	8498	15	4	97.13	0.150
18197	8498	18	4	90.72	0.000
18198	8499	27	2	12.46	0.100
18199	8499	16	1	77.81	0.050
18200	8499	48	3	16.40	0.000
18201	8499	4	2	212.68	0.150
18202	8500	31	5	100.87	0.100
18203	8500	6	3	618.63	0.050
18204	8501	26	3	29.29	0.050
18205	8501	40	1	49.26	0.050
18206	8502	14	5	36.29	0.000
18207	8502	12	3	118.31	0.150
18208	8503	46	3	14.36	0.000
18209	8503	35	2	46.07	0.000
18210	8504	36	4	63.13	0.150
18211	8505	9	3	102.09	0.000
18212	8505	12	1	127.66	0.100
18213	8506	11	3	58.31	0.100
18214	8506	15	1	105.09	0.100
18215	8507	18	1	88.92	0.000
18216	8508	22	3	218.82	0.000
18217	8508	43	2	14.86	0.100
18218	8508	37	5	73.96	0.000
18219	8509	14	2	34.51	0.000
18220	8509	18	2	90.44	0.150
18221	8510	18	4	96.06	0.000
18222	8511	7	5	201.71	0.000
18223	8511	3	4	250.87	0.000
18224	8511	46	2	13.68	0.100
18225	8511	23	3	108.40	0.150
18226	8512	45	5	8.94	0.000
18227	8512	34	3	122.15	0.100
18228	8513	22	2	203.10	0.000
18229	8513	34	2	120.98	0.050
18230	8513	42	2	8.47	0.050
18231	8513	15	2	95.98	0.000
18232	8514	35	4	44.89	0.050
18233	8515	47	2	9.76	0.000
18234	8515	10	2	15.96	0.000
18235	8516	10	5	15.70	0.000
18236	8516	22	2	191.31	0.000
18237	8516	48	5	15.41	0.000
18238	8517	2	4	48.49	0.050
18239	8517	38	3	52.87	0.150
18240	8517	9	4	100.39	0.000
18241	8517	47	4	9.93	0.100
18242	8518	33	4	63.36	0.150
18243	8519	14	1	32.97	0.000
18244	8519	47	5	9.90	0.050
18245	8519	4	3	230.79	0.000
18246	8520	29	3	62.83	0.150
18247	8521	44	5	17.34	0.050
18248	8521	13	3	11.44	0.100
18249	8521	46	1	15.59	0.150
18250	8522	10	2	17.47	0.000
18251	8522	22	1	194.29	0.000
18252	8522	17	1	40.20	0.100
18253	8523	19	4	227.54	0.000
18254	8523	28	4	12.80	0.150
18255	8523	16	1	82.05	0.000
18256	8524	21	1	229.54	0.000
18257	8524	17	4	39.28	0.000
18258	8525	12	2	132.67	0.000
18259	8525	25	2	74.48	0.000
18260	8526	46	3	13.82	0.100
18261	8527	39	4	72.32	0.000
18262	8527	2	2	42.89	0.100
18263	8527	44	1	15.66	0.000
18264	8527	20	1	12.37	0.000
18265	8528	9	5	102.25	0.000
18266	8528	43	3	15.07	0.000
18267	8529	1	5	559.91	0.100
18268	8529	21	2	237.53	0.000
18269	8529	20	4	11.97	0.000
18270	8530	31	3	89.92	0.000
18271	8530	14	4	37.22	0.150
18272	8531	31	5	95.42	0.000
18273	8531	45	1	8.53	0.150
18274	8532	9	3	103.35	0.150
18275	8532	30	4	46.64	0.000
18276	8532	28	2	12.32	0.000
18277	8533	37	5	74.82	0.050
18278	8534	11	4	64.13	0.000
18279	8535	44	4	18.07	0.150
18280	8535	20	1	12.36	0.000
18281	8536	26	1	28.89	0.150
18282	8536	28	5	12.01	0.150
18283	8536	35	2	48.02	0.000
18284	8537	23	2	108.84	0.100
18285	8537	6	5	556.94	0.000
18286	8537	29	3	66.87	0.000
18287	8538	22	4	200.33	0.150
18288	8538	35	3	47.95	0.150
18289	8538	38	2	58.94	0.000
18290	8539	26	3	31.10	0.000
18291	8540	44	5	17.67	0.000
18292	8540	29	2	71.97	0.100
18293	8541	25	5	75.07	0.100
18294	8541	44	1	16.40	0.000
18295	8542	8	4	27.97	0.000
18296	8543	47	4	9.37	0.000
18297	8544	18	1	90.81	0.000
18298	8544	16	3	82.40	0.150
18299	8544	7	2	207.70	0.050
18300	8545	18	1	95.87	0.000
18301	8546	47	4	9.47	0.000
18302	8547	6	4	629.56	0.000
18303	8547	28	1	12.33	0.100
18304	8548	4	3	215.69	0.000
18305	8548	43	2	13.46	0.000
18306	8548	21	1	248.66	0.050
18307	8548	6	1	639.71	0.000
18308	8549	31	1	97.35	0.150
18309	8550	29	1	62.74	0.000
18310	8551	36	2	70.06	0.000
18311	8551	11	5	63.10	0.000
18312	8551	27	3	10.89	0.150
18313	8551	13	1	10.69	0.000
18314	8552	17	4	37.52	0.000
18315	8552	23	5	112.53	0.000
18316	8552	9	4	100.96	0.000
18317	8552	25	1	70.89	0.000
18318	8553	14	5	34.60	0.000
18319	8553	26	1	31.46	0.050
18320	8553	43	2	14.38	0.150
18321	8554	22	2	194.20	0.000
18322	8555	42	2	8.99	0.000
18323	8555	14	2	35.26	0.100
18324	8555	10	5	16.14	0.000
18325	8555	39	3	80.25	0.050
18326	8556	46	4	15.09	0.000
18327	8556	12	2	119.04	0.000
18328	8556	38	5	54.87	0.000
18329	8557	48	5	17.15	0.150
18330	8557	18	1	95.45	0.100
18331	8558	31	5	102.22	0.000
18332	8559	47	4	9.13	0.100
18333	8560	13	1	10.95	0.050
18334	8560	19	3	223.27	0.100
18335	8560	47	3	9.39	0.100
18336	8561	4	2	226.24	0.000
18337	8561	8	3	30.11	0.000
18338	8562	4	1	200.76	0.000
18339	8562	15	5	91.44	0.050
18340	8563	42	5	8.21	0.000
18341	8563	43	4	15.28	0.100
18342	8563	34	1	106.28	0.150
18343	8564	12	3	129.43	0.000
18344	8564	26	5	28.26	0.050
18345	8565	12	4	125.67	0.000
18346	8566	47	2	9.61	0.100
18347	8566	15	3	98.37	0.000
18348	8566	38	5	52.31	0.150
18349	8567	27	5	11.30	0.050
18350	8568	35	3	44.87	0.000
18351	8568	9	2	109.03	0.000
18352	8569	12	3	123.35	0.100
18353	8569	48	5	16.28	0.000
18354	8569	28	5	11.77	0.050
18355	8570	32	4	83.00	0.000
18356	8571	14	2	35.90	0.000
18357	8571	17	5	38.40	0.100
18358	8572	15	2	98.28	0.050
18359	8572	34	2	105.78	0.150
18360	8573	28	1	12.45	0.150
18361	8574	2	1	46.02	0.150
18362	8574	10	5	16.57	0.000
18363	8574	38	4	55.65	0.100
18364	8574	27	4	11.74	0.000
18365	8575	39	1	72.52	0.100
18366	8575	2	3	43.55	0.100
18367	8576	16	1	80.12	0.000
18368	8576	13	3	12.18	0.100
18369	8577	48	4	17.43	0.100
18370	8577	1	3	555.33	0.100
18371	8578	46	5	14.11	0.000
18372	8578	16	1	88.41	0.150
18373	8579	44	2	16.49	0.000
18374	8580	6	5	642.23	0.000
18375	8580	13	5	11.95	0.000
18376	8581	35	2	47.44	0.000
18377	8582	12	5	128.54	0.000
18378	8583	35	3	43.46	0.000
18379	8583	18	4	90.34	0.000
18380	8583	44	4	17.53	0.050
18381	8584	19	4	252.86	0.000
18382	8585	24	1	50.77	0.000
18383	8585	17	5	38.16	0.000
18384	8586	42	4	9.06	0.000
18385	8586	34	2	121.40	0.000
18386	8587	28	3	12.62	0.000
18387	8587	34	5	112.84	0.000
18388	8587	35	1	48.67	0.000
18389	8588	48	5	16.26	0.100
18390	8588	19	1	250.17	0.000
18391	8588	30	2	50.33	0.050
18392	8588	14	5	33.00	0.000
18393	8589	44	5	17.04	0.100
18394	8589	32	3	87.44	0.000
18395	8590	48	5	15.51	0.050
18396	8590	24	1	56.85	0.100
18397	8591	11	4	60.25	0.000
18398	8591	2	4	47.52	0.000
18399	8592	13	4	11.33	0.150
18400	8592	25	3	73.87	0.000
18401	8593	4	1	224.61	0.100
18402	8594	44	3	17.10	0.150
18403	8595	34	3	110.09	0.100
18404	8595	10	4	16.21	0.000
18405	8596	44	1	16.31	0.000
18406	8596	8	1	31.86	0.000
18407	8597	24	1	53.91	0.050
18408	8598	20	4	11.28	0.000
18409	8598	14	1	32.78	0.000
18410	8599	12	5	132.75	0.050
18411	8600	33	1	67.83	0.150
18412	8600	48	2	16.70	0.000
18413	8600	37	4	74.57	0.150
18414	8601	25	1	72.15	0.000
18415	8602	38	4	53.15	0.150
18416	8603	6	1	628.66	0.050
18417	8604	13	3	11.85	0.000
18418	8604	7	4	207.01	0.000
18419	8605	38	5	58.23	0.100
18420	8605	43	3	15.44	0.000
18421	8605	1	5	555.82	0.000
18422	8605	11	1	61.53	0.100
18423	8606	48	3	16.62	0.050
18424	8607	35	2	43.44	0.000
18425	8608	47	2	9.58	0.000
18426	8609	39	5	78.73	0.050
18427	8609	30	1	46.36	0.000
18428	8609	36	2	67.53	0.000
18429	8610	28	2	11.11	0.000
18430	8610	35	5	48.29	0.000
18431	8610	37	2	77.42	0.000
18432	8611	48	5	16.06	0.000
18433	8611	13	2	11.36	0.000
18434	8612	20	1	11.71	0.100
18435	8612	13	5	11.82	0.100
18436	8612	16	4	85.11	0.000
18437	8613	44	1	16.68	0.150
18438	8614	14	5	36.70	0.050
18439	8614	30	3	49.91	0.100
18440	8614	19	2	233.35	0.000
18441	8615	19	3	221.53	0.000
18442	8615	38	1	60.43	0.100
18443	8615	4	3	225.49	0.000
18444	8616	28	1	11.52	0.000
18445	8617	41	5	65.42	0.150
18446	8617	36	4	62.26	0.000
18447	8617	10	3	15.72	0.000
18448	8618	27	5	10.87	0.150
18449	8618	38	2	54.47	0.050
18450	8619	12	1	122.14	0.000
18451	8620	42	4	8.63	0.000
18452	8620	35	1	45.44	0.000
18453	8620	18	4	83.23	0.000
18454	8621	35	2	43.46	0.000
18455	8621	20	5	11.23	0.150
18456	8622	44	3	17.61	0.150
18457	8622	47	3	9.65	0.150
18458	8623	30	2	49.31	0.100
18459	8623	44	2	16.55	0.000
18460	8624	23	2	110.39	0.000
18461	8625	16	3	86.28	0.000
18462	8625	45	2	9.51	0.050
18463	8625	29	5	63.24	0.000
18464	8626	35	2	48.98	0.000
18465	8626	29	4	65.47	0.000
18466	8626	17	2	39.44	0.150
18467	8627	15	4	96.93	0.050
18468	8628	47	5	9.07	0.150
18469	8629	29	5	65.62	0.100
18470	8630	32	5	86.57	0.100
18471	8630	27	4	11.37	0.100
18472	8631	18	1	83.74	0.000
18473	8632	34	3	107.24	0.000
18474	8632	18	3	95.85	0.000
18475	8633	17	3	39.23	0.000
18476	8634	20	1	11.85	0.000
18477	8634	41	2	63.76	0.000
18478	8635	9	2	107.82	0.000
18479	8635	12	4	118.40	0.000
18480	8636	46	2	13.75	0.100
18481	8636	17	1	38.79	0.050
18482	8637	4	1	202.19	0.000
18483	8637	11	1	64.37	0.050
18484	8638	48	5	16.04	0.050
18485	8638	13	5	10.62	0.000
18486	8638	35	2	44.87	0.100
18487	8638	12	1	120.65	0.100
18488	8639	23	5	112.54	0.000
18489	8640	28	5	12.26	0.000
18490	8640	24	4	54.52	0.000
18491	8640	41	2	60.81	0.100
18492	8641	30	1	52.30	0.050
18493	8641	12	1	129.54	0.000
18494	8642	18	4	91.66	0.000
18495	8643	40	3	52.78	0.150
18496	8643	32	1	81.25	0.150
18497	8644	40	4	56.50	0.000
18498	8644	43	1	13.50	0.000
18499	8644	48	4	15.27	0.050
18500	8644	14	4	36.12	0.050
18501	8645	32	4	83.63	0.000
18502	8645	40	2	49.83	0.050
18503	8645	20	4	11.71	0.150
18504	8646	39	5	75.38	0.000
18505	8646	28	4	11.36	0.000
18506	8647	21	1	249.94	0.050
18507	8648	13	2	11.62	0.050
18508	8648	18	3	84.40	0.000
18509	8649	36	1	62.47	0.000
18510	8649	8	1	28.66	0.000
18511	8650	45	2	9.47	0.000
18512	8651	32	2	88.75	0.000
18513	8651	39	2	73.84	0.050
18514	8652	4	5	230.67	0.000
18515	8653	46	5	15.58	0.100
18516	8654	44	5	15.85	0.150
18517	8654	13	2	11.94	0.050
18518	8654	28	4	11.82	0.050
18519	8654	8	1	30.44	0.000
18520	8655	46	5	13.66	0.100
18521	8655	41	1	60.52	0.000
18522	8655	47	1	9.90	0.050
18523	8656	4	2	200.17	0.000
18524	8656	2	2	43.36	0.100
18525	8656	48	2	17.32	0.000
18526	8657	37	3	69.08	0.150
18527	8657	26	4	31.25	0.150
18528	8657	14	2	37.75	0.000
18529	8657	47	1	10.11	0.150
18530	8658	26	2	31.22	0.000
18531	8659	42	5	8.28	0.000
18532	8660	48	4	16.20	0.000
18533	8660	37	2	72.44	0.050
18534	8660	18	4	95.06	0.000
18535	8661	43	5	13.67	0.050
18536	8662	15	2	95.32	0.100
18537	8662	4	2	203.05	0.000
18538	8663	34	5	116.92	0.150
18539	8663	35	1	43.05	0.000
18540	8663	25	4	74.78	0.050
18541	8664	33	5	66.61	0.100
18542	8664	30	2	48.80	0.000
18543	8665	48	3	15.74	0.100
18544	8665	3	5	263.16	0.000
18545	8665	1	3	546.53	0.100
18546	8665	45	2	9.56	0.050
18547	8666	32	1	85.83	0.000
18548	8666	15	1	91.53	0.000
18549	8667	36	1	62.69	0.150
18550	8667	22	1	193.99	0.000
18551	8667	4	3	228.52	0.100
18552	8667	29	1	67.05	0.100
18553	8668	37	3	72.05	0.000
18554	8669	24	4	51.64	0.000
18555	8670	9	1	105.16	0.050
18556	8670	26	2	30.24	0.100
18557	8670	34	3	108.14	0.050
18558	8670	7	5	226.00	0.150
18559	8671	33	3	65.40	0.100
18560	8671	21	5	253.60	0.000
18561	8672	22	5	213.58	0.150
18562	8672	36	3	66.77	0.000
18563	8672	3	1	276.15	0.000
18564	8672	25	5	70.57	0.000
18565	8673	3	3	256.07	0.050
18566	8673	6	5	587.38	0.000
18567	8673	35	1	43.33	0.000
18568	8673	10	5	16.27	0.100
18569	8674	35	4	45.41	0.000
18570	8675	45	4	9.40	0.000
18571	8675	41	5	59.20	0.000
18572	8676	13	4	11.75	0.000
18573	8676	12	2	118.33	0.000
18574	8677	36	4	65.20	0.150
18575	8678	26	4	28.94	0.000
18576	8678	41	1	62.37	0.050
18577	8678	39	5	82.01	0.000
18578	8679	3	5	242.04	0.100
18579	8679	41	4	61.68	0.000
18580	8680	37	5	71.53	0.150
18581	8680	9	5	103.14	0.000
18582	8681	14	5	34.18	0.100
18583	8682	8	2	29.29	0.000
18584	8683	6	4	605.73	0.050
18585	8684	6	5	559.46	0.000
18586	8685	37	2	77.71	0.000
18587	8685	20	5	11.21	0.050
18588	8686	1	1	561.95	0.050
18589	8687	37	1	72.68	0.000
18590	8687	24	5	56.60	0.150
18591	8688	31	3	93.99	0.150
18592	8688	26	2	29.50	0.150
18593	8688	46	5	15.32	0.150
18594	8689	38	3	59.83	0.100
18595	8689	26	4	31.75	0.000
18596	8690	1	5	537.09	0.000
18597	8690	35	1	44.32	0.150
18598	8690	45	5	8.59	0.150
18599	8691	13	2	11.38	0.050
18600	8691	24	5	54.40	0.000
18601	8691	9	4	101.26	0.100
18602	8692	23	2	106.19	0.100
18603	8692	24	5	49.80	0.000
18604	8693	36	4	69.89	0.150
18605	8693	28	3	11.70	0.100
18606	8693	42	5	8.14	0.100
18607	8693	29	4	65.84	0.000
18608	8694	4	2	214.41	0.000
18609	8694	45	1	9.22	0.000
18610	8694	2	3	46.27	0.000
18611	8695	17	4	39.50	0.150
18612	8696	11	4	59.80	0.050
18613	8696	42	2	9.21	0.100
18614	8697	20	5	11.16	0.150
18615	8697	10	2	15.45	0.100
18616	8698	33	2	68.94	0.050
18617	8698	44	3	15.61	0.150
18618	8699	33	3	68.62	0.100
18619	8700	18	2	84.91	0.000
18620	8701	21	3	238.52	0.150
18621	8702	44	2	15.96	0.000
18622	8702	30	5	52.78	0.050
18623	8702	7	1	232.60	0.000
18624	8703	23	3	113.02	0.000
18625	8704	26	5	28.65	0.000
18626	8704	41	5	58.63	0.050
18627	8705	38	3	52.24	0.000
18628	8706	2	4	44.13	0.000
18629	8707	14	1	35.47	0.000
18630	8707	28	4	12.36	0.000
18631	8707	45	1	9.40	0.050
18632	8708	11	3	59.58	0.150
18633	8708	6	1	561.12	0.000
18634	8708	24	5	52.69	0.150
18635	8709	9	1	111.75	0.050
18636	8709	34	1	117.58	0.000
18637	8710	29	1	64.92	0.150
18638	8710	19	2	226.27	0.000
18639	8711	4	5	205.34	0.000
18640	8712	39	4	80.25	0.100
18641	8713	10	5	16.79	0.000
18642	8713	40	3	56.39	0.050
18643	8713	33	5	59.31	0.050
18644	8713	30	5	46.01	0.000
18645	8714	34	4	118.10	0.100
18646	8714	11	2	57.78	0.100
18647	8714	14	1	35.32	0.050
18648	8714	35	3	49.60	0.000
18649	8715	37	2	75.14	0.000
18650	8715	42	3	8.70	0.000
18651	8716	14	2	34.42	0.000
18652	8716	9	3	108.29	0.000
18653	8717	38	4	51.82	0.100
18654	8718	4	5	211.59	0.000
18655	8719	17	1	35.61	0.100
18656	8720	13	5	11.12	0.000
18657	8720	45	5	9.54	0.100
18658	8720	28	4	12.84	0.000
18659	8721	45	2	8.64	0.150
18660	8722	35	5	44.05	0.000
18661	8723	42	1	8.20	0.000
18662	8724	25	3	78.22	0.000
18663	8725	46	1	14.50	0.000
18664	8725	43	2	14.14	0.000
18665	8725	48	5	17.26	0.000
18666	8726	26	1	29.45	0.150
18667	8726	3	4	266.02	0.150
18668	8726	9	3	106.95	0.000
18669	8727	40	5	55.39	0.150
18670	8727	21	5	236.13	0.000
18671	8728	39	5	73.68	0.100
18672	8728	36	1	70.66	0.000
18673	8729	47	5	10.18	0.100
18674	8729	33	5	65.91	0.150
18675	8730	30	2	49.98	0.000
18676	8731	44	5	16.16	0.100
18677	8732	47	1	9.68	0.000
18678	8732	23	1	100.41	0.150
18679	8733	14	2	37.62	0.000
18680	8734	24	2	52.72	0.100
18681	8734	20	2	12.28	0.050
18682	8734	8	2	32.09	0.000
18683	8735	12	2	122.79	0.000
18684	8736	30	5	47.07	0.150
18685	8737	1	2	607.42	0.050
18686	8737	10	3	18.00	0.050
18687	8737	11	4	58.39	0.000
18688	8738	15	5	94.35	0.000
18689	8738	44	2	17.24	0.000
18690	8738	42	2	8.29	0.000
18691	8738	14	2	35.08	0.000
18692	8739	21	3	230.25	0.000
18693	8739	6	1	581.01	0.150
18694	8740	26	1	30.18	0.000
18695	8741	38	2	56.82	0.000
18696	8741	46	5	13.58	0.050
18697	8741	16	3	79.03	0.150
18698	8741	1	5	572.39	0.000
18699	8742	48	5	16.65	0.150
18700	8742	12	5	133.50	0.050
18701	8743	17	1	38.55	0.100
18702	8743	16	1	84.68	0.150
18703	8744	9	5	106.01	0.100
18704	8744	34	3	106.10	0.000
18705	8745	17	4	36.43	0.000
18706	8745	42	2	8.70	0.100
18707	8745	45	1	9.39	0.050
18708	8746	38	4	58.36	0.100
18709	8747	23	4	107.18	0.150
18710	8747	22	1	194.07	0.150
18711	8748	31	5	98.75	0.000
18712	8748	30	4	47.24	0.000
18713	8748	37	2	70.64	0.000
18714	8748	48	1	16.08	0.000
18715	8749	12	1	130.89	0.000
18716	8750	36	1	62.85	0.000
18717	8750	8	4	27.92	0.000
18718	8751	2	2	48.48	0.150
18719	8751	44	4	17.30	0.000
18720	8751	21	1	237.58	0.000
18721	8752	32	4	81.17	0.050
18722	8752	10	2	17.80	0.000
18723	8753	2	5	42.71	0.000
18724	8753	13	1	10.74	0.050
18725	8753	33	1	67.39	0.000
18726	8754	41	5	65.40	0.050
18727	8754	37	2	68.82	0.150
18728	8755	4	5	204.29	0.100
18729	8756	10	4	16.28	0.000
18730	8757	42	4	9.15	0.000
18731	8757	36	5	65.04	0.000
18732	8758	34	5	117.61	0.050
18733	8759	4	1	226.45	0.100
18734	8759	14	5	35.05	0.000
18735	8760	45	2	9.17	0.000
18736	8760	40	5	49.59	0.100
18737	8760	13	4	11.59	0.150
18738	8760	32	1	92.69	0.100
18739	8761	31	1	90.16	0.000
18740	8762	14	5	35.45	0.000
18741	8763	39	3	72.27	0.150
18742	8763	29	3	65.88	0.100
18743	8764	31	2	88.78	0.050
18744	8765	10	4	17.55	0.150
18745	8765	39	4	72.25	0.000
18746	8766	15	5	96.88	0.050
18747	8766	45	2	8.64	0.000
18748	8767	16	2	81.38	0.050
18749	8767	20	1	11.66	0.150
18750	8768	16	2	79.31	0.050
18751	8768	26	4	29.56	0.000
18752	8769	27	2	12.46	0.000
18753	8769	17	2	41.12	0.050
18754	8769	33	1	65.13	0.150
18755	8770	33	3	65.50	0.100
18756	8770	34	4	116.26	0.000
18757	8771	27	4	11.11	0.000
18758	8772	18	4	84.21	0.000
18759	8772	42	2	8.14	0.150
18760	8773	27	5	11.14	0.150
18761	8773	46	4	15.62	0.000
18762	8773	24	4	55.20	0.000
18763	8773	18	5	84.55	0.000
18764	8774	26	1	30.37	0.000
18765	8774	20	4	11.39	0.050
18766	8775	39	4	73.39	0.000
18767	8775	47	3	9.83	0.000
18768	8776	29	1	62.37	0.150
18769	8776	10	2	17.58	0.000
18770	8777	37	2	72.51	0.150
18771	8778	33	1	59.36	0.150
18772	8778	19	2	254.08	0.050
18773	8778	1	5	611.26	0.000
18774	8779	10	5	15.69	0.000
18775	8779	26	4	29.44	0.100
18776	8780	8	3	31.50	0.000
18777	8780	41	4	63.68	0.150
18778	8780	35	2	44.43	0.000
18779	8781	21	5	227.98	0.000
18780	8781	2	2	46.94	0.000
18781	8782	33	5	59.76	0.100
18782	8782	37	3	76.17	0.150
18783	8783	13	1	12.35	0.100
18784	8783	21	4	242.16	0.100
18785	8784	41	3	61.20	0.000
18786	8785	19	3	227.48	0.050
18787	8785	26	2	29.64	0.050
18788	8785	13	2	12.07	0.000
18789	8785	33	3	59.71	0.100
18790	8786	16	1	83.26	0.000
18791	8787	10	2	16.36	0.000
18792	8787	34	4	116.66	0.050
18793	8788	40	3	55.25	0.000
18794	8789	40	1	50.22	0.050
18795	8790	3	1	263.49	0.100
18796	8790	28	3	12.70	0.000
18797	8791	45	1	9.54	0.000
18798	8791	44	1	17.73	0.000
18799	8791	9	1	101.49	0.000
18800	8791	43	1	13.51	0.000
18801	8792	20	5	10.89	0.150
18802	8793	6	3	616.70	0.000
18803	8793	13	2	11.98	0.150
18804	8793	7	3	226.42	0.100
18805	8793	34	1	114.63	0.150
18806	8794	31	3	101.76	0.150
18807	8794	12	1	125.30	0.100
18808	8795	29	3	71.16	0.050
18809	8795	27	3	11.03	0.000
18810	8796	48	1	16.09	0.100
18811	8797	46	3	13.83	0.100
18812	8797	22	4	193.50	0.000
18813	8797	7	5	214.94	0.000
18814	8797	1	4	567.30	0.150
18815	8798	44	2	16.46	0.100
18816	8798	9	4	105.02	0.150
18817	8799	26	2	27.46	0.000
18818	8799	11	5	57.94	0.000
18819	8799	17	4	38.67	0.000
18820	8800	4	1	223.58	0.000
18821	8801	34	1	112.85	0.000
18822	8802	10	4	17.29	0.000
18823	8802	20	3	12.24	0.000
18824	8803	26	4	29.48	0.000
18825	8803	16	4	82.57	0.050
18826	8804	44	2	17.19	0.000
18827	8804	4	3	212.56	0.150
18828	8804	11	5	56.70	0.150
18829	8805	3	4	272.09	0.000
18830	8805	2	5	43.25	0.100
18831	8805	13	3	12.21	0.000
18832	8806	12	1	137.33	0.000
18833	8806	48	3	16.49	0.050
18834	8807	31	5	94.05	0.150
18835	8807	14	3	32.61	0.000
18836	8808	12	2	135.88	0.100
18837	8809	1	5	569.87	0.000
18838	8809	33	1	59.58	0.150
18839	8810	35	1	46.19	0.000
18840	8810	30	4	45.58	0.000
18841	8810	48	5	15.66	0.150
18842	8811	6	2	638.83	0.050
18843	8812	35	3	49.17	0.150
18844	8813	2	3	43.42	0.150
18845	8814	28	4	11.21	0.100
18846	8814	48	1	16.29	0.000
18847	8815	7	3	213.22	0.000
18848	8815	17	4	35.52	0.000
18849	8816	7	4	205.23	0.000
18850	8817	25	1	72.77	0.000
18851	8817	30	2	48.09	0.000
18852	8817	41	4	59.36	0.000
18853	8818	47	2	9.57	0.000
18854	8818	23	5	99.83	0.000
18855	8819	23	3	111.42	0.150
18856	8819	30	4	49.24	0.000
18857	8820	24	2	51.85	0.000
18858	8820	7	3	221.46	0.000
18859	8820	6	3	603.56	0.150
18860	8821	2	4	49.13	0.000
18861	8821	3	5	260.80	0.000
18862	8821	14	1	34.12	0.050
18863	8821	48	4	15.52	0.150
18864	8822	40	1	53.55	0.000
18865	8822	28	2	12.54	0.150
18866	8823	38	3	58.66	0.100
18867	8823	27	4	11.50	0.000
18868	8824	43	2	15.00	0.050
18869	8824	25	2	74.10	0.050
18870	8825	11	4	59.97	0.000
18871	8826	10	4	16.79	0.150
18872	8826	14	5	35.99	0.000
18873	8827	1	5	578.73	0.000
18874	8828	36	5	62.93	0.000
18875	8828	35	3	43.62	0.000
18876	8828	31	3	97.34	0.100
18877	8828	43	1	14.72	0.000
18878	8829	9	5	115.51	0.100
18879	8829	1	1	611.51	0.150
18880	8829	31	4	101.92	0.100
18881	8830	31	4	88.17	0.100
18882	8830	45	2	8.27	0.100
18883	8831	6	2	601.98	0.150
18884	8832	48	3	15.69	0.000
18885	8833	24	3	50.63	0.150
18886	8834	13	4	10.81	0.000
18887	8834	24	1	54.95	0.000
18888	8835	35	2	45.56	0.100
18889	8835	32	4	90.86	0.100
18890	8836	21	5	251.12	0.000
18891	8837	20	1	10.73	0.000
18892	8837	28	4	11.36	0.050
18893	8838	21	5	230.25	0.000
18894	8838	23	3	98.54	0.000
18895	8839	16	5	85.22	0.000
18896	8839	21	1	230.83	0.100
18897	8839	48	5	17.15	0.000
18898	8839	46	3	15.48	0.150
18899	8840	37	4	73.44	0.000
18900	8840	19	2	238.25	0.100
18901	8840	25	3	79.79	0.150
18902	8841	15	1	91.50	0.000
18903	8841	42	1	8.09	0.000
18904	8841	27	2	11.73	0.100
18905	8841	7	5	203.82	0.150
18906	8842	12	4	133.69	0.050
18907	8843	3	4	242.48	0.000
18908	8843	1	1	550.74	0.100
18909	8844	7	4	216.10	0.100
18910	8844	15	2	94.60	0.100
18911	8844	35	5	44.42	0.000
18912	8844	47	4	9.73	0.100
18913	8845	1	2	607.95	0.100
18914	8846	11	1	62.37	0.000
18915	8846	32	3	87.18	0.050
18916	8847	41	5	58.56	0.100
18917	8848	41	1	60.40	0.000
18918	8849	3	1	268.17	0.100
18919	8849	11	4	60.68	0.150
18920	8850	22	4	210.65	0.050
18921	8850	41	4	60.08	0.000
18922	8850	29	1	69.62	0.000
18923	8851	6	3	625.33	0.000
18924	8851	20	2	11.62	0.050
18925	8852	15	4	92.99	0.000
18926	8852	45	5	8.85	0.100
18927	8852	30	5	51.67	0.000
18928	8853	10	3	17.80	0.100
18929	8853	7	1	212.36	0.000
18930	8853	42	2	8.47	0.000
18931	8853	33	5	60.37	0.100
18932	8854	20	1	10.97	0.000
18933	8854	36	5	63.07	0.100
18934	8855	22	3	210.85	0.100
18935	8855	31	1	93.69	0.000
18936	8856	11	3	62.29	0.100
18937	8856	21	3	226.05	0.000
18938	8857	25	3	69.39	0.150
18939	8857	29	5	68.68	0.050
18940	8857	3	4	254.27	0.000
18941	8858	34	1	116.42	0.050
18942	8858	9	2	108.90	0.050
18943	8859	20	2	10.83	0.000
18944	8859	39	4	80.80	0.150
18945	8859	28	1	12.17	0.000
18946	8860	47	3	9.26	0.100
18947	8860	1	2	593.40	0.150
18948	8861	10	5	16.40	0.150
18949	8862	28	3	11.38	0.100
18950	8863	8	4	31.14	0.000
18951	8864	28	5	11.21	0.100
18952	8864	35	5	45.56	0.050
18953	8864	1	2	601.41	0.150
18954	8864	40	5	48.95	0.000
18955	8865	22	2	206.35	0.050
18956	8865	18	4	86.10	0.150
18957	8865	20	5	12.29	0.000
18958	8865	17	1	39.32	0.000
18959	8866	31	2	90.90	0.000
18960	8866	39	1	78.91	0.050
18961	8867	10	3	17.58	0.000
18962	8867	32	5	86.94	0.150
18963	8868	33	2	64.95	0.100
18964	8868	7	5	232.71	0.100
18965	8868	3	4	274.96	0.100
18966	8869	34	2	108.35	0.000
18967	8870	46	2	15.00	0.100
18968	8870	3	1	254.11	0.050
18969	8870	44	4	17.99	0.050
18970	8871	10	4	15.50	0.150
18971	8871	11	2	61.89	0.150
18972	8872	9	2	102.55	0.050
18973	8873	10	4	16.10	0.050
18974	8873	15	5	93.63	0.000
18975	8873	17	5	35.46	0.000
18976	8874	37	1	79.01	0.100
18977	8874	31	2	87.93	0.050
18978	8875	19	3	225.90	0.000
18979	8876	38	5	55.23	0.000
18980	8876	9	3	113.59	0.000
18981	8876	23	3	105.85	0.000
18982	8876	6	3	647.10	0.100
18983	8877	39	5	81.23	0.150
18984	8877	10	1	18.00	0.000
18985	8878	11	1	59.28	0.150
18986	8879	4	4	202.57	0.000
18987	8879	27	4	12.11	0.000
18988	8880	17	4	36.00	0.000
18989	8880	37	3	72.65	0.000
18990	8880	9	5	113.91	0.000
18991	8881	7	2	221.87	0.050
18992	8881	45	3	9.46	0.000
18993	8881	21	3	221.48	0.100
18994	8881	1	4	593.10	0.100
18995	8882	15	1	93.70	0.000
18996	8883	31	3	101.53	0.150
18997	8883	24	4	53.94	0.000
18998	8884	8	5	28.16	0.150
18999	8884	14	5	36.09	0.050
19000	8885	6	1	571.26	0.050
19001	8885	10	1	16.57	0.000
19002	8885	4	5	218.25	0.000
19003	8885	26	4	28.55	0.100
19004	8886	30	5	50.52	0.100
19005	8887	24	2	50.36	0.000
19006	8888	21	4	244.73	0.000
19007	8888	20	2	11.06	0.000
19008	8888	47	5	9.91	0.100
19009	8889	14	3	34.79	0.000
19010	8889	31	3	92.81	0.050
19011	8890	1	3	604.47	0.150
19012	8890	45	3	9.50	0.000
19013	8891	37	4	74.42	0.000
19014	8891	1	1	531.04	0.000
19015	8892	16	4	80.83	0.050
19016	8892	44	1	15.77	0.050
19017	8893	25	5	76.36	0.100
19018	8894	3	1	261.09	0.000
19019	8894	39	5	81.04	0.000
19020	8894	31	5	90.86	0.150
19021	8895	12	5	126.78	0.000
19022	8895	22	1	196.44	0.150
19023	8895	15	2	101.68	0.000
19024	8896	44	5	17.46	0.000
19025	8896	19	1	224.78	0.000
19026	8897	11	3	65.29	0.100
19027	8898	2	5	49.01	0.000
19028	8898	32	3	86.85	0.000
19029	8898	41	3	66.33	0.000
19030	8899	29	2	61.83	0.100
19031	8899	9	5	106.81	0.000
19032	8900	35	4	48.30	0.000
19033	8900	48	1	16.58	0.100
19034	8900	10	5	15.86	0.050
19035	8900	20	3	12.02	0.000
19036	8901	24	5	56.09	0.150
19037	8901	9	1	114.44	0.100
19038	8902	32	2	86.20	0.150
19039	8903	3	5	255.85	0.000
19040	8904	23	3	101.78	0.150
19041	8904	43	2	14.90	0.150
19042	8905	48	3	15.21	0.100
19043	8906	48	5	16.40	0.100
19044	8907	34	1	120.05	0.000
19045	8907	38	4	60.10	0.050
19046	8907	24	5	50.43	0.000
19047	8908	2	5	44.42	0.000
19048	8908	23	2	106.15	0.050
19049	8908	11	1	57.47	0.000
19050	8909	26	1	28.12	0.000
19051	8909	16	1	82.50	0.000
19052	8910	22	2	220.23	0.000
19053	8911	19	4	247.13	0.100
19054	8911	13	4	10.97	0.050
19055	8912	45	2	8.35	0.000
19056	8912	36	3	68.77	0.150
19057	8913	40	3	56.76	0.000
19058	8913	47	5	9.67	0.000
19059	8914	13	4	10.76	0.050
19060	8914	17	1	35.58	0.000
19061	8915	41	5	66.40	0.050
19062	8915	23	2	105.37	0.000
19063	8915	9	4	103.52	0.050
19064	8915	1	3	559.28	0.150
19065	8916	12	4	127.57	0.050
19066	8916	7	5	203.09	0.000
19067	8917	21	3	243.18	0.100
19068	8917	33	4	61.12	0.000
19069	8918	18	3	92.25	0.150
19070	8918	33	2	65.21	0.150
19071	8918	32	1	92.75	0.050
19072	8919	26	3	29.69	0.050
19073	8920	36	1	64.79	0.150
19074	8920	44	2	17.85	0.000
19075	8921	13	4	10.69	0.000
19076	8921	48	1	16.39	0.000
19077	8922	21	1	244.51	0.050
19078	8922	23	2	104.94	0.050
19079	8922	38	1	58.13	0.050
19080	8923	48	5	16.91	0.000
19081	8923	27	5	12.03	0.000
19082	8924	15	1	102.53	0.100
19083	8925	1	5	605.98	0.050
19084	8926	41	3	64.55	0.000
19085	8926	16	2	88.86	0.050
19086	8927	21	2	243.60	0.150
19087	8927	12	2	118.21	0.000
19088	8928	22	4	206.54	0.050
19089	8928	4	4	215.90	0.000
19090	8929	39	3	80.11	0.000
19091	8929	7	2	219.73	0.050
19092	8930	7	4	231.01	0.000
19093	8930	8	2	30.07	0.000
19094	8931	30	1	51.93	0.050
19095	8932	26	2	30.81	0.150
19096	8932	44	2	18.01	0.050
19097	8932	4	5	209.46	0.050
19098	8933	31	1	89.43	0.150
19099	8934	9	5	101.35	0.150
19100	8934	13	3	10.72	0.000
19101	8934	42	1	8.35	0.000
19102	8934	28	1	12.55	0.100
19103	8935	8	5	29.94	0.000
19104	8936	34	3	121.86	0.050
19105	8936	14	4	36.33	0.150
19106	8937	20	2	12.45	0.100
19107	8938	6	5	631.63	0.000
19108	8939	47	1	9.01	0.000
19109	8939	3	2	255.89	0.150
19110	8939	40	5	56.20	0.000
19111	8940	35	5	47.85	0.000
19112	8940	37	5	77.41	0.150
19113	8941	4	2	206.41	0.000
19114	8941	13	3	12.01	0.050
19115	8941	46	4	15.51	0.050
19116	8942	10	3	16.79	0.150
19117	8942	1	3	585.81	0.150
19118	8943	27	3	11.97	0.100
19119	8944	31	1	89.36	0.100
19120	8944	24	2	57.00	0.050
19121	8945	17	1	38.18	0.000
19122	8945	23	1	106.06	0.050
19123	8945	25	5	71.91	0.000
19124	8946	12	4	133.15	0.100
19125	8946	11	4	64.84	0.000
19126	8947	33	5	62.51	0.150
19127	8947	47	1	9.61	0.150
19128	8947	10	5	17.46	0.000
19129	8947	13	5	11.49	0.000
19130	8948	12	4	135.64	0.150
19131	8948	43	2	14.17	0.150
19132	8949	41	1	63.29	0.000
19133	8949	16	3	78.27	0.000
19134	8949	8	1	31.99	0.000
19135	8949	39	5	75.34	0.000
19136	8950	21	5	232.08	0.000
19137	8950	41	1	66.54	0.050
19138	8950	2	2	45.19	0.000
19139	8951	18	3	94.56	0.100
19140	8952	34	5	117.96	0.150
19141	8953	36	2	68.51	0.000
19142	8953	4	5	215.16	0.100
19143	8953	3	2	246.42	0.000
19144	8954	24	4	56.76	0.050
19145	8954	20	3	10.77	0.050
19146	8954	38	5	56.85	0.000
19147	8955	24	3	57.34	0.100
19148	8955	34	3	115.42	0.000
19149	8956	8	2	29.92	0.050
19150	8957	7	3	214.25	0.000
19151	8958	12	1	133.86	0.050
19152	8958	3	1	249.47	0.000
19153	8958	36	3	63.57	0.150
19154	8958	45	1	8.36	0.050
19155	8959	1	5	579.10	0.000
19156	8959	39	5	79.52	0.050
19157	8960	46	4	14.06	0.000
19158	8961	23	4	110.30	0.000
19159	8961	28	4	12.01	0.150
19160	8962	38	5	53.04	0.000
19161	8962	6	3	628.85	0.000
19162	8962	19	5	246.97	0.050
19163	8962	31	5	98.57	0.150
19164	8963	32	3	83.59	0.000
19165	8963	11	4	58.55	0.000
19166	8963	37	2	74.26	0.000
19167	8963	1	2	578.81	0.000
19168	8964	1	5	575.82	0.150
19169	8965	4	2	210.29	0.100
19170	8966	45	1	8.42	0.000
19171	8967	7	4	220.69	0.100
19172	8967	31	5	97.29	0.000
19173	8968	13	4	12.24	0.150
19174	8969	8	2	28.60	0.000
19175	8970	19	3	232.98	0.000
19176	8970	29	5	67.33	0.150
19177	8970	4	1	201.53	0.000
19178	8970	30	4	49.26	0.100
19179	8971	45	5	9.32	0.000
19180	8972	22	5	204.90	0.050
19181	8973	2	2	43.62	0.000
19182	8973	33	2	65.41	0.050
19183	8973	23	4	108.38	0.000
19184	8974	19	4	233.74	0.000
19185	8975	12	5	119.55	0.000
19186	8975	9	2	107.81	0.000
19187	8976	23	2	104.06	0.000
19188	8976	10	2	17.19	0.150
19189	8976	1	2	591.42	0.000
19190	8977	17	1	39.68	0.050
19191	8977	25	3	72.09	0.000
19192	8978	8	3	29.66	0.000
19193	8979	23	2	100.25	0.000
19194	8979	28	1	12.34	0.050
19195	8979	18	5	84.52	0.000
19196	8979	38	4	59.01	0.100
19197	8980	20	1	11.81	0.000
19198	8980	28	1	11.09	0.000
19199	8981	12	2	120.33	0.000
19200	8982	20	1	12.02	0.100
19201	8983	23	2	105.03	0.000
19202	8984	3	4	276.35	0.000
19203	8985	24	3	51.97	0.000
19204	8985	29	1	71.08	0.000
19205	8985	21	1	233.61	0.000
19206	8985	1	5	610.18	0.150
19207	8986	19	2	227.38	0.000
19208	8986	34	2	121.57	0.100
19209	8986	2	4	45.80	0.150
19210	8987	13	3	12.19	0.000
19211	8987	28	2	11.04	0.050
19212	8988	48	5	15.37	0.000
19213	8988	30	3	48.08	0.100
19214	8988	3	5	248.56	0.050
19215	8988	41	1	63.55	0.000
19216	8989	38	2	58.44	0.000
19217	8989	23	2	99.47	0.150
19218	8990	39	2	76.20	0.000
19219	8990	25	5	74.00	0.100
19220	8991	41	1	66.49	0.050
19221	8991	45	3	9.53	0.100
19222	8991	36	2	66.48	0.000
19223	8992	43	4	14.56	0.100
19224	8993	46	3	14.71	0.000
19225	8993	14	1	36.72	0.000
19226	8993	41	4	62.17	0.050
19227	8994	27	1	10.90	0.150
19228	8994	3	1	264.53	0.000
19229	8995	8	5	30.56	0.050
19230	8995	38	2	59.10	0.000
19231	8995	12	5	125.09	0.100
19232	8995	23	4	113.33	0.000
19233	8996	37	3	69.44	0.000
19234	8996	22	4	221.58	0.000
19235	8997	13	2	12.21	0.150
19236	8998	33	1	67.14	0.000
19237	8999	25	3	71.20	0.050
19238	8999	33	3	67.04	0.050
19239	9000	4	2	217.97	0.100
19240	9001	8	1	30.73	0.100
19241	9002	31	4	90.72	0.000
19242	9003	22	3	219.81	0.050
19243	9004	15	4	97.63	0.000
19244	9005	21	2	249.49	0.050
19245	9005	37	1	77.95	0.000
19246	9006	12	2	124.20	0.100
19247	9006	11	1	57.30	0.100
19248	9006	47	3	10.30	0.000
19249	9006	14	1	36.05	0.150
19250	9007	13	5	12.15	0.050
19251	9007	7	5	205.21	0.000
19252	9007	15	4	91.21	0.050
19253	9008	17	3	36.37	0.000
19254	9008	41	3	66.76	0.150
19255	9009	11	4	60.20	0.000
19256	9009	20	5	11.30	0.150
19257	9009	37	3	76.40	0.000
19258	9009	13	2	12.35	0.100
19259	9010	6	3	647.26	0.150
19260	9010	19	5	245.57	0.050
19261	9010	34	5	121.37	0.000
19262	9011	4	1	215.56	0.000
19263	9012	18	5	83.64	0.000
19264	9013	6	2	641.54	0.000
19265	9014	28	4	11.83	0.100
19266	9015	7	4	220.66	0.150
19267	9015	36	4	64.50	0.000
19268	9015	43	5	14.22	0.100
19269	9016	31	1	101.08	0.000
19270	9016	24	2	53.42	0.050
19271	9017	29	3	70.26	0.150
19272	9017	34	3	113.20	0.000
19273	9017	17	2	39.31	0.000
19274	9018	40	2	48.77	0.050
19275	9018	32	2	87.93	0.000
19276	9019	24	4	55.08	0.000
19277	9019	39	4	78.11	0.100
19278	9020	7	4	221.80	0.000
19279	9021	47	3	9.82	0.150
19280	9021	24	1	52.03	0.150
19281	9021	25	2	80.49	0.000
19282	9021	2	5	45.53	0.150
19283	9022	6	4	608.76	0.000
19284	9023	10	3	16.64	0.150
19285	9023	32	4	88.81	0.000
19286	9023	25	4	69.42	0.000
19287	9023	19	4	224.79	0.150
19288	9024	18	4	89.61	0.050
19289	9024	3	4	263.90	0.000
19290	9025	12	5	129.67	0.100
19291	9025	15	2	104.46	0.150
19292	9026	20	3	11.37	0.100
19293	9026	34	2	114.63	0.050
19294	9026	26	2	30.03	0.050
19295	9026	18	5	89.96	0.050
19296	9027	23	2	97.89	0.000
19297	9027	14	1	35.61	0.000
19298	9027	11	2	59.80	0.000
19299	9027	21	1	243.97	0.150
19300	9028	1	3	601.48	0.050
19301	9029	9	2	107.44	0.100
19302	9029	40	2	49.18	0.000
19303	9029	28	2	11.44	0.000
19304	9029	10	5	17.95	0.150
19305	9030	31	2	101.27	0.000
19306	9030	17	4	40.74	0.000
19307	9030	20	4	12.05	0.000
19308	9030	22	3	214.41	0.000
19309	9031	16	1	78.34	0.000
19310	9032	12	1	130.96	0.000
19311	9032	32	3	89.06	0.000
19312	9032	7	3	226.74	0.100
19313	9032	24	2	56.74	0.000
19314	9033	16	3	78.12	0.100
19315	9033	22	3	211.95	0.050
19316	9034	41	3	63.43	0.150
19317	9035	21	5	248.53	0.000
19318	9035	22	4	207.64	0.100
19319	9036	47	5	10.32	0.100
19320	9037	14	3	35.29	0.100
19321	9037	20	1	12.06	0.000
19322	9037	26	1	31.31	0.100
19323	9037	47	4	10.25	0.150
\.


--
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: analyst; Owner: -
--

SELECT pg_catalog.setval('analyst.categories_category_id_seq', 8, true);


--
-- Name: countries_country_id_seq; Type: SEQUENCE SET; Schema: analyst; Owner: -
--

SELECT pg_catalog.setval('analyst.countries_country_id_seq', 14, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: analyst; Owner: -
--

SELECT pg_catalog.setval('analyst.customers_customer_id_seq', 3000, true);


--
-- Name: order_items_order_item_id_seq; Type: SEQUENCE SET; Schema: analyst; Owner: -
--

SELECT pg_catalog.setval('analyst.order_items_order_item_id_seq', 19323, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: analyst; Owner: -
--

SELECT pg_catalog.setval('analyst.orders_order_id_seq', 9037, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: analyst; Owner: -
--

SELECT pg_catalog.setval('analyst.products_product_id_seq', 48, true);


--
-- Name: regions_region_id_seq; Type: SEQUENCE SET; Schema: analyst; Owner: -
--

SELECT pg_catalog.setval('analyst.regions_region_id_seq', 4, true);


--
-- PostgreSQL database dump complete
--


