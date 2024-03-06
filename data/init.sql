--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    category_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: category_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.category_category_id_seq OWNER TO postgres;

--
-- Name: category_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;


--
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(100),
    address text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_customer_id_seq OWNER TO postgres;

--
-- Name: customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;


--
-- Name: order_detail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_detail (
    order_detail_id integer NOT NULL,
    order_id character varying(50),
    product_id character varying(100),
    quantity integer NOT NULL,
    price numeric(10,2) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.order_detail OWNER TO postgres;

--
-- Name: order_detail_order_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_detail_order_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_detail_order_detail_id_seq OWNER TO postgres;

--
-- Name: order_detail_order_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_detail_order_detail_id_seq OWNED BY public.order_detail.order_detail_id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    order_id character varying(50) NOT NULL,
    customer_id integer,
    order_date timestamp without time zone NOT NULL,
    status character varying(50) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    product_id character varying(100) NOT NULL,
    name text NOT NULL,
    subcategory_id integer,
    price numeric(10,2) NOT NULL,
    stock integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: subcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subcategory (
    subcategory_id integer NOT NULL,
    name character varying(255) NOT NULL,
    category_id integer,
    description text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.subcategory OWNER TO postgres;

--
-- Name: subcategory_subcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subcategory_subcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subcategory_subcategory_id_seq OWNER TO postgres;

--
-- Name: subcategory_subcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subcategory_subcategory_id_seq OWNED BY public.subcategory.subcategory_id;


--
-- Name: category category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);


--
-- Name: customer customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);


--
-- Name: order_detail order_detail_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_detail ALTER COLUMN order_detail_id SET DEFAULT nextval('public.order_detail_order_detail_id_seq'::regclass);


--
-- Name: subcategory subcategory_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subcategory ALTER COLUMN subcategory_id SET DEFAULT nextval('public.subcategory_subcategory_id_seq'::regclass);


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (category_id, name, description, created_at, updated_at) FROM stdin;
1	Computers&Accessories	Computers&Accessories is Skill final here skin carry man.	2021-01-01 00:00:00	2021-01-01 00:00:00
2	Electronics	Electronics is Letter offer probably state organization statement Congress across.	2021-01-01 00:00:00	2021-01-01 00:00:00
3	MusicalInstruments	MusicalInstruments is Above without but federal doctor indicate.	2021-01-01 00:00:00	2021-01-01 00:00:00
4	OfficeProducts	OfficeProducts is Letter participant lot indicate arrive power south today rate young.	2021-01-01 00:00:00	2021-01-01 00:00:00
5	Home&Kitchen	Home&Kitchen is Service discussion again sea at system most west.	2021-01-01 00:00:00	2021-01-01 00:00:00
6	HomeImprovement	HomeImprovement is Meeting senior student win support born fall hope.	2021-01-01 00:00:00	2021-01-01 00:00:00
7	Toys&Games	Toys&Games is Local summer prevent authority hair realize.	2021-01-01 00:00:00	2021-01-01 00:00:00
8	Car&Motorbike	Car&Motorbike is Big people role me play onto.	2021-01-01 00:00:00	2021-01-01 00:00:00
9	Health&PersonalCare	Health&PersonalCare is Stand response prove college music boy significant him.	2021-01-01 00:00:00	2021-01-01 00:00:00
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (customer_id, first_name, last_name, email, phone, address, created_at, updated_at) FROM stdin;
1	Jackie	Butler	jackie740@hotmail.com	639-601-6489	0682 Davis Mount\nNorth Ryan, DE 34214	2021-01-01 00:00:00	2021-01-01 00:00:00
2	Ryan	Brown	ryan611@gmail.com	7246609373	087 Michael Mountain\nPort Dominiquechester, VA 03336	2021-01-01 00:00:00	2021-01-01 00:00:00
3	Virginia	Allen	virginia858@yahoo.com	+1-938-242-0900	845 Amanda Turnpike\nChadbury, AS 71148	2021-01-01 00:00:00	2021-01-01 00:00:00
4	Patty	Allen	patty464@hotmail.com	431.665.1039x74107	48782 Lisa Centers Suite 303\nEast Marieton, VI 19528	2021-01-01 00:00:00	2021-01-01 00:00:00
5	Bryan	Gonzalez	bryan273@yahoo.com	268.200.7349x794	5896 Caitlin Radial Suite 467\nPort Maryfurt, MO 02380	2021-01-01 00:00:00	2021-01-01 00:00:00
6	Kirk	Mendoza	kirk798@hotmail.com	689-376-6704x797	Unit 2926 Box 3907\nDPO AP 12547	2021-01-01 00:00:00	2021-01-01 00:00:00
7	Nicole	Garcia	nicole580@hotmail.com	(938)714-4308x5752	9952 Jacqueline Greens Apt. 577\nSouth Jason, CO 06083	2021-01-01 00:00:00	2021-01-01 00:00:00
8	Brianna	Ford	brianna172@yahoo.com	+1-787-789-4732x393	523 Eric Square\nBettyborough, HI 41251	2021-01-01 00:00:00	2021-01-01 00:00:00
9	Aaron	Conner	aaron029@hotmail.com	5349626931	114 Krystal Fields Apt. 288\nNorth Matthew, OK 85284	2021-01-01 00:00:00	2021-01-01 00:00:00
10	Oscar	Cohen	oscar368@hotmail.com	785-892-0201	879 Michael Lodge\nStewartmouth, AR 17822	2021-01-01 00:00:00	2021-01-01 00:00:00
11	Mackenzie	James	mackenzie280@yahoo.com	(866)929-4290	76521 West Plains Apt. 265\nNew Jeffrey, CO 86617	2021-01-01 00:00:00	2021-01-01 00:00:00
12	Thomas	Peters	thomas305@hotmail.com	2904128558	069 Samuel Tunnel Suite 907\nNew Davidstad, IL 20730	2021-01-01 00:00:00	2021-01-01 00:00:00
13	Stephen	Miller	stephen424@hotmail.com	001-642-591-9069	69223 Cindy Key\nNorth Jerry, HI 58099	2021-01-01 00:00:00	2021-01-01 00:00:00
14	Natalie	Gaines	natalie604@yahoo.com	6173580139	92690 Karla Courts Apt. 872\nEast Matthewstad, KY 06180	2021-01-01 00:00:00	2021-01-01 00:00:00
15	Jacqueline	Thomas	jacqueline581@gmail.com	+1-230-601-1962	3188 Jackson Pass\nKaylamouth, OK 18894	2021-01-01 00:00:00	2021-01-01 00:00:00
16	Brenda	Mckee	brenda579@gmail.com	+1-369-639-4763	385 Joshua Fall Suite 526\nHarrismouth, NM 40296	2021-01-01 00:00:00	2021-01-01 00:00:00
17	David	Mullins	david470@yahoo.com	615.961.3170x40211	USCGC Moore\nFPO AE 84212	2021-01-01 00:00:00	2021-01-01 00:00:00
18	Wendy	Juarez	wendy336@hotmail.com	+1-620-750-6528x567	1147 John Pine Apt. 223\nLake Richardshire, WI 27240	2021-01-01 00:00:00	2021-01-01 00:00:00
19	Cheryl	Hall	cheryl398@gmail.com	001-461-250-3404	72378 Oliver Mountain Apt. 731\nPort Christian, CO 91450	2021-01-01 00:00:00	2021-01-01 00:00:00
20	Leslie	Johnson	leslie475@gmail.com	+1-894-763-2999	042 Carroll Inlet\nNew Robert, PW 54684	2021-01-01 00:00:00	2021-01-01 00:00:00
21	Jeremy	Mack	jeremy591@hotmail.com	+1-621-514-4953	10953 Taylor Turnpike Apt. 629\nLake Timothyland, TN 74642	2021-01-01 00:00:00	2021-01-01 00:00:00
22	Andrea	Munoz	andrea384@gmail.com	568.719.8401	PSC 5710, Box 4951\nAPO AE 92035	2021-01-01 00:00:00	2021-01-01 00:00:00
23	Troy	Smith	troy995@yahoo.com	438.884.0852	1864 Patrick Mountain Suite 444\nSouth Francisco, NJ 42480	2021-01-01 00:00:00	2021-01-01 00:00:00
24	Deanna	Barnes	deanna563@hotmail.com	259-853-5016	75025 Bradley Heights Apt. 209\nEast Victoria, CA 58570	2021-01-01 00:00:00	2021-01-01 00:00:00
25	Randall	Fox	randall483@gmail.com	+1-275-542-8354x756	350 Kenneth Row\nHowardview, TX 89276	2021-01-01 00:00:00	2021-01-01 00:00:00
26	Dana	Lopez	dana683@yahoo.com	414-516-2690	01655 Gay Plains\nWoodbury, MH 98267	2021-01-01 00:00:00	2021-01-01 00:00:00
27	Kyle	Manning	kyle091@gmail.com	3617402661	5468 Brady Plaza Apt. 331\nSmithstad, GU 46884	2021-01-01 00:00:00	2021-01-01 00:00:00
28	Jeff	Jacobs	jeff367@gmail.com	437.367.9763	2819 Jason Rapid\nAyalaberg, MT 39514	2021-01-01 00:00:00	2021-01-01 00:00:00
29	Douglas	Edwards	douglas194@yahoo.com	857-389-3224x632	630 Vicki Plains Apt. 449\nGentryville, MD 69945	2021-01-01 00:00:00	2021-01-01 00:00:00
30	Garrett	Morris	garrett696@yahoo.com	001-821-644-9809x6674	3056 Thomas River\nRamireztown, LA 13793	2021-01-01 00:00:00	2021-01-01 00:00:00
31	Haley	Gordon	haley980@hotmail.com	(208)906-9416x492	05804 Martin Stravenue\nAyersland, VI 87937	2021-01-01 00:00:00	2021-01-01 00:00:00
32	Rebecca	Clarke	rebecca011@yahoo.com	707-888-8850x088	46791 Nathan Path\nPort Christopher, WV 82018	2021-01-01 00:00:00	2021-01-01 00:00:00
33	Mary	Crawford	mary456@hotmail.com	001-552-584-9245x22149	44492 Collin Terrace Suite 173\nSouth Ellenhaven, PA 90710	2021-01-01 00:00:00	2021-01-01 00:00:00
34	James	Moore	james486@hotmail.com	377.300.9572x81027	5969 Hawkins Light\nWilsonbury, KS 51414	2021-01-01 00:00:00	2021-01-01 00:00:00
35	Erin	Navarro	erin852@gmail.com	975-372-5753x6334	713 Armstrong Mount Suite 731\nEast Spencer, HI 99007	2021-01-01 00:00:00	2021-01-01 00:00:00
36	Jason	Edwards	jason147@hotmail.com	908-497-4654x520	719 Jay Grove Apt. 337\nEast Robert, MA 88995	2021-01-01 00:00:00	2021-01-01 00:00:00
37	Kenneth	Moore	kenneth657@gmail.com	001-582-614-6214x08265	852 Schultz Valleys\nEast Nicholas, FL 54354	2021-01-01 00:00:00	2021-01-01 00:00:00
38	Cindy	Hill	cindy653@yahoo.com	652.635.2918x35463	464 Emily Stravenue Suite 400\nNew Elizabethshire, WI 19835	2021-01-01 00:00:00	2021-01-01 00:00:00
39	Dennis	Hernandez	dennis863@hotmail.com	995-515-5610x47827	11916 Kenneth Ville Apt. 138\nVictoriaport, AL 10546	2021-01-01 00:00:00	2021-01-01 00:00:00
40	Judy	Mccarthy	judy782@yahoo.com	001-836-245-5988x850	729 Huynh Cliff\nPort Amyborough, NM 98965	2021-01-01 00:00:00	2021-01-01 00:00:00
41	Robert	Flores	robert514@yahoo.com	378.221.3419x00619	4569 Romero Ranch Suite 679\nLake John, RI 19630	2021-01-01 00:00:00	2021-01-01 00:00:00
42	George	Buchanan	george114@gmail.com	729-886-1661	4384 Taylor Island Apt. 322\nLambertfort, IA 70348	2021-01-01 00:00:00	2021-01-01 00:00:00
43	Michelle	Richards	michelle665@hotmail.com	617-865-8029	542 Austin Wall Apt. 337\nLake Brandonview, ID 53013	2021-01-01 00:00:00	2021-01-01 00:00:00
44	Tracy	Hernandez	tracy917@gmail.com	(630)543-6181x2527	5637 Phillip Forges\nJoshuaborough, NM 25753	2021-01-01 00:00:00	2021-01-01 00:00:00
45	Rodney	Townsend	rodney541@gmail.com	2364882706	9436 Brown Keys Suite 859\nOrozcostad, IN 00811	2021-01-01 00:00:00	2021-01-01 00:00:00
46	Susan	Yates	susan420@yahoo.com	511.356.6671x028	195 Elizabeth Station Suite 983\nEast Stephen, MO 44093	2021-01-01 00:00:00	2021-01-01 00:00:00
47	Suzanne	Rogers	suzanne448@gmail.com	704-772-6891x65745	3290 Reed Pines\nMoraleschester, PA 04075	2021-01-01 00:00:00	2021-01-01 00:00:00
48	Heather	Hernandez	heather510@yahoo.com	525.233.2853	979 Farrell Wall\nNew Shawna, MH 98440	2021-01-01 00:00:00	2021-01-01 00:00:00
49	Charles	Pineda	charles947@gmail.com	933-253-3384x008	USCGC Mack\nFPO AA 90469	2021-01-01 00:00:00	2021-01-01 00:00:00
50	Meagan	Munoz	meagan661@hotmail.com	(712)379-7685x44156	Unit 3697 Box 7842\nDPO AA 71222	2021-01-01 00:00:00	2021-01-01 00:00:00
51	Anna	Rangel	anna145@gmail.com	(572)538-7390	84878 Porter Run Suite 644\nAdamsburgh, SC 83471	2021-01-01 00:00:00	2021-01-01 00:00:00
52	Samantha	Thomas	samantha498@gmail.com	001-631-564-3947x8947	0982 Mccoy Tunnel Suite 329\nLindamouth, NM 98354	2021-01-01 00:00:00	2021-01-01 00:00:00
53	Jenny	Day	jenny464@yahoo.com	7748344788	9624 Cooper Plains\nNorth Carrie, DC 64087	2021-01-01 00:00:00	2021-01-01 00:00:00
54	Angela	Stewart	angela065@yahoo.com	894.362.7047x9943	920 Hale Branch\nNew Joshuaburgh, WY 48307	2021-01-01 00:00:00	2021-01-01 00:00:00
55	David	Webb	david684@gmail.com	904.315.3455x610	35636 Brown Lane\nLake Louisfurt, TX 19046	2021-01-01 00:00:00	2021-01-01 00:00:00
56	Gordon	Keith	gordon746@hotmail.com	2693882686	3298 Boyd Port Suite 264\nEast Alexandria, MD 13776	2021-01-01 00:00:00	2021-01-01 00:00:00
57	Kelly	Martinez	kelly978@hotmail.com	988-552-5784	11675 Rivera Fork Suite 415\nSchmitttown, HI 73846	2021-01-01 00:00:00	2021-01-01 00:00:00
58	Thomas	Fisher	thomas047@yahoo.com	411-898-5953x8055	Unit 0216 Box 1088\nDPO AP 81420	2021-01-01 00:00:00	2021-01-01 00:00:00
59	Henry	Smith	henry765@gmail.com	001-278-597-4115x00377	64219 Carol Wells\nSouth Williamport, MI 87219	2021-01-01 00:00:00	2021-01-01 00:00:00
60	Savannah	Diaz	savannah348@hotmail.com	348-290-2635x5816	16525 Brooks Plain\nMichelleside, WI 33362	2021-01-01 00:00:00	2021-01-01 00:00:00
61	John	Bradford	john459@gmail.com	234.899.5234x9594	809 Kylie Road Suite 340\nPort Leah, GA 56868	2021-01-01 00:00:00	2021-01-01 00:00:00
62	Vanessa	Gomez	vanessa350@hotmail.com	(386)566-6064	41862 Everett Parkways\nEast Brianmouth, ID 81454	2021-01-01 00:00:00	2021-01-01 00:00:00
63	Lisa	Mullen	lisa064@gmail.com	(349)443-6696x135	247 Rose Village Suite 370\nRamosborough, MP 60731	2021-01-01 00:00:00	2021-01-01 00:00:00
64	Holly	Olsen	holly367@yahoo.com	(706)872-6834x220	1856 Cook Harbors\nWest Robinland, PA 32933	2021-01-01 00:00:00	2021-01-01 00:00:00
65	Felicia	Andrade	felicia519@yahoo.com	+1-546-223-0417x56562	Unit 8935 Box 7928\nDPO AA 50559	2021-01-01 00:00:00	2021-01-01 00:00:00
66	Keith	Thompson	keith845@gmail.com	(857)243-8712x6289	52428 White View\nNew Scott, GU 55377	2021-01-01 00:00:00	2021-01-01 00:00:00
67	Julie	Rodriguez	julie386@yahoo.com	814-910-4987x598	555 Hannah Canyon Apt. 487\nNew Brandonmouth, NY 43258	2021-01-01 00:00:00	2021-01-01 00:00:00
68	Anne	Zhang	anne369@hotmail.com	001-616-448-0508x4349	185 Mendoza Ports\nTaylorstad, MD 88427	2021-01-01 00:00:00	2021-01-01 00:00:00
69	Maria	Mack	maria161@yahoo.com	001-554-565-3254	010 Horne Via\nMorganfurt, AR 42620	2021-01-01 00:00:00	2021-01-01 00:00:00
70	Michelle	Hill	michelle526@hotmail.com	914.665.3253x1740	39266 Mooney Landing Apt. 424\nLisachester, VI 99638	2021-01-01 00:00:00	2021-01-01 00:00:00
71	Donald	Thompson	donald897@hotmail.com	859-809-2130x16391	0884 Richard Tunnel Apt. 492\nPort Ashleystad, IL 66613	2021-01-01 00:00:00	2021-01-01 00:00:00
72	Noah	Gonzalez	noah294@yahoo.com	(626)798-6386x5231	765 Wells Court\nWest Donna, MH 85039	2021-01-01 00:00:00	2021-01-01 00:00:00
73	Lance	Gibson	lance358@gmail.com	831-589-0897	9907 Davis Crest Apt. 666\nWest Cynthiabury, LA 32840	2021-01-01 00:00:00	2021-01-01 00:00:00
74	Michael	Bauer	michael008@hotmail.com	479.619.6228	92451 Stephanie Spur\nBakermouth, WA 39734	2021-01-01 00:00:00	2021-01-01 00:00:00
75	Chelsea	Lara	chelsea328@hotmail.com	766.920.0749x806	471 Ashley Street\nNguyenport, ID 59013	2021-01-01 00:00:00	2021-01-01 00:00:00
76	Jack	Tran	jack614@gmail.com	(885)659-8127x12061	57567 Aaron Union Apt. 697\nLake Elijah, ME 86956	2021-01-01 00:00:00	2021-01-01 00:00:00
77	Sharon	Rivera	sharon612@hotmail.com	7433037221	1220 Smith Roads Apt. 602\nWest Paigechester, FM 34090	2021-01-01 00:00:00	2021-01-01 00:00:00
78	Jon	Campbell	jon494@hotmail.com	(960)463-2864	985 Andrews Dam\nTylerside, NH 71074	2021-01-01 00:00:00	2021-01-01 00:00:00
79	Kyle	Nichols	kyle550@gmail.com	4538347409	8144 Stacey Crescent\nWilsonhaven, MP 07091	2021-01-01 00:00:00	2021-01-01 00:00:00
80	David	Walton	david811@hotmail.com	+1-316-212-6659x546	USNS Collins\nFPO AA 23977	2021-01-01 00:00:00	2021-01-01 00:00:00
81	Emily	Greene	emily902@gmail.com	837-914-6081	USNS Long\nFPO AA 26078	2021-01-01 00:00:00	2021-01-01 00:00:00
82	Paige	Wilson	paige461@hotmail.com	(801)719-4384	2068 Joshua Shores Apt. 431\nGriffinport, WI 08882	2021-01-01 00:00:00	2021-01-01 00:00:00
83	Rachel	Gonzales	rachel138@gmail.com	(462)330-5572x1354	20898 Ross Fall Suite 715\nNicoleton, OK 63074	2021-01-01 00:00:00	2021-01-01 00:00:00
84	Tyler	Sandoval	tyler580@gmail.com	(999)888-8752	6631 Valerie Dam\nMarkland, NH 56429	2021-01-01 00:00:00	2021-01-01 00:00:00
85	Joan	Nelson	joan099@hotmail.com	224-875-6691	07969 Jordan Ridges\nWest James, OK 35694	2021-01-01 00:00:00	2021-01-01 00:00:00
86	Jasmine	Wheeler	jasmine779@hotmail.com	001-424-526-9425x252	11773 Traci Prairie Apt. 527\nNorth Lisaburgh, ND 62267	2021-01-01 00:00:00	2021-01-01 00:00:00
87	Donald	Reed	donald372@yahoo.com	(470)575-6223	90143 Joseph Islands\nSummersfort, PA 74500	2021-01-01 00:00:00	2021-01-01 00:00:00
88	Sara	West	sara432@yahoo.com	+1-705-922-7592x530	054 Jessica Hollow Suite 247\nLake Danielle, MO 97343	2021-01-01 00:00:00	2021-01-01 00:00:00
89	Charles	Smith	charles985@gmail.com	(256)705-6269x06416	362 Gonzalez Loaf Apt. 358\nMelissabury, CO 76475	2021-01-01 00:00:00	2021-01-01 00:00:00
90	Christopher	Lewis	christopher611@hotmail.com	001-419-946-7745	6025 Michael Estate Apt. 412\nBradleymouth, MA 90187	2021-01-01 00:00:00	2021-01-01 00:00:00
91	Eddie	Rush	eddie835@yahoo.com	(449)305-2979x40445	31108 Davis Centers Apt. 258\nEast Frances, IN 96088	2021-01-01 00:00:00	2021-01-01 00:00:00
92	William	Mcgee	william648@hotmail.com	+1-441-817-4175x11649	487 Hawkins Cliffs\nWest David, WI 64464	2021-01-01 00:00:00	2021-01-01 00:00:00
93	Michael	Osborn	michael343@hotmail.com	838.372.0230x3331	70687 Ray Shores\nDavidview, TX 15437	2021-01-01 00:00:00	2021-01-01 00:00:00
94	Debra	Tanner	debra400@yahoo.com	396.763.7756	673 Fox Heights Apt. 387\nPatrickstad, NC 29154	2021-01-01 00:00:00	2021-01-01 00:00:00
95	Karen	Gonzales	karen081@yahoo.com	(531)324-2744x38583	668 Robert Squares\nWest Micheleview, AS 39580	2021-01-01 00:00:00	2021-01-01 00:00:00
96	Riley	House	riley609@yahoo.com	+1-877-284-3489	3484 Ashley Loop Apt. 872\nAndersonberg, ME 11909	2021-01-01 00:00:00	2021-01-01 00:00:00
97	Katie	Rodriguez	katie929@hotmail.com	001-294-449-9013x4046	10642 Miguel Keys Suite 452\nMartinshire, IN 55814	2021-01-01 00:00:00	2021-01-01 00:00:00
98	Jeanette	Henderson	jeanette855@yahoo.com	973-865-5849	3252 Gibson Vista\nChristineland, WA 19191	2021-01-01 00:00:00	2021-01-01 00:00:00
99	Dylan	Clark	dylan112@yahoo.com	001-412-765-6480x508	2442 Scott Rue Apt. 081\nWest Jamestown, IL 82144	2021-01-01 00:00:00	2021-01-01 00:00:00
100	Matthew	Graham	matthew560@yahoo.com	001-293-303-5721	1259 Phillips Islands Apt. 215\nEast Victorhaven, MD 02832	2021-01-01 00:00:00	2021-01-01 00:00:00
101	Joseph	Cannon	joseph490@yahoo.com	349-843-5909	8531 Stephanie Mill\nGonzalezmouth, OH 68237	2021-01-01 00:00:00	2021-01-01 00:00:00
102	Christine	Moore	christine944@gmail.com	635.952.6450	USNV Holland\nFPO AE 99669	2021-01-01 00:00:00	2021-01-01 00:00:00
103	Lindsay	Roach	lindsay022@yahoo.com	+1-621-358-6724x944	2804 Monroe Mission Suite 791\nDanielburgh, AR 09582	2021-01-01 00:00:00	2021-01-01 00:00:00
104	Jeremy	Becker	jeremy280@hotmail.com	001-232-903-2131x054	095 Adams View\nRonnieberg, LA 30560	2021-01-01 00:00:00	2021-01-01 00:00:00
105	Wendy	Thompson	wendy674@gmail.com	(646)860-0830x625	Unit 7409 Box 5351\nDPO AP 06670	2021-01-01 00:00:00	2021-01-01 00:00:00
106	Kimberly	Daniels	kimberly727@hotmail.com	001-900-602-1022x498	01529 James Parkways Suite 155\nTommymouth, VT 41093	2021-01-01 00:00:00	2021-01-01 00:00:00
107	Omar	Morales	omar736@yahoo.com	270.793.2489	7537 Wright Trail\nSandraborough, MO 14519	2021-01-01 00:00:00	2021-01-01 00:00:00
108	Cole	Ray	cole245@yahoo.com	+1-523-206-5834x5307	709 Kristina Lakes Apt. 386\nDavisstad, CT 86115	2021-01-01 00:00:00	2021-01-01 00:00:00
109	Christine	Bradley	christine018@yahoo.com	(737)881-3250	860 Watson Trail\nPort Joshua, NV 25815	2021-01-01 00:00:00	2021-01-01 00:00:00
110	Michael	Jennings	michael568@gmail.com	+1-682-380-8858	3824 Mark Island\nVanessaville, FL 26395	2021-01-01 00:00:00	2021-01-01 00:00:00
111	Anthony	White	anthony711@gmail.com	629-927-0202	55757 Lambert Estate Suite 359\nJustintown, AR 47537	2021-01-01 00:00:00	2021-01-01 00:00:00
112	Lindsay	Nichols	lindsay221@gmail.com	001-465-865-9475x490	56586 Scott Village Suite 817\nNorth Stacey, AK 08965	2021-01-01 00:00:00	2021-01-01 00:00:00
113	Corey	Andrade	corey507@gmail.com	796.362.2920x7153	91455 Campos Stravenue\nWest Charles, MN 99434	2021-01-01 00:00:00	2021-01-01 00:00:00
114	Betty	French	betty879@gmail.com	8703752824	891 Jill Squares\nWest Samantha, DE 91023	2021-01-01 00:00:00	2021-01-01 00:00:00
115	Patrick	Harris	patrick314@hotmail.com	(233)568-7871x31454	7182 Fernandez Flats\nAaronland, WA 25588	2021-01-01 00:00:00	2021-01-01 00:00:00
116	Jennifer	Turner	jennifer296@hotmail.com	745.390.9594	72008 Schmidt Branch Apt. 774\nNorth Rachel, NC 03198	2021-01-01 00:00:00	2021-01-01 00:00:00
117	Barry	Chavez	barry999@gmail.com	(854)846-0197x38351	1147 Leonard Square\nEast Alexandrashire, NM 66024	2021-01-01 00:00:00	2021-01-01 00:00:00
118	Lucas	Scott	lucas351@hotmail.com	403.510.7402x24826	4263 Anthony Branch Suite 537\nJamesstad, MP 91531	2021-01-01 00:00:00	2021-01-01 00:00:00
119	David	Hunter	david756@gmail.com	909.772.8607x438	Unit 7651 Box 9270\nDPO AE 08303	2021-01-01 00:00:00	2021-01-01 00:00:00
120	Edward	Wilson	edward836@hotmail.com	648.876.4986	8063 Tiffany Fields Apt. 036\nDawnton, HI 89746	2021-01-01 00:00:00	2021-01-01 00:00:00
121	Jeffrey	Larson	jeffrey537@hotmail.com	4119371335	60745 Frederick Throughway\nPort Whitney, ND 97912	2021-01-01 00:00:00	2021-01-01 00:00:00
122	Brandon	Moss	brandon433@gmail.com	001-913-721-5902x03828	1993 Pennington Tunnel Suite 028\nWest Jonfurt, VT 63136	2021-01-01 00:00:00	2021-01-01 00:00:00
123	Mark	Carter	mark218@hotmail.com	971.613.4959x7166	175 Johnny Trail Suite 734\nBriannaborough, FL 77230	2021-01-01 00:00:00	2021-01-01 00:00:00
124	Jessica	Hardy	jessica520@hotmail.com	+1-712-637-8587x421	8937 Moody Port\nEast Jessicaland, MO 29466	2021-01-01 00:00:00	2021-01-01 00:00:00
125	Mark	Young	mark269@gmail.com	281.951.5090	USS Henry\nFPO AP 59242	2021-01-01 00:00:00	2021-01-01 00:00:00
126	Jason	Bullock	jason526@hotmail.com	+1-551-784-7350x100	USNV Lutz\nFPO AA 28082	2021-01-01 00:00:00	2021-01-01 00:00:00
127	Jacqueline	Stanley	jacqueline084@yahoo.com	(997)270-9319	7746 Joseph Plaza Apt. 118\nLake Paul, MH 00531	2021-01-01 00:00:00	2021-01-01 00:00:00
128	Anthony	Smith	anthony601@yahoo.com	988-250-5222x22562	50020 Kemp Plains\nPort Tina, AZ 83204	2021-01-01 00:00:00	2021-01-01 00:00:00
129	Katie	Jenkins	katie649@gmail.com	(307)553-7044x543	870 Logan Islands\nSouth Kevinport, AK 62928	2021-01-01 00:00:00	2021-01-01 00:00:00
130	Jamie	West	jamie083@hotmail.com	+1-901-616-4549x352	PSC 5138, Box 5743\nAPO AA 32648	2021-01-01 00:00:00	2021-01-01 00:00:00
131	Christopher	Stafford	christopher605@gmail.com	+1-360-401-7223	8032 Jessica Forge Suite 586\nLake Justin, IN 58323	2021-01-01 00:00:00	2021-01-01 00:00:00
132	Joshua	Hinton	joshua562@yahoo.com	(212)783-1181x39662	94249 Benson Hills\nLake Danielleville, LA 72865	2021-01-01 00:00:00	2021-01-01 00:00:00
133	Grace	Manning	grace923@gmail.com	394-538-2270	344 Hill Crest\nLake Edward, PW 28704	2021-01-01 00:00:00	2021-01-01 00:00:00
134	Joseph	Sims	joseph037@yahoo.com	001-904-984-9927x62114	727 Sarah Port Apt. 238\nBrownchester, SD 48700	2021-01-01 00:00:00	2021-01-01 00:00:00
135	Kristy	Daniel	kristy090@hotmail.com	001-424-310-6146	97164 Michael Mount\nDavisside, KS 93727	2021-01-01 00:00:00	2021-01-01 00:00:00
136	Kelly	Jackson	kelly665@gmail.com	+1-620-678-0687x955	7783 Deanna Spring Suite 771\nEast Crystalfort, IL 07289	2021-01-01 00:00:00	2021-01-01 00:00:00
137	Stephanie	Mendez	stephanie392@yahoo.com	893.725.3719x842	USNV Smith\nFPO AP 92563	2021-01-01 00:00:00	2021-01-01 00:00:00
138	Douglas	Holmes	douglas153@hotmail.com	253-703-1076x5875	1578 Rebecca Shore Apt. 760\nJamiefurt, NH 66292	2021-01-01 00:00:00	2021-01-01 00:00:00
139	Linda	Vazquez	linda985@yahoo.com	615.437.0771	7747 Hawkins Island Suite 822\nEdwardfort, PW 59510	2021-01-01 00:00:00	2021-01-01 00:00:00
140	Joel	Robinson	joel427@hotmail.com	619-370-5130x37747	9455 Sims Key\nWest Jacqueline, MA 07974	2021-01-01 00:00:00	2021-01-01 00:00:00
141	John	Diaz	john891@hotmail.com	+1-221-632-3041x023	007 Lisa Vista\nNorth Philip, IA 11568	2021-01-01 00:00:00	2021-01-01 00:00:00
142	Joe	Hughes	joe698@gmail.com	+1-809-409-0862x17009	49888 Arias Dale\nAngelaton, CT 66801	2021-01-01 00:00:00	2021-01-01 00:00:00
143	Sydney	Craig	sydney624@hotmail.com	6914656144	1365 Keith Drives Suite 926\nPort Kathleen, IL 33335	2021-01-01 00:00:00	2021-01-01 00:00:00
144	Erik	Hoffman	erik799@yahoo.com	(745)340-9777	PSC 1942, Box 7080\nAPO AA 62007	2021-01-01 00:00:00	2021-01-01 00:00:00
145	Olivia	Snow	olivia674@yahoo.com	+1-255-460-3795x29169	8994 Daniel Vista\nNorth Johnland, SD 99455	2021-01-01 00:00:00	2021-01-01 00:00:00
146	Dorothy	Park	dorothy504@yahoo.com	+1-833-969-7022x828	8891 Joseph Shore\nEast Marktown, OH 58547	2021-01-01 00:00:00	2021-01-01 00:00:00
147	Stacie	James	stacie417@gmail.com	5876463344	5349 Lisa Green Suite 847\nNew Lance, MH 31639	2021-01-01 00:00:00	2021-01-01 00:00:00
148	Anita	Phillips	anita319@hotmail.com	001-371-557-3083x5841	47407 Pamela Motorway Suite 892\nSmithmouth, IA 68880	2021-01-01 00:00:00	2021-01-01 00:00:00
149	Daryl	Dunlap	daryl670@yahoo.com	(872)816-9960x2535	7814 Monica Village\nDavidshire, VT 74172	2021-01-01 00:00:00	2021-01-01 00:00:00
150	Andrea	King	andrea201@yahoo.com	859.360.9228x6396	50277 April Manor Apt. 261\nSouth Mathew, MT 46145	2021-01-01 00:00:00	2021-01-01 00:00:00
151	Penny	Gray	penny347@yahoo.com	336.480.8775x2685	93517 Bridges Terrace\nDustinburgh, NM 94860	2021-01-01 00:00:00	2021-01-01 00:00:00
152	Corey	Boyd	corey308@hotmail.com	001-929-781-3503x9031	4843 Margaret Greens\nAaronmouth, PA 03143	2021-01-01 00:00:00	2021-01-01 00:00:00
153	Kristen	Hines	kristen458@yahoo.com	001-866-741-9760x07616	6616 William Heights Apt. 645\nFrancoside, UT 52305	2021-01-01 00:00:00	2021-01-01 00:00:00
154	Brian	Hughes	brian944@hotmail.com	(955)465-1338x667	Unit 8430 Box 2310\nDPO AP 56296	2021-01-01 00:00:00	2021-01-01 00:00:00
155	Paul	Gibson	paul163@gmail.com	(430)436-9488x12457	85057 Jimenez Tunnel Suite 112\nStevenhaven, AK 93644	2021-01-01 00:00:00	2021-01-01 00:00:00
156	Patricia	Delgado	patricia738@gmail.com	001-580-640-9314x91933	35824 Cathy Knolls Apt. 058\nLindaburgh, DE 42453	2021-01-01 00:00:00	2021-01-01 00:00:00
157	Jesse	Rodriguez	jesse697@gmail.com	(636)804-2861x088	7656 Kennedy Ford Suite 321\nPort Lauramouth, OR 11709	2021-01-01 00:00:00	2021-01-01 00:00:00
158	Ruth	Clayton	ruth363@gmail.com	592-808-7454	060 Gillespie Mission\nWest Ashleytown, MN 37276	2021-01-01 00:00:00	2021-01-01 00:00:00
159	Rachel	Smith	rachel638@gmail.com	001-350-598-7666x519	6718 Riley Inlet Suite 790\nSouth Catherineville, CA 50745	2021-01-01 00:00:00	2021-01-01 00:00:00
160	Allen	Delgado	allen047@hotmail.com	001-813-625-9966x579	0532 Sherman Terrace Suite 470\nTaylorburgh, GA 36907	2021-01-01 00:00:00	2021-01-01 00:00:00
161	Olivia	Hall	olivia845@hotmail.com	797.305.3025	62092 Zachary Via Apt. 095\nDonaldfurt, NE 78426	2021-01-01 00:00:00	2021-01-01 00:00:00
162	Gerald	Obrien	gerald112@gmail.com	001-303-269-0559x786	23142 Harris Turnpike Apt. 626\nHartmanfort, MT 96917	2021-01-01 00:00:00	2021-01-01 00:00:00
163	David	Strickland	david766@gmail.com	(261)328-2811	577 Kelli Island Apt. 354\nJohntown, FM 20990	2021-01-01 00:00:00	2021-01-01 00:00:00
164	Karen	Perry	karen609@yahoo.com	504.420.6844x94200	184 Perez Plains\nRyanport, TN 62165	2021-01-01 00:00:00	2021-01-01 00:00:00
165	Andrea	Walker	andrea952@hotmail.com	001-727-532-3048x074	87804 Latoya Dale Suite 224\nEast Gregory, AK 77252	2021-01-01 00:00:00	2021-01-01 00:00:00
166	Luke	Thomas	luke967@hotmail.com	001-845-732-0017	104 Williams Shore Suite 809\nLiuborough, VI 31155	2021-01-01 00:00:00	2021-01-01 00:00:00
167	Crystal	Goodwin	crystal653@yahoo.com	892.823.9023x219	508 Williams Rapid Suite 970\nLake Jillianhaven, WA 75271	2021-01-01 00:00:00	2021-01-01 00:00:00
168	Jennifer	Perez	jennifer844@hotmail.com	841-825-5234x942	USS Woods\nFPO AA 77303	2021-01-01 00:00:00	2021-01-01 00:00:00
169	Mikayla	Ortiz	mikayla772@hotmail.com	437-856-6636x358	5042 Hamilton Walk\nNew Amberview, WI 59113	2021-01-01 00:00:00	2021-01-01 00:00:00
170	Michael	Ramos	michael775@yahoo.com	650.568.0495x04722	516 Thompson Turnpike\nFlynnstad, WI 54009	2021-01-01 00:00:00	2021-01-01 00:00:00
171	Laurie	Hernandez	laurie818@yahoo.com	+1-740-844-6071	308 Timothy Fields Suite 409\nEast Robert, ID 35074	2021-01-01 00:00:00	2021-01-01 00:00:00
172	Kevin	Moore	kevin446@yahoo.com	387-806-3275x44906	PSC 3350, Box 1230\nAPO AP 41365	2021-01-01 00:00:00	2021-01-01 00:00:00
173	David	Howard	david267@yahoo.com	(315)888-0602x22994	1771 Avila Lodge\nEast Colin, SC 80472	2021-01-01 00:00:00	2021-01-01 00:00:00
174	David	Weaver	david460@yahoo.com	993.764.2567	USNS Gomez\nFPO AA 59236	2021-01-01 00:00:00	2021-01-01 00:00:00
175	Amanda	Lynch	amanda138@yahoo.com	001-789-933-8830	PSC 2942, Box 7122\nAPO AA 18177	2021-01-01 00:00:00	2021-01-01 00:00:00
176	Donald	Henry	donald930@hotmail.com	7579546136	916 Blackburn Throughway Suite 330\nJoseburgh, NJ 45334	2021-01-01 00:00:00	2021-01-01 00:00:00
177	Linda	Thomas	linda795@gmail.com	849.833.8624x91273	7032 Parker Orchard\nColemanborough, MH 85573	2021-01-01 00:00:00	2021-01-01 00:00:00
178	Kimberly	Coleman	kimberly946@yahoo.com	001-799-640-8444x788	521 Barbara Mews Suite 364\nEast Mistyville, VI 16484	2021-01-01 00:00:00	2021-01-01 00:00:00
179	Monica	Briggs	monica980@yahoo.com	8484357086	068 Diaz Terrace Suite 012\nPort Christopher, MP 87006	2021-01-01 00:00:00	2021-01-01 00:00:00
180	Joshua	York	joshua673@hotmail.com	624.986.8413x44202	99642 Angela Falls Suite 060\nPatriciaside, OH 30311	2021-01-01 00:00:00	2021-01-01 00:00:00
181	Tyler	Payne	tyler614@yahoo.com	564.260.3611x40342	733 Hanna Rue\nNew Darrenland, DC 07255	2021-01-01 00:00:00	2021-01-01 00:00:00
182	Gary	Anderson	gary525@gmail.com	(420)716-7651	994 Evans Fall\nKimberlyview, AL 75405	2021-01-01 00:00:00	2021-01-01 00:00:00
183	Charles	Ward	charles706@yahoo.com	(958)893-5033	7886 Hebert Orchard\nEast Meghan, MN 83584	2021-01-01 00:00:00	2021-01-01 00:00:00
184	Yolanda	Baker	yolanda915@gmail.com	(671)365-9939	3449 Latoya Streets Suite 098\nEast Royville, KS 33781	2021-01-01 00:00:00	2021-01-01 00:00:00
185	Elizabeth	Pacheco	elizabeth063@yahoo.com	(906)672-4409x58205	061 Andrea Terrace\nKellyborough, VI 51256	2021-01-01 00:00:00	2021-01-01 00:00:00
186	Martha	Goodman	martha662@yahoo.com	001-471-409-5430x01932	95541 Williams Park Apt. 521\nLake Mark, OH 43568	2021-01-01 00:00:00	2021-01-01 00:00:00
187	Kathryn	Rogers	kathryn317@yahoo.com	872.792.7040	406 Willie Lodge Apt. 523\nSouth Lisamouth, HI 33603	2021-01-01 00:00:00	2021-01-01 00:00:00
188	Jeffrey	Gates	jeffrey372@gmail.com	(815)396-4636x6898	47314 Anderson Via\nSouth Angela, CO 82540	2021-01-01 00:00:00	2021-01-01 00:00:00
189	Patricia	Lowery	patricia587@gmail.com	001-636-375-7739x4138	9798 Justin Oval Suite 761\nNorth Paulchester, NC 05001	2021-01-01 00:00:00	2021-01-01 00:00:00
190	Kerry	Sharp	kerry356@hotmail.com	2094588686	20254 Kathleen Mall Apt. 772\nJennifertown, CT 82291	2021-01-01 00:00:00	2021-01-01 00:00:00
191	Nicole	Smith	nicole410@yahoo.com	(937)324-0989	58546 Gonzalez Ridges Apt. 243\nChristopherbury, VA 90171	2021-01-01 00:00:00	2021-01-01 00:00:00
192	Gina	Evans	gina144@yahoo.com	525.339.0814	72737 Anthony Fields\nSydneyview, MT 87858	2021-01-01 00:00:00	2021-01-01 00:00:00
193	Darlene	Hopkins	darlene144@gmail.com	+1-934-593-9692	54774 Hannah Cape Suite 983\nHamptonbury, PW 24918	2021-01-01 00:00:00	2021-01-01 00:00:00
194	Walter	Hart	walter887@yahoo.com	865-286-8588x30348	78625 Jackson Forge Suite 671\nHoweville, PW 89529	2021-01-01 00:00:00	2021-01-01 00:00:00
195	Kristin	Huynh	kristin090@hotmail.com	001-297-289-8341x53967	0683 James Road\nPort Robert, DE 86507	2021-01-01 00:00:00	2021-01-01 00:00:00
196	David	Madden	david598@yahoo.com	858.573.4174	632 Sandoval Crossing\nPort Kevin, DC 35583	2021-01-01 00:00:00	2021-01-01 00:00:00
197	Grace	Hill	grace234@gmail.com	+1-205-662-0255x98831	36924 Phillips Throughway Apt. 467\nAnthonyburgh, NE 88975	2021-01-01 00:00:00	2021-01-01 00:00:00
198	Jessica	Duran	jessica252@gmail.com	+1-421-730-8601x063	9739 Brian Drive\nOrtizstad, ND 13632	2021-01-01 00:00:00	2021-01-01 00:00:00
199	Eric	Montgomery	eric200@gmail.com	+1-668-301-0229x71071	046 Jessica Groves\nDavishaven, UT 20845	2021-01-01 00:00:00	2021-01-01 00:00:00
200	Leslie	Harris	leslie783@gmail.com	001-592-266-6965x2197	0105 Brown Tunnel Suite 037\nNorth Heatherstad, NV 50026	2021-01-01 00:00:00	2021-01-01 00:00:00
201	Mary	Black	mary214@yahoo.com	001-850-586-2948x5237	590 Erica Gardens\nSouth Shannonshire, WI 94809	2021-01-01 00:00:00	2021-01-01 00:00:00
202	Shelby	Alvarado	shelby589@gmail.com	655-993-0409	177 Long Coves\nEast Stevenport, IA 39159	2021-01-01 00:00:00	2021-01-01 00:00:00
203	Ashley	Figueroa	ashley202@gmail.com	+1-761-510-1231	20335 James Turnpike\nGregoryburgh, WA 33702	2021-01-01 00:00:00	2021-01-01 00:00:00
204	Sandra	Baker	sandra187@hotmail.com	460.984.4835x9612	377 Dawn Ways Suite 948\nEast Patricia, VA 68441	2021-01-01 00:00:00	2021-01-01 00:00:00
205	Susan	Lee	susan100@hotmail.com	(966)327-7660x31700	8908 Salinas Mills Apt. 655\nLake James, TX 06332	2021-01-01 00:00:00	2021-01-01 00:00:00
206	Kelly	Peters	kelly301@gmail.com	891-413-4212	97253 Johns Lock\nPort Brittany, IN 12833	2021-01-01 00:00:00	2021-01-01 00:00:00
207	Desiree	Powell	desiree689@gmail.com	+1-639-250-3064	006 Jason Pass\nPort Marktown, OR 84452	2021-01-01 00:00:00	2021-01-01 00:00:00
208	Leslie	Jackson	leslie346@yahoo.com	001-820-605-1044x84159	2507 Boyd Vista Apt. 993\nSusanmouth, PR 19048	2021-01-01 00:00:00	2021-01-01 00:00:00
209	Marie	Pratt	marie585@gmail.com	700.608.8735x1361	959 Williams Landing\nSouth Ericmouth, IL 04697	2021-01-01 00:00:00	2021-01-01 00:00:00
210	Kristen	Hill	kristen202@gmail.com	274-377-4939x02704	Unit 6351 Box 6483\nDPO AP 75983	2021-01-01 00:00:00	2021-01-01 00:00:00
211	Stephen	Hunter	stephen739@hotmail.com	+1-953-863-9751x292	778 Mccormick Isle\nKylemouth, KS 43284	2021-01-01 00:00:00	2021-01-01 00:00:00
212	William	Thomas	william593@yahoo.com	001-736-670-2843x04628	PSC 3832, Box 1286\nAPO AE 97399	2021-01-01 00:00:00	2021-01-01 00:00:00
213	Brittany	Woods	brittany590@yahoo.com	001-715-992-1498x59713	9283 Paul Lodge\nEast Jacobchester, GU 62130	2021-01-01 00:00:00	2021-01-01 00:00:00
214	Ian	Palmer	ian487@yahoo.com	(768)432-7913	6243 Perkins Crescent\nNew Joshuafurt, PW 54407	2021-01-01 00:00:00	2021-01-01 00:00:00
215	Traci	Torres	traci626@gmail.com	2785770772	389 George Bridge Suite 501\nEast Chris, WA 66708	2021-01-01 00:00:00	2021-01-01 00:00:00
216	David	Brewer	david813@hotmail.com	5895387843	453 Carl Burg Apt. 181\nWest Alvin, NM 57774	2021-01-01 00:00:00	2021-01-01 00:00:00
217	Lisa	Hampton	lisa536@hotmail.com	624-470-1282x70516	845 Mario Grove\nEast Ashleyberg, TN 30996	2021-01-01 00:00:00	2021-01-01 00:00:00
218	Joseph	Martin	joseph170@hotmail.com	951.883.1898	6491 Smith Course Apt. 478\nWest Jodyside, SC 09474	2021-01-01 00:00:00	2021-01-01 00:00:00
219	Barbara	Wiggins	barbara412@hotmail.com	384.450.5482x9025	48578 Susan Rue\nSouth Karenberg, IN 18529	2021-01-01 00:00:00	2021-01-01 00:00:00
220	Daniel	Mccormick	daniel524@yahoo.com	001-367-811-0530	1496 Alyssa Tunnel\nAustinshire, MS 36974	2021-01-01 00:00:00	2021-01-01 00:00:00
221	Michael	Randolph	michael513@hotmail.com	+1-249-706-4132x9860	12902 Payne Divide\nWilliamfort, MP 57941	2021-01-01 00:00:00	2021-01-01 00:00:00
222	Nicolas	Jackson	nicolas697@yahoo.com	321.876.6435	1066 Diana Lodge\nCynthialand, NJ 46818	2021-01-01 00:00:00	2021-01-01 00:00:00
223	Jennifer	Gardner	jennifer130@yahoo.com	+1-853-314-5392x32261	PSC 5923, Box 7884\nAPO AP 14089	2021-01-01 00:00:00	2021-01-01 00:00:00
224	David	Deleon	david187@gmail.com	+1-790-926-4882x7083	922 Warner Light Suite 660\nJesusshire, NE 13098	2021-01-01 00:00:00	2021-01-01 00:00:00
225	Yvette	Roy	yvette465@hotmail.com	(746)599-9119x06563	75823 Webb Mills Apt. 775\nMauricetown, FL 48901	2021-01-01 00:00:00	2021-01-01 00:00:00
226	Susan	Thomas	susan063@hotmail.com	001-978-309-3386x7978	3644 Franklin Mill\nRussoville, VA 91304	2021-01-01 00:00:00	2021-01-01 00:00:00
227	Michael	Green	michael171@yahoo.com	845.657.5600x16989	104 Anna Spurs Apt. 962\nCampostown, MN 18461	2021-01-01 00:00:00	2021-01-01 00:00:00
228	Jeffrey	Kim	jeffrey325@gmail.com	001-676-690-2530x5546	937 Guzman Expressway\nMartinshire, MT 00685	2021-01-01 00:00:00	2021-01-01 00:00:00
229	Ashlee	Williams	ashlee202@gmail.com	846.929.7916x1980	81857 Bryant Terrace\nSouth Richard, DC 30092	2021-01-01 00:00:00	2021-01-01 00:00:00
230	Andrew	Mann	andrew445@gmail.com	(504)663-1373x8561	2158 Davis Lodge\nNorth Johnville, AR 65947	2021-01-01 00:00:00	2021-01-01 00:00:00
231	Christopher	Villarreal	christopher162@hotmail.com	+1-752-361-7675x4657	Unit 5499 Box 6103\nDPO AE 08975	2021-01-01 00:00:00	2021-01-01 00:00:00
232	Elizabeth	Rivera	elizabeth551@hotmail.com	2322461966	2541 Turner Fort Apt. 362\nAndreaton, OH 97008	2021-01-01 00:00:00	2021-01-01 00:00:00
233	Debbie	Carlson	debbie526@hotmail.com	418-737-4591x49995	62433 Maria Port Suite 742\nRyanville, WA 36745	2021-01-01 00:00:00	2021-01-01 00:00:00
234	Julie	Wang	julie459@yahoo.com	261.629.1862	739 Ann Walk Suite 964\nSouth Sarahtown, TX 11489	2021-01-01 00:00:00	2021-01-01 00:00:00
235	John	Walsh	john580@hotmail.com	475-657-2313	515 Todd Shoals Apt. 467\nWest Anthonyville, CA 34577	2021-01-01 00:00:00	2021-01-01 00:00:00
236	James	Gillespie	james533@gmail.com	207.904.5383x82078	118 Juan Drives Apt. 359\nLeeside, KS 95607	2021-01-01 00:00:00	2021-01-01 00:00:00
237	Kayla	Strong	kayla372@gmail.com	001-901-652-8404	886 John View\nJamesfort, MD 15221	2021-01-01 00:00:00	2021-01-01 00:00:00
238	Alexa	Navarro	alexa535@gmail.com	891.623.5791x89523	27943 Tran Points Apt. 753\nMyersville, RI 96593	2021-01-01 00:00:00	2021-01-01 00:00:00
239	Paul	Cook	paul595@yahoo.com	386.434.6594x22741	269 Ashley Ranch\nNew Kevinton, IL 60724	2021-01-01 00:00:00	2021-01-01 00:00:00
240	Mark	Powell	mark080@yahoo.com	760-848-2359x092	4658 Cindy Burgs Suite 175\nWarrenton, MP 73512	2021-01-01 00:00:00	2021-01-01 00:00:00
241	Amanda	Smith	amanda267@gmail.com	001-332-206-7867x79406	7283 Lane Garden Apt. 729\nDoughertyshire, SC 09220	2021-01-01 00:00:00	2021-01-01 00:00:00
242	Wendy	Mack	wendy309@gmail.com	001-566-297-0772x285	07653 Smith Road Apt. 212\nDonovanstad, FM 63524	2021-01-01 00:00:00	2021-01-01 00:00:00
243	Julie	Cohen	julie828@gmail.com	001-413-974-8879	12472 Smith Flats Suite 839\nJeremyport, MH 98781	2021-01-01 00:00:00	2021-01-01 00:00:00
244	Vincent	Huang	vincent382@hotmail.com	001-268-358-3157x5402	0004 Reynolds Trail Apt. 588\nWest Vincentmouth, SC 05437	2021-01-01 00:00:00	2021-01-01 00:00:00
245	Jerry	Farmer	jerry904@hotmail.com	970.594.4632x397	37779 Morgan Harbor\nPort Jamie, OK 67617	2021-01-01 00:00:00	2021-01-01 00:00:00
246	Michelle	Bates	michelle068@yahoo.com	512.244.2489x639	1740 Vicki Cliff\nFloresmouth, RI 56460	2021-01-01 00:00:00	2021-01-01 00:00:00
247	Heather	Martinez	heather401@hotmail.com	001-908-488-7994x7388	923 Denise Mill Suite 587\nKnighthaven, PR 02899	2021-01-01 00:00:00	2021-01-01 00:00:00
248	Autumn	Rodriguez	autumn009@hotmail.com	4469620508	428 William Fort\nWest Amy, KS 70163	2021-01-01 00:00:00	2021-01-01 00:00:00
249	Jennifer	Whitaker	jennifer791@hotmail.com	694-719-7741x422	082 Jackson Course Suite 576\nJustinview, TX 84033	2021-01-01 00:00:00	2021-01-01 00:00:00
250	Kenneth	Frazier	kenneth256@yahoo.com	+1-378-381-1999	105 Hill Mount Suite 206\nNorth Courtney, OK 55298	2021-01-01 00:00:00	2021-01-01 00:00:00
251	Lisa	Jones	lisa427@hotmail.com	489.699.8629x842	552 Kayla Points Apt. 226\nYvettestad, NC 00552	2021-01-01 00:00:00	2021-01-01 00:00:00
252	Patricia	Smith	patricia923@gmail.com	211-246-4014x967	Unit 7059 Box 6310\nDPO AE 49050	2021-01-01 00:00:00	2021-01-01 00:00:00
253	Stephanie	James	stephanie241@gmail.com	(484)798-6957x54557	51815 Scott Ridge\nEast Benjamin, DC 09951	2021-01-01 00:00:00	2021-01-01 00:00:00
254	Stephanie	Thomas	stephanie210@gmail.com	001-423-806-5013x5400	3420 Ewing Course Apt. 023\nBensonberg, RI 28477	2021-01-01 00:00:00	2021-01-01 00:00:00
255	Amber	Little	amber392@gmail.com	+1-319-332-6516x9633	86928 Kyle Prairie Apt. 135\nSouth Jacob, KY 75936	2021-01-01 00:00:00	2021-01-01 00:00:00
256	Thomas	Gallagher	thomas672@yahoo.com	3784791301	964 Danny Locks\nAngelaside, UT 08103	2021-01-01 00:00:00	2021-01-01 00:00:00
257	Kevin	Rodriguez	kevin313@hotmail.com	543.628.8546	USS Zimmerman\nFPO AE 22191	2021-01-01 00:00:00	2021-01-01 00:00:00
258	Tammy	Elliott	tammy627@gmail.com	325.897.7528x01371	5444 Williams Rapid Suite 328\nAprilburgh, VI 75997	2021-01-01 00:00:00	2021-01-01 00:00:00
259	Michael	Stone	michael292@gmail.com	341-427-7335x858	196 Hurley Dam\nCrystalmouth, PR 32118	2021-01-01 00:00:00	2021-01-01 00:00:00
260	Chloe	Tate	chloe260@gmail.com	001-664-914-1381x445	623 Smith Grove Apt. 386\nTrujilloland, TX 01595	2021-01-01 00:00:00	2021-01-01 00:00:00
261	Jason	Gutierrez	jason471@hotmail.com	6054747640	126 Ian Street\nChadfurt, NY 22991	2021-01-01 00:00:00	2021-01-01 00:00:00
262	Kimberly	Green	kimberly106@hotmail.com	541.995.9662x7692	8595 Christopher Tunnel Suite 981\nCooperton, MT 54331	2021-01-01 00:00:00	2021-01-01 00:00:00
263	Robert	Padilla	robert595@hotmail.com	515.785.2301x166	80304 Crystal Crossing Suite 378\nGallagherton, NY 21341	2021-01-01 00:00:00	2021-01-01 00:00:00
264	Tracy	Riley	tracy622@hotmail.com	+1-748-489-4238x22012	PSC 1410, Box 5868\nAPO AP 49569	2021-01-01 00:00:00	2021-01-01 00:00:00
265	Mindy	Ortega	mindy903@yahoo.com	780.686.8235	4026 Thomas Motorway\nLake Michaelshire, VT 68474	2021-01-01 00:00:00	2021-01-01 00:00:00
266	Zachary	Quinn	zachary659@yahoo.com	001-361-584-5634	16021 Ashley Mountains Apt. 302\nKatelynbury, VT 67744	2021-01-01 00:00:00	2021-01-01 00:00:00
267	John	Obrien	john263@yahoo.com	+1-241-323-8728x9775	5739 Wilkinson Divide\nPort Tylerport, ND 58871	2021-01-01 00:00:00	2021-01-01 00:00:00
268	Breanna	Sandoval	breanna705@gmail.com	7235694463	129 Adam Drives Suite 476\nPort Douglasside, RI 30219	2021-01-01 00:00:00	2021-01-01 00:00:00
269	Jose	Williams	jose821@hotmail.com	866-365-4228x800	4687 Yoder Road\nLake Williamhaven, NY 98305	2021-01-01 00:00:00	2021-01-01 00:00:00
270	Kathleen	Roach	kathleen705@hotmail.com	001-952-293-5618x3550	1957 Smith Place Suite 286\nLake Stephaniefurt, WA 44648	2021-01-01 00:00:00	2021-01-01 00:00:00
271	Scott	Allen	scott419@hotmail.com	001-978-499-2975x54490	PSC 5330, Box 8578\nAPO AE 46647	2021-01-01 00:00:00	2021-01-01 00:00:00
272	Corey	Oconnell	corey846@hotmail.com	001-771-696-3177x648	27864 Jillian Tunnel\nNorrisview, NH 96066	2021-01-01 00:00:00	2021-01-01 00:00:00
273	Johnathan	Simon	johnathan531@gmail.com	958-809-0092	603 Gonzalez Parkways Apt. 917\nWest Andrew, NY 28999	2021-01-01 00:00:00	2021-01-01 00:00:00
274	Mary	Miller	mary468@gmail.com	751-788-8012	734 Carter Field\nPort Tiffanytown, NC 48009	2021-01-01 00:00:00	2021-01-01 00:00:00
275	Evan	Mendoza	evan147@gmail.com	+1-457-713-3800x277	USNV Clarke\nFPO AA 89537	2021-01-01 00:00:00	2021-01-01 00:00:00
276	Danny	Wood	danny088@gmail.com	001-668-346-0689x228	644 Tran Fort\nDelgadohaven, MT 53638	2021-01-01 00:00:00	2021-01-01 00:00:00
277	Rachel	Willis	rachel770@gmail.com	833-837-5805x96136	1021 Eaton Ridges\nEast Jessicafurt, NE 65276	2021-01-01 00:00:00	2021-01-01 00:00:00
278	Walter	Mccall	walter122@hotmail.com	001-874-907-7862x81550	968 Andrew Square Apt. 351\nNorth Jessicastad, IN 34441	2021-01-01 00:00:00	2021-01-01 00:00:00
279	Gregory	Simon	gregory976@gmail.com	520-772-5468	6700 Scott Canyon Apt. 668\nMcbridestad, VA 41387	2021-01-01 00:00:00	2021-01-01 00:00:00
280	Cynthia	Whitaker	cynthia812@gmail.com	600.453.9300x27483	9537 Hanson Spurs\nColliershire, TX 12759	2021-01-01 00:00:00	2021-01-01 00:00:00
281	Amy	Reed	amy039@hotmail.com	001-655-786-5942x16158	6335 Brandi Hills Suite 858\nWest Stephanietown, PA 92789	2021-01-01 00:00:00	2021-01-01 00:00:00
282	Ivan	Flores	ivan748@gmail.com	469-927-0883	010 Adrian Circles Suite 374\nSeanmouth, MN 03826	2021-01-01 00:00:00	2021-01-01 00:00:00
283	Christine	Hubbard	christine532@gmail.com	+1-664-218-5488x804	605 Crystal Brooks Suite 135\nGordontown, RI 64357	2021-01-01 00:00:00	2021-01-01 00:00:00
284	Shane	Parks	shane571@yahoo.com	221.798.3973x43062	USNS Moore\nFPO AP 45529	2021-01-01 00:00:00	2021-01-01 00:00:00
285	Bradley	Carpenter	bradley366@hotmail.com	818-714-7043x2937	429 Wilson Key\nSouth Antonio, AK 35660	2021-01-01 00:00:00	2021-01-01 00:00:00
286	Brianna	Johnson	brianna136@yahoo.com	001-740-369-9464	364 Austin Estate Apt. 292\nNorth Rachel, AR 08501	2021-01-01 00:00:00	2021-01-01 00:00:00
287	Laura	Downs	laura539@gmail.com	976.498.4902	29142 Jackson Valleys Suite 057\nChandlertown, NJ 45633	2021-01-01 00:00:00	2021-01-01 00:00:00
288	Brandi	Fernandez	brandi454@gmail.com	001-566-579-3436x83290	4748 Gabriel Dam\nLake Nicoleville, ND 71280	2021-01-01 00:00:00	2021-01-01 00:00:00
289	Nicole	Hall	nicole223@yahoo.com	(947)982-3064x5063	87580 Hamilton Avenue Suite 047\nJoyceport, VA 29025	2021-01-01 00:00:00	2021-01-01 00:00:00
290	Christopher	Bauer	christopher024@yahoo.com	322-912-5183x11739	97944 Ford Street Suite 100\nNorth Jesusbury, MP 56753	2021-01-01 00:00:00	2021-01-01 00:00:00
291	Wesley	Arellano	wesley897@hotmail.com	277.342.9215x81497	51730 Brenda Light\nMorgantown, TX 97063	2021-01-01 00:00:00	2021-01-01 00:00:00
292	Christopher	Washington	christopher057@gmail.com	+1-582-686-0851x026	824 White Lakes\nPort Ritaville, WI 59964	2021-01-01 00:00:00	2021-01-01 00:00:00
293	Jerome	Phillips	jerome186@yahoo.com	001-363-904-0167x372	412 Ramos Lakes Suite 538\nNorth Phyllisshire, IN 86850	2021-01-01 00:00:00	2021-01-01 00:00:00
294	Vincent	Reynolds	vincent893@gmail.com	671.615.1375x0388	838 White Crescent\nLisaview, NC 16826	2021-01-01 00:00:00	2021-01-01 00:00:00
295	Alan	Newton	alan441@yahoo.com	348-233-1542	761 Jennifer Turnpike Suite 659\nWest Cheryl, IA 13678	2021-01-01 00:00:00	2021-01-01 00:00:00
296	Robert	Sanford	robert210@hotmail.com	(280)933-8643x578	5468 Matthew Green\nRichardport, MT 11738	2021-01-01 00:00:00	2021-01-01 00:00:00
297	Shaun	Shaffer	shaun637@gmail.com	251-294-7438x38289	338 David Tunnel Suite 886\nPort Amyborough, FM 66849	2021-01-01 00:00:00	2021-01-01 00:00:00
298	Kimberly	Castillo	kimberly020@hotmail.com	719.991.9579x684	Unit 2645 Box 0173\nDPO AP 20085	2021-01-01 00:00:00	2021-01-01 00:00:00
299	Garrett	Hahn	garrett381@hotmail.com	001-472-503-2903x643	70964 Cooper Brook\nLake Tara, MI 55394	2021-01-01 00:00:00	2021-01-01 00:00:00
300	Jaime	Harvey	jaime789@gmail.com	+1-365-676-8279x50698	94804 Johnson Plains Suite 731\nPort Tammystad, PA 56500	2021-01-01 00:00:00	2021-01-01 00:00:00
301	Jennifer	Griffith	jennifer649@yahoo.com	(269)987-6897x32724	PSC 5060, Box 3404\nAPO AE 05789	2021-01-01 00:00:00	2021-01-01 00:00:00
302	James	Fischer	james050@hotmail.com	652-640-4036x95447	155 Scott Inlet Suite 007\nNew Tammy, MD 54574	2021-01-01 00:00:00	2021-01-01 00:00:00
303	John	Dawson	john080@gmail.com	2349079372	PSC 0983, Box 9861\nAPO AA 70059	2021-01-01 00:00:00	2021-01-01 00:00:00
304	Paul	Ramirez	paul760@gmail.com	896.656.4216x6720	15287 Debbie Inlet\nLake Amberport, MD 58619	2021-01-01 00:00:00	2021-01-01 00:00:00
305	Tony	Gutierrez	tony597@gmail.com	+1-525-628-2432	57437 Michael Meadow\nRyanmouth, LA 84434	2021-01-01 00:00:00	2021-01-01 00:00:00
306	Krystal	Graham	krystal095@gmail.com	(716)519-4658x63504	3723 Alexander Glens Apt. 180\nStephanieburgh, ND 64156	2021-01-01 00:00:00	2021-01-01 00:00:00
307	Kellie	Young	kellie316@gmail.com	(388)357-7291	587 Martinez Rue\nSmithbury, NY 15670	2021-01-01 00:00:00	2021-01-01 00:00:00
308	Allen	Adams	allen184@hotmail.com	488-438-8593	94352 Michelle Islands Suite 815\nAndersonville, TX 98171	2021-01-01 00:00:00	2021-01-01 00:00:00
309	Stephanie	Becker	stephanie109@yahoo.com	(674)965-5602x0569	2796 Martin Square Suite 798\nSandraburgh, OH 91902	2021-01-01 00:00:00	2021-01-01 00:00:00
310	Tracy	Arias	tracy544@yahoo.com	001-514-922-3973	Unit 4832 Box 1415\nDPO AA 07715	2021-01-01 00:00:00	2021-01-01 00:00:00
311	Molly	Wilkerson	molly730@hotmail.com	001-383-725-1300x4685	916 Amanda Mountains Suite 762\nWest Juliestad, NM 91736	2021-01-01 00:00:00	2021-01-01 00:00:00
312	Sean	Ali	sean441@gmail.com	(325)775-0850x69436	48177 Brown Ways\nHernandezfurt, OR 99598	2021-01-01 00:00:00	2021-01-01 00:00:00
313	Susan	Peterson	susan342@gmail.com	273.428.3829x29831	5145 James Cove Apt. 825\nNorth John, MD 89649	2021-01-01 00:00:00	2021-01-01 00:00:00
314	Rachel	Brown	rachel809@gmail.com	(665)649-1424	02383 Thomas Mount Apt. 653\nLake Heathershire, NY 99611	2021-01-01 00:00:00	2021-01-01 00:00:00
315	Michelle	Cuevas	michelle143@hotmail.com	(713)814-1150x090	2668 Megan Junction Apt. 195\nLake Anthony, ND 14976	2021-01-01 00:00:00	2021-01-01 00:00:00
316	Lisa	Kim	lisa010@gmail.com	(793)616-0991x68053	50810 Taylor Rapid\nConnorton, MN 75926	2021-01-01 00:00:00	2021-01-01 00:00:00
317	Michael	Robles	michael000@gmail.com	+1-336-213-1088x5839	67424 Robinson Cape\nAustinborough, ID 29273	2021-01-01 00:00:00	2021-01-01 00:00:00
318	Joe	Brown	joe942@gmail.com	733.698.5243x2246	386 Robert Ways\nLake Bryanchester, DE 14050	2021-01-01 00:00:00	2021-01-01 00:00:00
319	Jennifer	Hill	jennifer452@hotmail.com	830-817-5061	773 Villanueva Unions Apt. 513\nWest Carlamouth, MH 21271	2021-01-01 00:00:00	2021-01-01 00:00:00
320	Amanda	Vasquez	amanda775@gmail.com	+1-415-214-9576x330	81740 Thomas Shores Suite 750\nEricafort, NH 60357	2021-01-01 00:00:00	2021-01-01 00:00:00
321	Tina	Glenn	tina314@hotmail.com	001-876-594-3436x5001	324 Mann Fall\nBrittanymouth, OK 84431	2021-01-01 00:00:00	2021-01-01 00:00:00
322	Carolyn	Leblanc	carolyn360@gmail.com	851-262-8698x348	141 Eric Pass\nHartmanberg, FL 28458	2021-01-01 00:00:00	2021-01-01 00:00:00
323	Matthew	Green	matthew462@gmail.com	001-455-414-2848x21900	462 John Isle Suite 538\nLake Shawn, MT 45164	2021-01-01 00:00:00	2021-01-01 00:00:00
324	Jennifer	Fisher	jennifer913@hotmail.com	540-618-4977x8758	16143 Tanya Canyon Suite 863\nWest Brett, WA 90207	2021-01-01 00:00:00	2021-01-01 00:00:00
325	Timothy	Stewart	timothy184@hotmail.com	(322)683-7278	0637 Susan Throughway Suite 252\nNorth Kendra, WI 56129	2021-01-01 00:00:00	2021-01-01 00:00:00
326	Greg	Townsend	greg466@yahoo.com	682-932-0683	235 Andrew Knolls Suite 500\nDavidburgh, NH 81458	2021-01-01 00:00:00	2021-01-01 00:00:00
327	Michelle	Simpson	michelle790@hotmail.com	216.630.4443x2600	07213 Melanie Squares Apt. 072\nSouth Sabrinashire, VA 91725	2021-01-01 00:00:00	2021-01-01 00:00:00
328	Laura	Davis	laura943@gmail.com	807.305.6561	90962 Gomez Forest\nMannfurt, MA 56310	2021-01-01 00:00:00	2021-01-01 00:00:00
329	Jonathan	Carlson	jonathan252@yahoo.com	914-465-6971x4431	871 Martinez Passage\nPort Alyssa, NV 33074	2021-01-01 00:00:00	2021-01-01 00:00:00
330	Jason	Cunningham	jason121@gmail.com	(289)495-8499x5994	32495 Martinez Light Apt. 294\nVeronicaport, VI 30632	2021-01-01 00:00:00	2021-01-01 00:00:00
331	Kevin	Sanders	kevin059@hotmail.com	001-428-940-2232	33194 Samantha Views\nHessberg, DC 18816	2021-01-01 00:00:00	2021-01-01 00:00:00
332	Amber	Simmons	amber095@gmail.com	929-768-8661x87725	5249 Briggs Passage Suite 254\nNew Ashleymouth, WY 24841	2021-01-01 00:00:00	2021-01-01 00:00:00
333	Beth	Bryant	beth378@gmail.com	802.376.9011x69149	3765 Christopher Fords\nNew Ann, NC 06783	2021-01-01 00:00:00	2021-01-01 00:00:00
334	Peter	Jacobs	peter618@gmail.com	(798)878-7295	83606 Bradley Spring\nLuisburgh, OH 77948	2021-01-01 00:00:00	2021-01-01 00:00:00
335	Joshua	Jones	joshua159@yahoo.com	7896775188	45241 Thomas Manors Suite 185\nEast Steven, AL 40500	2021-01-01 00:00:00	2021-01-01 00:00:00
336	David	Williams	david998@hotmail.com	001-396-926-7172x78869	153 Joe Bypass\nNorth Rebeccamouth, OK 50160	2021-01-01 00:00:00	2021-01-01 00:00:00
337	Phillip	Jones	phillip914@yahoo.com	+1-345-384-7983x175	USS Lyons\nFPO AP 38839	2021-01-01 00:00:00	2021-01-01 00:00:00
338	Elizabeth	Collins	elizabeth681@yahoo.com	001-760-864-1235	0871 Audrey Keys Apt. 128\nGutierrezmouth, GA 09738	2021-01-01 00:00:00	2021-01-01 00:00:00
339	Natalie	Duncan	natalie564@yahoo.com	286.241.6713x4991	663 Pamela Freeway Apt. 096\nWrightport, PA 71919	2021-01-01 00:00:00	2021-01-01 00:00:00
340	Chad	Dixon	chad133@gmail.com	789.636.3776x661	68844 Garcia Station\nNorth Tyler, DE 98433	2021-01-01 00:00:00	2021-01-01 00:00:00
341	Nicole	Williams	nicole410@yahoo.com	(300)453-8899	5218 Julie Light\nStewartbury, DC 42395	2021-01-01 00:00:00	2021-01-01 00:00:00
342	Bradley	Brooks	bradley449@yahoo.com	643-509-5797	6544 Mcdonald Pass Suite 007\nLake Richard, DE 49803	2021-01-01 00:00:00	2021-01-01 00:00:00
343	Tasha	Thomas	tasha971@gmail.com	851-945-4104	981 Scott Forge Apt. 769\nPatrickmouth, WA 08672	2021-01-01 00:00:00	2021-01-01 00:00:00
344	Paul	Duke	paul254@hotmail.com	338.343.0495x9659	462 Hendrix Gateway\nPort Melissa, PW 43021	2021-01-01 00:00:00	2021-01-01 00:00:00
345	Kyle	Parker	kyle831@yahoo.com	354-485-5551	66243 John Locks\nGabrielleberg, IA 84584	2021-01-01 00:00:00	2021-01-01 00:00:00
346	Jerome	Yang	jerome131@hotmail.com	(613)648-3686	491 Scott Parkway Apt. 604\nToddville, FM 57930	2021-01-01 00:00:00	2021-01-01 00:00:00
347	Travis	Anderson	travis632@hotmail.com	942.444.9812	944 Best Square Suite 960\nMahoneyfurt, MD 17672	2021-01-01 00:00:00	2021-01-01 00:00:00
348	Betty	Thomas	betty705@hotmail.com	(700)830-2654x54672	7203 Haley Brook\nEast Shelbystad, MN 54688	2021-01-01 00:00:00	2021-01-01 00:00:00
349	Noah	Camacho	noah748@gmail.com	001-969-864-2500	USNS King\nFPO AE 25247	2021-01-01 00:00:00	2021-01-01 00:00:00
350	Jacob	Barnes	jacob053@gmail.com	001-606-603-0476x45822	0829 Nicholas Centers Suite 104\nKimberlyview, KS 07648	2021-01-01 00:00:00	2021-01-01 00:00:00
351	Angela	Taylor	angela186@yahoo.com	(275)521-3079	8542 Keith Passage\nNorth Jeffreyton, SC 13967	2021-01-01 00:00:00	2021-01-01 00:00:00
352	Jean	Herman	jean809@gmail.com	634.430.0782x019	981 Jonathan Plains\nSouth Cynthia, MN 72651	2021-01-01 00:00:00	2021-01-01 00:00:00
353	Carlos	Maldonado	carlos588@yahoo.com	(476)711-2815x5905	86646 Julia Burg\nWest Michael, NV 74834	2021-01-01 00:00:00	2021-01-01 00:00:00
354	Justin	Webster	justin222@gmail.com	350-593-9939x77012	73032 Colin Shoal Apt. 711\nHartborough, FL 47604	2021-01-01 00:00:00	2021-01-01 00:00:00
355	Troy	Johnson	troy540@hotmail.com	(986)753-4182	813 Kelsey Isle Suite 249\nPort Kevinland, PW 38885	2021-01-01 00:00:00	2021-01-01 00:00:00
356	David	Hernandez	david075@yahoo.com	790.812.9416	262 Simpson Mission Apt. 273\nNew Kathleen, MS 99145	2021-01-01 00:00:00	2021-01-01 00:00:00
357	Antonio	Reynolds	antonio647@hotmail.com	+1-310-536-1259	32160 Williams Turnpike\nKayleetown, NH 72007	2021-01-01 00:00:00	2021-01-01 00:00:00
358	Daniel	Lewis	daniel786@gmail.com	386.546.4420	4157 Frank Motorway Suite 270\nEllisonshire, FL 61248	2021-01-01 00:00:00	2021-01-01 00:00:00
359	Timothy	Thompson	timothy707@hotmail.com	209-682-2499x739	4057 Cobb Mountains Apt. 385\nSheltonmouth, SD 53631	2021-01-01 00:00:00	2021-01-01 00:00:00
360	Bonnie	Bryant	bonnie785@gmail.com	(501)463-9973x7540	641 Moore Fort\nTurnerfort, HI 24951	2021-01-01 00:00:00	2021-01-01 00:00:00
361	Charles	Ramos	charles381@gmail.com	(605)769-7540x50921	2375 Nelson Trail Suite 672\nTinahaven, HI 78132	2021-01-01 00:00:00	2021-01-01 00:00:00
362	April	Boyle	april361@yahoo.com	704.735.3521x499	676 Smith Village Suite 163\nWest Randy, WA 89585	2021-01-01 00:00:00	2021-01-01 00:00:00
363	Natalie	Nash	natalie689@yahoo.com	(764)816-2660x185	4500 Patel Springs\nSouth Austin, NJ 94861	2021-01-01 00:00:00	2021-01-01 00:00:00
364	Maria	Jones	maria898@hotmail.com	647-396-7937x5431	751 Timothy Squares Apt. 165\nAshleyshire, SD 64289	2021-01-01 00:00:00	2021-01-01 00:00:00
365	Michelle	Lopez	michelle654@yahoo.com	9158208560	3324 Henry Park Apt. 425\nWest Loriport, AK 71185	2021-01-01 00:00:00	2021-01-01 00:00:00
366	Sara	Kerr	sara648@gmail.com	317.307.6745x699	7315 Stewart Haven Suite 102\nNorth Brandon, MT 38667	2021-01-01 00:00:00	2021-01-01 00:00:00
367	Kimberly	Barnes	kimberly382@yahoo.com	001-824-796-1971	PSC 2436, Box 3704\nAPO AE 28491	2021-01-01 00:00:00	2021-01-01 00:00:00
368	Angel	Frazier	angel267@yahoo.com	662.437.1961x03205	460 Jackie Coves\nKyleport, MN 59996	2021-01-01 00:00:00	2021-01-01 00:00:00
369	Andrew	Robinson	andrew072@hotmail.com	001-335-937-8250x745	47690 Wilson Tunnel Suite 526\nPort Carrie, OR 57958	2021-01-01 00:00:00	2021-01-01 00:00:00
370	Diane	Hayden	diane302@hotmail.com	486-432-9504x3560	82331 Moore Skyway Apt. 175\nMartinville, MT 76343	2021-01-01 00:00:00	2021-01-01 00:00:00
371	Marcia	Jones	marcia590@gmail.com	+1-700-525-0089x14515	813 House Creek Apt. 341\nWest Pamela, OH 85126	2021-01-01 00:00:00	2021-01-01 00:00:00
372	Patricia	Smith	patricia499@yahoo.com	430.447.8511x95804	304 Cooper Hills\nEast Michealside, WY 31322	2021-01-01 00:00:00	2021-01-01 00:00:00
373	Clinton	Allison	clinton909@hotmail.com	001-955-859-9496x518	1210 Kaitlyn Passage\nHowardport, GA 36513	2021-01-01 00:00:00	2021-01-01 00:00:00
374	Jacob	King	jacob955@yahoo.com	(775)490-7899	18305 Emily Crest\nPort Kathrynmouth, VT 83029	2021-01-01 00:00:00	2021-01-01 00:00:00
375	Mitchell	Johnson	mitchell715@yahoo.com	567.635.3092x63745	889 Jones Skyway\nLake Peterview, PR 77795	2021-01-01 00:00:00	2021-01-01 00:00:00
376	Dustin	Bryant	dustin272@yahoo.com	(887)781-2231x1963	9952 Cheyenne Port\nLake Christina, CA 96127	2021-01-01 00:00:00	2021-01-01 00:00:00
377	Jessica	Palmer	jessica144@gmail.com	316-306-7610x097	9381 Shannon Plain Suite 547\nPort Mary, VT 38596	2021-01-01 00:00:00	2021-01-01 00:00:00
378	Charles	Pace	charles505@hotmail.com	9234661120	5218 Troy Bridge Suite 787\nJoshuaberg, AK 58732	2021-01-01 00:00:00	2021-01-01 00:00:00
379	Brenda	Clark	brenda534@hotmail.com	474-964-0365x14231	806 Samuel Inlet Apt. 805\nPort Laurastad, OR 05865	2021-01-01 00:00:00	2021-01-01 00:00:00
380	Robin	Hunter	robin424@gmail.com	+1-669-473-0780	143 Campos Island\nPort Justin, OH 30809	2021-01-01 00:00:00	2021-01-01 00:00:00
381	Jennifer	Davis	jennifer922@gmail.com	576.567.8438x14763	8379 Victoria Springs\nRomanborough, FL 32185	2021-01-01 00:00:00	2021-01-01 00:00:00
382	Louis	Black	louis113@gmail.com	5319472703	6788 Mullins Islands Apt. 539\nPaulhaven, IN 24247	2021-01-01 00:00:00	2021-01-01 00:00:00
383	Brittany	Poole	brittany828@yahoo.com	(681)617-2831x861	626 Rogers Course Apt. 144\nDanielview, AK 06698	2021-01-01 00:00:00	2021-01-01 00:00:00
384	Michelle	Oneal	michelle603@gmail.com	377-817-0777x3329	Unit 6497 Box 9456\nDPO AE 28323	2021-01-01 00:00:00	2021-01-01 00:00:00
385	Maria	Robinson	maria041@yahoo.com	202-325-9048x587	Unit 6826 Box 4194\nDPO AP 96170	2021-01-01 00:00:00	2021-01-01 00:00:00
386	Michelle	Arnold	michelle732@yahoo.com	001-763-943-8891x894	2681 Jasmine Isle\nShellyport, KS 15953	2021-01-01 00:00:00	2021-01-01 00:00:00
387	Benjamin	Stephens	benjamin771@gmail.com	(290)613-5612	030 Amanda Bypass Suite 248\nWest Kenneth, CO 80125	2021-01-01 00:00:00	2021-01-01 00:00:00
388	Paul	Goodman	paul734@gmail.com	238.509.3599x37834	649 Sean Manor\nHunterburgh, VI 08723	2021-01-01 00:00:00	2021-01-01 00:00:00
389	Sabrina	Cox	sabrina411@yahoo.com	969.722.6953x069	4338 Walsh Rapid Apt. 749\nNew Andreaport, ID 86407	2021-01-01 00:00:00	2021-01-01 00:00:00
390	Kathryn	Jordan	kathryn655@yahoo.com	+1-547-290-0203x631	0816 Rachael Mountain Suite 247\nPatriciamouth, HI 63521	2021-01-01 00:00:00	2021-01-01 00:00:00
391	Michael	Walker	michael328@yahoo.com	+1-755-679-3771	01645 Angela Mountain Apt. 263\nStephenfurt, UT 51506	2021-01-01 00:00:00	2021-01-01 00:00:00
392	Zoe	Scott	zoe376@yahoo.com	001-886-203-7188x55987	7813 Julie Manors\nWardborough, MP 61713	2021-01-01 00:00:00	2021-01-01 00:00:00
393	Maria	Pineda	maria103@gmail.com	+1-808-364-6654x10568	0392 Lisa Land Apt. 113\nKellybury, GA 08267	2021-01-01 00:00:00	2021-01-01 00:00:00
394	Jennifer	Franklin	jennifer786@yahoo.com	901-979-5434	2815 Derek Harbor\nLake Donaldton, ND 11023	2021-01-01 00:00:00	2021-01-01 00:00:00
395	Jodi	Roach	jodi044@yahoo.com	(921)640-7646x8107	24584 Justin Brooks\nMarkfurt, GA 36394	2021-01-01 00:00:00	2021-01-01 00:00:00
396	Laura	Ford	laura826@hotmail.com	(418)298-6516x8644	277 Phillips Spring\nLake Christine, WI 93269	2021-01-01 00:00:00	2021-01-01 00:00:00
397	Natalie	Weaver	natalie087@gmail.com	557.424.1069x737	10954 John Wells Suite 421\nTylermouth, NM 73015	2021-01-01 00:00:00	2021-01-01 00:00:00
398	Joshua	Taylor	joshua887@yahoo.com	782.258.4807x604	5013 Clark Loop Suite 820\nSeanview, KS 77276	2021-01-01 00:00:00	2021-01-01 00:00:00
399	Todd	Sanchez	todd747@gmail.com	203-985-5208x008	93457 Mccullough Camp\nEast Elizabeth, SD 06134	2021-01-01 00:00:00	2021-01-01 00:00:00
400	Hannah	Herrera	hannah541@gmail.com	348.383.6665x953	8762 Flores Burgs\nJohnsonborough, NH 00822	2021-01-01 00:00:00	2021-01-01 00:00:00
401	Kimberly	Williams	kimberly329@yahoo.com	(238)902-7533	182 Wilson Flats\nMelanietown, ND 23034	2021-01-01 00:00:00	2021-01-01 00:00:00
402	Tanya	Gregory	tanya896@yahoo.com	(348)883-0773x365	824 Sanchez Square\nJosephland, RI 57877	2021-01-01 00:00:00	2021-01-01 00:00:00
403	Sarah	Ho	sarah371@yahoo.com	891.907.8777	8990 Dale Street\nBlackview, UT 04805	2021-01-01 00:00:00	2021-01-01 00:00:00
404	Anna	Burton	anna709@gmail.com	863.365.0458x9619	55299 Anna Green\nNew Madison, WY 31253	2021-01-01 00:00:00	2021-01-01 00:00:00
405	Melinda	Mcintosh	melinda921@gmail.com	001-533-489-4089x3078	6257 Mariah Burgs\nLake Alexis, MH 59607	2021-01-01 00:00:00	2021-01-01 00:00:00
406	Andrew	Horton	andrew821@hotmail.com	+1-958-417-9630	59801 Powell Bypass Suite 915\nPort John, FL 70045	2021-01-01 00:00:00	2021-01-01 00:00:00
407	Roger	Barnes	roger645@hotmail.com	362-706-8457	8101 Patricia Valley\nKristentown, AL 41428	2021-01-01 00:00:00	2021-01-01 00:00:00
408	Tracy	Drake	tracy858@gmail.com	741.734.1854x2359	35451 Boyd Circle\nWest Jamesmouth, MO 55161	2021-01-01 00:00:00	2021-01-01 00:00:00
409	Matthew	Rodriguez	matthew133@hotmail.com	234.962.5833	7191 Little Mill\nLake Allison, IA 60779	2021-01-01 00:00:00	2021-01-01 00:00:00
410	Christy	Campbell	christy165@yahoo.com	438-314-9057x87365	Unit 4064 Box 0871\nDPO AE 82124	2021-01-01 00:00:00	2021-01-01 00:00:00
411	David	Kim	david037@yahoo.com	(258)878-8445x76565	1173 Jones Village Suite 507\nTaylorshire, WV 02926	2021-01-01 00:00:00	2021-01-01 00:00:00
412	Harold	Davis	harold288@gmail.com	3694554993	930 Pitts Valley\nDiaztown, AL 55589	2021-01-01 00:00:00	2021-01-01 00:00:00
413	Elizabeth	Velasquez	elizabeth007@gmail.com	(850)840-2719	98843 Mcguire Springs\nBrandiport, HI 92885	2021-01-01 00:00:00	2021-01-01 00:00:00
414	Maria	Dillon	maria165@gmail.com	(566)899-2860	6932 Tracy Haven\nRussellview, CT 63374	2021-01-01 00:00:00	2021-01-01 00:00:00
415	Christine	Boyd	christine174@yahoo.com	(781)601-7497x20904	57423 Sarah Motorway Suite 293\nLopeztown, WY 72676	2021-01-01 00:00:00	2021-01-01 00:00:00
416	Collin	Tran	collin736@gmail.com	001-897-464-6548x81688	056 Angel Inlet\nNorth Audrey, WV 57923	2021-01-01 00:00:00	2021-01-01 00:00:00
417	Patricia	Stewart	patricia333@yahoo.com	763-438-4783x97646	28467 Clark Drive Apt. 532\nSouth Loriside, WV 49481	2021-01-01 00:00:00	2021-01-01 00:00:00
418	Jennifer	Santos	jennifer442@hotmail.com	529.238.1112x4385	PSC 7605, Box 7056\nAPO AE 51916	2021-01-01 00:00:00	2021-01-01 00:00:00
419	Jorge	Hunt	jorge837@hotmail.com	779.364.0610	99092 Wheeler Groves\nNorth Jenna, MH 08598	2021-01-01 00:00:00	2021-01-01 00:00:00
420	Rebecca	Bullock	rebecca117@yahoo.com	001-971-779-8636x8395	30309 Jane Common\nNew Vanessatown, MP 00938	2021-01-01 00:00:00	2021-01-01 00:00:00
421	Donna	Tran	donna097@hotmail.com	+1-453-634-4603x39184	47282 Seth Bridge\nNew Kevinfort, DC 87605	2021-01-01 00:00:00	2021-01-01 00:00:00
422	Tiffany	Brown	tiffany624@hotmail.com	(236)467-0581x8698	469 Anthony Road\nNew Mary, WA 31021	2021-01-01 00:00:00	2021-01-01 00:00:00
423	Maria	Kim	maria053@gmail.com	(678)576-5573x583	806 Bridget Trace Apt. 454\nEast Annaton, DC 47987	2021-01-01 00:00:00	2021-01-01 00:00:00
424	Max	Travis	max547@yahoo.com	959.873.5059x72922	4861 Richardson Burgs\nNew Nicholaschester, GU 22231	2021-01-01 00:00:00	2021-01-01 00:00:00
425	Anthony	Reilly	anthony499@yahoo.com	+1-323-959-5142	Unit 0360 Box 9949\nDPO AA 42452	2021-01-01 00:00:00	2021-01-01 00:00:00
426	Gregory	Coleman	gregory403@hotmail.com	001-208-910-6727x922	8039 Maurice Greens Apt. 244\nLeeland, MD 90304	2021-01-01 00:00:00	2021-01-01 00:00:00
427	Daniel	Wells	daniel835@gmail.com	988-537-1719x286	489 Lozano Causeway Apt. 125\nReyesview, FL 89464	2021-01-01 00:00:00	2021-01-01 00:00:00
428	Edward	Sanford	edward299@yahoo.com	001-377-676-9605x7250	7566 Sharon Underpass\nSouth Jennifer, ID 87674	2021-01-01 00:00:00	2021-01-01 00:00:00
429	Melissa	Hatfield	melissa241@hotmail.com	001-787-252-2778x9021	USNV Gordon\nFPO AE 96288	2021-01-01 00:00:00	2021-01-01 00:00:00
430	Linda	Jones	linda272@hotmail.com	528.910.7804x44275	1778 Jennifer Street Apt. 863\nPort Daniellestad, WV 65223	2021-01-01 00:00:00	2021-01-01 00:00:00
431	Dylan	Clark	dylan327@gmail.com	3962312751	Unit 4095 Box 7383\nDPO AP 64772	2021-01-01 00:00:00	2021-01-01 00:00:00
432	Joe	Howard	joe390@hotmail.com	+1-814-844-9346x74856	935 Joseph Vista\nKevinborough, ND 02005	2021-01-01 00:00:00	2021-01-01 00:00:00
433	Gregory	Farmer	gregory340@gmail.com	264.252.5912x4450	USNS Harrell\nFPO AE 88329	2021-01-01 00:00:00	2021-01-01 00:00:00
434	Michael	Nichols	michael148@yahoo.com	260-636-4333x307	37618 Linda Spring Apt. 300\nLake Michellemouth, MT 95696	2021-01-01 00:00:00	2021-01-01 00:00:00
435	Brian	Perez	brian028@yahoo.com	915-664-7098x023	70054 Louis Plaza Apt. 364\nHernandezbury, CO 54113	2021-01-01 00:00:00	2021-01-01 00:00:00
436	Robert	Sims	robert761@gmail.com	(923)764-4811x3798	27120 Jennifer Islands Suite 101\nPort Kirstenmouth, LA 20477	2021-01-01 00:00:00	2021-01-01 00:00:00
437	Stephanie	Garcia	stephanie884@yahoo.com	9999660101	9362 Ryan Mountain Suite 648\nEast Jennifer, PR 66088	2021-01-01 00:00:00	2021-01-01 00:00:00
438	Veronica	Woodard	veronica167@yahoo.com	840-986-8597x821	788 Angela Garden Apt. 131\nThompsonville, WI 38167	2021-01-01 00:00:00	2021-01-01 00:00:00
439	Brenda	Reid	brenda860@hotmail.com	508.938.7033x335	692 Harris Groves\nMelissashire, AK 25494	2021-01-01 00:00:00	2021-01-01 00:00:00
440	Paige	Hill	paige543@yahoo.com	+1-245-416-6298x1789	360 Robert Inlet Suite 999\nLucasfort, CA 05079	2021-01-01 00:00:00	2021-01-01 00:00:00
441	Tracy	Reynolds	tracy027@hotmail.com	448-620-9568x740	7842 Aaron Stream\nNorth Tammybury, OK 90855	2021-01-01 00:00:00	2021-01-01 00:00:00
442	John	Kane	john858@gmail.com	001-560-667-8120	0903 Henry Stream\nFitzgeraldhaven, ME 66582	2021-01-01 00:00:00	2021-01-01 00:00:00
443	Jessica	Richardson	jessica841@gmail.com	(468)821-1530x31570	50013 Selena Land Apt. 850\nJasonstad, FM 84768	2021-01-01 00:00:00	2021-01-01 00:00:00
444	Amy	Vega	amy379@gmail.com	(803)862-8886	7757 Benton Turnpike\nNew Stacyhaven, NY 75310	2021-01-01 00:00:00	2021-01-01 00:00:00
445	Gerald	Edwards	gerald479@hotmail.com	001-706-438-7279x91285	867 Anthony Lodge Suite 434\nSouth Stephanieburgh, VA 65334	2021-01-01 00:00:00	2021-01-01 00:00:00
446	Beverly	Tate	beverly936@gmail.com	+1-807-627-6326x8645	Unit 7912 Box 8514\nDPO AE 78314	2021-01-01 00:00:00	2021-01-01 00:00:00
447	Katherine	Carr	katherine927@yahoo.com	602-483-1426x06917	USNV George\nFPO AE 86902	2021-01-01 00:00:00	2021-01-01 00:00:00
448	Evelyn	Foster	evelyn285@hotmail.com	490.952.0678x55269	8620 Green Vista\nNicholaschester, GU 98348	2021-01-01 00:00:00	2021-01-01 00:00:00
449	Michelle	Gregory	michelle577@yahoo.com	970-819-8316x6243	66392 Jasmine Canyon\nJameshaven, AS 04859	2021-01-01 00:00:00	2021-01-01 00:00:00
450	Christine	Lopez	christine124@hotmail.com	+1-847-446-2962x80032	3065 Bauer Canyon\nNorth Frederickstad, NM 50936	2021-01-01 00:00:00	2021-01-01 00:00:00
451	Theodore	West	theodore398@hotmail.com	987.737.9562	591 Rodriguez Forge\nTylerville, PW 70133	2021-01-01 00:00:00	2021-01-01 00:00:00
452	Joel	Rodriguez	joel615@gmail.com	+1-560-958-4903x857	29738 Frazier Mills\nNorth Bruceton, UT 64637	2021-01-01 00:00:00	2021-01-01 00:00:00
453	Joseph	Jackson	joseph113@gmail.com	+1-880-509-9962x46768	0985 Calvin Drive\nNorth Barbaraton, UT 22992	2021-01-01 00:00:00	2021-01-01 00:00:00
454	Deborah	Sharp	deborah013@hotmail.com	6044362766	0540 Johnson Branch\nNorth Sandraburgh, SC 31389	2021-01-01 00:00:00	2021-01-01 00:00:00
455	Amy	Garcia	amy532@yahoo.com	805.246.9197	329 Kristine Center Apt. 099\nNorth Jamie, TX 01462	2021-01-01 00:00:00	2021-01-01 00:00:00
456	Douglas	Wilkerson	douglas896@yahoo.com	(994)570-5599	22760 Walker Valley\nSouth Paulborough, MP 81734	2021-01-01 00:00:00	2021-01-01 00:00:00
457	Kelly	Rodriguez	kelly160@yahoo.com	696-855-3492x794	3298 Wiley Court\nEast Meganmouth, VI 40690	2021-01-01 00:00:00	2021-01-01 00:00:00
458	Marissa	Williams	marissa383@yahoo.com	852.870.1787	8321 Copeland Turnpike\nNewmanhaven, PA 24780	2021-01-01 00:00:00	2021-01-01 00:00:00
459	Michelle	Villa	michelle024@gmail.com	3475039240	USS Jones\nFPO AP 90628	2021-01-01 00:00:00	2021-01-01 00:00:00
460	Jay	Knapp	jay155@yahoo.com	402-527-2882x893	98800 Jones Crescent\nNew Jay, SD 58694	2021-01-01 00:00:00	2021-01-01 00:00:00
461	Robert	Mendoza	robert047@hotmail.com	804-396-5196	216 Laura Parkways\nPort Frederick, OK 17362	2021-01-01 00:00:00	2021-01-01 00:00:00
462	Russell	Walker	russell555@yahoo.com	460.525.1250	43315 Robbins Plains Suite 928\nOsborneton, AS 03768	2021-01-01 00:00:00	2021-01-01 00:00:00
463	Kenneth	Odonnell	kenneth887@gmail.com	(307)639-5480x8328	USS Wall\nFPO AE 51657	2021-01-01 00:00:00	2021-01-01 00:00:00
464	Nicholas	Gill	nicholas249@gmail.com	001-379-213-3608x62932	PSC 3442, Box 3001\nAPO AA 73627	2021-01-01 00:00:00	2021-01-01 00:00:00
465	Charles	Perez	charles121@hotmail.com	222-436-4786x298	98011 Yoder Club\nSouth James, NE 66544	2021-01-01 00:00:00	2021-01-01 00:00:00
466	Katelyn	Stout	katelyn958@hotmail.com	+1-516-620-2806	29741 Mike Ferry\nBrookston, KY 85262	2021-01-01 00:00:00	2021-01-01 00:00:00
467	Jamie	Smith	jamie845@gmail.com	+1-404-886-9773x09418	9685 Ellis Ford\nSotoville, NY 37143	2021-01-01 00:00:00	2021-01-01 00:00:00
468	Teresa	Wilkerson	teresa035@hotmail.com	(910)683-6453	9561 Dennis Meadows\nJuarezburgh, DC 06709	2021-01-01 00:00:00	2021-01-01 00:00:00
469	Lauren	Cunningham	lauren199@gmail.com	562.816.4157x7599	9912 Myers Throughway Apt. 258\nWest Melissa, WV 60777	2021-01-01 00:00:00	2021-01-01 00:00:00
470	April	Cowan	april870@gmail.com	395-773-9011	31304 Galloway Harbor\nKylebury, PA 48006	2021-01-01 00:00:00	2021-01-01 00:00:00
471	Andrea	Bell	andrea549@yahoo.com	+1-560-685-8391x555	309 John Ranch Apt. 048\nNorth Dustinborough, AR 79294	2021-01-01 00:00:00	2021-01-01 00:00:00
472	Christopher	Choi	christopher926@hotmail.com	001-772-884-3482x24793	5426 Hensley Crossing\nDanieltown, TX 45676	2021-01-01 00:00:00	2021-01-01 00:00:00
473	Christina	Booth	christina751@hotmail.com	+1-385-254-1328x40945	3954 Tiffany Manor\nPort Gloria, AR 55297	2021-01-01 00:00:00	2021-01-01 00:00:00
474	Mark	Compton	mark009@yahoo.com	(291)554-2158x228	171 Kathleen Alley Apt. 362\nPort Loganmouth, PA 76463	2021-01-01 00:00:00	2021-01-01 00:00:00
475	Roy	Mahoney	roy063@hotmail.com	664.887.3475	17355 Crystal Brook Apt. 776\nPort Meganstad, ME 42649	2021-01-01 00:00:00	2021-01-01 00:00:00
476	Cynthia	Garcia	cynthia908@yahoo.com	978.554.9063x674	067 Richard Isle\nLake Amandastad, CT 79952	2021-01-01 00:00:00	2021-01-01 00:00:00
477	Angela	Hampton	angela990@yahoo.com	831-823-3800x04535	6338 John Throughway Suite 647\nKaylaview, ND 98420	2021-01-01 00:00:00	2021-01-01 00:00:00
478	Joshua	Martin	joshua251@gmail.com	+1-482-599-0151	284 Andrews Shores\nPort Carolborough, NH 19280	2021-01-01 00:00:00	2021-01-01 00:00:00
479	Megan	Mitchell	megan901@hotmail.com	+1-629-737-9982x792	32786 Shane Expressway\nLake Charlesview, MO 33367	2021-01-01 00:00:00	2021-01-01 00:00:00
480	Mary	Ho	mary052@hotmail.com	+1-923-811-8251x287	459 Rodriguez Knoll Apt. 535\nPort Gina, VA 01550	2021-01-01 00:00:00	2021-01-01 00:00:00
481	Catherine	Chung	catherine859@hotmail.com	+1-378-936-5531x29424	9819 Chad Harbor Suite 656\nNew Beth, SC 43038	2021-01-01 00:00:00	2021-01-01 00:00:00
482	Jason	Young	jason341@yahoo.com	(651)692-5809	263 Mcpherson Inlet Apt. 260\nFletcherville, PW 51010	2021-01-01 00:00:00	2021-01-01 00:00:00
483	Felicia	Miller	felicia841@gmail.com	(638)375-4128	551 Melissa Islands\nPort Dianefurt, NV 50732	2021-01-01 00:00:00	2021-01-01 00:00:00
484	Roger	Murphy	roger937@yahoo.com	+1-629-649-8355x37534	2622 Sarah Walks\nEast Monica, FM 62874	2021-01-01 00:00:00	2021-01-01 00:00:00
485	Michael	Singleton	michael336@gmail.com	+1-482-759-0676x7478	00738 Hanson Falls Suite 142\nKristinemouth, AZ 48294	2021-01-01 00:00:00	2021-01-01 00:00:00
486	Michael	Williamson	michael759@yahoo.com	670-626-8423	4493 Logan Greens Apt. 732\nCynthiaborough, IN 37207	2021-01-01 00:00:00	2021-01-01 00:00:00
487	Michael	Williams	michael389@gmail.com	001-223-704-5240x903	16359 Wyatt Extensions Apt. 763\nJessicastad, WA 13985	2021-01-01 00:00:00	2021-01-01 00:00:00
488	Leon	Young	leon894@hotmail.com	706-313-8224x17801	2610 Johns Fall\nMelissaland, MH 93055	2021-01-01 00:00:00	2021-01-01 00:00:00
489	Tammy	Taylor	tammy590@hotmail.com	(834)610-6971x97195	7042 Jose Lock\nSouth Jenniferport, ME 20604	2021-01-01 00:00:00	2021-01-01 00:00:00
490	Stephanie	Carr	stephanie626@gmail.com	395.779.2665	9161 Jimenez Parkways Suite 161\nKelleyview, PW 50166	2021-01-01 00:00:00	2021-01-01 00:00:00
491	Rebecca	Crawford	rebecca443@hotmail.com	(543)808-3603	9463 Fred Lakes\nNew Ronald, MH 02730	2021-01-01 00:00:00	2021-01-01 00:00:00
492	Brian	Hall	brian893@hotmail.com	240-959-7733	711 Karen Glen Apt. 885\nBullockbury, IL 91035	2021-01-01 00:00:00	2021-01-01 00:00:00
493	Kimberly	Proctor	kimberly429@hotmail.com	+1-843-596-6593x7154	09124 Keith Rest Suite 939\nBlacktown, PA 09135	2021-01-01 00:00:00	2021-01-01 00:00:00
494	Stacy	Moore	stacy818@gmail.com	634-421-3478	50795 Sherry Shoals Apt. 543\nEast Isaacburgh, GU 28031	2021-01-01 00:00:00	2021-01-01 00:00:00
495	Travis	Carter	travis773@yahoo.com	+1-368-736-8138x234	5413 Kristina Corner Apt. 259\nWest Dwayneton, IN 68186	2021-01-01 00:00:00	2021-01-01 00:00:00
496	Michelle	Dennis	michelle122@hotmail.com	908.609.2070	81691 Martinez Forge Suite 531\nWilliamsburgh, CO 50810	2021-01-01 00:00:00	2021-01-01 00:00:00
497	Rachel	Sherman	rachel457@yahoo.com	451.272.8900	PSC 2915, Box 8208\nAPO AE 34884	2021-01-01 00:00:00	2021-01-01 00:00:00
498	Lauren	Vance	lauren671@yahoo.com	(622)953-5936x0840	6004 Velazquez Ford Apt. 426\nTylerfurt, PA 85581	2021-01-01 00:00:00	2021-01-01 00:00:00
499	Joseph	White	joseph089@hotmail.com	823-840-9199	1560 Olivia Point\nYolandachester, AR 88809	2021-01-01 00:00:00	2021-01-01 00:00:00
500	Nicole	Smith	nicole364@gmail.com	948.308.3417x028	25852 Ramirez River\nHobbsburgh, OR 73489	2021-01-01 00:00:00	2021-01-01 00:00:00
501	Connie	Hines	connie687@gmail.com	9439384272	9175 Harris Coves\nAndersonfurt, DC 68055	2021-01-01 00:00:00	2021-01-01 00:00:00
502	Amy	Myers	amy989@yahoo.com	436.966.6393x58757	USNV Young\nFPO AA 16996	2021-01-01 00:00:00	2021-01-01 00:00:00
503	Michael	Phillips	michael586@gmail.com	(818)959-4923x6979	7168 Jeffrey Parkway Suite 844\nSouth Elizabeth, MO 66734	2021-01-01 00:00:00	2021-01-01 00:00:00
504	Daniel	Herring	daniel680@gmail.com	210.471.6742x61205	16387 Bruce Valley\nLake Victor, MO 27068	2021-01-01 00:00:00	2021-01-01 00:00:00
505	Andrew	Daniels	andrew587@hotmail.com	985-654-0243	6409 Robbins Ports Apt. 713\nMichaelville, ND 56825	2021-01-01 00:00:00	2021-01-01 00:00:00
506	Robin	Rodriguez	robin451@hotmail.com	400-252-1326	204 Ryan Mountain\nRyanport, ND 32405	2021-01-01 00:00:00	2021-01-01 00:00:00
507	Derrick	Wright	derrick450@gmail.com	(584)803-2640x592	8660 Jessica Green\nAnnastad, GA 12372	2021-01-01 00:00:00	2021-01-01 00:00:00
508	Blake	Morris	blake478@gmail.com	430-910-1424x90164	61803 Wilson Manor\nWest Stacy, MP 06739	2021-01-01 00:00:00	2021-01-01 00:00:00
509	Sarah	Odom	sarah801@hotmail.com	+1-259-977-0336x86521	143 John Expressway\nSimpsonberg, PR 54082	2021-01-01 00:00:00	2021-01-01 00:00:00
510	Jennifer	Ramirez	jennifer167@yahoo.com	(501)228-8135	88263 Debra Plains Apt. 948\nWest Benjaminborough, CT 94567	2021-01-01 00:00:00	2021-01-01 00:00:00
511	Cassandra	Weeks	cassandra530@gmail.com	(293)907-4251	1495 Montgomery Estate Apt. 503\nStevenburgh, NY 84623	2021-01-01 00:00:00	2021-01-01 00:00:00
512	Brandy	Valentine	brandy891@gmail.com	747.990.6401	036 Grant Vista Apt. 839\nPort Catherine, TX 61569	2021-01-01 00:00:00	2021-01-01 00:00:00
513	Sandra	Roman	sandra435@gmail.com	001-685-517-0749x8344	54076 Kelly Meadows\nWest Erin, WI 08297	2021-01-01 00:00:00	2021-01-01 00:00:00
514	Karen	Brown	karen416@yahoo.com	9944683217	627 David Glen Suite 459\nMichaelfurt, IN 04801	2021-01-01 00:00:00	2021-01-01 00:00:00
515	Marissa	Jones	marissa537@hotmail.com	001-452-664-9883x27681	37917 Harper Path\nNorth Andrea, NC 03596	2021-01-01 00:00:00	2021-01-01 00:00:00
516	Edward	Gray	edward718@yahoo.com	+1-821-849-0358	8444 Peterson Greens\nEast Jasmine, MP 67941	2021-01-01 00:00:00	2021-01-01 00:00:00
517	Matthew	Wright	matthew842@hotmail.com	247-646-6335	884 Devon Squares\nNorth Nicoleton, PR 91095	2021-01-01 00:00:00	2021-01-01 00:00:00
518	Kenneth	Wright	kenneth307@hotmail.com	(617)406-1221x871	USCGC Lambert\nFPO AA 64165	2021-01-01 00:00:00	2021-01-01 00:00:00
519	Michelle	Anderson	michelle425@yahoo.com	+1-796-754-9170x92889	9388 Louis Hill\nWest Ronald, PR 51261	2021-01-01 00:00:00	2021-01-01 00:00:00
520	Makayla	Callahan	makayla116@hotmail.com	(300)479-8279x1375	691 Moyer Forks\nLake Kennethfurt, CA 34658	2021-01-01 00:00:00	2021-01-01 00:00:00
521	Nathaniel	Chan	nathaniel455@hotmail.com	547.593.1757	6235 Daniel Summit Apt. 717\nCarlosberg, CA 99870	2021-01-01 00:00:00	2021-01-01 00:00:00
522	Darlene	Acevedo	darlene475@gmail.com	274.401.4353	5978 Jacob Lights Suite 465\nMeyerfurt, NH 77266	2021-01-01 00:00:00	2021-01-01 00:00:00
523	Todd	Berry	todd806@hotmail.com	001-882-609-1317	0949 Desiree Square\nMichellechester, VA 84021	2021-01-01 00:00:00	2021-01-01 00:00:00
524	Larry	Clark	larry029@yahoo.com	(497)384-7612x281	085 Kevin Fort\nWest Robinfurt, ND 38281	2021-01-01 00:00:00	2021-01-01 00:00:00
525	Kayla	Williams	kayla324@gmail.com	788.612.2221x62548	189 James Fork\nHensonland, ND 38485	2021-01-01 00:00:00	2021-01-01 00:00:00
526	Kathleen	Williams	kathleen249@gmail.com	+1-354-285-6100x6670	Unit 9690 Box 8353\nDPO AP 23227	2021-01-01 00:00:00	2021-01-01 00:00:00
527	Ariel	Hicks	ariel207@gmail.com	850-313-7500	38917 Erica Tunnel\nPort Justin, IN 08545	2021-01-01 00:00:00	2021-01-01 00:00:00
528	Kevin	Perry	kevin400@hotmail.com	891.861.0957	193 Steven Ranch\nWest Victoriamouth, MS 30722	2021-01-01 00:00:00	2021-01-01 00:00:00
529	Randy	Preston	randy527@gmail.com	+1-963-236-5566x17903	7949 Ryan Streets Suite 070\nNew Kayleehaven, ID 50570	2021-01-01 00:00:00	2021-01-01 00:00:00
530	James	Ray	james551@yahoo.com	9955211978	172 Steven Circles Suite 701\nGarciatown, AR 57779	2021-01-01 00:00:00	2021-01-01 00:00:00
531	Donald	Lester	donald686@hotmail.com	001-970-257-0814	Unit 1890 Box 2378\nDPO AA 53647	2021-01-01 00:00:00	2021-01-01 00:00:00
532	Bruce	Bruce	bruce049@yahoo.com	+1-567-523-7252x50610	118 Christensen Estates Suite 788\nLake Dustinhaven, TX 44831	2021-01-01 00:00:00	2021-01-01 00:00:00
533	Anna	Moore	anna310@gmail.com	726-815-5706x654	54918 Neal Plaza\nNorth Josephview, RI 43922	2021-01-01 00:00:00	2021-01-01 00:00:00
534	Patricia	Burns	patricia017@yahoo.com	+1-695-212-2045x52902	749 Cooper Light Apt. 040\nRichardhaven, VI 12955	2021-01-01 00:00:00	2021-01-01 00:00:00
535	Nathan	Morrison	nathan204@yahoo.com	821.538.5177x43019	PSC 7511, Box 3002\nAPO AP 64633	2021-01-01 00:00:00	2021-01-01 00:00:00
536	Matthew	Cochran	matthew324@hotmail.com	+1-528-521-8777x6923	026 Walker Camp Apt. 461\nWilsonchester, AK 88277	2021-01-01 00:00:00	2021-01-01 00:00:00
537	Kenneth	Hill	kenneth401@yahoo.com	797.734.3350x2043	73121 Christopher Centers\nFieldston, HI 67557	2021-01-01 00:00:00	2021-01-01 00:00:00
538	Michelle	Spencer	michelle238@gmail.com	(686)282-0592	33846 White Mountain\nDixonview, PW 14124	2021-01-01 00:00:00	2021-01-01 00:00:00
539	Heather	Wright	heather931@hotmail.com	988-957-6048	602 Barron Mall\nNorth Jacob, SD 88954	2021-01-01 00:00:00	2021-01-01 00:00:00
540	Paul	Warner	paul329@hotmail.com	688-223-9311x6770	53289 John Dale Suite 270\nLake Ruth, SD 04024	2021-01-01 00:00:00	2021-01-01 00:00:00
541	Nathan	Rodriguez	nathan581@hotmail.com	695.409.9453x6214	PSC 3216, Box 2378\nAPO AE 38240	2021-01-01 00:00:00	2021-01-01 00:00:00
542	Pamela	Byrd	pamela552@gmail.com	799-991-4208x93201	889 Suzanne Drives Apt. 254\nWareburgh, GU 13763	2021-01-01 00:00:00	2021-01-01 00:00:00
543	Vincent	Perez	vincent053@hotmail.com	7708536275	55868 Craig Mission Suite 242\nStevensborough, IL 46602	2021-01-01 00:00:00	2021-01-01 00:00:00
544	Stephen	Arnold	stephen357@yahoo.com	644-851-6916	294 Carroll Forge Suite 872\nMooreburgh, CT 53811	2021-01-01 00:00:00	2021-01-01 00:00:00
545	Crystal	Williams	crystal123@yahoo.com	443-506-9276x91770	29469 Rhodes Isle Suite 301\nNorth Kyle, MT 40013	2021-01-01 00:00:00	2021-01-01 00:00:00
546	Scott	Collins	scott891@yahoo.com	+1-254-370-7470x5362	33343 James Pine\nEast Stevenburgh, DE 07678	2021-01-01 00:00:00	2021-01-01 00:00:00
547	Anthony	Trevino	anthony643@hotmail.com	001-233-377-1572	85617 Barbara Fall\nPort Lori, OH 06134	2021-01-01 00:00:00	2021-01-01 00:00:00
548	Cynthia	Mcdaniel	cynthia347@yahoo.com	+1-959-866-8748x603	070 Griffith Rapids\nNorth Sandraland, ME 41632	2021-01-01 00:00:00	2021-01-01 00:00:00
549	Bryan	Booker	bryan746@hotmail.com	001-531-342-8648x66686	1287 Cortez Courts\nScottfurt, WV 84836	2021-01-01 00:00:00	2021-01-01 00:00:00
550	Kimberly	Perez	kimberly345@yahoo.com	+1-273-758-9816x206	2615 Jackson Wall\nBrewerberg, IA 84789	2021-01-01 00:00:00	2021-01-01 00:00:00
551	Edwin	Garcia	edwin399@hotmail.com	(619)370-1926	697 John Camp\nPort Lauriemouth, KS 66203	2021-01-01 00:00:00	2021-01-01 00:00:00
552	Danielle	Burns	danielle504@yahoo.com	869-376-2073	24986 Crystal Drive Suite 052\nLake Maureenville, SC 15469	2021-01-01 00:00:00	2021-01-01 00:00:00
553	John	Martinez	john560@hotmail.com	684.514.2042x55510	72484 Sharon Mills Apt. 875\nGeorgeland, TX 50219	2021-01-01 00:00:00	2021-01-01 00:00:00
554	Sandra	Aguilar	sandra379@yahoo.com	413-755-8297	933 James Course Suite 076\nHannahland, DE 24591	2021-01-01 00:00:00	2021-01-01 00:00:00
555	Angela	Santiago	angela663@hotmail.com	324.355.6593x227	3049 Cannon Meadows Suite 666\nDavidmouth, AZ 64227	2021-01-01 00:00:00	2021-01-01 00:00:00
556	Amanda	Zhang	amanda982@yahoo.com	(921)830-3264x42545	8640 Alexis Ferry Suite 830\nDebratown, HI 30198	2021-01-01 00:00:00	2021-01-01 00:00:00
557	Tina	Sullivan	tina270@yahoo.com	402.600.0069x03617	6886 Sanders Isle Apt. 626\nEast Billyland, GU 19829	2021-01-01 00:00:00	2021-01-01 00:00:00
558	Diana	Reyes	diana773@gmail.com	759-868-6401	USNV Robinson\nFPO AA 94642	2021-01-01 00:00:00	2021-01-01 00:00:00
559	Jasmine	Jordan	jasmine061@gmail.com	992.513.6117x39247	266 Kelli Union Suite 956\nJohnland, AK 61151	2021-01-01 00:00:00	2021-01-01 00:00:00
560	Anthony	Walker	anthony778@yahoo.com	(634)242-1755x62323	6354 Maria Fields\nJonathanmouth, AK 31549	2021-01-01 00:00:00	2021-01-01 00:00:00
561	Sara	Hill	sara281@yahoo.com	981-913-3198	97199 Madison Heights\nPort Jennifer, NV 46413	2021-01-01 00:00:00	2021-01-01 00:00:00
562	Tim	Castaneda	tim762@gmail.com	001-964-729-5502x6159	943 Lawson Rapid Suite 086\nSouth Diane, OK 71846	2021-01-01 00:00:00	2021-01-01 00:00:00
563	Barbara	Burke	barbara567@gmail.com	528.918.4189x35612	08333 Estrada Loop Suite 572\nSouth Jennifershire, CO 93734	2021-01-01 00:00:00	2021-01-01 00:00:00
564	Lindsey	Williams	lindsey866@yahoo.com	(561)417-3791	15981 Laura Passage Apt. 970\nJonesview, AZ 64703	2021-01-01 00:00:00	2021-01-01 00:00:00
565	Whitney	Mosley	whitney864@hotmail.com	001-751-984-7669	78303 Friedman Track Apt. 230\nLake Jim, MT 31714	2021-01-01 00:00:00	2021-01-01 00:00:00
566	Nancy	Young	nancy630@hotmail.com	001-826-606-8586	USNV Moss\nFPO AP 03201	2021-01-01 00:00:00	2021-01-01 00:00:00
567	Robert	Schneider	robert233@hotmail.com	+1-884-931-5038x22119	82981 Peterson Field Suite 427\nNorth Dennistown, TX 56183	2021-01-01 00:00:00	2021-01-01 00:00:00
568	James	Morgan	james513@hotmail.com	(374)652-7164	76629 Alison Corners Apt. 188\nNew Juliechester, TX 53846	2021-01-01 00:00:00	2021-01-01 00:00:00
569	James	Coleman	james820@yahoo.com	(841)283-0016x2143	5215 Christopher Trail\nNorth Gabrielle, ND 34394	2021-01-01 00:00:00	2021-01-01 00:00:00
570	Robert	Munoz	robert459@hotmail.com	2828969145	PSC 4969, Box 3586\nAPO AP 07392	2021-01-01 00:00:00	2021-01-01 00:00:00
571	Robert	Smith	robert381@gmail.com	+1-279-322-3020x073	87809 Jill Vista Suite 503\nPollardview, FL 68097	2021-01-01 00:00:00	2021-01-01 00:00:00
572	Jacqueline	Adkins	jacqueline087@gmail.com	226-637-0617x54151	8685 Angela Knoll Suite 004\nNorth Tom, OR 75743	2021-01-01 00:00:00	2021-01-01 00:00:00
573	Joseph	Garcia	joseph690@yahoo.com	(565)640-2561x921	1258 Adam Ranch Apt. 511\nGonzalesberg, ND 43285	2021-01-01 00:00:00	2021-01-01 00:00:00
574	Cole	Buchanan	cole333@gmail.com	+1-844-764-9707x660	8751 Oconnor Throughway Suite 174\nSouth Timothymouth, LA 00514	2021-01-01 00:00:00	2021-01-01 00:00:00
575	Nancy	Tran	nancy643@yahoo.com	869.266.2653	30233 Johnson Curve\nHendricksfurt, VA 72060	2021-01-01 00:00:00	2021-01-01 00:00:00
576	Christopher	Thomas	christopher602@yahoo.com	564.406.0119	4483 Stewart Port\nKristenshire, HI 15294	2021-01-01 00:00:00	2021-01-01 00:00:00
577	Stephen	Rodriguez	stephen264@gmail.com	935-373-5918	14884 Sarah Station\nLake Travisview, PW 93885	2021-01-01 00:00:00	2021-01-01 00:00:00
578	Juan	Gill	juan501@hotmail.com	244-625-6357x47411	Unit 2157 Box 2072\nDPO AE 36841	2021-01-01 00:00:00	2021-01-01 00:00:00
579	Brandon	Mitchell	brandon213@hotmail.com	001-478-391-9740x119	49112 Veronica Dam\nEast Eric, AZ 99871	2021-01-01 00:00:00	2021-01-01 00:00:00
580	Emily	Rodriguez	emily904@hotmail.com	(214)601-7778x464	90589 Jones Run\nHensonview, AK 59094	2021-01-01 00:00:00	2021-01-01 00:00:00
581	Mary	Shelton	mary925@gmail.com	697.309.7822x29982	38068 Cook Dam\nEast Bradley, KS 47048	2021-01-01 00:00:00	2021-01-01 00:00:00
582	Rebecca	Holmes	rebecca937@hotmail.com	(776)768-1675	8153 Young Locks\nNorth Timothy, DC 38364	2021-01-01 00:00:00	2021-01-01 00:00:00
583	Teresa	Molina	teresa051@hotmail.com	817.481.8045x652	089 Torres Turnpike Suite 938\nFlowerston, DC 72301	2021-01-01 00:00:00	2021-01-01 00:00:00
584	Michelle	Ward	michelle809@gmail.com	(826)579-5470	2379 Costa Drive Apt. 976\nJessicatown, VT 32539	2021-01-01 00:00:00	2021-01-01 00:00:00
585	Patrick	Griffin	patrick961@hotmail.com	001-876-513-9542x0821	22929 Mack Place Suite 320\nChristopherhaven, NC 27168	2021-01-01 00:00:00	2021-01-01 00:00:00
586	Alex	Perez	alex700@yahoo.com	+1-744-417-6804x0903	80821 Ward Shoal\nWest Douglas, VT 02659	2021-01-01 00:00:00	2021-01-01 00:00:00
587	Michelle	Richardson	michelle922@yahoo.com	245.912.9960	4965 Bowman Fields Apt. 214\nMyersfort, OK 88710	2021-01-01 00:00:00	2021-01-01 00:00:00
588	Hannah	Adams	hannah130@yahoo.com	+1-405-958-4394	8784 Daniels Parks Suite 134\nSouth Michelle, NM 17094	2021-01-01 00:00:00	2021-01-01 00:00:00
589	Jimmy	Jackson	jimmy337@hotmail.com	+1-399-700-7296x64066	247 Joe Valleys Apt. 292\nNew Michael, GU 25686	2021-01-01 00:00:00	2021-01-01 00:00:00
590	Jennifer	Hendrix	jennifer488@yahoo.com	(302)551-2957x077	2151 Jennifer Track\nHarrisside, CA 73739	2021-01-01 00:00:00	2021-01-01 00:00:00
591	Mark	Young	mark986@yahoo.com	(770)923-2531x5375	586 Johnson Plaza Apt. 496\nCherylshire, WV 03988	2021-01-01 00:00:00	2021-01-01 00:00:00
592	Ashley	Kline	ashley961@yahoo.com	001-346-960-9874x7209	787 Connie Mews\nReynoldsport, VI 99873	2021-01-01 00:00:00	2021-01-01 00:00:00
593	Robert	Kim	robert661@yahoo.com	001-955-322-9662x56610	3448 Scott Road\nWest Robertburgh, VA 28809	2021-01-01 00:00:00	2021-01-01 00:00:00
594	Annette	Olson	annette971@yahoo.com	6885508056	4232 Patel Causeway Apt. 935\nLake Garystad, FL 68904	2021-01-01 00:00:00	2021-01-01 00:00:00
595	Brian	Douglas	brian226@gmail.com	397.617.1317	44556 Davis View\nShannonfort, MD 12118	2021-01-01 00:00:00	2021-01-01 00:00:00
596	Julie	Keller	julie703@gmail.com	001-411-423-2317	26654 Elizabeth Motorway Apt. 555\nMirandatown, PW 97723	2021-01-01 00:00:00	2021-01-01 00:00:00
597	Francisco	Salazar	francisco473@gmail.com	848.356.1063x613	24311 Tony Heights Apt. 135\nDavisbury, OK 77686	2021-01-01 00:00:00	2021-01-01 00:00:00
598	Michael	Jackson	michael069@yahoo.com	221-518-0203	262 Lopez Haven\nDevinhaven, AZ 33092	2021-01-01 00:00:00	2021-01-01 00:00:00
599	Allen	Ortiz	allen663@hotmail.com	527-320-1571	903 Jeff Cape Suite 448\nEvelynview, CT 25076	2021-01-01 00:00:00	2021-01-01 00:00:00
600	Karen	Huynh	karen389@yahoo.com	212-746-0746	5536 Mariah Run Apt. 484\nLake Christianborough, WA 29481	2021-01-01 00:00:00	2021-01-01 00:00:00
601	Paul	Stewart	paul029@gmail.com	+1-525-851-5725	95336 Benitez Ridges Apt. 747\nWest Jeremybury, GU 91043	2021-01-01 00:00:00	2021-01-01 00:00:00
602	Sharon	Thompson	sharon383@yahoo.com	433-309-4891x92826	919 Scott Square\nPort Danielle, TN 42030	2021-01-01 00:00:00	2021-01-01 00:00:00
603	Sarah	Green	sarah011@hotmail.com	(294)892-0605x884	96815 Stacey Parkways Suite 426\nKathrynstad, PA 14816	2021-01-01 00:00:00	2021-01-01 00:00:00
604	Anna	Mueller	anna863@gmail.com	520-486-9441	00499 Turner Knolls\nWest Kathryn, AS 89188	2021-01-01 00:00:00	2021-01-01 00:00:00
605	Sandra	Stewart	sandra515@hotmail.com	526-266-6772	781 Christopher Trail Apt. 207\nLake Colleen, NJ 09797	2021-01-01 00:00:00	2021-01-01 00:00:00
606	Tanya	Myers	tanya498@hotmail.com	(380)539-7396	USCGC Miller\nFPO AE 87071	2021-01-01 00:00:00	2021-01-01 00:00:00
607	Jon	Smith	jon179@hotmail.com	2827291042	2817 Lewis Valleys Suite 202\nNorth Jose, NC 51844	2021-01-01 00:00:00	2021-01-01 00:00:00
608	Peter	Manning	peter399@hotmail.com	755.998.5637x57732	672 Ryan Path Suite 946\nEast Johnside, AS 64132	2021-01-01 00:00:00	2021-01-01 00:00:00
609	Rebecca	Kelly	rebecca939@gmail.com	001-722-438-7249	2280 Brandon Fork Suite 360\nWest Codystad, GU 29142	2021-01-01 00:00:00	2021-01-01 00:00:00
610	Teresa	Zhang	teresa543@yahoo.com	+1-710-702-3269	5562 Lewis Bridge Suite 852\nJennaside, NH 13073	2021-01-01 00:00:00	2021-01-01 00:00:00
611	Melvin	Flowers	melvin223@yahoo.com	292-329-2555x152	754 Heather Cove\nJillianmouth, GU 97952	2021-01-01 00:00:00	2021-01-01 00:00:00
612	Kenneth	Ellis	kenneth180@yahoo.com	960.456.0893x50522	550 Peter Park\nChristinaview, OH 41784	2021-01-01 00:00:00	2021-01-01 00:00:00
613	Sarah	Pearson	sarah192@hotmail.com	+1-379-264-7907x710	1741 Rose Drive\nLake Markchester, TN 37161	2021-01-01 00:00:00	2021-01-01 00:00:00
614	Dave	Singh	dave395@yahoo.com	+1-864-983-2766	3280 Sarah Freeway Apt. 086\nAmandashire, KS 19301	2021-01-01 00:00:00	2021-01-01 00:00:00
615	Maxwell	Barton	maxwell504@yahoo.com	823-528-5523	934 Mcdaniel Loaf Apt. 271\nJulieland, MN 96464	2021-01-01 00:00:00	2021-01-01 00:00:00
616	Justin	Soto	justin939@yahoo.com	+1-649-386-5849x6470	71415 Suzanne Hills Apt. 875\nWest Jonathanshire, WV 90054	2021-01-01 00:00:00	2021-01-01 00:00:00
617	Jacob	Smith	jacob780@yahoo.com	+1-253-335-5546	82508 Garcia Meadows\nKaylaland, AZ 25752	2021-01-01 00:00:00	2021-01-01 00:00:00
618	Maria	Hunter	maria444@yahoo.com	001-482-713-3048x6725	0375 Garcia Corners\nTranland, TN 24838	2021-01-01 00:00:00	2021-01-01 00:00:00
619	Ashley	Carter	ashley001@gmail.com	410.310.3320x966	77362 Xavier Locks\nLake Kristifurt, OR 41149	2021-01-01 00:00:00	2021-01-01 00:00:00
620	Melissa	Sanchez	melissa991@hotmail.com	001-350-784-3704x300	25373 Nichols Curve\nSouth Stephenstad, IN 39977	2021-01-01 00:00:00	2021-01-01 00:00:00
621	Jacqueline	Scott	jacqueline508@hotmail.com	(944)526-1958	791 Justin Flat\nTaraside, MI 25754	2021-01-01 00:00:00	2021-01-01 00:00:00
622	Deanna	Ewing	deanna822@hotmail.com	(849)803-4478x256	249 Arias Unions\nPort Rhondastad, CO 92335	2021-01-01 00:00:00	2021-01-01 00:00:00
623	Christopher	Arias	christopher961@yahoo.com	573.445.7336x640	176 Stone Trail Apt. 916\nWatsonburgh, NV 98151	2021-01-01 00:00:00	2021-01-01 00:00:00
624	Wendy	Boyer	wendy897@yahoo.com	001-218-249-7248x23968	48485 Nicholson Hills Suite 685\nBradyhaven, WY 15861	2021-01-01 00:00:00	2021-01-01 00:00:00
625	Richard	Taylor	richard117@yahoo.com	822.807.8788x2202	939 Linda Club Suite 317\nGregorychester, CT 80891	2021-01-01 00:00:00	2021-01-01 00:00:00
626	Mary	Thornton	mary385@gmail.com	271-620-9970	08443 Javier Shoals\nPort Chrisborough, OH 51943	2021-01-01 00:00:00	2021-01-01 00:00:00
627	Michael	Forbes	michael701@yahoo.com	886-813-5956x5208	72375 Daniel Estates Suite 420\nStewartview, CA 22322	2021-01-01 00:00:00	2021-01-01 00:00:00
628	Maria	Higgins	maria527@yahoo.com	+1-397-740-3574x67357	USS Dominguez\nFPO AP 20421	2021-01-01 00:00:00	2021-01-01 00:00:00
629	Valerie	Parker	valerie098@hotmail.com	+1-387-772-8010x861	USCGC Gilmore\nFPO AP 14597	2021-01-01 00:00:00	2021-01-01 00:00:00
630	Reginald	Le	reginald522@gmail.com	001-607-724-2611x283	Unit 6955 Box 2360\nDPO AA 66391	2021-01-01 00:00:00	2021-01-01 00:00:00
631	Mark	Powers	mark687@gmail.com	864.847.8882x876	Unit 2726 Box 5880\nDPO AP 29375	2021-01-01 00:00:00	2021-01-01 00:00:00
632	Timothy	Scott	timothy513@yahoo.com	813-932-5088x326	3623 Eric Mews Suite 734\nEllisborough, IA 67820	2021-01-01 00:00:00	2021-01-01 00:00:00
633	Alice	Phillips	alice214@yahoo.com	547.353.0331x5972	30415 James Oval\nAaronbury, OK 09412	2021-01-01 00:00:00	2021-01-01 00:00:00
634	Ronald	Miller	ronald664@gmail.com	+1-642-907-9671x39943	366 Martinez Union Suite 361\nSouth Christy, PA 22017	2021-01-01 00:00:00	2021-01-01 00:00:00
635	Mark	Oneal	mark168@hotmail.com	(908)853-1464	63972 Tina Trail\nPort James, ND 71517	2021-01-01 00:00:00	2021-01-01 00:00:00
636	Renee	Hogan	renee032@gmail.com	001-355-991-1915x753	0029 Beck Orchard\nWest Dustin, NH 69284	2021-01-01 00:00:00	2021-01-01 00:00:00
637	Stephanie	Harris	stephanie591@gmail.com	393-918-0211x45397	Unit 6839 Box 8967\nDPO AE 66274	2021-01-01 00:00:00	2021-01-01 00:00:00
638	Kimberly	Mcmahon	kimberly418@yahoo.com	427.379.2276	83223 Wilson Causeway\nKirkfort, MO 33850	2021-01-01 00:00:00	2021-01-01 00:00:00
639	John	Hunter	john946@hotmail.com	2409286498	5714 Snyder Estate Apt. 992\nSouth Brianfurt, WV 02480	2021-01-01 00:00:00	2021-01-01 00:00:00
640	Michelle	Mason	michelle491@hotmail.com	001-582-505-6995x731	4881 Willis Falls Apt. 036\nEast Justinchester, NC 01714	2021-01-01 00:00:00	2021-01-01 00:00:00
641	Sarah	Pineda	sarah731@gmail.com	328-884-4608x759	119 Reyes Square Suite 045\nNew Lynn, OR 75626	2021-01-01 00:00:00	2021-01-01 00:00:00
642	Theresa	Humphrey	theresa573@yahoo.com	651.556.2039	11725 Ryan Knoll Suite 165\nSouth Nicole, DE 15079	2021-01-01 00:00:00	2021-01-01 00:00:00
643	Megan	Ward	megan414@yahoo.com	+1-499-901-5622x24495	55341 Walker Hills Suite 676\nRossberg, IN 57289	2021-01-01 00:00:00	2021-01-01 00:00:00
644	Jennifer	Lawrence	jennifer494@gmail.com	(283)477-6072x5579	7765 Marquez Course Suite 605\nNorth Kimberlyshire, MT 53729	2021-01-01 00:00:00	2021-01-01 00:00:00
645	Barry	Jackson	barry223@hotmail.com	3464323387	258 Rebecca Wall Suite 651\nPaulmouth, SC 39127	2021-01-01 00:00:00	2021-01-01 00:00:00
646	Ashlee	White	ashlee403@yahoo.com	830-843-2898	28579 Ochoa Mews Suite 547\nKyletown, PA 11688	2021-01-01 00:00:00	2021-01-01 00:00:00
647	Travis	Torres	travis454@gmail.com	(592)319-1557	8125 Washington Ranch\nNorth Jasonchester, MD 64635	2021-01-01 00:00:00	2021-01-01 00:00:00
648	John	Davis	john989@yahoo.com	+1-300-972-3820x8502	951 Vasquez Mountains\nJuliefort, ND 15885	2021-01-01 00:00:00	2021-01-01 00:00:00
649	Brandi	Griffin	brandi028@gmail.com	466.219.2638	6629 James Path\nRuizchester, WA 68057	2021-01-01 00:00:00	2021-01-01 00:00:00
650	Dustin	Byrd	dustin568@yahoo.com	001-250-203-8349	00575 Ethan Summit Apt. 523\nGibsontown, WI 57201	2021-01-01 00:00:00	2021-01-01 00:00:00
651	Donna	Parker	donna820@hotmail.com	001-279-392-3167x413	USS Hill\nFPO AE 16414	2021-01-01 00:00:00	2021-01-01 00:00:00
652	Dustin	Moore	dustin682@yahoo.com	946.953.8201	PSC 2792, Box 0276\nAPO AA 27340	2021-01-01 00:00:00	2021-01-01 00:00:00
653	Laura	Peterson	laura088@yahoo.com	3548696265	4122 Fox Common Suite 274\nEast Lee, KS 26699	2021-01-01 00:00:00	2021-01-01 00:00:00
654	Angela	Reed	angela069@gmail.com	511.636.9879x96395	239 Isabella Isle\nCharlesmouth, DC 31115	2021-01-01 00:00:00	2021-01-01 00:00:00
655	Brittany	Rasmussen	brittany860@yahoo.com	+1-369-218-7882	75405 Anthony Landing\nHughesstad, MT 29189	2021-01-01 00:00:00	2021-01-01 00:00:00
656	Scott	Horton	scott926@yahoo.com	269-265-4029x3597	453 Jones Extensions\nChenfurt, RI 22453	2021-01-01 00:00:00	2021-01-01 00:00:00
657	Michaela	Walker	michaela849@gmail.com	+1-854-281-4975x46192	2260 Escobar Inlet\nWest Shannonstad, IA 56110	2021-01-01 00:00:00	2021-01-01 00:00:00
658	Randall	Cline	randall966@gmail.com	001-458-533-8848x2568	22083 Paul Shore\nPort Scottchester, VI 84569	2021-01-01 00:00:00	2021-01-01 00:00:00
659	Alan	Schaefer	alan136@hotmail.com	(849)515-3659	3876 Caroline Passage Suite 212\nTerrystad, KY 85586	2021-01-01 00:00:00	2021-01-01 00:00:00
660	Karen	Frazier	karen686@gmail.com	001-205-223-6388	71086 James Burgs\nSouth John, UT 64631	2021-01-01 00:00:00	2021-01-01 00:00:00
661	Robert	Roman	robert631@gmail.com	410-687-8805	822 Cummings Island Apt. 986\nJohnsonstad, NJ 74521	2021-01-01 00:00:00	2021-01-01 00:00:00
662	Peter	Martin	peter958@yahoo.com	330-738-6629	590 Jason Plaza Apt. 225\nNorth Andrew, GA 18949	2021-01-01 00:00:00	2021-01-01 00:00:00
663	Raymond	Murphy	raymond792@yahoo.com	770-818-3805	747 Schmitt Spurs Suite 013\nJamesbury, NE 29325	2021-01-01 00:00:00	2021-01-01 00:00:00
664	Debbie	Gamble	debbie081@yahoo.com	936.392.2372	Unit 9986 Box 0234\nDPO AA 23421	2021-01-01 00:00:00	2021-01-01 00:00:00
665	Benjamin	Cherry	benjamin194@yahoo.com	001-741-963-8651x5851	954 Schaefer Harbor Suite 450\nWest Christine, IN 61212	2021-01-01 00:00:00	2021-01-01 00:00:00
666	Courtney	Evans	courtney938@hotmail.com	(322)575-8538x015	895 Joshua Trail Suite 454\nNorth Nicolebury, VA 37311	2021-01-01 00:00:00	2021-01-01 00:00:00
667	Katherine	Foster	katherine949@yahoo.com	(898)785-1487x00540	852 Larsen Plains Apt. 539\nAimeetown, NH 01419	2021-01-01 00:00:00	2021-01-01 00:00:00
668	Erik	Edwards	erik042@yahoo.com	5769198687	494 Berg Glen Suite 248\nPort Charles, ID 48208	2021-01-01 00:00:00	2021-01-01 00:00:00
669	Michael	Williams	michael789@gmail.com	335.537.0486x2073	92027 Vaughan Run Apt. 859\nWest Audrey, ME 44288	2021-01-01 00:00:00	2021-01-01 00:00:00
670	Brandon	Hurley	brandon713@gmail.com	659.903.9860x800	2539 Vasquez Forge\nNorth Justin, MA 45543	2021-01-01 00:00:00	2021-01-01 00:00:00
671	Cynthia	Burton	cynthia521@hotmail.com	+1-580-564-3583x1084	44051 Franklin Highway Suite 209\nEast Kristenberg, MT 81970	2021-01-01 00:00:00	2021-01-01 00:00:00
672	Jason	Miller	jason664@yahoo.com	(431)963-8530	046 Ellis Valley Apt. 782\nBakerfort, PA 84009	2021-01-01 00:00:00	2021-01-01 00:00:00
673	Matthew	Foster	matthew085@yahoo.com	(596)279-3516x263	9157 Richard Rue\nZacharyside, CO 19300	2021-01-01 00:00:00	2021-01-01 00:00:00
674	Amanda	Maddox	amanda492@hotmail.com	(510)668-4133x04500	Unit 0062 Box 9846\nDPO AE 66489	2021-01-01 00:00:00	2021-01-01 00:00:00
675	Sherry	Ball	sherry249@yahoo.com	001-347-212-5020	8868 Whitney Harbors\nWest Christopher, AK 21976	2021-01-01 00:00:00	2021-01-01 00:00:00
676	Michael	Gutierrez	michael118@yahoo.com	877.981.8670x28903	21209 Bryant Green Suite 889\nDanielview, IA 03580	2021-01-01 00:00:00	2021-01-01 00:00:00
677	Joseph	Taylor	joseph952@yahoo.com	(657)482-1050	0876 Mark Square Apt. 459\nSouth Benjamin, AZ 87634	2021-01-01 00:00:00	2021-01-01 00:00:00
678	James	Salazar	james252@hotmail.com	498.898.9644x5415	825 Webb Parks\nRachaelfort, NY 37851	2021-01-01 00:00:00	2021-01-01 00:00:00
679	Christina	Frank	christina562@gmail.com	556.737.7292	52702 Todd Throughway Suite 213\nReyesfort, AK 94204	2021-01-01 00:00:00	2021-01-01 00:00:00
680	Jeffrey	Nichols	jeffrey424@hotmail.com	231.222.7792x11542	07423 Barry Creek\nNorth Alexanderstad, AZ 05617	2021-01-01 00:00:00	2021-01-01 00:00:00
681	Richard	Pitts	richard816@hotmail.com	+1-581-900-7647x2919	3756 Amy Village\nNathanshire, MS 53246	2021-01-01 00:00:00	2021-01-01 00:00:00
682	Edward	Nelson	edward728@hotmail.com	001-364-593-2921x39746	560 Garza Village\nHunterville, GU 00628	2021-01-01 00:00:00	2021-01-01 00:00:00
683	Elizabeth	Hanson	elizabeth377@gmail.com	+1-778-894-2288x062	557 Melissa Corner Suite 083\nSouth Danny, NH 43352	2021-01-01 00:00:00	2021-01-01 00:00:00
684	Derek	Braun	derek772@yahoo.com	(680)296-3516	460 Courtney Stream Suite 785\nSouth Andrea, MA 46747	2021-01-01 00:00:00	2021-01-01 00:00:00
685	Susan	Gonzales	susan934@gmail.com	001-445-807-0076x4433	84226 Billy Springs Apt. 474\nEast Tracyburgh, VT 39227	2021-01-01 00:00:00	2021-01-01 00:00:00
686	Sara	Dougherty	sara943@yahoo.com	(490)803-1369	Unit 4124 Box 9439\nDPO AE 93933	2021-01-01 00:00:00	2021-01-01 00:00:00
687	Jade	Garcia	jade974@hotmail.com	977.909.0329x80353	655 Montgomery Manors Apt. 721\nYounghaven, NM 48287	2021-01-01 00:00:00	2021-01-01 00:00:00
688	Connie	Huffman	connie399@gmail.com	001-869-690-7436	45831 Eric Glens\nMejiaton, MP 20536	2021-01-01 00:00:00	2021-01-01 00:00:00
689	Jennifer	Flores	jennifer631@yahoo.com	001-536-974-2544	223 Castillo Ramp\nKentland, CO 60538	2021-01-01 00:00:00	2021-01-01 00:00:00
690	Tami	White	tami102@yahoo.com	(538)661-2738x84069	34622 Tanner Route\nWest Justin, AZ 29659	2021-01-01 00:00:00	2021-01-01 00:00:00
691	Zachary	Anderson	zachary872@hotmail.com	+1-993-981-9596x58922	890 Bass Lights Apt. 536\nJenniferland, OR 57308	2021-01-01 00:00:00	2021-01-01 00:00:00
692	Timothy	Stewart	timothy294@yahoo.com	+1-349-279-1534x7449	07153 Cynthia Stravenue Suite 913\nEast Gregory, TN 95385	2021-01-01 00:00:00	2021-01-01 00:00:00
693	Ronald	Rojas	ronald374@hotmail.com	4813500615	7677 Jonathan Forges\nNew Alexandra, HI 39908	2021-01-01 00:00:00	2021-01-01 00:00:00
694	Dale	Thomas	dale687@yahoo.com	+1-615-440-2082x613	76807 Rebecca Curve\nEvansview, VT 81507	2021-01-01 00:00:00	2021-01-01 00:00:00
695	Dawn	Holmes	dawn025@yahoo.com	379-789-5616	308 Phillips Brook\nNorth Kimberlyhaven, WY 85396	2021-01-01 00:00:00	2021-01-01 00:00:00
696	Joseph	Hernandez	joseph449@yahoo.com	+1-647-334-9711	30304 James Crossing Apt. 054\nLake Ryanberg, ND 76025	2021-01-01 00:00:00	2021-01-01 00:00:00
697	Stacey	Arnold	stacey154@gmail.com	(796)586-2831x734	570 Mccarthy Meadow Apt. 256\nNew Kenneth, OK 85981	2021-01-01 00:00:00	2021-01-01 00:00:00
698	William	Gordon	william896@gmail.com	715-696-5412x6721	5826 Megan Heights\nLake Christopher, VI 34387	2021-01-01 00:00:00	2021-01-01 00:00:00
699	Desiree	Moore	desiree542@yahoo.com	(656)773-0452	9490 Elizabeth Trace\nDavisburgh, MA 33185	2021-01-01 00:00:00	2021-01-01 00:00:00
700	Renee	Davis	renee429@hotmail.com	979.623.1497	987 Dean Crossroad Apt. 789\nPort Josephfort, WV 12372	2021-01-01 00:00:00	2021-01-01 00:00:00
701	Shaun	West	shaun314@hotmail.com	577.266.4621	9848 Perez Centers Apt. 318\nZacharytown, IN 62332	2021-01-01 00:00:00	2021-01-01 00:00:00
702	Lee	Griffin	lee624@yahoo.com	312-457-5541	PSC 7339, Box 4660\nAPO AA 46967	2021-01-01 00:00:00	2021-01-01 00:00:00
703	Paige	Brown	paige802@hotmail.com	001-613-274-2833x417	8998 Brianna Cliffs\nCarolmouth, SC 12562	2021-01-01 00:00:00	2021-01-01 00:00:00
704	Norman	Mendoza	norman540@gmail.com	+1-862-593-9775x5560	5778 Megan Green Suite 666\nPowersberg, RI 38418	2021-01-01 00:00:00	2021-01-01 00:00:00
705	Henry	Jackson	henry067@hotmail.com	547.401.5133x318	1940 Amber Brooks\nRamosshire, ME 13085	2021-01-01 00:00:00	2021-01-01 00:00:00
706	Lindsey	Ward	lindsey512@hotmail.com	883-203-4836x29841	0798 Ray Tunnel Apt. 202\nSouth Ashleyshire, NM 41732	2021-01-01 00:00:00	2021-01-01 00:00:00
707	Joel	Schmidt	joel556@hotmail.com	7194900744	Unit 9436 Box 9697\nDPO AA 49383	2021-01-01 00:00:00	2021-01-01 00:00:00
708	Steven	Clark	steven230@gmail.com	8368545772	130 Serrano Cliffs Apt. 510\nEast Dakota, NC 29984	2021-01-01 00:00:00	2021-01-01 00:00:00
709	Carlos	English	carlos611@hotmail.com	001-759-671-7016	18039 Craig Underpass\nLake James, AL 26848	2021-01-01 00:00:00	2021-01-01 00:00:00
710	Jason	Patton	jason675@gmail.com	762-817-3507x4714	21302 Michael Coves\nPort Charleneville, CA 06031	2021-01-01 00:00:00	2021-01-01 00:00:00
711	Patrick	Diaz	patrick328@yahoo.com	429-596-4163x478	7738 Julie Course\nPort Jennifer, SC 51260	2021-01-01 00:00:00	2021-01-01 00:00:00
712	Kelly	Jackson	kelly874@hotmail.com	(408)530-1131	79950 Munoz Shoals\nNorth Michelle, UT 77289	2021-01-01 00:00:00	2021-01-01 00:00:00
713	Craig	Russell	craig182@gmail.com	497-866-7354x204	45563 Stuart Crescent Suite 842\nNorth Alejandro, MA 04963	2021-01-01 00:00:00	2021-01-01 00:00:00
714	Jessica	Jones	jessica096@yahoo.com	+1-404-459-9545	8728 Reed Loaf\nTrevinochester, ID 52471	2021-01-01 00:00:00	2021-01-01 00:00:00
715	Gabriel	Keller	gabriel919@hotmail.com	513.832.5672	PSC 4250, Box 3628\nAPO AE 93609	2021-01-01 00:00:00	2021-01-01 00:00:00
716	Michael	Bell	michael656@gmail.com	+1-717-330-7464x3447	099 Frank Greens\nLake Colin, OK 28365	2021-01-01 00:00:00	2021-01-01 00:00:00
717	Maria	Bailey	maria744@gmail.com	(527)370-9998x293	39751 Jesse Land Suite 440\nKimberlyview, WV 04070	2021-01-01 00:00:00	2021-01-01 00:00:00
718	Stephanie	Hayes	stephanie591@gmail.com	001-257-377-7373	5127 Stephen Parkways Suite 413\nGreenport, MT 02733	2021-01-01 00:00:00	2021-01-01 00:00:00
719	Patricia	Mckinney	patricia032@yahoo.com	981-269-5706	2925 Howard Dam Apt. 394\nPort Nathaniel, OK 03023	2021-01-01 00:00:00	2021-01-01 00:00:00
720	Scott	Smith	scott122@hotmail.com	470.220.5503	PSC 5058, Box 4776\nAPO AE 63247	2021-01-01 00:00:00	2021-01-01 00:00:00
721	Rachel	Hall	rachel022@yahoo.com	619.864.3645x835	086 Mackenzie Parkway\nEast Anita, FM 29861	2021-01-01 00:00:00	2021-01-01 00:00:00
722	Tyler	Harper	tyler228@gmail.com	(418)248-8032	36360 Michael Lane Apt. 629\nLake Katherine, WI 14426	2021-01-01 00:00:00	2021-01-01 00:00:00
723	Amy	Cruz	amy257@gmail.com	+1-812-342-2562x3508	8687 Mckee Fall\nLopezfort, MA 30238	2021-01-01 00:00:00	2021-01-01 00:00:00
724	Jeremy	Kim	jeremy673@gmail.com	642-338-7099x14435	914 Miller Pine\nSusanville, UT 60128	2021-01-01 00:00:00	2021-01-01 00:00:00
725	Brandon	Gonzales	brandon867@yahoo.com	852.328.6609x77659	2390 Ronald Highway Suite 142\nLake Juliahaven, MT 52498	2021-01-01 00:00:00	2021-01-01 00:00:00
726	Karen	Burton	karen036@gmail.com	(638)518-8534x31621	6486 Foster Port Suite 357\nWest Aaronhaven, KS 08314	2021-01-01 00:00:00	2021-01-01 00:00:00
727	John	Bray	john425@yahoo.com	475.310.4510	409 Barnes Unions\nNew Carriehaven, PR 54003	2021-01-01 00:00:00	2021-01-01 00:00:00
728	Louis	Thornton	louis470@yahoo.com	+1-759-996-6245	951 Timothy Dam\nNorth Amandaview, VI 39838	2021-01-01 00:00:00	2021-01-01 00:00:00
729	Nicholas	Turner	nicholas241@gmail.com	256-356-3275x4606	80346 Jones Crossroad Suite 562\nNorth Davidbury, PW 84700	2021-01-01 00:00:00	2021-01-01 00:00:00
730	Dean	Jones	dean694@yahoo.com	+1-598-583-5391	2773 Theresa Grove\nChristinaland, CT 75075	2021-01-01 00:00:00	2021-01-01 00:00:00
731	Patricia	Thornton	patricia824@gmail.com	252-561-9417x616	36249 Kevin Gateway\nEast Linda, WV 09678	2021-01-01 00:00:00	2021-01-01 00:00:00
732	Michael	Mitchell	michael062@yahoo.com	001-723-540-1413	859 Joseph Plaza\nEast Lisafurt, NY 81741	2021-01-01 00:00:00	2021-01-01 00:00:00
733	Jared	Brown	jared585@hotmail.com	923-434-1537	6775 Martha Glen Apt. 109\nPort James, OR 55242	2021-01-01 00:00:00	2021-01-01 00:00:00
734	Darlene	Barajas	darlene559@yahoo.com	001-524-492-7096	93517 Rivera Mills Suite 464\nGarrettstad, SD 55487	2021-01-01 00:00:00	2021-01-01 00:00:00
735	Mikayla	Rush	mikayla855@hotmail.com	639-818-9453	93541 Delacruz Hill\nKristietown, WA 97023	2021-01-01 00:00:00	2021-01-01 00:00:00
736	Logan	Cuevas	logan714@hotmail.com	5659349268	214 Mccann Unions Apt. 975\nPort Amy, WV 25233	2021-01-01 00:00:00	2021-01-01 00:00:00
737	Troy	Moreno	troy126@hotmail.com	+1-487-959-6640x872	167 Mann Loop\nDianabury, SC 97126	2021-01-01 00:00:00	2021-01-01 00:00:00
738	Daniel	Sanders	daniel683@hotmail.com	3419054858	14785 Cole Ford\nPort Garretthaven, PR 67498	2021-01-01 00:00:00	2021-01-01 00:00:00
739	Valerie	Wood	valerie663@yahoo.com	+1-403-230-3695x225	47412 Dixon Island Apt. 931\nBrandonberg, MN 03076	2021-01-01 00:00:00	2021-01-01 00:00:00
740	Crystal	Garcia	crystal542@yahoo.com	7203049530	1242 Michael Prairie\nJessicaville, OK 95190	2021-01-01 00:00:00	2021-01-01 00:00:00
741	Margaret	Bryant	margaret393@yahoo.com	231.711.1324x8691	36002 Brooks Haven\nWest Russell, PA 18998	2021-01-01 00:00:00	2021-01-01 00:00:00
742	Tiffany	Gibson	tiffany341@hotmail.com	001-427-998-2401x633	PSC 9779, Box 9375\nAPO AA 20891	2021-01-01 00:00:00	2021-01-01 00:00:00
743	Steven	James	steven627@gmail.com	825.573.9252x3580	31599 Ochoa Shoals Suite 993\nJohnsonview, MD 79505	2021-01-01 00:00:00	2021-01-01 00:00:00
744	Savannah	Garcia	savannah690@yahoo.com	632-273-7498	PSC 6474, Box 3182\nAPO AP 72927	2021-01-01 00:00:00	2021-01-01 00:00:00
745	Rebecca	Sanchez	rebecca444@hotmail.com	(743)949-6095x7412	28028 Jeffrey Roads\nCartermouth, MA 05489	2021-01-01 00:00:00	2021-01-01 00:00:00
746	Victoria	Flynn	victoria219@yahoo.com	(930)218-7078x3408	68173 Philip Brook\nPhelpsport, ID 73739	2021-01-01 00:00:00	2021-01-01 00:00:00
747	Darren	Brown	darren572@gmail.com	001-799-905-9110	37185 Castillo Mission\nPort Jenniferberg, ME 36724	2021-01-01 00:00:00	2021-01-01 00:00:00
748	Lisa	Simon	lisa023@gmail.com	001-787-934-5988x930	238 Brent Isle Apt. 045\nWilliamfurt, GA 01652	2021-01-01 00:00:00	2021-01-01 00:00:00
749	Bradley	Woodward	bradley197@hotmail.com	001-636-268-0475x3283	57700 Townsend Island\nLake Jason, CT 43722	2021-01-01 00:00:00	2021-01-01 00:00:00
750	Kimberly	Wilson	kimberly909@gmail.com	(241)645-3158	9075 Santana Ramp\nNorth Patrick, NY 97702	2021-01-01 00:00:00	2021-01-01 00:00:00
751	Andrew	Jordan	andrew510@gmail.com	+1-737-414-1967x525	6613 Arthur Freeway Suite 101\nCarlsonland, MN 54855	2021-01-01 00:00:00	2021-01-01 00:00:00
752	Jose	Howard	jose622@hotmail.com	634-361-2453	3671 Edward Station\nWellshaven, DC 19303	2021-01-01 00:00:00	2021-01-01 00:00:00
753	Andres	Martinez	andres656@hotmail.com	001-384-584-8042x36315	74763 Julia Prairie\nLesliechester, ID 46774	2021-01-01 00:00:00	2021-01-01 00:00:00
754	Donna	Pruitt	donna729@hotmail.com	+1-871-769-7821x11635	68664 Tracey Fork Suite 488\nCastroland, UT 86795	2021-01-01 00:00:00	2021-01-01 00:00:00
755	Jonathan	Roberts	jonathan132@hotmail.com	001-721-454-6235x745	9736 Richard Ways\nNorth Amandaton, TX 46233	2021-01-01 00:00:00	2021-01-01 00:00:00
756	Jennifer	Harris	jennifer784@hotmail.com	(660)647-2172	128 Scott Squares Apt. 917\nNorth Melissamouth, DE 58297	2021-01-01 00:00:00	2021-01-01 00:00:00
757	Holly	Meyer	holly693@gmail.com	(558)856-5422x01537	161 Matthew Ports\nBrowningtown, NM 96130	2021-01-01 00:00:00	2021-01-01 00:00:00
758	Jason	Dodson	jason175@gmail.com	926.527.8399	51591 Debra Route\nJasonstad, TN 52677	2021-01-01 00:00:00	2021-01-01 00:00:00
759	Jennifer	Jones	jennifer906@yahoo.com	(288)997-9990x482	9001 Timothy Oval\nPort Richardshire, NV 30035	2021-01-01 00:00:00	2021-01-01 00:00:00
760	Jeremy	Hill	jeremy805@gmail.com	679-926-8924x655	95381 Scott Village\nCoreyfurt, MS 53713	2021-01-01 00:00:00	2021-01-01 00:00:00
761	David	Sherman	david697@gmail.com	+1-607-701-8702	8756 Elizabeth Rapids\nPort Frankview, WV 47191	2021-01-01 00:00:00	2021-01-01 00:00:00
762	Tanya	Lee	tanya091@gmail.com	678.982.2826x454	USNV Friedman\nFPO AE 19195	2021-01-01 00:00:00	2021-01-01 00:00:00
763	Brittany	Wagner	brittany291@yahoo.com	001-730-633-6514x1549	90537 Wright Shores\nSouth Brianton, VT 01996	2021-01-01 00:00:00	2021-01-01 00:00:00
764	Alison	Brown	alison729@yahoo.com	001-980-435-1069	69570 Emily Trafficway Apt. 158\nNew Carly, IL 04126	2021-01-01 00:00:00	2021-01-01 00:00:00
765	Molly	Vance	molly018@yahoo.com	+1-510-539-1136	3966 Wright Center\nPort Jacobfurt, AR 48155	2021-01-01 00:00:00	2021-01-01 00:00:00
766	Karen	Chavez	karen679@gmail.com	+1-830-461-4836x41554	2016 Fernandez Garden\nAnitachester, RI 85519	2021-01-01 00:00:00	2021-01-01 00:00:00
767	Michael	Gibson	michael355@yahoo.com	393.229.2305x784	04277 Jay Cliffs Apt. 639\nPort Francisfurt, KS 78287	2021-01-01 00:00:00	2021-01-01 00:00:00
768	Jonathan	Hamilton	jonathan892@gmail.com	765.661.5905	374 Simpson Bypass\nHaynesfurt, PR 14474	2021-01-01 00:00:00	2021-01-01 00:00:00
769	Jasmine	Williams	jasmine259@yahoo.com	+1-632-234-8332x9921	4424 Hardy Crossing\nNorth Erikberg, ME 75514	2021-01-01 00:00:00	2021-01-01 00:00:00
770	Michelle	Le	michelle611@gmail.com	(460)898-0378x89889	459 Rios Oval\nRiceville, TN 58432	2021-01-01 00:00:00	2021-01-01 00:00:00
771	David	Sullivan	david746@hotmail.com	001-712-473-0912x43346	27306 Johnson Pines Apt. 975\nLopezside, KS 27739	2021-01-01 00:00:00	2021-01-01 00:00:00
772	Kevin	Brown	kevin631@hotmail.com	433.225.9924x047	9457 William Ridges\nAndrewville, IA 59679	2021-01-01 00:00:00	2021-01-01 00:00:00
773	Jody	Perez	jody284@hotmail.com	+1-795-270-7915x393	431 Bates Cliff\nEast Xavierberg, MO 01877	2021-01-01 00:00:00	2021-01-01 00:00:00
774	Dale	Jackson	dale525@gmail.com	(577)979-1485x583	72945 George Hollow Apt. 351\nNorth Michelle, WI 73352	2021-01-01 00:00:00	2021-01-01 00:00:00
775	Jeffrey	Riley	jeffrey516@hotmail.com	846-884-9660	10691 Shaun Stream\nEast Amy, PW 52699	2021-01-01 00:00:00	2021-01-01 00:00:00
776	Christopher	Lowe	christopher965@yahoo.com	001-657-561-1409x96972	5628 Caitlin Land\nSimsview, MO 81713	2021-01-01 00:00:00	2021-01-01 00:00:00
777	Christopher	Jones	christopher495@hotmail.com	788.498.6693x3304	124 Joseph Extensions\nSouth Michelle, LA 45057	2021-01-01 00:00:00	2021-01-01 00:00:00
778	Stephen	Davis	stephen720@hotmail.com	+1-655-594-6887x0687	PSC 2962, Box 6248\nAPO AP 20294	2021-01-01 00:00:00	2021-01-01 00:00:00
779	Tyler	Mays	tyler243@hotmail.com	275.225.3842	367 Rachel Grove Suite 970\nBrendaborough, VI 01933	2021-01-01 00:00:00	2021-01-01 00:00:00
780	Bobby	Taylor	bobby302@yahoo.com	+1-327-211-7433	19957 Monica Cove Apt. 026\nAyalaside, GA 93807	2021-01-01 00:00:00	2021-01-01 00:00:00
781	Sheryl	Ali	sheryl504@yahoo.com	+1-246-484-2736	13661 Taylor Lane Apt. 880\nEast Teresachester, FM 54841	2021-01-01 00:00:00	2021-01-01 00:00:00
782	Alexandria	Nunez	alexandria320@yahoo.com	(718)279-8629	56249 Michelle Pine Suite 120\nMossview, IL 73574	2021-01-01 00:00:00	2021-01-01 00:00:00
783	Sara	Bradley	sara100@gmail.com	892-262-5066x653	65303 James Camp Apt. 047\nMunozberg, IA 68455	2021-01-01 00:00:00	2021-01-01 00:00:00
784	Elizabeth	Huffman	elizabeth491@gmail.com	247-835-4598	703 Petersen Pine Apt. 208\nPort Kimberly, ID 81860	2021-01-01 00:00:00	2021-01-01 00:00:00
785	Charles	Thompson	charles922@hotmail.com	+1-380-455-7660x6291	0104 Mckenzie Views Apt. 810\nDavidmouth, TN 52837	2021-01-01 00:00:00	2021-01-01 00:00:00
786	Christopher	Clark	christopher137@gmail.com	+1-629-481-9991	103 David Plain Suite 286\nNorth Abigail, KS 09559	2021-01-01 00:00:00	2021-01-01 00:00:00
787	Elizabeth	Wilson	elizabeth703@hotmail.com	001-214-542-4442x3195	0057 Julie Radial\nMarkstown, KS 51730	2021-01-01 00:00:00	2021-01-01 00:00:00
788	Brittany	Hart	brittany840@hotmail.com	(388)554-6167	7469 Stephens Views\nIsaacburgh, MH 09840	2021-01-01 00:00:00	2021-01-01 00:00:00
789	Rebecca	Sanchez	rebecca772@hotmail.com	001-802-442-8479x73083	533 Mackenzie Summit Apt. 109\nNorth Gina, PW 54686	2021-01-01 00:00:00	2021-01-01 00:00:00
790	Andrew	Garcia	andrew686@gmail.com	001-441-510-1560x6135	598 Anderson Falls\nJenniferfurt, ME 41993	2021-01-01 00:00:00	2021-01-01 00:00:00
791	Michael	Phillips	michael887@gmail.com	460-299-3979x795	0209 Tracy Crossing\nSouth John, OR 87859	2021-01-01 00:00:00	2021-01-01 00:00:00
792	Tiffany	Valdez	tiffany639@gmail.com	310.433.0128x3729	53638 Jessica Brook Suite 790\nLynchchester, NC 05715	2021-01-01 00:00:00	2021-01-01 00:00:00
793	Jeff	Barnes	jeff354@yahoo.com	001-436-910-9110x368	92875 Berger Light\nWeaverland, MA 62792	2021-01-01 00:00:00	2021-01-01 00:00:00
794	Melissa	Fernandez	melissa984@yahoo.com	4125222036	9505 Kimberly Flat\nNew Cheryl, MA 24028	2021-01-01 00:00:00	2021-01-01 00:00:00
795	Lori	Phillips	lori136@yahoo.com	747.714.5987x8586	0651 Amanda Pass Apt. 153\nKaylaburgh, MT 31241	2021-01-01 00:00:00	2021-01-01 00:00:00
796	Devin	Rosales	devin304@hotmail.com	649-988-5199x69426	14168 Jason Squares Suite 040\nNew Dianechester, VI 08705	2021-01-01 00:00:00	2021-01-01 00:00:00
797	Sabrina	Phillips	sabrina652@hotmail.com	885-612-1285	Unit 2239 Box 7433\nDPO AA 57572	2021-01-01 00:00:00	2021-01-01 00:00:00
798	Michael	Guerra	michael824@gmail.com	+1-590-473-8428x148	779 Bobby Coves\nPort Leonardfurt, ND 03088	2021-01-01 00:00:00	2021-01-01 00:00:00
799	Jasmine	Phillips	jasmine631@yahoo.com	574.900.4235x52728	107 Charles Viaduct Suite 278\nJohnsonland, MN 02229	2021-01-01 00:00:00	2021-01-01 00:00:00
800	Julia	Meza	julia096@hotmail.com	001-792-229-9028	4414 Gloria Shoals Suite 591\nRiosburgh, DE 78079	2021-01-01 00:00:00	2021-01-01 00:00:00
801	Sharon	Jones	sharon760@gmail.com	+1-939-472-4439x0639	89339 Wilson Landing Apt. 815\nPort Amymouth, CT 27458	2021-01-01 00:00:00	2021-01-01 00:00:00
802	Deborah	Douglas	deborah159@gmail.com	+1-725-555-7991x55521	074 Jason Camp Suite 484\nNew Alyssamouth, GA 47740	2021-01-01 00:00:00	2021-01-01 00:00:00
803	Catherine	Alexander	catherine030@gmail.com	4049490626	USCGC Love\nFPO AE 18284	2021-01-01 00:00:00	2021-01-01 00:00:00
804	Nicholas	Smith	nicholas033@yahoo.com	+1-505-379-9920	14166 Christina Prairie Apt. 059\nEast Maxville, IL 33328	2021-01-01 00:00:00	2021-01-01 00:00:00
805	Jason	Brooks	jason153@hotmail.com	001-287-814-6017x55352	43916 Howell Prairie\nSouth Matthewtown, MS 74052	2021-01-01 00:00:00	2021-01-01 00:00:00
806	Samantha	Erickson	samantha703@gmail.com	323.740.1360	USS Martin\nFPO AE 60371	2021-01-01 00:00:00	2021-01-01 00:00:00
807	Timothy	Henry	timothy128@yahoo.com	(211)710-7722	92232 Joseph Pines\nJoyberg, TX 16056	2021-01-01 00:00:00	2021-01-01 00:00:00
808	Victoria	Foster	victoria776@gmail.com	430-771-8522x1862	2853 Austin Gardens\nGraychester, IA 49789	2021-01-01 00:00:00	2021-01-01 00:00:00
809	Rachel	Vance	rachel702@yahoo.com	+1-844-297-9557x863	184 Kelly Ferry Suite 812\nWest Sarahview, DC 78088	2021-01-01 00:00:00	2021-01-01 00:00:00
810	Patricia	Moore	patricia925@hotmail.com	995.457.0523x252	827 Amanda Corner\nWest Judyside, NE 20183	2021-01-01 00:00:00	2021-01-01 00:00:00
811	Vanessa	Rodriguez	vanessa309@hotmail.com	984.289.4273	76982 Bowman Mills\nOrozcoburgh, LA 54085	2021-01-01 00:00:00	2021-01-01 00:00:00
812	Theresa	Mcgrath	theresa196@hotmail.com	866.811.2570x6490	725 Garcia Brooks\nSouth Diana, MT 76922	2021-01-01 00:00:00	2021-01-01 00:00:00
813	Joshua	Paul	joshua172@gmail.com	5208152210	969 Hunter Valleys Suite 640\nEast Reneefort, MN 27755	2021-01-01 00:00:00	2021-01-01 00:00:00
814	Christopher	Salazar	christopher167@hotmail.com	719.557.2409	2290 Robert Spurs Apt. 286\nWilliamshaven, NH 80589	2021-01-01 00:00:00	2021-01-01 00:00:00
815	Daryl	Morales	daryl568@hotmail.com	3677910108	16589 Rachel Extension Suite 302\nSouth Carlosburgh, MH 51608	2021-01-01 00:00:00	2021-01-01 00:00:00
816	Alexis	Wright	alexis175@yahoo.com	757.282.4067	1180 Hannah Keys Suite 961\nSouth Barbaraburgh, WI 47648	2021-01-01 00:00:00	2021-01-01 00:00:00
817	Phillip	Matthews	phillip135@yahoo.com	(366)832-3240	65388 Robert Turnpike Apt. 562\nLiview, NE 78132	2021-01-01 00:00:00	2021-01-01 00:00:00
818	Melissa	Brooks	melissa472@yahoo.com	+1-710-596-3297	Unit 4405 Box 8899\nDPO AE 89081	2021-01-01 00:00:00	2021-01-01 00:00:00
819	Sarah	Kelley	sarah928@yahoo.com	+1-342-464-6618x56712	1843 Allison Road\nKeithmouth, WY 12266	2021-01-01 00:00:00	2021-01-01 00:00:00
820	Alexis	Williams	alexis788@yahoo.com	(767)862-3002	76876 Jill Curve Apt. 622\nDudleyshire, NM 77312	2021-01-01 00:00:00	2021-01-01 00:00:00
821	Samantha	Gray	samantha294@gmail.com	250.651.7195x262	12645 Emily Parkway Suite 748\nWest Michael, DC 89632	2021-01-01 00:00:00	2021-01-01 00:00:00
822	Ashlee	Hodge	ashlee415@gmail.com	657-213-7079x7958	7799 Sullivan Island\nBennettfurt, WA 15547	2021-01-01 00:00:00	2021-01-01 00:00:00
823	Michael	Miranda	michael982@hotmail.com	(827)301-9918x563	5651 Wright Gateway\nLake Steven, KY 23402	2021-01-01 00:00:00	2021-01-01 00:00:00
824	Tonya	Larson	tonya170@hotmail.com	429.861.6201x191	14654 Mathew Divide Apt. 046\nNew Richard, NH 29272	2021-01-01 00:00:00	2021-01-01 00:00:00
825	Richard	Hudson	richard597@yahoo.com	344.676.4299x006	68352 Andre Dam Apt. 240\nJosephshire, VA 29241	2021-01-01 00:00:00	2021-01-01 00:00:00
826	Jack	Woods	jack378@hotmail.com	394-683-9169x138	89594 Daniels Lodge Suite 160\nMichelleland, TX 32144	2021-01-01 00:00:00	2021-01-01 00:00:00
827	Pamela	Koch	pamela251@gmail.com	810.268.9916	1305 Coleman Pass Apt. 138\nEast Jeffreyburgh, MO 86834	2021-01-01 00:00:00	2021-01-01 00:00:00
828	Hayley	Gibbs	hayley307@gmail.com	3727945212	38915 Hutchinson Islands Apt. 225\nWest Lauren, MN 97976	2021-01-01 00:00:00	2021-01-01 00:00:00
829	Brenda	Schwartz	brenda786@yahoo.com	(291)784-8909x32576	17801 Miller Spring\nGrayton, WI 04278	2021-01-01 00:00:00	2021-01-01 00:00:00
830	Sean	Smith	sean043@gmail.com	+1-827-992-5538x259	666 Jacqueline Crescent\nSimsview, AK 08811	2021-01-01 00:00:00	2021-01-01 00:00:00
831	Sarah	Quinn	sarah602@yahoo.com	471.394.2413	742 Amanda Hills\nWest Charlesmouth, IN 53132	2021-01-01 00:00:00	2021-01-01 00:00:00
832	Justin	Vega	justin895@hotmail.com	(329)481-5642x1114	71757 Ricky Mountain Apt. 981\nPittmanview, AK 39141	2021-01-01 00:00:00	2021-01-01 00:00:00
833	Michelle	Davis	michelle082@gmail.com	001-408-574-0367x65243	960 Kline Harbor\nBradleymouth, OR 85203	2021-01-01 00:00:00	2021-01-01 00:00:00
834	Justin	Kennedy	justin142@hotmail.com	(501)561-1366x6701	279 Sullivan Run Apt. 146\nSouth Catherine, FM 75458	2021-01-01 00:00:00	2021-01-01 00:00:00
835	Samantha	Ford	samantha755@hotmail.com	549-611-2085	301 Stephen Gardens\nKevinbury, KS 15337	2021-01-01 00:00:00	2021-01-01 00:00:00
836	Martin	Fuller	martin186@hotmail.com	001-999-805-4399x32248	9574 Harris Mission Apt. 792\nChristopherborough, MN 93819	2021-01-01 00:00:00	2021-01-01 00:00:00
837	Christine	Cervantes	christine756@yahoo.com	001-910-422-6187	7775 Lopez Crossing Apt. 634\nMilesland, WI 18230	2021-01-01 00:00:00	2021-01-01 00:00:00
838	Michelle	Herrera	michelle191@hotmail.com	856.294.0247x816	486 Tate Divide Apt. 166\nSouth Sherry, HI 35807	2021-01-01 00:00:00	2021-01-01 00:00:00
839	Kathy	Macdonald	kathy960@yahoo.com	758.760.3342	600 Wilson Point Suite 070\nEast Clairefurt, PA 93696	2021-01-01 00:00:00	2021-01-01 00:00:00
840	Kristin	Taylor	kristin466@yahoo.com	7089941124	60458 Nichols Lights\nPort Markville, TX 97043	2021-01-01 00:00:00	2021-01-01 00:00:00
841	Jason	Clark	jason691@hotmail.com	(289)346-5074x60572	03254 Walker Parkway Suite 531\nWest Jennifer, MH 00999	2021-01-01 00:00:00	2021-01-01 00:00:00
842	Charles	Rogers	charles026@yahoo.com	(708)261-6379x1048	0329 Bishop Rue Apt. 539\nChristopherville, FL 66294	2021-01-01 00:00:00	2021-01-01 00:00:00
843	Charles	Edwards	charles338@yahoo.com	(618)334-7600	746 James Manors Apt. 879\nSouth Carrietown, KY 43012	2021-01-01 00:00:00	2021-01-01 00:00:00
844	Luis	Rose	luis792@gmail.com	549-516-8772x821	476 Robert Lodge Apt. 223\nAlexanderfort, NE 95404	2021-01-01 00:00:00	2021-01-01 00:00:00
845	Sally	Cannon	sally523@yahoo.com	001-639-219-1444x912	118 Phillips Station Apt. 835\nRicebury, WV 27149	2021-01-01 00:00:00	2021-01-01 00:00:00
846	Dylan	Murray	dylan596@hotmail.com	537.221.4831x122	USNV Peters\nFPO AA 59877	2021-01-01 00:00:00	2021-01-01 00:00:00
847	Kathleen	Miller	kathleen794@hotmail.com	557-427-4578x6677	614 James Dam\nBarbaraville, AK 23543	2021-01-01 00:00:00	2021-01-01 00:00:00
848	Erin	Gentry	erin280@gmail.com	630.869.9062	780 Cassandra Estate Suite 500\nCindymouth, PW 63804	2021-01-01 00:00:00	2021-01-01 00:00:00
849	Phillip	Mann	phillip761@yahoo.com	(246)244-6644	PSC 1302, Box 0148\nAPO AE 05348	2021-01-01 00:00:00	2021-01-01 00:00:00
850	Kyle	Simmons	kyle326@yahoo.com	(950)999-1862	085 King Locks Apt. 655\nJosephview, AL 18066	2021-01-01 00:00:00	2021-01-01 00:00:00
851	Mariah	Frederick	mariah268@hotmail.com	854-662-5987x7212	8855 Carla Village Apt. 932\nBrownville, NM 56149	2021-01-01 00:00:00	2021-01-01 00:00:00
852	Michael	Murphy	michael915@gmail.com	(241)295-0565x748	694 Cynthia Road Suite 848\nKellerland, CT 05455	2021-01-01 00:00:00	2021-01-01 00:00:00
853	Andrew	Anderson	andrew249@yahoo.com	359.810.4021x1982	658 Steven Common\nEast Jonathan, GU 67716	2021-01-01 00:00:00	2021-01-01 00:00:00
854	Jesus	Carpenter	jesus902@hotmail.com	286.269.9635x993	4615 Wheeler Tunnel\nSouth Vincentville, CO 95995	2021-01-01 00:00:00	2021-01-01 00:00:00
855	Samantha	Glass	samantha668@hotmail.com	001-647-963-4197x804	041 Matthew Alley\nTorreshaven, AL 61923	2021-01-01 00:00:00	2021-01-01 00:00:00
856	Rachel	Bradley	rachel104@hotmail.com	(923)787-4542x719	26644 Scott Alley Suite 231\nPort Michelle, NC 32073	2021-01-01 00:00:00	2021-01-01 00:00:00
857	Scott	Fisher	scott417@gmail.com	918.508.0957x29036	940 Ruiz Rue Apt. 670\nNorth Sarahville, SD 03534	2021-01-01 00:00:00	2021-01-01 00:00:00
858	Emily	Levy	emily390@gmail.com	7282365401	9576 Steven Valleys Suite 280\nNorth Jasonside, AK 47355	2021-01-01 00:00:00	2021-01-01 00:00:00
859	Danny	Hall	danny176@gmail.com	(768)246-1249x8955	47796 Kyle Orchard\nNorth Juan, AK 37477	2021-01-01 00:00:00	2021-01-01 00:00:00
860	Amanda	Peterson	amanda542@gmail.com	001-984-866-1401x386	95342 Lee Spring Apt. 168\nBeasleyville, RI 34399	2021-01-01 00:00:00	2021-01-01 00:00:00
861	Nicholas	Robinson	nicholas455@yahoo.com	753-285-8467	371 Curtis Shoals Apt. 236\nJonesstad, WY 84529	2021-01-01 00:00:00	2021-01-01 00:00:00
862	Nathan	Weber	nathan560@yahoo.com	507-498-2380	5864 Kelly Burgs Apt. 932\nEast Jeffery, AL 78271	2021-01-01 00:00:00	2021-01-01 00:00:00
863	Adam	Wade	adam480@gmail.com	333-599-4024	14350 Smith Turnpike Suite 106\nPort Christopher, ND 79289	2021-01-01 00:00:00	2021-01-01 00:00:00
864	Mary	Carney	mary002@hotmail.com	6174637768	28017 Estrada Avenue Apt. 031\nElizabethmouth, WY 80353	2021-01-01 00:00:00	2021-01-01 00:00:00
865	Brittany	Dudley	brittany141@hotmail.com	659-205-4994	360 Vasquez Mountains\nEast Nicole, RI 99822	2021-01-01 00:00:00	2021-01-01 00:00:00
866	Amy	Flores	amy801@gmail.com	(872)579-5897x905	057 Sanders Trail\nWest Christopher, MI 81252	2021-01-01 00:00:00	2021-01-01 00:00:00
867	Heather	Ford	heather442@yahoo.com	001-673-546-3534	862 Villa View\nNew Mercedeshaven, WI 76515	2021-01-01 00:00:00	2021-01-01 00:00:00
868	Ashlee	Olson	ashlee078@hotmail.com	001-723-950-4317x2702	787 Austin Stream Apt. 043\nMatthewstad, IL 98620	2021-01-01 00:00:00	2021-01-01 00:00:00
869	Andrew	Rodriguez	andrew977@hotmail.com	602.880.1684x2939	640 Eric Club Apt. 088\nWilliamside, IL 21342	2021-01-01 00:00:00	2021-01-01 00:00:00
870	Jose	Bennett	jose210@hotmail.com	+1-268-299-3622x50027	833 Singh Forges\nNelsontown, DC 68585	2021-01-01 00:00:00	2021-01-01 00:00:00
871	Jay	Blankenship	jay319@yahoo.com	+1-253-975-3623x8601	661 Frank Rapids Apt. 150\nJustinside, NC 72175	2021-01-01 00:00:00	2021-01-01 00:00:00
872	Desiree	Turner	desiree569@hotmail.com	346-630-9751x4616	5770 Brooks Cliffs\nHerreraton, MA 27060	2021-01-01 00:00:00	2021-01-01 00:00:00
873	Linda	Harris	linda004@gmail.com	001-506-439-3770x04115	3820 James Crossroad\nGriffithburgh, VT 89987	2021-01-01 00:00:00	2021-01-01 00:00:00
874	Cynthia	Sellers	cynthia748@yahoo.com	559.688.2113	274 Lozano Harbor\nLovehaven, NH 09870	2021-01-01 00:00:00	2021-01-01 00:00:00
875	Eric	Fox	eric076@yahoo.com	+1-744-229-6759	USNS Mcfarland\nFPO AA 01223	2021-01-01 00:00:00	2021-01-01 00:00:00
876	Maria	George	maria000@hotmail.com	200.926.8143	8055 Willis Vista\nNorth Julianfurt, AZ 69977	2021-01-01 00:00:00	2021-01-01 00:00:00
877	Tiffany	Greene	tiffany958@hotmail.com	385-661-9434	37053 Norman Springs\nWest Douglasmouth, PW 28074	2021-01-01 00:00:00	2021-01-01 00:00:00
878	Tanya	Shepherd	tanya516@gmail.com	(776)639-0173	PSC 6486, Box 7599\nAPO AP 08146	2021-01-01 00:00:00	2021-01-01 00:00:00
879	Theresa	Mcmillan	theresa951@hotmail.com	812.497.1704	77244 Sarah Parkway Apt. 510\nNorth Nicole, CT 97545	2021-01-01 00:00:00	2021-01-01 00:00:00
880	Sabrina	Grant	sabrina463@yahoo.com	+1-952-399-3312x02148	85112 Powers Canyon Suite 520\nNew Julie, GU 03104	2021-01-01 00:00:00	2021-01-01 00:00:00
881	Ashlee	Hanson	ashlee155@gmail.com	001-857-359-3423x177	1403 Stacey Keys\nWest Peggyland, NY 07257	2021-01-01 00:00:00	2021-01-01 00:00:00
882	Brad	Doyle	brad533@hotmail.com	001-600-388-1445x249	8816 Lindsay Villages\nPriceport, PW 44107	2021-01-01 00:00:00	2021-01-01 00:00:00
883	William	Ross	william992@hotmail.com	303-737-1783x83905	Unit 3584 Box 8371\nDPO AP 80392	2021-01-01 00:00:00	2021-01-01 00:00:00
884	Daniel	Duncan	daniel707@gmail.com	+1-362-948-7997x892	26991 Sherman Corners\nLake Mackenzie, AK 04596	2021-01-01 00:00:00	2021-01-01 00:00:00
885	Scott	Marquez	scott751@yahoo.com	594.673.8038x9232	18630 Lyons Gateway\nPort Paul, NH 50557	2021-01-01 00:00:00	2021-01-01 00:00:00
886	Connie	Sparks	connie798@gmail.com	862.862.6580x10304	460 Barber Expressway Apt. 218\nRickystad, AS 94287	2021-01-01 00:00:00	2021-01-01 00:00:00
887	Cody	Cobb	cody017@gmail.com	+1-754-997-5330x031	248 Baker Centers\nDanielview, IA 81113	2021-01-01 00:00:00	2021-01-01 00:00:00
888	Matthew	Turner	matthew306@gmail.com	287-394-1289	432 Kyle Gardens Apt. 097\nNorth Daniel, RI 31590	2021-01-01 00:00:00	2021-01-01 00:00:00
889	Eric	Powell	eric407@yahoo.com	695-293-8289x06007	4796 Angela Camp Apt. 216\nNew Katelynmouth, VA 55760	2021-01-01 00:00:00	2021-01-01 00:00:00
890	Andrea	Lucas	andrea489@hotmail.com	752-715-3509	22941 Eric Meadows Suite 230\nJuanville, GA 90350	2021-01-01 00:00:00	2021-01-01 00:00:00
891	Theresa	Li	theresa223@gmail.com	815-962-1797x0445	1926 Eric Stream Apt. 084\nMargaretbury, MI 63228	2021-01-01 00:00:00	2021-01-01 00:00:00
892	Matthew	Garcia	matthew793@gmail.com	781-505-1421x7979	549 Denise Locks\nPort Jenniferton, ME 94271	2021-01-01 00:00:00	2021-01-01 00:00:00
893	Jack	Jackson	jack264@yahoo.com	001-305-762-5363x12374	6995 Diana Roads Apt. 779\nLake Amanda, NE 33960	2021-01-01 00:00:00	2021-01-01 00:00:00
894	Michael	Nash	michael811@yahoo.com	(853)488-4734x323	332 Shea Rapids\nNorth James, NH 86846	2021-01-01 00:00:00	2021-01-01 00:00:00
895	Frank	Cooke	frank068@yahoo.com	001-548-506-4453x099	07415 Ford Pines\nCervantesmouth, MO 95570	2021-01-01 00:00:00	2021-01-01 00:00:00
896	Brian	Burns	brian121@gmail.com	5447077156	001 John Courts Apt. 819\nSouth Daryl, RI 45969	2021-01-01 00:00:00	2021-01-01 00:00:00
897	Courtney	Kelly	courtney161@gmail.com	(533)905-6844	4044 Julie Expressway\nMelindaland, OH 71440	2021-01-01 00:00:00	2021-01-01 00:00:00
898	Tiffany	Hunt	tiffany421@gmail.com	742-804-1485x6279	2029 Beltran Estates\nLake Kristina, WY 13307	2021-01-01 00:00:00	2021-01-01 00:00:00
899	James	Warren	james569@hotmail.com	001-277-427-7031x815	6575 Lauren Corner\nKeithstad, LA 31997	2021-01-01 00:00:00	2021-01-01 00:00:00
900	Meredith	Taylor	meredith625@gmail.com	+1-865-548-2560x5714	USS Caldwell\nFPO AE 66620	2021-01-01 00:00:00	2021-01-01 00:00:00
901	Susan	Peterson	susan975@hotmail.com	001-643-880-8239x1920	42120 Kevin Parkway Suite 438\nEast Kevinhaven, CT 65685	2021-01-01 00:00:00	2021-01-01 00:00:00
902	Laura	Richards	laura244@hotmail.com	990-538-5694x5676	5774 Perkins Squares Apt. 990\nMartinside, DC 04186	2021-01-01 00:00:00	2021-01-01 00:00:00
903	Cassandra	Brooks	cassandra209@hotmail.com	853-541-7152	398 Cook Square Apt. 191\nChelseamouth, CA 31147	2021-01-01 00:00:00	2021-01-01 00:00:00
904	Benjamin	Ellison	benjamin684@gmail.com	+1-659-302-5807x23635	PSC 3237, Box 7089\nAPO AP 73108	2021-01-01 00:00:00	2021-01-01 00:00:00
905	James	Owens	james536@hotmail.com	936-925-8169x90861	58326 Daniel Fort\nWhiteville, MH 74751	2021-01-01 00:00:00	2021-01-01 00:00:00
906	Melissa	Jackson	melissa028@yahoo.com	997.974.9581	892 Hamilton Brooks\nNorth Danashire, MA 32029	2021-01-01 00:00:00	2021-01-01 00:00:00
907	Gary	Cummings	gary053@yahoo.com	(988)584-1720	48010 Lee Isle Suite 837\nCynthiatown, ND 39712	2021-01-01 00:00:00	2021-01-01 00:00:00
908	Brandon	Roberts	brandon083@gmail.com	+1-805-992-4657	329 Berger Land\nLake Robert, PA 79666	2021-01-01 00:00:00	2021-01-01 00:00:00
909	Patricia	Nguyen	patricia116@yahoo.com	(986)259-4815x19625	4866 Carney Mountain\nNew Jennifermouth, CT 27612	2021-01-01 00:00:00	2021-01-01 00:00:00
910	Susan	Mathis	susan836@yahoo.com	+1-250-943-5016x582	746 Jennifer Crest\nMarkstad, WV 11079	2021-01-01 00:00:00	2021-01-01 00:00:00
911	Aaron	White	aaron605@hotmail.com	839.830.8941x0289	76102 Nielsen Overpass\nWilsonberg, NC 95496	2021-01-01 00:00:00	2021-01-01 00:00:00
912	Timothy	Price	timothy226@yahoo.com	453-669-9459	6893 Ortiz Common\nParkerstad, RI 88580	2021-01-01 00:00:00	2021-01-01 00:00:00
913	Kaitlyn	White	kaitlyn501@gmail.com	001-858-282-9473x40546	15187 Megan Rapid Apt. 503\nSouth Edward, NJ 33301	2021-01-01 00:00:00	2021-01-01 00:00:00
914	Michael	Lee	michael626@hotmail.com	(572)896-5760x31204	101 Justin Turnpike Apt. 095\nScottstad, NC 32692	2021-01-01 00:00:00	2021-01-01 00:00:00
915	Rebecca	Green	rebecca245@gmail.com	5044512067	787 Cunningham Gardens\nGrahamland, WY 94839	2021-01-01 00:00:00	2021-01-01 00:00:00
916	Kelsey	Scott	kelsey783@gmail.com	+1-672-896-2781	359 Patrick Walk\nPort Susan, SD 75503	2021-01-01 00:00:00	2021-01-01 00:00:00
917	John	Cook	john690@yahoo.com	(955)779-1276	001 Boyd Turnpike\nRichardport, TX 36775	2021-01-01 00:00:00	2021-01-01 00:00:00
918	Brendan	Velez	brendan516@hotmail.com	+1-276-636-9004x172	59459 Eric Greens\nChristopherstad, AK 35979	2021-01-01 00:00:00	2021-01-01 00:00:00
919	Scott	Thompson	scott697@yahoo.com	(436)317-3130x5097	9011 Philip Pines Suite 073\nHarrellton, MT 16473	2021-01-01 00:00:00	2021-01-01 00:00:00
920	Benjamin	Ellis	benjamin342@gmail.com	(993)685-2043x5697	430 Allen Crescent\nEast Jacqueline, MI 20744	2021-01-01 00:00:00	2021-01-01 00:00:00
921	Daniel	Stafford	daniel237@yahoo.com	581.483.4935x5313	61496 Jacob Locks Suite 840\nSharpside, FM 16682	2021-01-01 00:00:00	2021-01-01 00:00:00
922	Shane	Willis	shane070@yahoo.com	001-273-483-8041	17874 Maria Pines\nEast Tammybury, TN 75471	2021-01-01 00:00:00	2021-01-01 00:00:00
923	Zachary	Pope	zachary278@yahoo.com	+1-969-860-7073x631	56828 Ariana Flats\nPort Natashafurt, OK 94460	2021-01-01 00:00:00	2021-01-01 00:00:00
924	Cassidy	Carter	cassidy098@yahoo.com	+1-447-947-9063x467	6891 Patricia Walks Apt. 952\nWest Brittany, TX 15968	2021-01-01 00:00:00	2021-01-01 00:00:00
925	Justin	Morales	justin715@hotmail.com	794-678-2946	Unit 7093 Box 8438\nDPO AA 61647	2021-01-01 00:00:00	2021-01-01 00:00:00
926	Laura	Melton	laura777@yahoo.com	534-226-5194	552 Jordan Extension Suite 913\nAlbertmouth, HI 20575	2021-01-01 00:00:00	2021-01-01 00:00:00
927	Cameron	Mitchell	cameron207@gmail.com	+1-975-595-9185x845	97061 Patterson Corner\nLake Johnfurt, AK 89090	2021-01-01 00:00:00	2021-01-01 00:00:00
928	John	Livingston	john637@hotmail.com	(855)989-3283x205	4954 Guzman View\nContrerasborough, WI 87595	2021-01-01 00:00:00	2021-01-01 00:00:00
929	Danielle	Soto	danielle716@gmail.com	(608)940-8074x7048	653 Barrett Trail Apt. 429\nEast Carolynton, OK 54679	2021-01-01 00:00:00	2021-01-01 00:00:00
930	Jared	King	jared397@hotmail.com	931-945-3238x6814	2168 Mathews Lakes\nAyalaborough, PR 33093	2021-01-01 00:00:00	2021-01-01 00:00:00
931	Joshua	Mcintosh	joshua319@hotmail.com	+1-412-933-7751x79868	221 Samantha Point\nNorth Timothytown, OK 06873	2021-01-01 00:00:00	2021-01-01 00:00:00
932	Rebecca	Thomas	rebecca376@gmail.com	001-355-712-7530	15297 Michelle Mountain Suite 200\nWilkersonhaven, WA 11995	2021-01-01 00:00:00	2021-01-01 00:00:00
933	William	Lozano	william018@yahoo.com	+1-654-313-6048x276	4966 Bullock Shores\nWest Allisonmouth, OH 99409	2021-01-01 00:00:00	2021-01-01 00:00:00
934	Carla	Clark	carla071@hotmail.com	+1-743-671-5685x7878	109 Mary Ville Suite 090\nAmyview, MO 81148	2021-01-01 00:00:00	2021-01-01 00:00:00
935	Erika	Parker	erika425@hotmail.com	896-428-1777x7956	49244 Duncan Dale Apt. 056\nPort Joyce, VI 08452	2021-01-01 00:00:00	2021-01-01 00:00:00
936	Christine	Edwards	christine838@gmail.com	001-367-583-3630x793	7318 Allen Hollow Apt. 861\nSouth Donna, IL 56091	2021-01-01 00:00:00	2021-01-01 00:00:00
937	Kimberly	Edwards	kimberly037@hotmail.com	886.687.2025x401	5794 Brian Circle Suite 016\nHaydenland, AR 07902	2021-01-01 00:00:00	2021-01-01 00:00:00
938	Michael	Bailey	michael658@hotmail.com	684-205-7506x2682	93331 Martinez Vista\nRamirezland, NM 14506	2021-01-01 00:00:00	2021-01-01 00:00:00
939	Stacey	Brown	stacey065@yahoo.com	315-556-4044	938 Banks Rapids\nLake Hannahfurt, NH 50378	2021-01-01 00:00:00	2021-01-01 00:00:00
940	Cynthia	Harris	cynthia941@hotmail.com	(200)358-5405	9636 Lisa Centers Apt. 644\nPort Michaelport, VI 06355	2021-01-01 00:00:00	2021-01-01 00:00:00
941	Krista	Ramirez	krista954@gmail.com	001-516-680-6418x0285	67429 Turner Estate Suite 111\nPort Jennifer, KY 50396	2021-01-01 00:00:00	2021-01-01 00:00:00
942	Gary	Thomas	gary584@yahoo.com	5167202109	027 Hunter Stream\nBrennanton, MO 37640	2021-01-01 00:00:00	2021-01-01 00:00:00
943	Pamela	Montgomery	pamela515@hotmail.com	+1-371-608-0486x7143	19620 Martin Villages\nNoahview, PA 85067	2021-01-01 00:00:00	2021-01-01 00:00:00
944	Jennifer	Shepard	jennifer524@hotmail.com	811.411.0887x708	396 Chloe View Apt. 646\nLake Oscar, RI 01822	2021-01-01 00:00:00	2021-01-01 00:00:00
945	Robert	Chambers	robert685@hotmail.com	001-210-255-4692x10331	29443 Duncan Pines Apt. 398\nJesusbury, LA 06389	2021-01-01 00:00:00	2021-01-01 00:00:00
946	Jerry	Smith	jerry635@hotmail.com	(524)723-4077	15808 Mary Common\nTrevinoton, ND 48044	2021-01-01 00:00:00	2021-01-01 00:00:00
947	Stacy	Castro	stacy306@yahoo.com	677.680.2465x537	PSC 3451, Box 3437\nAPO AP 32663	2021-01-01 00:00:00	2021-01-01 00:00:00
948	Alejandro	Novak	alejandro934@yahoo.com	929-492-9527x83149	536 Wade Lane\nSouth Benjamin, WA 14308	2021-01-01 00:00:00	2021-01-01 00:00:00
949	Tyler	Mitchell	tyler543@hotmail.com	+1-966-573-4586x18324	773 Holly Drives Suite 127\nPort Crystalborough, MD 94037	2021-01-01 00:00:00	2021-01-01 00:00:00
950	Nicole	Evans	nicole846@gmail.com	847.776.3944x531	1214 Ellison Land Suite 166\nAnthonyton, IA 86729	2021-01-01 00:00:00	2021-01-01 00:00:00
951	Albert	Freeman	albert971@hotmail.com	001-300-259-2835x73920	2538 Robert Greens\nMckinneyview, TX 35465	2021-01-01 00:00:00	2021-01-01 00:00:00
952	William	Miller	william242@gmail.com	+1-885-509-9519	49578 Hill Forks\nRobinsonberg, UT 01569	2021-01-01 00:00:00	2021-01-01 00:00:00
953	Rebecca	Lucas	rebecca274@hotmail.com	001-275-407-8603x08562	984 Melissa Turnpike Suite 489\nWest Cindy, MD 02694	2021-01-01 00:00:00	2021-01-01 00:00:00
954	Howard	Jensen	howard712@gmail.com	364.222.6516	305 Ashley Junctions\nNewmanstad, NC 42353	2021-01-01 00:00:00	2021-01-01 00:00:00
955	Cory	Cantu	cory375@gmail.com	839-820-1107	08591 Thomas Rapids Suite 501\nEast Dakota, MS 48057	2021-01-01 00:00:00	2021-01-01 00:00:00
956	Alexander	Dalton	alexander779@gmail.com	674.698.5965	70971 Rios Lock\nSouth Brittanyton, DE 90689	2021-01-01 00:00:00	2021-01-01 00:00:00
957	Michelle	Rodriguez	michelle275@hotmail.com	412-980-2113	66904 John Road\nNorth Jacob, VI 15794	2021-01-01 00:00:00	2021-01-01 00:00:00
958	Barbara	Ochoa	barbara019@hotmail.com	001-872-626-4180	40575 Shelton Flats Apt. 614\nLake Laura, UT 63738	2021-01-01 00:00:00	2021-01-01 00:00:00
959	Tyler	Thompson	tyler403@gmail.com	+1-510-240-8703x27695	861 Kelly Corners Suite 378\nRiggsstad, RI 54533	2021-01-01 00:00:00	2021-01-01 00:00:00
960	Louis	Williams	louis020@hotmail.com	(850)738-4356	483 Richard Locks Suite 410\nLake Lynn, NV 31103	2021-01-01 00:00:00	2021-01-01 00:00:00
961	Gabriel	Smith	gabriel626@gmail.com	343.963.3089x134	49850 Glen Drive\nJennifershire, WI 18085	2021-01-01 00:00:00	2021-01-01 00:00:00
962	Karen	Fitzgerald	karen448@gmail.com	6498229082	94777 Kenneth Village Apt. 106\nThomasmouth, NM 40862	2021-01-01 00:00:00	2021-01-01 00:00:00
963	Kelly	Navarro	kelly936@hotmail.com	880-674-1935x20919	986 Sparks Inlet\nPort Shannon, MS 67664	2021-01-01 00:00:00	2021-01-01 00:00:00
964	Megan	Reed	megan085@yahoo.com	6328333111	PSC 7065, Box 2178\nAPO AP 07489	2021-01-01 00:00:00	2021-01-01 00:00:00
965	Harold	Schmidt	harold404@yahoo.com	(613)251-7452x3952	4521 Cox Street Apt. 146\nNelsonside, MN 27374	2021-01-01 00:00:00	2021-01-01 00:00:00
966	Brittany	Ruiz	brittany815@gmail.com	(838)779-5046	42779 White Ramp\nJacksonbury, CA 28019	2021-01-01 00:00:00	2021-01-01 00:00:00
967	Brent	Santos	brent067@hotmail.com	+1-247-750-1138x508	453 Baxter Streets\nJonathanmouth, IA 25331	2021-01-01 00:00:00	2021-01-01 00:00:00
968	Kayla	Montgomery	kayla855@hotmail.com	+1-488-477-6573x128	PSC 8374, Box 0653\nAPO AA 36528	2021-01-01 00:00:00	2021-01-01 00:00:00
969	Alyssa	Mccullough	alyssa030@yahoo.com	001-646-597-0413	446 Brown Hills Apt. 636\nNew Ashleybury, MI 68176	2021-01-01 00:00:00	2021-01-01 00:00:00
970	Lauren	Leach	lauren103@yahoo.com	815.353.8858	48611 Charles Pines Apt. 367\nColinmouth, IN 66838	2021-01-01 00:00:00	2021-01-01 00:00:00
971	Katelyn	Pham	katelyn624@hotmail.com	(823)617-6541x0649	8499 Steele Way Suite 040\nHernandezborough, NC 95851	2021-01-01 00:00:00	2021-01-01 00:00:00
972	Kenneth	Henson	kenneth667@yahoo.com	001-302-473-5219	918 Harris Valleys\nRichardhaven, MN 52977	2021-01-01 00:00:00	2021-01-01 00:00:00
973	Alexander	Ruiz	alexander119@hotmail.com	501-769-7751x05705	6979 Andrew Land Apt. 517\nToddfort, AR 00624	2021-01-01 00:00:00	2021-01-01 00:00:00
974	Timothy	Torres	timothy529@hotmail.com	961.831.3906x185	792 Ortiz Ferry\nJadefurt, NH 26480	2021-01-01 00:00:00	2021-01-01 00:00:00
975	Jennifer	Harris	jennifer190@hotmail.com	731-402-3962	24995 Shannon Corners\nJamiestad, VI 64147	2021-01-01 00:00:00	2021-01-01 00:00:00
976	Samuel	Nichols	samuel925@gmail.com	001-420-455-7472x9955	3428 King Field\nNorth Jessicamouth, MD 58002	2021-01-01 00:00:00	2021-01-01 00:00:00
977	Erica	Graham	erica402@gmail.com	(455)476-7246	368 Gutierrez Grove\nNew Kenneth, OK 18455	2021-01-01 00:00:00	2021-01-01 00:00:00
978	Reginald	Becker	reginald548@hotmail.com	595-251-4621x510	589 Monica Landing Apt. 451\nLake James, NH 61198	2021-01-01 00:00:00	2021-01-01 00:00:00
979	Phyllis	Lewis	phyllis553@yahoo.com	001-294-785-8996x82361	794 Wallace Circle\nHernandeztown, WV 14386	2021-01-01 00:00:00	2021-01-01 00:00:00
980	Christopher	Smith	christopher077@hotmail.com	001-282-853-7711x0234	33341 Chen Gateway\nHaileyborough, AK 69666	2021-01-01 00:00:00	2021-01-01 00:00:00
981	Kenneth	Berry	kenneth878@yahoo.com	(430)513-6409x6624	9067 Gray Hills Apt. 024\nKevinview, NY 11486	2021-01-01 00:00:00	2021-01-01 00:00:00
982	Jimmy	Mora	jimmy106@yahoo.com	(237)284-1659x115	222 Scott Trail\nDonnamouth, MN 80492	2021-01-01 00:00:00	2021-01-01 00:00:00
983	Amy	Gay	amy876@yahoo.com	(393)283-9261x19535	317 Brent Keys Apt. 137\nNorth Michaelton, TN 09256	2021-01-01 00:00:00	2021-01-01 00:00:00
984	Elizabeth	Hicks	elizabeth281@gmail.com	(424)381-3277x94743	98869 Jenkins Throughway\nSouth Staceyfurt, OK 89372	2021-01-01 00:00:00	2021-01-01 00:00:00
985	John	Moss	john225@gmail.com	001-510-229-6172x599	530 Gross Courts\nEast Andreatown, MA 15216	2021-01-01 00:00:00	2021-01-01 00:00:00
986	Judy	Bishop	judy438@hotmail.com	+1-653-275-1265x51173	Unit 7160 Box 4569\nDPO AA 45573	2021-01-01 00:00:00	2021-01-01 00:00:00
987	Tara	Warren	tara187@hotmail.com	714.225.8042x79972	USS Black\nFPO AA 85628	2021-01-01 00:00:00	2021-01-01 00:00:00
988	Marco	Stephens	marco793@hotmail.com	725-869-9623	1409 Brian Mews\nMckinneyton, AK 47780	2021-01-01 00:00:00	2021-01-01 00:00:00
989	Noah	Cunningham	noah572@yahoo.com	557-918-0911x35445	8521 Sara Drive\nAllenburgh, MA 11001	2021-01-01 00:00:00	2021-01-01 00:00:00
990	Robert	Ho	robert526@gmail.com	987.214.1748x225	9824 Holland Island Apt. 573\nLake Jessica, MH 79234	2021-01-01 00:00:00	2021-01-01 00:00:00
991	Michelle	Ortiz	michelle171@gmail.com	217-947-6685	72627 Williams Summit\nNew Nancyview, MI 65298	2021-01-01 00:00:00	2021-01-01 00:00:00
992	Kathleen	Bryant	kathleen715@hotmail.com	(968)991-4338x7606	6315 Stewart Radial Apt. 982\nCooperside, CT 37243	2021-01-01 00:00:00	2021-01-01 00:00:00
993	Chad	Chambers	chad010@gmail.com	595.820.7404x09963	627 Mason Plaza\nEast Alan, VT 46556	2021-01-01 00:00:00	2021-01-01 00:00:00
994	Stephanie	Nguyen	stephanie274@yahoo.com	001-682-590-8069x1168	8855 Conrad Drive Apt. 950\nEast Erin, MD 40256	2021-01-01 00:00:00	2021-01-01 00:00:00
995	Timothy	Jones	timothy299@yahoo.com	341.315.3578	706 Anna Common\nEast Debraview, SC 99166	2021-01-01 00:00:00	2021-01-01 00:00:00
996	James	Murray	james269@yahoo.com	+1-639-953-7202x665	43460 Shawn Port\nWest Matthewview, OR 10177	2021-01-01 00:00:00	2021-01-01 00:00:00
997	Michele	Sanders	michele700@hotmail.com	670-530-4022	6510 Moore Way Suite 750\nJohnberg, TX 49294	2021-01-01 00:00:00	2021-01-01 00:00:00
998	Frank	Pena	frank279@yahoo.com	441-904-3338x425	7104 Gordon Mountain Apt. 820\nWest Elizabethhaven, GU 14283	2021-01-01 00:00:00	2021-01-01 00:00:00
999	Joseph	Collins	joseph685@yahoo.com	6392660347	618 Sean Union Apt. 261\nLongfurt, IA 30038	2021-01-01 00:00:00	2021-01-01 00:00:00
1000	Dana	Humphrey	dana535@gmail.com	498.843.8139x7015	43259 Kurt Keys\nPort Christineville, VT 65910	2021-01-01 00:00:00	2021-01-01 00:00:00
\.


--
-- Data for Name: order_detail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_detail (order_detail_id, order_id, product_id, quantity, price, created_at, updated_at) FROM stdin;
1	IINI91PP812	B08ZN4B121	7	1599.00	2022-01-30 00:00:00	2022-01-30 00:00:00
2	IINI91PP812	B0B94JPY2N	13	999.00	2022-01-30 00:00:00	2022-01-30 00:00:00
3	IINI91PP812	B07MP21WJD	9	299.00	2022-01-30 00:00:00	2022-01-30 00:00:00
4	IINI91PP812	B08G43CCLC	9	999.00	2022-01-30 00:00:00	2022-01-30 00:00:00
5	ONNA03MN757	B0B217Z5VK	5	3999.00	2021-01-03 00:00:00	2021-01-03 00:00:00
6	ONNA03MN757	B08RWCZ6SY	7	899.00	2021-01-03 00:00:00	2021-01-03 00:00:00
7	NPCC44AC852	B07QDSN9V6	11	1595.00	2022-09-08 00:00:00	2022-09-08 00:00:00
8	MMIM69AM147	B089BDBDGM	7	249.00	2021-06-26 00:00:00	2021-06-26 00:00:00
9	MCIA31MO690	B0883LQJ6B	8	1690.00	2021-07-09 00:00:00	2021-07-09 00:00:00
10	MCIA31MO690	B0718ZN31Q	2	4999.00	2021-07-09 00:00:00	2021-07-09 00:00:00
11	MCIA31MO690	B09DSXK8JX	12	19499.00	2021-07-09 00:00:00	2021-07-09 00:00:00
12	MCIA31MO690	B07WGPKTS4	4	19999.00	2021-07-09 00:00:00	2021-07-09 00:00:00
13	MCIA31MO690	B09GFPVD9Y	15	10999.00	2021-07-09 00:00:00	2021-07-09 00:00:00
14	MCIA31MO690	B09KPXTZXN	15	1999.00	2021-07-09 00:00:00	2021-07-09 00:00:00
15	MCIA31MO690	B00TI8E7BI	12	2695.00	2021-07-09 00:00:00	2021-07-09 00:00:00
16	IANC47AM423	B07PFJ5W31	1	495.00	2022-10-04 00:00:00	2022-10-04 00:00:00
17	IANC47AM423	B00KXULGJQ	6	5499.00	2022-10-04 00:00:00	2022-10-04 00:00:00
18	IANC47AM423	B003L62T7W	9	375.00	2022-10-04 00:00:00	2022-10-04 00:00:00
19	IANC47AM423	B06XGWRKYT	4	15999.00	2022-10-04 00:00:00	2022-10-04 00:00:00
20	IANC47AM423	B0832W3B7Q	9	3595.00	2022-10-04 00:00:00	2022-10-04 00:00:00
21	IANC47AM423	B08XMSKKMM	4	1999.00	2022-10-04 00:00:00	2022-10-04 00:00:00
22	NPIP33OI307	B07RZZ1QSW	3	799.00	2022-02-14 00:00:00	2022-02-14 00:00:00
23	NPIP33OI307	B0B8SSC5D9	5	1999.00	2022-02-14 00:00:00	2022-02-14 00:00:00
24	NPIP33OI307	B082LZGK39	2	299.00	2022-02-14 00:00:00	2022-02-14 00:00:00
25	NPIP33OI307	B07RZZ1QSW	7	799.00	2022-02-14 00:00:00	2022-02-14 00:00:00
26	NPIP33OI307	B08NCKT9FG	5	798.00	2022-02-14 00:00:00	2022-02-14 00:00:00
27	NPIP33OI307	B0BGPN4GGH	15	2400.00	2022-02-14 00:00:00	2022-02-14 00:00:00
28	AOCO44AC037	B0123P3PWE	7	1075.00	2022-08-03 00:00:00	2022-08-03 00:00:00
29	AOCO44AC037	B09MTLG4TP	1	999.00	2022-08-03 00:00:00	2022-08-03 00:00:00
30	AOCO44AC037	B079Y6JZC8	3	299.00	2022-08-03 00:00:00	2022-08-03 00:00:00
31	AOCO44AC037	B0B6BLTGTT	2	5999.00	2022-08-03 00:00:00	2022-08-03 00:00:00
32	AOCO44AC037	B0BDZWMGZ1	15	2990.00	2022-08-03 00:00:00	2022-08-03 00:00:00
33	APMI05CP558	B07M69276N	12	2499.00	2022-02-01 00:00:00	2022-02-01 00:00:00
34	APMI05CP558	B08235JZFB	12	1000.00	2022-02-01 00:00:00	2022-02-01 00:00:00
35	APMI05CP558	B00Y4ORQ46	3	795.00	2022-02-01 00:00:00	2022-02-01 00:00:00
36	POOA33NM414	B086199CWG	3	4799.00	2021-08-01 00:00:00	2021-08-01 00:00:00
37	POOA33NM414	B07WKBD37W	4	999.00	2021-08-01 00:00:00	2021-08-01 00:00:00
38	IMMM96AC528	B095244Q22	8	999.00	2021-04-08 00:00:00	2021-04-08 00:00:00
39	IMMM96AC528	B09N6TTHT6	3	99.00	2021-04-08 00:00:00	2021-04-08 00:00:00
40	IMMM96AC528	B07L8KNP5F	13	1399.00	2021-04-08 00:00:00	2021-04-08 00:00:00
41	AIAP53NA160	B0819HZPXL	13	549.00	2022-09-30 00:00:00	2022-09-30 00:00:00
42	AIAP53NA160	B09Q8WQ5QJ	10	499.00	2022-09-30 00:00:00	2022-09-30 00:00:00
43	AIAP53NA160	B08MWJTST6	6	1299.00	2022-09-30 00:00:00	2022-09-30 00:00:00
44	AIAP53NA160	B08D75R3Z1	4	1900.00	2022-09-30 00:00:00	2022-09-30 00:00:00
45	PMMC74AI218	B086394NY5	7	2490.00	2022-09-10 00:00:00	2022-09-10 00:00:00
46	PMMC74AI218	B0BHZCNC4P	6	3999.00	2022-09-10 00:00:00	2022-09-10 00:00:00
47	PMMC74AI218	B0BCVJ3PVP	11	1299.00	2022-09-10 00:00:00	2022-09-10 00:00:00
48	PMMC74AI218	B07S7DCJKS	7	499.00	2022-09-10 00:00:00	2022-09-10 00:00:00
49	PMMC74AI218	B0BCZCQTJX	10	3999.00	2022-09-10 00:00:00	2022-09-10 00:00:00
50	AAMI65AP544	B08D75R3Z1	10	1900.00	2022-02-04 00:00:00	2022-02-04 00:00:00
51	AAMI65AP544	B08MVXPTDG	4	4200.00	2022-02-04 00:00:00	2022-02-04 00:00:00
52	AAMI65AP544	B08CZHGHKH	10	1399.00	2022-02-04 00:00:00	2022-02-04 00:00:00
53	AAMI65AP544	B0756CLQWL	9	3999.00	2022-02-04 00:00:00	2022-02-04 00:00:00
54	AAMI65AP544	B0B3RS9DNF	2	9999.00	2022-02-04 00:00:00	2022-02-04 00:00:00
55	POCO45OC178	B01L6MT7E0	9	11995.00	2021-09-28 00:00:00	2021-09-28 00:00:00
56	PNPP59CM226	B07LFWP97N	4	1099.00	2021-03-10 00:00:00	2021-03-10 00:00:00
57	PNPP59CM226	B08TM71L54	6	4195.00	2021-03-10 00:00:00	2021-03-10 00:00:00
58	PNPP59CM226	B08FTFXNNB	13	1999.00	2021-03-10 00:00:00	2021-03-10 00:00:00
59	PNPP59CM226	B01M0505SJ	14	2485.00	2021-03-10 00:00:00	2021-03-10 00:00:00
60	PNPP59CM226	B09TP5KBN7	6	1099.00	2021-03-10 00:00:00	2021-03-10 00:00:00
61	PNPP59CM226	B0BCKWZ884	5	2999.00	2021-03-10 00:00:00	2021-03-10 00:00:00
62	PNPP59CM226	B08MVXPTDG	1	4200.00	2021-03-10 00:00:00	2021-03-10 00:00:00
63	MPAI82AO102	B08J82K4GX	9	19110.00	2021-10-01 00:00:00	2021-10-01 00:00:00
64	MPAI82AO102	B08CFJBZRK	6	6295.00	2021-10-01 00:00:00	2021-10-01 00:00:00
65	MPAI82AO102	B097JQ1J5G	4	499.00	2021-10-01 00:00:00	2021-10-01 00:00:00
66	MPAI82AO102	B0B5GF6DQD	15	5999.00	2021-10-01 00:00:00	2021-10-01 00:00:00
67	AIMN31PN526	B08TDJNM3G	14	59.00	2022-04-13 00:00:00	2022-04-13 00:00:00
68	IANC05AP215	B086WMSCN3	12	5999.00	2022-08-29 00:00:00	2022-08-29 00:00:00
69	NOCO89CC732	B06XMZV7RH	14	499.00	2022-12-13 00:00:00	2022-12-13 00:00:00
70	NOCO89CC732	B0BD92GDQH	13	6999.00	2022-12-13 00:00:00	2022-12-13 00:00:00
71	NMIN32OO063	B09MKP344P	5	12999.00	2021-11-19 00:00:00	2021-11-19 00:00:00
72	NMIN32OO063	B084N1BM9L	15	1999.00	2021-11-19 00:00:00	2021-11-19 00:00:00
73	NMIN32OO063	B08461VC1Z	3	1995.00	2021-11-19 00:00:00	2021-11-19 00:00:00
74	NMIN32OO063	B0756CLQWL	9	3999.00	2021-11-19 00:00:00	2021-11-19 00:00:00
75	NMIN32OO063	B086199CWG	8	4799.00	2021-11-19 00:00:00	2021-11-19 00:00:00
76	NMIN32OO063	B00MFPCY5C	7	299.00	2021-11-19 00:00:00	2021-11-19 00:00:00
77	NPOA02PO977	B0BDYVC5TD	12	1800.00	2022-07-31 00:00:00	2022-07-31 00:00:00
78	NPOA02PO977	B078JBK4GX	7	4560.00	2022-07-31 00:00:00	2022-07-31 00:00:00
79	CCOA32NI392	B07SBGFDX9	8	120.00	2021-07-02 00:00:00	2021-07-02 00:00:00
80	CCOA32NI392	B07232M876	5	395.00	2021-07-02 00:00:00	2021-07-02 00:00:00
81	CCOA32NI392	B0B61DSF17	13	1999.00	2021-07-02 00:00:00	2021-07-02 00:00:00
82	CCOA32NI392	B09HS1NDRQ	12	799.00	2021-07-02 00:00:00	2021-07-02 00:00:00
83	CCOA32NI392	B0B3DV7S9B	10	499.00	2021-07-02 00:00:00	2021-07-02 00:00:00
84	ACMA24CI703	B09VH568H7	3	299.00	2022-07-28 00:00:00	2022-07-28 00:00:00
85	ACMA24CI703	B07QZ3CZ48	12	1290.00	2022-07-28 00:00:00	2022-07-28 00:00:00
86	ACMA24CI703	B09P18XVW6	13	4999.00	2022-07-28 00:00:00	2022-07-28 00:00:00
87	ACMA24CI703	B097ZQTDVZ	5	899.00	2022-07-28 00:00:00	2022-07-28 00:00:00
88	ACMA24CI703	B07L5L4GTB	15	404.00	2022-07-28 00:00:00	2022-07-28 00:00:00
89	ACMA24CI703	B0B4PPD89B	4	79.00	2022-07-28 00:00:00	2022-07-28 00:00:00
90	ACMA24CI703	B08CYPB15D	12	761.00	2022-07-28 00:00:00	2022-07-28 00:00:00
91	OMAA44IN067	B09LMMFW3S	15	399.00	2022-04-16 00:00:00	2022-04-16 00:00:00
92	MCAM79PC949	B0B56YRBNT	13	13499.00	2021-07-26 00:00:00	2021-07-26 00:00:00
93	OIAN87PA120	B07S7DCJKS	1	499.00	2021-02-12 00:00:00	2021-02-12 00:00:00
94	OIAN87PA120	B081RLM75M	13	599.00	2021-02-12 00:00:00	2021-02-12 00:00:00
95	OIAN87PA120	B0BNVBJW2S	3	7990.00	2021-02-12 00:00:00	2021-02-12 00:00:00
96	OIAN87PA120	B08235JZFB	7	1000.00	2021-02-12 00:00:00	2021-02-12 00:00:00
97	NIMC69AC690	B00N1U7JXM	11	175.00	2021-12-09 00:00:00	2021-12-09 00:00:00
98	NIMC69AC690	B0BBMGLQDW	4	1999.00	2021-12-09 00:00:00	2021-12-09 00:00:00
99	NIMC69AC690	B095244Q22	9	999.00	2021-12-09 00:00:00	2021-12-09 00:00:00
100	NIMC69AC690	B07J2NGB69	7	1390.00	2021-12-09 00:00:00	2021-12-09 00:00:00
101	NIMC69AC690	B07MP21WJD	13	299.00	2021-12-09 00:00:00	2021-12-09 00:00:00
102	NIMC69AC690	B01IBRHE3E	11	499.00	2021-12-09 00:00:00	2021-12-09 00:00:00
103	NIMC69AC690	B07RX42D3D	9	350.00	2021-12-09 00:00:00	2021-12-09 00:00:00
104	MPON10IM799	B0B7L86YCB	14	300.00	2021-11-24 00:00:00	2021-11-24 00:00:00
105	MPON10IM799	B09W5XR9RT	2	1999.00	2021-11-24 00:00:00	2021-11-24 00:00:00
106	AOCO38NC466	B003B00484	11	499.00	2021-04-19 00:00:00	2021-04-19 00:00:00
107	AOCO38NC466	B08K36NZSV	3	999.00	2021-04-19 00:00:00	2021-04-19 00:00:00
108	AOCO38NC466	B08G1RW2Q3	2	799.00	2021-04-19 00:00:00	2021-04-19 00:00:00
109	AOCO38NC466	B08RP2L2NL	5	999.00	2021-04-19 00:00:00	2021-04-19 00:00:00
110	AOCO38NC466	B01LONQBDG	7	899.00	2021-04-19 00:00:00	2021-04-19 00:00:00
111	PPMI38OP255	B0B19VJXQZ	13	59900.00	2021-06-23 00:00:00	2021-06-23 00:00:00
112	PPMI38OP255	B00TDD0YM4	10	1695.00	2021-06-23 00:00:00	2021-06-23 00:00:00
113	PPMI38OP255	B00N1U9AJS	12	165.00	2021-06-23 00:00:00	2021-06-23 00:00:00
114	PPMI38OP255	B002PD61Y4	13	1208.00	2021-06-23 00:00:00	2021-06-23 00:00:00
115	PPMI38OP255	B0B9RN5X8B	5	4700.00	2021-06-23 00:00:00	2021-06-23 00:00:00
116	PPMI38OP255	B00LHZWD0C	2	315.00	2021-06-23 00:00:00	2021-06-23 00:00:00
117	AIOP55NC262	B07DWFX9YS	7	1999.00	2022-04-29 00:00:00	2022-04-29 00:00:00
118	AIOP55NC262	B07V5YF4ND	13	1199.00	2022-04-29 00:00:00	2022-04-29 00:00:00
119	AIOP55NC262	B07VZYMQNZ	10	1440.00	2022-04-29 00:00:00	2022-04-29 00:00:00
120	AIOP55NC262	B07V5YF4ND	9	1199.00	2022-04-29 00:00:00	2022-04-29 00:00:00
121	AIOP55NC262	B07BKSSDR2	7	1900.00	2022-04-29 00:00:00	2022-04-29 00:00:00
122	AIOP55NC262	B082KVTRW8	2	1900.00	2022-04-29 00:00:00	2022-04-29 00:00:00
123	OACO22AM378	B098LCVYPW	6	999.00	2021-06-03 00:00:00	2021-06-03 00:00:00
124	OACO22AM378	B07SRM58TP	5	2099.00	2021-06-03 00:00:00	2021-06-03 00:00:00
125	OACO22AM378	B0B4HKH19N	2	931.00	2021-06-03 00:00:00	2021-06-03 00:00:00
126	OACO22AM378	B0832W3B7Q	6	3595.00	2021-06-03 00:00:00	2021-06-03 00:00:00
127	OACO22AM378	B083J64CBB	10	499.00	2021-06-03 00:00:00	2021-06-03 00:00:00
128	OACO22AM378	B09P8M18QM	13	2999.00	2021-06-03 00:00:00	2021-06-03 00:00:00
129	OPAP39PA948	B09NFSHCWN	15	1899.00	2022-11-10 00:00:00	2022-11-10 00:00:00
130	OAPI88PI356	B008QTK47Q	11	1745.00	2022-10-04 00:00:00	2022-10-04 00:00:00
131	OAPI88PI356	B07QCWY5XV	13	1399.00	2022-10-04 00:00:00	2022-10-04 00:00:00
132	OAPI88PI356	B08498D67S	13	1800.00	2022-10-04 00:00:00	2022-10-04 00:00:00
133	OAPI88PI356	B00PVT30YI	13	499.00	2022-10-04 00:00:00	2022-10-04 00:00:00
134	OAPI88PI356	B07XLCFSSN	3	1900.00	2022-10-04 00:00:00	2022-10-04 00:00:00
135	ANIM79IC941	B0B3XY5YT4	7	49990.00	2021-09-15 00:00:00	2021-09-15 00:00:00
136	AIPM98PA153	B00P0R95EA	7	640.00	2021-05-11 00:00:00	2021-05-11 00:00:00
137	AIPM98PA153	B09FPP3R1D	9	2495.00	2021-05-11 00:00:00	2021-05-11 00:00:00
138	APIA13OA053	B0BMM7R92G	3	999.00	2021-05-09 00:00:00	2021-05-09 00:00:00
139	APIA13OA053	B07WHQBZLS	9	21990.00	2021-05-09 00:00:00	2021-05-09 00:00:00
140	APIA13OA053	B0711PVX6Z	15	500.00	2021-05-09 00:00:00	2021-05-09 00:00:00
141	APIA13OA053	B08RDWBYCQ	3	999.00	2021-05-09 00:00:00	2021-05-09 00:00:00
142	APIA13OA053	B07JNVF678	3	999.00	2021-05-09 00:00:00	2021-05-09 00:00:00
143	IAIC09AP270	B08KS2KQTK	4	499.00	2021-01-19 00:00:00	2021-01-19 00:00:00
144	IAIC09AP270	B00S2SEV7K	8	100.00	2021-01-19 00:00:00	2021-01-19 00:00:00
145	IAIC09AP270	B0B53NXFFR	6	5999.00	2021-01-19 00:00:00	2021-01-19 00:00:00
146	IAIC09AP270	B01MQZ7J8K	13	1445.00	2021-01-19 00:00:00	2021-01-19 00:00:00
147	IAIC09AP270	B07YNHCW6N	5	2499.00	2021-01-19 00:00:00	2021-01-19 00:00:00
148	IAIC09AP270	B08HDJ86NZ	7	699.00	2021-01-19 00:00:00	2021-01-19 00:00:00
149	ANAP15PM799	B071SDRGWL	10	699.00	2022-07-05 00:00:00	2022-07-05 00:00:00
150	ANAP15PM799	B08BQ947H3	5	149.00	2022-07-05 00:00:00	2022-07-05 00:00:00
151	ANAP15PM799	B00GE55L22	12	699.00	2022-07-05 00:00:00	2022-07-05 00:00:00
152	ANAP15PM799	B09JFR8H3Q	7	1499.00	2022-07-05 00:00:00	2022-07-05 00:00:00
153	PAOC53PN688	B012MQS060	13	1795.00	2022-06-16 00:00:00	2022-06-16 00:00:00
154	PAOC53PN688	B0B3XXSB1K	13	79990.00	2022-06-16 00:00:00	2022-06-16 00:00:00
155	PAOC53PN688	B08Y5KXR6Z	7	800.00	2022-06-16 00:00:00	2022-06-16 00:00:00
156	PAOC53PN688	B00LM4X3XE	13	100.00	2022-06-16 00:00:00	2022-06-16 00:00:00
157	PAOC53PN688	B00LUGTJGO	8	1549.00	2022-06-16 00:00:00	2022-06-16 00:00:00
158	OIOI32MP908	B09NL4DCXK	2	599.00	2021-01-23 00:00:00	2021-01-23 00:00:00
159	OIOI32MP908	B08PPHFXG3	5	999.00	2021-01-23 00:00:00	2021-01-23 00:00:00
160	OIOI32MP908	B09B9SPC7F	5	1299.00	2021-01-23 00:00:00	2021-01-23 00:00:00
161	OIOI32MP908	B08Y1SJVV5	6	666.00	2021-01-23 00:00:00	2021-01-23 00:00:00
162	MIMA34AN682	B09YV575RK	10	9999.00	2021-12-17 00:00:00	2021-12-17 00:00:00
163	MIMA34AN682	B08MCD9JFY	7	1999.00	2021-12-17 00:00:00	2021-12-17 00:00:00
164	MIMA34AN682	B07DFYJRQV	2	1499.00	2021-12-17 00:00:00	2021-12-17 00:00:00
165	PAOC88IO676	B0B2CWRDB1	3	9999.00	2021-12-07 00:00:00	2021-12-07 00:00:00
166	PAOC88IO676	B0762HXMTF	14	1950.00	2021-12-07 00:00:00	2021-12-07 00:00:00
167	PAOC88IO676	B01F262EUU	10	999.00	2021-12-07 00:00:00	2021-12-07 00:00:00
168	NINI19AC099	B08K36NZSV	15	999.00	2021-06-07 00:00:00	2021-06-07 00:00:00
169	NINI19AC099	B07DKZCZ89	11	499.00	2021-06-07 00:00:00	2021-06-07 00:00:00
170	NINI19AC099	B08VS3YLRK	9	1499.00	2021-06-07 00:00:00	2021-06-07 00:00:00
171	NINI19AC099	B09ZHCJDP1	10	1000.00	2021-06-07 00:00:00	2021-06-07 00:00:00
172	NINI19AC099	B08235JZFB	13	1000.00	2021-06-07 00:00:00	2021-06-07 00:00:00
173	NINI19AC099	B00J5DYCCA	7	1890.00	2021-06-07 00:00:00	2021-06-07 00:00:00
174	PPOA99NO002	B0BNQMF152	1	2199.00	2021-11-15 00:00:00	2021-11-15 00:00:00
175	PPOA99NO002	B09F5Z694W	6	9625.00	2021-11-15 00:00:00	2021-11-15 00:00:00
176	PPOA99NO002	B072J83V9W	11	9995.00	2021-11-15 00:00:00	2021-11-15 00:00:00
177	PPOA99NO002	B097RJ867P	7	11595.00	2021-11-15 00:00:00	2021-11-15 00:00:00
178	PPOA99NO002	B09P858DK8	14	1999.00	2021-11-15 00:00:00	2021-11-15 00:00:00
179	PPOA99NO002	B01MRARGBW	5	400.00	2021-11-15 00:00:00	2021-11-15 00:00:00
180	PPOA99NO002	B083GKDRKR	8	2995.00	2021-11-15 00:00:00	2021-11-15 00:00:00
181	AACN83AO563	B009DA69W6	6	1900.00	2021-06-21 00:00:00	2021-06-21 00:00:00
182	AACN83AO563	B07K2HVKLL	11	1020.00	2021-06-21 00:00:00	2021-06-21 00:00:00
183	AACN83AO563	B0B9BD2YL4	14	6999.00	2021-06-21 00:00:00	2021-06-21 00:00:00
184	AACN83AO563	B09Q8HMKZX	12	699.00	2021-06-21 00:00:00	2021-06-21 00:00:00
185	AACN83AO563	B098R25TGC	15	2999.00	2021-06-21 00:00:00	2021-06-21 00:00:00
186	AACN83AO563	B08HLZ28QC	10	3490.00	2021-06-21 00:00:00	2021-06-21 00:00:00
187	NMAP19AN791	B0B21XL94T	14	34990.00	2021-08-31 00:00:00	2021-08-31 00:00:00
188	NMAP19AN791	B07TMCXRFV	14	1599.00	2021-08-31 00:00:00	2021-08-31 00:00:00
189	NMAP19AN791	B09GFN8WZL	5	999.00	2021-08-31 00:00:00	2021-08-31 00:00:00
190	NMAP19AN791	B07MP21WJD	12	299.00	2021-08-31 00:00:00	2021-08-31 00:00:00
191	NOMI03AP007	B07MKMFKPG	3	10590.00	2022-12-26 00:00:00	2022-12-26 00:00:00
192	NOMI03AP007	B09MZ6WZ6V	10	999.00	2022-12-26 00:00:00	2022-12-26 00:00:00
193	NOMI03AP007	B015GX9Y0W	10	2400.00	2022-12-26 00:00:00	2022-12-26 00:00:00
194	NOMI03AP007	B01FSYQ2A4	1	2990.00	2022-12-26 00:00:00	2022-12-26 00:00:00
195	NOMI03AP007	B09NHVCHS9	11	199.00	2022-12-26 00:00:00	2022-12-26 00:00:00
196	NOMI03AP007	B0B5GJRTHB	10	1999.00	2022-12-26 00:00:00	2022-12-26 00:00:00
197	NCOA25AO528	B00MFPCY5C	15	299.00	2021-06-21 00:00:00	2021-06-21 00:00:00
198	NCOA25AO528	B095JQVC7N	12	59999.00	2021-06-21 00:00:00	2021-06-21 00:00:00
199	NCOA25AO528	B07QDSN9V6	13	1595.00	2021-06-21 00:00:00	2021-06-21 00:00:00
200	NCOA25AO528	B09T2S8X9C	5	28999.00	2021-06-21 00:00:00	2021-06-21 00:00:00
201	NCOA25AO528	B09P18XVW6	8	4999.00	2021-06-21 00:00:00	2021-06-21 00:00:00
202	NCOA25AO528	B085LPT5F4	14	2800.00	2021-06-21 00:00:00	2021-06-21 00:00:00
203	NCOA25AO528	B08HV25BBQ	6	4999.00	2021-06-21 00:00:00	2021-06-21 00:00:00
204	IMIO06MN816	B01892MIPA	9	10900.00	2021-08-10 00:00:00	2021-08-10 00:00:00
205	IMIO06MN816	B0B5LVS732	15	4999.00	2021-08-10 00:00:00	2021-08-10 00:00:00
206	IMIO06MN816	B08WLY8V9S	7	899.00	2021-08-10 00:00:00	2021-08-10 00:00:00
207	IOMI98NA353	B099PR2GQJ	11	999.00	2021-08-18 00:00:00	2021-08-18 00:00:00
208	IOMI98NA353	B08D77XZX5	15	2499.00	2021-08-18 00:00:00	2021-08-18 00:00:00
209	IOMI98NA353	B09F6D21BY	8	1999.00	2021-08-18 00:00:00	2021-08-18 00:00:00
210	IOMI98NA353	B01KK0HU3Y	5	1499.00	2021-08-18 00:00:00	2021-08-18 00:00:00
211	IOMI98NA353	B08SMJT55F	15	3990.00	2021-08-18 00:00:00	2021-08-18 00:00:00
212	IOMI98NA353	B0971DWFDT	5	699.00	2021-08-18 00:00:00	2021-08-18 00:00:00
213	PAMO24IA520	B0B3MWYCHQ	14	9999.00	2021-06-29 00:00:00	2021-06-29 00:00:00
214	PAMO24IA520	B0756CLQWL	11	3999.00	2021-06-29 00:00:00	2021-06-29 00:00:00
215	MMIN67AO501	B0758F7KK7	11	999.00	2021-01-13 00:00:00	2021-01-13 00:00:00
216	MMIN67AO501	B00LP9RFSU	6	825.00	2021-01-13 00:00:00	2021-01-13 00:00:00
217	MMIN67AO501	B078HRR1XV	15	4699.00	2021-01-13 00:00:00	2021-01-13 00:00:00
218	ONCN30IM800	B09HS1NDRQ	9	799.00	2022-02-07 00:00:00	2022-02-07 00:00:00
219	ONCN30IM800	B0B3RSDSZ3	15	9999.00	2022-02-07 00:00:00	2022-02-07 00:00:00
220	ONCN30IM800	B00NW4UWN6	14	1345.00	2022-02-07 00:00:00	2022-02-07 00:00:00
221	ONCN30IM800	B09JS562TP	3	1630.00	2022-02-07 00:00:00	2022-02-07 00:00:00
222	ONCN30IM800	B0BBFJLP21	6	15999.00	2022-02-07 00:00:00	2022-02-07 00:00:00
223	ONCN30IM800	B00MUTWLW4	6	3295.00	2022-02-07 00:00:00	2022-02-07 00:00:00
224	NOOA19IN647	B07TC9F7PN	8	16899.00	2021-10-11 00:00:00	2021-10-11 00:00:00
225	NOOA19IN647	B09X5HD5T1	6	499.00	2021-10-11 00:00:00	2021-10-11 00:00:00
226	NOOA19IN647	B09NJN8L25	10	199.00	2021-10-11 00:00:00	2021-10-11 00:00:00
227	NOOA19IN647	B00NH13Q8W	3	800.00	2021-10-11 00:00:00	2021-10-11 00:00:00
228	OAPI73NO454	B09163Q5CD	2	1929.00	2021-04-20 00:00:00	2021-04-20 00:00:00
229	OAPI73NO454	B09Z6WH2N1	13	499.00	2021-04-20 00:00:00	2021-04-20 00:00:00
230	OAPI73NO454	B0B5GF6DQD	7	5999.00	2021-04-20 00:00:00	2021-04-20 00:00:00
231	OIAO51NA078	B01EY310UM	8	1545.00	2022-09-11 00:00:00	2022-09-11 00:00:00
232	OIAO51NA078	B07WFPMGQQ	15	27990.00	2022-09-11 00:00:00	2022-09-11 00:00:00
233	OIAO51NA078	B08HV25BBQ	15	4999.00	2022-09-11 00:00:00	2022-09-11 00:00:00
234	OIAO51NA078	B07YR26BJ3	2	2000.00	2022-09-11 00:00:00	2022-09-11 00:00:00
235	OIAO51NA078	B09X76VL5L	10	3490.00	2022-09-11 00:00:00	2022-09-11 00:00:00
236	OIAO51NA078	B06XGWRKYT	12	15999.00	2022-09-11 00:00:00	2022-09-11 00:00:00
237	CNOA25II651	B0BNXFDTZ2	11	11999.00	2022-04-10 00:00:00	2022-04-10 00:00:00
238	CNOA25II651	B08HQL67D6	8	599.00	2022-04-10 00:00:00	2022-04-10 00:00:00
239	CNOA25II651	B08CKW1KH9	5	599.00	2022-04-10 00:00:00	2022-04-10 00:00:00
240	CNOA25II651	B01EZ0X3L8	5	1650.00	2022-04-10 00:00:00	2022-04-10 00:00:00
241	AANA06OI203	B0BMGG6NKT	11	13499.00	2021-04-27 00:00:00	2021-04-27 00:00:00
242	AANA06OI203	B08CYNJ5KY	5	861.00	2021-04-27 00:00:00	2021-04-27 00:00:00
243	CNIP71NA469	B09F3PDDRF	11	999.00	2021-09-22 00:00:00	2021-09-22 00:00:00
244	POAO76MA213	B09BL2KHQW	6	260.00	2021-05-11 00:00:00	2021-05-11 00:00:00
245	POAO76MA213	B0856HY85J	15	4999.00	2021-05-11 00:00:00	2021-05-11 00:00:00
246	POAO76MA213	B08VF8V79P	5	1699.00	2021-05-11 00:00:00	2021-05-11 00:00:00
247	POAO76MA213	B0BCKJJN8R	10	7290.00	2021-05-11 00:00:00	2021-05-11 00:00:00
248	POAO76MA213	B09FPP3R1D	3	2495.00	2021-05-11 00:00:00	2021-05-11 00:00:00
249	POAO76MA213	B0B4F3QNDM	10	19499.00	2021-05-11 00:00:00	2021-05-11 00:00:00
250	PMAO12MA259	B0BF4YBLPX	12	19999.00	2021-06-16 00:00:00	2021-06-16 00:00:00
251	PMAO12MA259	B07T9FV9YP	9	1799.00	2021-06-16 00:00:00	2021-06-16 00:00:00
252	PMAO12MA259	B0B8VQ7KDS	3	2499.00	2021-06-16 00:00:00	2021-06-16 00:00:00
253	PMAO12MA259	B0B3MWYCHQ	4	9999.00	2021-06-16 00:00:00	2021-06-16 00:00:00
254	PMAO12MA259	B07JQKQ91F	3	999.00	2021-06-16 00:00:00	2021-06-16 00:00:00
255	PMAO12MA259	B01LYLJ99X	9	1300.00	2021-06-16 00:00:00	2021-06-16 00:00:00
256	MAIA38NN545	B0B2CWRDB1	2	9999.00	2022-12-10 00:00:00	2022-12-10 00:00:00
257	MAIA38NN545	B0B97D658R	9	799.00	2022-12-10 00:00:00	2022-12-10 00:00:00
258	MAIA38NN545	B0BP89YBC1	11	3500.00	2022-12-10 00:00:00	2022-12-10 00:00:00
259	MAIA38NN545	B07WFPMGQQ	3	27990.00	2022-12-10 00:00:00	2022-12-10 00:00:00
260	MAIA38NN545	B09W9V2PXG	5	1999.00	2022-12-10 00:00:00	2022-12-10 00:00:00
261	MAIA38NN545	B083RC4WFJ	4	799.00	2022-12-10 00:00:00	2022-12-10 00:00:00
262	PMAM47PA712	B083GKDRKR	1	2995.00	2022-02-26 00:00:00	2022-02-26 00:00:00
263	PMAM47PA712	B07D8VBYB4	2	7776.00	2022-02-26 00:00:00	2022-02-26 00:00:00
264	PMAM47PA712	B00ABMASXG	7	720.00	2022-02-26 00:00:00	2022-02-26 00:00:00
265	PMAM47PA712	B09CTWFV5W	10	9995.00	2022-02-26 00:00:00	2022-02-26 00:00:00
266	PMAM47PA712	B07N42JB4S	3	3990.00	2022-02-26 00:00:00	2022-02-26 00:00:00
267	MNOA28OI825	B08H9Z3XQW	2	1490.00	2022-10-05 00:00:00	2022-10-05 00:00:00
268	MNOA28OI825	B07BRKK9JQ	15	1599.00	2022-10-05 00:00:00	2022-10-05 00:00:00
269	MNOA28OI825	B08PPHFXG3	2	999.00	2022-10-05 00:00:00	2022-10-05 00:00:00
270	MNOA28OI825	B084DTMYWK	4	999.00	2022-10-05 00:00:00	2022-10-05 00:00:00
271	MNOA28OI825	B0B1YZX72F	2	40990.00	2022-10-05 00:00:00	2022-10-05 00:00:00
272	MNOA28OI825	B0B3N7LR6K	1	16999.00	2022-10-05 00:00:00	2022-10-05 00:00:00
273	MNOA28OI825	B0085IATT6	15	1800.00	2022-10-05 00:00:00	2022-10-05 00:00:00
274	OACC57AP958	B01DF26V7A	2	1299.00	2022-11-01 00:00:00	2022-11-01 00:00:00
275	OACC57AP958	B00V4BGDKU	15	1899.00	2022-11-01 00:00:00	2022-11-01 00:00:00
276	OACC57AP958	B0BMM7R92G	2	999.00	2022-11-01 00:00:00	2022-11-01 00:00:00
277	OACC57AP958	B09HSKYMB3	6	9999.00	2022-11-01 00:00:00	2022-11-01 00:00:00
278	AMIN13IC279	B07S851WX5	9	1299.00	2021-11-17 00:00:00	2021-11-17 00:00:00
279	AMIN13IC279	B09JPC82QC	15	34999.00	2021-11-17 00:00:00	2021-11-17 00:00:00
280	NAIO49IO830	B0BJ6P3LSK	2	24999.00	2021-08-25 00:00:00	2021-08-25 00:00:00
281	NAIO49IO830	B00NFD0ETQ	7	2895.00	2021-08-25 00:00:00	2021-08-25 00:00:00
282	NAIO49IO830	B09PL79D2X	5	2990.00	2021-08-25 00:00:00	2021-08-25 00:00:00
283	NAIO49IO830	B09NHVCHS9	6	199.00	2021-08-25 00:00:00	2021-08-25 00:00:00
284	NAIO49IO830	B0718ZN31Q	12	4999.00	2021-08-25 00:00:00	2021-08-25 00:00:00
285	NAIO49IO830	B07JW1Y6XV	9	1099.00	2021-08-25 00:00:00	2021-08-25 00:00:00
286	ANMC84PN129	B01IOZUHRS	15	499.00	2021-01-01 00:00:00	2021-01-01 00:00:00
287	ANMC84PN129	B0BDYVC5TD	2	1800.00	2021-01-01 00:00:00	2021-01-01 00:00:00
288	ANMC84PN129	B00LZPQVMK	11	320.00	2021-01-01 00:00:00	2021-01-01 00:00:00
289	MOIO90AA471	B00LHZW3XY	5	180.00	2021-05-13 00:00:00	2021-05-13 00:00:00
290	MOIO90AA471	B08CHZ3ZQ7	12	799.00	2021-05-13 00:00:00	2021-05-13 00:00:00
291	OOOO68CA089	B08QHLXWV3	8	11990.00	2022-01-14 00:00:00	2022-01-14 00:00:00
292	OOOO68CA089	B09NS5TKPN	9	75990.00	2022-01-14 00:00:00	2022-01-14 00:00:00
293	OOOO68CA089	B08461VC1Z	8	1995.00	2022-01-14 00:00:00	2022-01-14 00:00:00
294	OOOO68CA089	B0141EZMAI	6	800.00	2022-01-14 00:00:00	2022-01-14 00:00:00
295	CMAI45ON647	B097C564GC	1	4999.00	2022-02-16 00:00:00	2022-02-16 00:00:00
296	CMAI45ON647	B00LM4W1N2	3	600.00	2022-02-16 00:00:00	2022-02-16 00:00:00
297	OCCM14AI521	B0B467CCB9	11	16990.00	2022-05-28 00:00:00	2022-05-28 00:00:00
298	OCCM14AI521	B09GFPVD9Y	14	10999.00	2022-05-28 00:00:00	2022-05-28 00:00:00
299	OCCM14AI521	B08H6CZSHT	8	3295.00	2022-05-28 00:00:00	2022-05-28 00:00:00
300	OCCM14AI521	B08L7J3T31	2	919.00	2022-05-28 00:00:00	2022-05-28 00:00:00
301	OCCM14AI521	B08WKG2MWT	5	1099.00	2022-05-28 00:00:00	2022-05-28 00:00:00
302	OCCM14AI521	B07LFWP97N	3	1099.00	2022-05-28 00:00:00	2022-05-28 00:00:00
303	OCCM14AI521	B018SJJ0GE	2	2999.00	2022-05-28 00:00:00	2022-05-28 00:00:00
304	OMMI99MN032	B0BMZ6SY89	6	1599.00	2022-05-16 00:00:00	2022-05-16 00:00:00
305	OMMI99MN032	B073BRXPZX	1	590.00	2022-05-16 00:00:00	2022-05-16 00:00:00
306	OMMI99MN032	B0BNDRK886	4	599.00	2022-05-16 00:00:00	2022-05-16 00:00:00
307	ICAC00OA459	B07232M876	1	395.00	2021-06-29 00:00:00	2021-06-29 00:00:00
308	ICAC00OA459	B09939XJX8	6	1500.00	2021-06-29 00:00:00	2021-06-29 00:00:00
309	ICAC00OA459	B09C6HWG18	4	1999.00	2021-06-29 00:00:00	2021-06-29 00:00:00
310	ICAC00OA459	B07VV37FT4	11	250.00	2021-06-29 00:00:00	2021-06-29 00:00:00
311	AANA12IC317	B015OW3M1W	13	1700.00	2021-10-13 00:00:00	2021-10-13 00:00:00
312	AANA12IC317	B09NVPJ3P4	7	3999.00	2021-10-13 00:00:00	2021-10-13 00:00:00
313	AANA12IC317	B09C6HWG18	11	1999.00	2021-10-13 00:00:00	2021-10-13 00:00:00
314	MNCN58OA459	B0BPCJM7TB	1	999.00	2021-10-20 00:00:00	2021-10-20 00:00:00
315	MNCN58OA459	B07J2BQZD6	9	399.00	2021-10-20 00:00:00	2021-10-20 00:00:00
316	MNCN58OA459	B08G28Z33M	12	699.00	2021-10-20 00:00:00	2021-10-20 00:00:00
317	NANI29IP197	B09CYTJV3N	10	5999.00	2021-12-12 00:00:00	2021-12-12 00:00:00
318	NCNC73CP427	B08C4Z69LN	4	3500.00	2021-04-18 00:00:00	2021-04-18 00:00:00
319	NCNC73CP427	B0B3RSDSZ3	11	9999.00	2021-04-18 00:00:00	2021-04-18 00:00:00
320	NCNC73CP427	B0B9RZ4G4W	1	1699.00	2021-04-18 00:00:00	2021-04-18 00:00:00
321	NCNC73CP427	B01I1LDZGA	10	1775.00	2021-04-18 00:00:00	2021-04-18 00:00:00
322	NCNC73CP427	B09M8888DM	5	799.00	2021-04-18 00:00:00	2021-04-18 00:00:00
323	NCNC73CP427	B0B9LDCX89	5	999.00	2021-04-18 00:00:00	2021-04-18 00:00:00
324	NCNC73CP427	B003L62T7W	7	375.00	2021-04-18 00:00:00	2021-04-18 00:00:00
325	AOIA36CO047	B085194JFL	7	499.00	2022-09-12 00:00:00	2022-09-12 00:00:00
326	AOIA36CO047	B00SMFPJG0	4	670.00	2022-09-12 00:00:00	2022-09-12 00:00:00
327	AOIA36CO047	B09J4YQYX3	5	2290.00	2022-09-12 00:00:00	2022-09-12 00:00:00
328	AOIA36CO047	B095X38CJS	8	99.00	2022-09-12 00:00:00	2022-09-12 00:00:00
329	ACIA68OP693	B07Z3K96FR	1	1499.00	2021-06-26 00:00:00	2021-06-26 00:00:00
330	ICCM58NO572	B01M265AAK	2	4495.00	2021-08-08 00:00:00	2021-08-08 00:00:00
331	ICCM58NO572	B07ZKD8T1Q	15	2999.00	2021-08-08 00:00:00	2021-08-08 00:00:00
332	CAMM02CA565	B08VGFX2B6	13	199.00	2022-01-23 00:00:00	2022-01-23 00:00:00
333	CAMM02CA565	B01F25X6RQ	1	499.00	2022-01-23 00:00:00	2022-01-23 00:00:00
334	CAMM02CA565	B097ZQTDVZ	8	899.00	2022-01-23 00:00:00	2022-01-23 00:00:00
335	CAMM02CA565	B07T5DKR5D	7	399.00	2022-01-23 00:00:00	2022-01-23 00:00:00
336	CAMM02CA565	B07KRCW6LZ	3	1599.00	2022-01-23 00:00:00	2022-01-23 00:00:00
337	COIC71PA250	B0B4T8RSJ1	5	800.00	2022-10-19 00:00:00	2022-10-19 00:00:00
338	COIC71PA250	B09WF4Q7B3	5	2599.00	2022-10-19 00:00:00	2022-10-19 00:00:00
339	COIC71PA250	B09H34V36W	6	2495.00	2022-10-19 00:00:00	2022-10-19 00:00:00
340	COIC71PA250	B08CFCK6CW	14	7999.00	2022-10-19 00:00:00	2022-10-19 00:00:00
341	COIC71PA250	B09QS9X16F	12	18999.00	2022-10-19 00:00:00	2022-10-19 00:00:00
342	COIC71PA250	B0949SBKMP	13	6990.00	2022-10-19 00:00:00	2022-10-19 00:00:00
343	COIC71PA250	B0B4F2ZWL3	4	17999.00	2022-10-19 00:00:00	2022-10-19 00:00:00
344	OAAP03NA440	B07DZ986Q2	5	8995.00	2022-10-26 00:00:00	2022-10-26 00:00:00
345	OAAP03NA440	B07LFQLKFZ	11	420.00	2022-10-26 00:00:00	2022-10-26 00:00:00
346	OAAP03NA440	B01EZ0X3L8	13	1650.00	2022-10-26 00:00:00	2022-10-26 00:00:00
347	OAAP03NA440	B09GFM8CGS	7	7999.00	2022-10-26 00:00:00	2022-10-26 00:00:00
348	MAAA08IA945	B07JGDB5M1	8	1299.00	2021-01-21 00:00:00	2021-01-21 00:00:00
349	ANIA33CO885	B09YLFHFDW	12	2790.00	2022-08-09 00:00:00	2022-08-09 00:00:00
350	ANIA33CO885	B09BNXQ6BR	9	6499.00	2022-08-09 00:00:00	2022-08-09 00:00:00
351	ANIA33CO885	B076B8G5D8	4	1995.00	2022-08-09 00:00:00	2022-08-09 00:00:00
352	ANIA33CO885	B09LHXNZLR	3	499.00	2022-08-09 00:00:00	2022-08-09 00:00:00
353	ANIA33CO885	B09Z6WH2N1	7	499.00	2022-08-09 00:00:00	2022-08-09 00:00:00
354	ANIA33CO885	B09F6D21BY	14	1999.00	2022-08-09 00:00:00	2022-08-09 00:00:00
355	AOOA25MN383	B07JH1CBGW	4	1999.00	2021-12-19 00:00:00	2021-12-19 00:00:00
356	CAII50MN024	B0BLV1GNLN	11	9990.00	2021-07-29 00:00:00	2021-07-29 00:00:00
357	OPAM94PA077	B07N8RQ6W7	2	699.00	2022-01-25 00:00:00	2022-01-25 00:00:00
358	AOPI32OA172	B07LDPLSZC	4	1190.00	2022-08-20 00:00:00	2022-08-20 00:00:00
359	AOPI32OA172	B06XR9PR5X	4	600.00	2022-08-20 00:00:00	2022-08-20 00:00:00
360	AOPI32OA172	B093QCY6YJ	2	349.00	2022-08-20 00:00:00	2022-08-20 00:00:00
361	AOPI32OA172	B017PDR9N0	10	499.00	2022-08-20 00:00:00	2022-08-20 00:00:00
362	AOPI32OA172	B09Y358DZQ	13	4295.00	2022-08-20 00:00:00	2022-08-20 00:00:00
363	AOPI32OA172	B0B9LDCX89	4	999.00	2022-08-20 00:00:00	2022-08-20 00:00:00
364	MPAM55AN316	B07232M876	9	395.00	2021-07-26 00:00:00	2021-07-26 00:00:00
365	ACAO29IO121	B07GLSKXS1	14	1950.00	2022-02-06 00:00:00	2022-02-06 00:00:00
366	ACAO29IO121	B09PDZNSBG	2	6700.00	2022-02-06 00:00:00	2022-02-06 00:00:00
367	CAPA60OM398	B09LHZSMRR	4	20999.00	2022-07-16 00:00:00	2022-07-16 00:00:00
368	CAPA60OM398	B0B3MMYHYW	10	45999.00	2022-07-16 00:00:00	2022-07-16 00:00:00
369	CAPA60OM398	B07S851WX5	13	1299.00	2022-07-16 00:00:00	2022-07-16 00:00:00
370	CAPA60OM398	B08R69VDHT	2	499.00	2022-07-16 00:00:00	2022-07-16 00:00:00
371	CAPA60OM398	B00P0R95EA	3	640.00	2022-07-16 00:00:00	2022-07-16 00:00:00
372	CAPA60OM398	B01EY310UM	6	1545.00	2022-07-16 00:00:00	2022-07-16 00:00:00
373	AACO70PI342	B094JNXNPV	1	399.00	2022-09-23 00:00:00	2022-09-23 00:00:00
374	AACO70PI342	B01J0XWYKQ	8	895.00	2022-09-23 00:00:00	2022-09-23 00:00:00
375	AACO70PI342	B07DZ986Q2	4	8995.00	2022-09-23 00:00:00	2022-09-23 00:00:00
376	AACO70PI342	B07CWDX49D	6	1600.00	2022-09-23 00:00:00	2022-09-23 00:00:00
377	AACO70PI342	B0765B3TH7	4	599.00	2022-09-23 00:00:00	2022-09-23 00:00:00
378	AACO70PI342	B09RQRZW2X	6	899.00	2022-09-23 00:00:00	2022-09-23 00:00:00
379	AOPA85CI446	B08NW8GHCJ	13	999.00	2022-03-19 00:00:00	2022-03-19 00:00:00
380	AOPA85CI446	B087JWLZ2K	13	50000.00	2022-03-19 00:00:00	2022-03-19 00:00:00
381	AOPA85CI446	B09X1M3DHX	12	27990.00	2022-03-19 00:00:00	2022-03-19 00:00:00
382	AOPA85CI446	B00HVXS7WC	10	3210.00	2022-03-19 00:00:00	2022-03-19 00:00:00
383	AOPA85CI446	B08SBH499M	10	1300.00	2022-03-19 00:00:00	2022-03-19 00:00:00
384	PNNA38NA242	B08MWJTST6	14	1299.00	2022-01-11 00:00:00	2022-01-11 00:00:00
385	PNNA38NA242	B0BMXMLSMM	13	999.00	2022-01-11 00:00:00	2022-01-11 00:00:00
386	PNNA38NA242	B099PR2GQJ	5	999.00	2022-01-11 00:00:00	2022-01-11 00:00:00
387	PNNA38NA242	B07L5L4GTB	8	404.00	2022-01-11 00:00:00	2022-01-11 00:00:00
388	PNNA38NA242	B00LHZWD0C	6	315.00	2022-01-11 00:00:00	2022-01-11 00:00:00
389	PNNA38NA242	B07ZR4S1G4	5	699.00	2022-01-11 00:00:00	2022-01-11 00:00:00
390	MAAC52OP341	B07K2HVKLL	9	1020.00	2021-02-24 00:00:00	2021-02-24 00:00:00
391	MAAC52OP341	B094DQWV9B	11	399.00	2021-02-24 00:00:00	2021-02-24 00:00:00
392	CCPA94IP108	B0B15GSPQW	13	70900.00	2022-03-12 00:00:00	2022-03-12 00:00:00
393	CCPA94IP108	B00O24PUO6	7	1650.00	2022-03-12 00:00:00	2022-03-12 00:00:00
394	AMAI13OA534	B07LFWP97N	11	1099.00	2021-07-26 00:00:00	2021-07-26 00:00:00
395	AMAI13OA534	B07W6VWZ8C	12	1999.00	2021-07-26 00:00:00	2021-07-26 00:00:00
396	AMAI13OA534	B00AXHBBXU	13	550.00	2021-07-26 00:00:00	2021-07-26 00:00:00
397	IIMN16AN220	B00H0B29DI	7	2990.00	2021-10-11 00:00:00	2021-10-11 00:00:00
398	IIMN16AN220	B07WGPBXY9	8	1249.00	2021-10-11 00:00:00	2021-10-11 00:00:00
399	IIMN16AN220	B0B84KSH3X	8	1950.00	2021-10-11 00:00:00	2021-10-11 00:00:00
400	IIMN16AN220	B0B2DJ5RVQ	1	1999.00	2021-10-11 00:00:00	2021-10-11 00:00:00
401	IIMN16AN220	B08XXF5V6G	3	50999.00	2021-10-11 00:00:00	2021-10-11 00:00:00
402	PCMI31CA899	B015ZXUDD0	11	599.00	2022-10-12 00:00:00	2022-10-12 00:00:00
403	PCMI31CA899	B0B9F9PT8R	2	2999.00	2022-10-12 00:00:00	2022-10-12 00:00:00
404	PCMI31CA899	B008IFXQFU	13	999.00	2022-10-12 00:00:00	2022-10-12 00:00:00
405	PCMI31CA899	B09CMQRQM6	13	899.00	2022-10-12 00:00:00	2022-10-12 00:00:00
406	PCMI31CA899	B09F6S8BT6	10	22900.00	2022-10-12 00:00:00	2022-10-12 00:00:00
407	PCMI31CA899	B07TC9F7PN	12	16899.00	2022-10-12 00:00:00	2022-10-12 00:00:00
408	CIAO00PA980	B07YNTJ8ZM	9	999.00	2022-01-07 00:00:00	2022-01-07 00:00:00
409	CIAO00PA980	B01L8ZNWN2	5	1500.00	2022-01-07 00:00:00	2022-01-07 00:00:00
410	CIAO00PA980	B00W56GLOQ	13	5000.00	2022-01-07 00:00:00	2022-01-07 00:00:00
411	CIAO00PA980	B08D9NDZ1Y	1	4332.00	2022-01-07 00:00:00	2022-01-07 00:00:00
412	CIAO00PA980	B08FY4FG5X	11	2499.00	2022-01-07 00:00:00	2022-01-07 00:00:00
413	CIAO00PA980	B01GFTEV5Y	5	3193.00	2022-01-07 00:00:00	2022-01-07 00:00:00
414	CIAO00PA980	B0B8SSC5D9	8	1999.00	2022-01-07 00:00:00	2022-01-07 00:00:00
415	IANP54CC008	B07B275VN9	1	799.00	2022-08-18 00:00:00	2022-08-18 00:00:00
416	MNOC99MI447	B09XB7DPW1	7	11999.00	2022-08-05 00:00:00	2022-08-05 00:00:00
417	MNOC99MI447	B0B1YZ9CB8	14	47990.00	2022-08-05 00:00:00	2022-08-05 00:00:00
418	MNOC99MI447	B0B5RP43VN	15	4650.00	2022-08-05 00:00:00	2022-08-05 00:00:00
419	OOAA73MO102	B07WGPBXY9	9	1249.00	2022-10-28 00:00:00	2022-10-28 00:00:00
420	OOAA73MO102	B0B9LDCX89	8	999.00	2022-10-28 00:00:00	2022-10-28 00:00:00
421	OOAA73MO102	B00NH11KIK	2	695.00	2022-10-28 00:00:00	2022-10-28 00:00:00
422	OOAA73MO102	B09LHYZ3GJ	15	20999.00	2022-10-28 00:00:00	2022-10-28 00:00:00
423	CPIP45PN493	B01F262EUU	4	999.00	2022-01-25 00:00:00	2022-01-25 00:00:00
424	CPIP45PN493	B07X2L5Z8C	15	2295.00	2022-01-25 00:00:00	2022-01-25 00:00:00
425	CPIP45PN493	B078G6ZF5Z	3	1199.00	2022-01-25 00:00:00	2022-01-25 00:00:00
426	CPIP45PN493	B07SYYVP69	10	1950.00	2022-01-25 00:00:00	2022-01-25 00:00:00
427	OPAO33CI957	B0085IATT6	6	1800.00	2022-12-08 00:00:00	2022-12-08 00:00:00
428	OPAO33CI957	B00LZLQ624	6	160.00	2022-12-08 00:00:00	2022-12-08 00:00:00
429	OPAO33CI957	B009P2LITG	10	3279.00	2022-12-08 00:00:00	2022-12-08 00:00:00
430	OPAO33CI957	B01M6453MB	7	3045.00	2022-12-08 00:00:00	2022-12-08 00:00:00
431	OPAO33CI957	B093QCY6YJ	7	349.00	2022-12-08 00:00:00	2022-12-08 00:00:00
432	OPAO33CI957	B08JKPVDKL	15	699.00	2022-12-08 00:00:00	2022-12-08 00:00:00
433	MMNO68NC435	B0B3XXSB1K	7	79990.00	2022-06-20 00:00:00	2022-06-20 00:00:00
434	MMNO68NC435	B09LQH3SD9	9	2000.00	2022-06-20 00:00:00	2022-06-20 00:00:00
435	MMNO68NC435	B016MDK4F4	15	499.00	2022-06-20 00:00:00	2022-06-20 00:00:00
436	MMNO68NC435	B09MQ9PDHR	1	1999.00	2022-06-20 00:00:00	2022-06-20 00:00:00
437	MMNO68NC435	B08FD2VSD9	5	51990.00	2022-06-20 00:00:00	2022-06-20 00:00:00
438	MMNO68NC435	B08BCKN299	15	999.00	2022-06-20 00:00:00	2022-06-20 00:00:00
439	MMNO68NC435	B07X2L5Z8C	7	2295.00	2022-06-20 00:00:00	2022-06-20 00:00:00
440	MPAC80NN449	B08WLY8V9S	6	899.00	2021-11-02 00:00:00	2021-11-02 00:00:00
441	MPAC80NN449	B09RQRZW2X	15	899.00	2021-11-02 00:00:00	2021-11-02 00:00:00
442	MPAC80NN449	B08444S68L	13	15990.00	2021-11-02 00:00:00	2021-11-02 00:00:00
443	CAMC82AC167	B09NL7LBWT	9	1999.00	2021-03-08 00:00:00	2021-03-08 00:00:00
444	CAMC82AC167	B0088TKTY2	9	1399.00	2021-03-08 00:00:00	2021-03-08 00:00:00
445	CAMC82AC167	B06XSK3XL6	5	999.00	2021-03-08 00:00:00	2021-03-08 00:00:00
446	CAMC82AC167	B09MJ77786	7	49999.00	2021-03-08 00:00:00	2021-03-08 00:00:00
447	CAMC82AC167	B09HCH3JZG	5	1899.00	2021-03-08 00:00:00	2021-03-08 00:00:00
448	CAMC82AC167	B08BJN4MP3	9	24850.00	2021-03-08 00:00:00	2021-03-08 00:00:00
449	CAMC82AC167	B09Z7YGV3R	13	699.00	2021-03-08 00:00:00	2021-03-08 00:00:00
450	IMNA92CI523	B014I8SSD0	13	475.00	2021-03-02 00:00:00	2021-03-02 00:00:00
451	IMNA92CI523	B0832W3B7Q	12	3595.00	2021-03-02 00:00:00	2021-03-02 00:00:00
452	IMNA92CI523	B07KRCW6LZ	7	1599.00	2021-03-02 00:00:00	2021-03-02 00:00:00
453	IMNA92CI523	B08R69WBN7	12	499.00	2021-03-02 00:00:00	2021-03-02 00:00:00
454	IMNA92CI523	B07WJXCTG9	1	1345.00	2021-03-02 00:00:00	2021-03-02 00:00:00
455	IMNA92CI523	B00935MD1C	1	3945.00	2021-03-02 00:00:00	2021-03-02 00:00:00
456	AIAP00PO667	B0BM4KTNL1	4	1599.00	2021-04-28 00:00:00	2021-04-28 00:00:00
457	AIAP00PO667	B0BHNHMR3H	2	1299.00	2021-04-28 00:00:00	2021-04-28 00:00:00
458	AIAP00PO667	B0B4KPCBSH	1	499.00	2021-04-28 00:00:00	2021-04-28 00:00:00
459	AIAP00PO667	B0B5KZ3C53	13	2900.00	2021-04-28 00:00:00	2021-04-28 00:00:00
460	AIAP00PO667	B00NH11PEY	14	750.00	2021-04-28 00:00:00	2021-04-28 00:00:00
461	AIAP00PO667	B07GLNJC25	8	499.00	2021-04-28 00:00:00	2021-04-28 00:00:00
462	INPA61IP460	B0B61HYR92	10	999.00	2021-02-05 00:00:00	2021-02-05 00:00:00
463	INPA61IP460	B09F3PDDRF	12	999.00	2021-02-05 00:00:00	2021-02-05 00:00:00
464	INPA61IP460	B07P434WJY	14	1999.00	2021-02-05 00:00:00	2021-02-05 00:00:00
465	AMAI28CO393	B09M8888DM	4	799.00	2022-09-20 00:00:00	2022-09-20 00:00:00
466	AOCA18AO742	B07W9KYT62	8	3999.00	2021-08-23 00:00:00	2021-08-23 00:00:00
467	AOCA18AO742	B09QS9X9L8	2	18999.00	2021-08-23 00:00:00	2021-08-23 00:00:00
468	AOCA18AO742	B09TWH8YHM	6	24999.00	2021-08-23 00:00:00	2021-08-23 00:00:00
469	AOCA18AO742	B01KCSGBU2	12	23559.00	2021-08-23 00:00:00	2021-08-23 00:00:00
470	AOCA18AO742	B078KRFWQB	3	3945.00	2021-08-23 00:00:00	2021-08-23 00:00:00
471	APOP64AM478	B08XMSKKMM	4	1999.00	2021-12-30 00:00:00	2021-12-30 00:00:00
472	APOP64AM478	B07JH1C41D	1	1999.00	2021-12-30 00:00:00	2021-12-30 00:00:00
473	APOP64AM478	B0B1YVCJ2Y	15	19990.00	2021-12-30 00:00:00	2021-12-30 00:00:00
474	APOP64AM478	B09V12K8NT	5	6990.00	2021-12-30 00:00:00	2021-12-30 00:00:00
475	APOP64AM478	B09NL7LBWT	1	1999.00	2021-12-30 00:00:00	2021-12-30 00:00:00
476	APOP64AM478	B01892MIPA	11	10900.00	2021-12-30 00:00:00	2021-12-30 00:00:00
477	NOAN53IO324	B07JPJJZ2H	4	1299.00	2022-05-12 00:00:00	2022-05-12 00:00:00
478	NOAN53IO324	B08VRMK55F	9	699.00	2022-05-12 00:00:00	2022-05-12 00:00:00
479	NOAN53IO324	B09YV463SW	12	9999.00	2022-05-12 00:00:00	2022-05-12 00:00:00
480	NPOA52OA663	B00A0VCJPI	9	2499.00	2021-07-22 00:00:00	2021-07-22 00:00:00
481	NPOA52OA663	B07GVR9TG7	1	4999.00	2021-07-22 00:00:00	2021-07-22 00:00:00
482	APCN68CN588	B08VRMK55F	11	699.00	2021-08-26 00:00:00	2021-08-26 00:00:00
483	APCN68CN588	B07Z53L5QL	4	1499.00	2021-08-26 00:00:00	2021-08-26 00:00:00
484	MNII91PN842	B08ZN4B121	11	1599.00	2021-07-11 00:00:00	2021-07-11 00:00:00
485	MNII91PN842	B09QS9X16F	10	18999.00	2021-07-11 00:00:00	2021-07-11 00:00:00
486	MNII91PN842	B08ZJDWTJ1	13	4999.00	2021-07-11 00:00:00	2021-07-11 00:00:00
487	NOMP37CO140	B07DXRGWDJ	1	5995.00	2022-12-09 00:00:00	2022-12-09 00:00:00
488	NOMP37CO140	B09MT6XSFW	12	1899.00	2022-12-09 00:00:00	2022-12-09 00:00:00
489	NOMP37CO140	B0B9BD2YL4	4	6999.00	2022-12-09 00:00:00	2022-12-09 00:00:00
490	NOMP37CO140	B0746N6WML	6	450.00	2022-12-09 00:00:00	2022-12-09 00:00:00
491	NOMP37CO140	B07RX42D3D	9	350.00	2022-12-09 00:00:00	2022-12-09 00:00:00
492	IOIO16CI960	B00LY1FN1K	12	230.00	2021-07-24 00:00:00	2021-07-24 00:00:00
493	OIPA29CI676	B00KRCBA6E	12	5000.00	2021-11-25 00:00:00	2021-11-25 00:00:00
494	OIPA29CI676	B08SKZ2RMG	15	999.00	2021-11-25 00:00:00	2021-11-25 00:00:00
495	OIPA29CI676	B01J1CFO5I	3	550.00	2021-11-25 00:00:00	2021-11-25 00:00:00
496	OIPA29CI676	B0B7FJNSZR	2	19990.00	2021-11-25 00:00:00	2021-11-25 00:00:00
497	OIPA29CI676	B016MDK4F4	5	499.00	2021-11-25 00:00:00	2021-11-25 00:00:00
498	ACIA47MP097	B09GBBJV72	10	2199.00	2022-11-10 00:00:00	2022-11-10 00:00:00
499	ACIA47MP097	B09LRZYBH1	12	3999.00	2022-11-10 00:00:00	2022-11-10 00:00:00
500	ACIA47MP097	B006LW0WDQ	8	795.00	2022-11-10 00:00:00	2022-11-10 00:00:00
501	ACIA47MP097	B09GBBJV72	5	2199.00	2022-11-10 00:00:00	2022-11-10 00:00:00
502	ACIA47MP097	B097R4D42G	9	9650.00	2022-11-10 00:00:00	2022-11-10 00:00:00
503	ACIA47MP097	B085LPT5F4	9	2800.00	2022-11-10 00:00:00	2022-11-10 00:00:00
504	ACIA47MP097	B08W56G1K9	2	999.00	2022-11-10 00:00:00	2022-11-10 00:00:00
505	PAAN19IA818	B09CTWFV5W	12	9995.00	2021-09-18 00:00:00	2021-09-18 00:00:00
506	PAAN19IA818	B0972BQ2RS	6	9999.00	2021-09-18 00:00:00	2021-09-18 00:00:00
507	PAAN19IA818	B08CDKQ8T6	2	349.00	2021-09-18 00:00:00	2021-09-18 00:00:00
508	PAAN19IA818	B07Y9PY6Y1	10	8820.00	2021-09-18 00:00:00	2021-09-18 00:00:00
509	PAAN19IA818	B002PD61Y4	9	1208.00	2021-09-18 00:00:00	2021-09-18 00:00:00
510	PAAN19IA818	B07GVR9TG7	13	4999.00	2021-09-18 00:00:00	2021-09-18 00:00:00
511	PAAN19IA818	B01L6MT7E0	2	11995.00	2021-09-18 00:00:00	2021-09-18 00:00:00
512	PIMM37NI430	B09JPC82QC	1	34999.00	2022-10-11 00:00:00	2022-10-11 00:00:00
513	PACC06AA147	B07924P3C5	15	799.00	2021-08-07 00:00:00	2021-08-07 00:00:00
514	PACC06AA147	B07HK53XM4	10	599.00	2021-08-07 00:00:00	2021-08-07 00:00:00
515	PACC06AA147	B08WRKSF9D	2	8500.00	2021-08-07 00:00:00	2021-08-07 00:00:00
516	ICMI63CI757	B08GM5S4CQ	3	14290.00	2021-03-19 00:00:00	2021-03-19 00:00:00
517	ICMI63CI757	B096VF5YYF	11	7990.00	2021-03-19 00:00:00	2021-03-19 00:00:00
518	ICMI63CI757	B09JS562TP	12	1630.00	2021-03-19 00:00:00	2021-03-19 00:00:00
519	ICMI63CI757	B07FXLC2G2	8	699.00	2021-03-19 00:00:00	2021-03-19 00:00:00
520	CACP44NP473	B086PXQ2R4	4	165.00	2021-01-19 00:00:00	2021-01-19 00:00:00
521	CACP44NP473	B0B16KD737	15	15999.00	2021-01-19 00:00:00	2021-01-19 00:00:00
522	CACP44NP473	B013B2WGT6	5	1899.00	2021-01-19 00:00:00	2021-01-19 00:00:00
523	CACP44NP473	B081FJWN52	10	999.00	2021-01-19 00:00:00	2021-01-19 00:00:00
524	IOPO20CA241	B00O24PUO6	15	1650.00	2021-03-21 00:00:00	2021-03-21 00:00:00
525	PNPI22NC669	B087FXHB6J	10	999.00	2021-12-24 00:00:00	2021-12-24 00:00:00
526	PNPI22NC669	B07DJ5KYDZ	5	2796.00	2021-12-24 00:00:00	2021-12-24 00:00:00
527	PNPI22NC669	B0BHYJ8CVF	15	1499.00	2021-12-24 00:00:00	2021-12-24 00:00:00
528	PNPI22NC669	B00MFPCY5C	8	299.00	2021-12-24 00:00:00	2021-12-24 00:00:00
529	PNPI22NC669	B09MM6P76N	11	599.00	2021-12-24 00:00:00	2021-12-24 00:00:00
530	PNPI22NC669	B0BMZ6SY89	3	1599.00	2021-12-24 00:00:00	2021-12-24 00:00:00
531	PNPI22NC669	B0BQRJ3C47	15	999.00	2021-12-24 00:00:00	2021-12-24 00:00:00
532	ANOA49AI603	B08XLR6DSB	4	1499.00	2021-07-27 00:00:00	2021-07-27 00:00:00
533	ANOA49AI603	B008LN8KDM	10	2095.00	2021-07-27 00:00:00	2021-07-27 00:00:00
534	ANOA49AI603	B016XVRKZM	6	4100.00	2021-07-27 00:00:00	2021-07-27 00:00:00
535	ANOA49AI603	B0BNDRK886	13	599.00	2021-07-27 00:00:00	2021-07-27 00:00:00
536	ANOA49AI603	B0B5F3YZY4	9	1099.00	2021-07-27 00:00:00	2021-07-27 00:00:00
537	ANOA49AI603	B0BDRVFDKP	11	1000.00	2021-07-27 00:00:00	2021-07-27 00:00:00
538	ANOA49AI603	B0B8CXTTG3	1	25999.00	2021-07-27 00:00:00	2021-07-27 00:00:00
539	CAMN30MA261	B088ZTJT2R	10	1295.00	2021-02-13 00:00:00	2021-02-13 00:00:00
540	CAMN30MA261	B09X5HD5T1	8	499.00	2021-02-13 00:00:00	2021-02-13 00:00:00
541	CAMN30MA261	B08WRWPM22	4	499.00	2021-02-13 00:00:00	2021-02-13 00:00:00
542	AAMA29CO416	B07N8RQ6W7	12	699.00	2021-08-16 00:00:00	2021-08-16 00:00:00
543	AAMA29CO416	B083T5G5PM	3	1990.00	2021-08-16 00:00:00	2021-08-16 00:00:00
544	AAMA29CO416	B09P182Z2H	7	5799.00	2021-08-16 00:00:00	2021-08-16 00:00:00
545	AAMA29CO416	B09SGGRKV8	1	499.00	2021-08-16 00:00:00	2021-08-16 00:00:00
546	AAMA29CO416	B00O24PUO6	9	1650.00	2021-08-16 00:00:00	2021-08-16 00:00:00
547	AAMA29CO416	B07S9S86BF	7	1490.00	2021-08-16 00:00:00	2021-08-16 00:00:00
548	AMAA16AA563	B09TY4MSH3	10	2499.00	2021-05-05 00:00:00	2021-05-05 00:00:00
549	IANA94AA348	B08BJN4MP3	2	24850.00	2022-03-30 00:00:00	2022-03-30 00:00:00
550	IANA94AA348	B0B9959XF3	3	22990.00	2022-03-30 00:00:00	2022-03-30 00:00:00
551	IANA94AA348	B08RX8G496	4	1099.00	2022-03-30 00:00:00	2022-03-30 00:00:00
552	IANA94AA348	B08MC57J31	1	2499.00	2022-03-30 00:00:00	2022-03-30 00:00:00
553	IANA94AA348	B00K32PEW4	12	535.00	2022-03-30 00:00:00	2022-03-30 00:00:00
554	OCAO76OO959	B0756K5DYZ	6	6295.00	2021-10-10 00:00:00	2021-10-10 00:00:00
555	OCAO76OO959	B00E9G8KOY	2	600.00	2021-10-10 00:00:00	2021-10-10 00:00:00
556	OCAO76OO959	B07YZG8PPY	10	2299.00	2021-10-10 00:00:00	2021-10-10 00:00:00
557	OCAO76OO959	B09YLYB9PB	8	399.00	2021-10-10 00:00:00	2021-10-10 00:00:00
558	OCAO76OO959	B009DA69W6	4	1900.00	2021-10-10 00:00:00	2021-10-10 00:00:00
559	MNAI21IO686	B07TMCXRFV	5	1599.00	2021-08-01 00:00:00	2021-08-01 00:00:00
560	MNAI21IO686	B09L8DSSFH	9	999.00	2021-08-01 00:00:00	2021-08-01 00:00:00
561	MNAI21IO686	B07B275VN9	9	799.00	2021-08-01 00:00:00	2021-08-01 00:00:00
562	MNAI21IO686	B07GPXXNNG	7	999.00	2021-08-01 00:00:00	2021-08-01 00:00:00
563	MNAI21IO686	B09PL79D2X	8	2990.00	2021-08-01 00:00:00	2021-08-01 00:00:00
564	MNAI21IO686	B0994GP1CX	2	999.00	2021-08-01 00:00:00	2021-08-01 00:00:00
565	IOIN03CA202	B09QGZM8QB	12	999.00	2022-09-10 00:00:00	2022-09-10 00:00:00
566	IOIN03CA202	B09Q8WQ5QJ	14	499.00	2022-09-10 00:00:00	2022-09-10 00:00:00
567	IOIN03CA202	B098JYT4SY	12	1190.00	2022-09-10 00:00:00	2022-09-10 00:00:00
568	IOIN03CA202	B094G9L9LT	10	1950.00	2022-09-10 00:00:00	2022-09-10 00:00:00
569	IMCN59AA546	B0B3D39RKV	12	33999.00	2022-10-08 00:00:00	2022-10-08 00:00:00
570	IMCN59AA546	B09YLFHFDW	9	2790.00	2022-10-08 00:00:00	2022-10-08 00:00:00
571	AIPM47CP440	B09MMD1FDN	11	699.00	2021-06-28 00:00:00	2021-06-28 00:00:00
572	AIPM47CP440	B08FTFXNNB	14	1999.00	2021-06-28 00:00:00	2021-06-28 00:00:00
573	AIPM47CP440	B08YD264ZS	13	2499.00	2021-06-28 00:00:00	2021-06-28 00:00:00
574	CMPO17NA869	B09MZ6WZ6V	14	999.00	2021-02-28 00:00:00	2021-02-28 00:00:00
575	CMPO17NA869	B0752LL57V	10	440.00	2021-02-28 00:00:00	2021-02-28 00:00:00
576	IMCP67AP287	B0949FPSFY	9	1999.00	2021-04-30 00:00:00	2021-04-30 00:00:00
577	IMCP67AP287	B07JGCGNDG	14	11500.00	2021-04-30 00:00:00	2021-04-30 00:00:00
578	IMCP67AP287	B0BP7XLX48	3	1999.00	2021-04-30 00:00:00	2021-04-30 00:00:00
579	IMCP67AP287	B099K9ZX65	7	44990.00	2021-04-30 00:00:00	2021-04-30 00:00:00
580	IMCP67AP287	B09QS8V5N8	1	17999.00	2021-04-30 00:00:00	2021-04-30 00:00:00
581	IMCP67AP287	B0117H7GZ6	13	399.00	2021-04-30 00:00:00	2021-04-30 00:00:00
582	IMCP67AP287	B01NBX5RSB	6	1547.00	2021-04-30 00:00:00	2021-04-30 00:00:00
583	NIOC61PP092	B0083T231O	11	1499.00	2021-07-25 00:00:00	2021-07-25 00:00:00
584	NIOC61PP092	B08S7V8YTN	1	3500.00	2021-07-25 00:00:00	2021-07-25 00:00:00
585	NIOC61PP092	B0B2X35B1K	10	6999.00	2021-07-25 00:00:00	2021-07-25 00:00:00
586	NIOC61PP092	B07Y5FDPKV	15	2400.00	2021-07-25 00:00:00	2021-07-25 00:00:00
587	NIOC61PP092	B09939XJX8	3	1500.00	2021-07-25 00:00:00	2021-07-25 00:00:00
588	ONOO13PI716	B08BG4M4N7	9	499.00	2021-11-18 00:00:00	2021-11-18 00:00:00
589	ONOO13PI716	B08D64C9FN	2	2799.00	2021-11-18 00:00:00	2021-11-18 00:00:00
590	ONOO13PI716	B08CS3BT4L	11	12999.00	2021-11-18 00:00:00	2021-11-18 00:00:00
591	ONOO13PI716	B08J4PL1Z3	9	1490.00	2021-11-18 00:00:00	2021-11-18 00:00:00
592	ONOO13PI716	B08FN6WGDQ	7	15990.00	2021-11-18 00:00:00	2021-11-18 00:00:00
593	ONOO13PI716	B09TT6BFDX	15	1999.00	2021-11-18 00:00:00	2021-11-18 00:00:00
594	AAIP41OA667	B08FGNPQ9X	15	2999.00	2022-06-24 00:00:00	2022-06-24 00:00:00
595	AAIP41OA667	B00KRCBA6E	15	5000.00	2022-06-24 00:00:00	2022-06-24 00:00:00
596	AAIP41OA667	B0B61HYR92	5	999.00	2022-06-24 00:00:00	2022-06-24 00:00:00
597	AAIP41OA667	B095X38CJS	4	99.00	2022-06-24 00:00:00	2022-06-24 00:00:00
598	AAIP41OA667	B09CTWFV5W	7	9995.00	2022-06-24 00:00:00	2022-06-24 00:00:00
599	AAIP41OA667	B00J5DYCCA	4	1890.00	2022-06-24 00:00:00	2022-06-24 00:00:00
600	AAIP41OA667	B085194JFL	7	499.00	2022-06-24 00:00:00	2022-06-24 00:00:00
601	CAPA21NP882	B0B3X2BY3M	10	7299.00	2021-12-13 00:00:00	2021-12-13 00:00:00
602	CAPA21NP882	B0711PVX6Z	11	500.00	2021-12-13 00:00:00	2021-12-13 00:00:00
603	CAPA21NP882	B084N18QZY	8	849.00	2021-12-13 00:00:00	2021-12-13 00:00:00
604	NICN02IP886	B09HS1NDRQ	9	799.00	2021-03-15 00:00:00	2021-03-15 00:00:00
605	NICN02IP886	B0BPBXNQQT	9	1989.00	2021-03-15 00:00:00	2021-03-15 00:00:00
606	NICN02IP886	B09N3ZNHTY	12	4490.00	2021-03-15 00:00:00	2021-03-15 00:00:00
607	NICN02IP886	B095RTJH1M	1	2899.00	2021-03-15 00:00:00	2021-03-15 00:00:00
608	NICN02IP886	B0085W2MUQ	2	970.00	2021-03-15 00:00:00	2021-03-15 00:00:00
609	PCAP03OA082	B08WRWPM22	12	499.00	2021-12-14 00:00:00	2021-12-14 00:00:00
610	PCAP03OA082	B09MT84WV5	2	3999.00	2021-12-14 00:00:00	2021-12-14 00:00:00
611	PCAP03OA082	B0B2PQL5N3	10	999.00	2021-12-14 00:00:00	2021-12-14 00:00:00
612	PCAP03OA082	B09Q8HMKZX	7	699.00	2021-12-14 00:00:00	2021-12-14 00:00:00
613	AMAO47MN537	B089WB69Y1	2	649.00	2021-01-02 00:00:00	2021-01-02 00:00:00
614	AMAO47MN537	B09F9YQQ7B	4	24999.00	2021-01-02 00:00:00	2021-01-02 00:00:00
615	AMAO47MN537	B08SBH499M	6	1300.00	2021-01-02 00:00:00	2021-01-02 00:00:00
616	MNPI98IM019	B07QMRHWJD	9	999.00	2022-12-20 00:00:00	2022-12-20 00:00:00
617	MNPI98IM019	B06XSK3XL6	1	999.00	2022-12-20 00:00:00	2022-12-20 00:00:00
618	MNPI98IM019	B07TXCY3YK	5	3899.00	2022-12-20 00:00:00	2022-12-20 00:00:00
619	MNPI98IM019	B09HK9JH4F	8	399.00	2022-12-20 00:00:00	2022-12-20 00:00:00
620	MNPI98IM019	B00LUGTJGO	3	1549.00	2022-12-20 00:00:00	2022-12-20 00:00:00
621	MNPI98IM019	B08V9C4B1J	6	999.00	2022-12-20 00:00:00	2022-12-20 00:00:00
622	APPM29ON379	B09YLWT89W	5	18000.00	2021-12-14 00:00:00	2021-12-14 00:00:00
623	APPM29ON379	B08CRRQK6Z	12	12499.00	2021-12-14 00:00:00	2021-12-14 00:00:00
624	APPM29ON379	B01MQZ7J8K	13	1445.00	2021-12-14 00:00:00	2021-12-14 00:00:00
625	APPM29ON379	B096YCN3SD	12	1000.00	2021-12-14 00:00:00	2021-12-14 00:00:00
626	AONP53NM019	B07VNFP3C2	2	1245.00	2022-05-28 00:00:00	2022-05-28 00:00:00
627	AONP53NM019	B07V82W5CN	13	2198.00	2022-05-28 00:00:00	2022-05-28 00:00:00
628	AONP53NM019	B00GGGOYEK	13	699.00	2022-05-28 00:00:00	2022-05-28 00:00:00
629	AONP53NM019	B00LUGTJGO	8	1549.00	2022-05-28 00:00:00	2022-05-28 00:00:00
630	OCNN95AM377	B07DL1KC3H	4	899.00	2021-07-23 00:00:00	2021-07-23 00:00:00
631	AAOP95AM516	B07L9FW9GF	15	249.00	2021-12-15 00:00:00	2021-12-15 00:00:00
632	IPCM27NI557	B0989W6J2F	11	1799.00	2022-03-01 00:00:00	2022-03-01 00:00:00
633	IPCM27NI557	B09LHZSMRR	10	20999.00	2022-03-01 00:00:00	2022-03-01 00:00:00
634	IPCM27NI557	B0085IATT6	5	1800.00	2022-03-01 00:00:00	2022-03-01 00:00:00
635	IINA69CA714	B00GZLB57U	4	699.00	2021-04-20 00:00:00	2021-04-20 00:00:00
636	AMCC51AA677	B00P93X0VO	12	120.00	2021-06-29 00:00:00	2021-06-29 00:00:00
637	AMCC51AA677	B008IFXQFU	7	999.00	2021-06-29 00:00:00	2021-06-29 00:00:00
638	AMCC51AA677	B01EZ0X3L8	4	1650.00	2021-06-29 00:00:00	2021-06-29 00:00:00
639	AMCC51AA677	B01892MIPA	6	10900.00	2021-06-29 00:00:00	2021-06-29 00:00:00
640	AMCC51AA677	B07NRTCDS5	12	1499.00	2021-06-29 00:00:00	2021-06-29 00:00:00
641	OCAI74CM231	B0B217Z5VK	2	3999.00	2022-03-31 00:00:00	2022-03-31 00:00:00
642	PPNM27NP543	B0B59K1C8F	7	799.00	2021-06-23 00:00:00	2021-06-23 00:00:00
643	PPNM27NP543	B08V9C4B1J	5	999.00	2021-06-23 00:00:00	2021-06-23 00:00:00
644	PPNM27NP543	B09LJ116B5	10	20999.00	2021-06-23 00:00:00	2021-06-23 00:00:00
645	PPNM27NP543	B08S7V8YTN	14	3500.00	2021-06-23 00:00:00	2021-06-23 00:00:00
646	PPNM27NP543	B09YDFKJF8	11	1699.00	2021-06-23 00:00:00	2021-06-23 00:00:00
647	PPNM27NP543	B08ZN4B121	11	1599.00	2021-06-23 00:00:00	2021-06-23 00:00:00
648	AOIA76OM589	B0BNVBJW2S	4	7990.00	2022-09-16 00:00:00	2022-09-16 00:00:00
649	AOIA76OM589	B08CFCK6CW	1	7999.00	2022-09-16 00:00:00	2022-09-16 00:00:00
650	PNPA31MP377	B07ZR4S1G4	11	699.00	2022-10-20 00:00:00	2022-10-20 00:00:00
651	PNPA31MP377	B0B31FR4Y2	11	9999.00	2022-10-20 00:00:00	2022-10-20 00:00:00
652	PNPA31MP377	B07NPBG1B4	5	3300.00	2022-10-20 00:00:00	2022-10-20 00:00:00
653	MICA50MP037	B07WDKLRM4	10	19999.00	2021-03-11 00:00:00	2021-03-11 00:00:00
654	MICA50MP037	B08H673XKN	4	7795.00	2021-03-11 00:00:00	2021-03-11 00:00:00
655	MICA50MP037	B00V9NHDI4	3	3799.00	2021-03-11 00:00:00	2021-03-11 00:00:00
656	MICA50MP037	B0073QGKAS	5	1499.00	2021-03-11 00:00:00	2021-03-11 00:00:00
657	MICA50MP037	B07NC12T2R	14	4990.00	2021-03-11 00:00:00	2021-03-11 00:00:00
658	MICA50MP037	B015OW3M1W	15	1700.00	2021-03-11 00:00:00	2021-03-11 00:00:00
659	MICA50MP037	B08K36NZSV	2	999.00	2021-03-11 00:00:00	2021-03-11 00:00:00
660	NAAN04AI520	B08JKPVDKL	9	699.00	2021-12-06 00:00:00	2021-12-06 00:00:00
661	NAAN04AI520	B07B88KQZ8	1	2999.00	2021-12-06 00:00:00	2021-12-06 00:00:00
662	NAAN04AI520	B07Y1RCCW5	7	2550.00	2021-12-06 00:00:00	2021-12-06 00:00:00
663	CCNN74NA591	B0B694PXQJ	8	2999.00	2021-12-10 00:00:00	2021-12-10 00:00:00
664	CCNN74NA591	B07RZZ1QSW	15	799.00	2021-12-10 00:00:00	2021-12-10 00:00:00
665	CCNN74NA591	B09YLXYP7Y	3	399.00	2021-12-10 00:00:00	2021-12-10 00:00:00
666	POCA79IP191	B09FZ89DK6	12	9999.00	2021-11-05 00:00:00	2021-11-05 00:00:00
667	POCA79IP191	B00A328ENA	5	3945.00	2021-11-05 00:00:00	2021-11-05 00:00:00
668	POCA79IP191	B09JN37WBX	6	749.00	2021-11-05 00:00:00	2021-11-05 00:00:00
669	POCA79IP191	B0B9959XF3	8	22990.00	2021-11-05 00:00:00	2021-11-05 00:00:00
670	POCA79IP191	B0B9JZW1SQ	11	1200.00	2021-11-05 00:00:00	2021-11-05 00:00:00
671	MINA58NN914	B09HK9JH4F	4	399.00	2022-07-06 00:00:00	2022-07-06 00:00:00
672	MINA58NN914	B08LVVTGZK	6	1300.00	2022-07-06 00:00:00	2022-07-06 00:00:00
673	MINA58NN914	B09V2PZDX8	13	1599.00	2022-07-06 00:00:00	2022-07-06 00:00:00
674	MINA58NN914	B09BNXQ6BR	10	6499.00	2022-07-06 00:00:00	2022-07-06 00:00:00
675	MINA58NN914	B082T6V3DT	7	2100.00	2022-07-06 00:00:00	2022-07-06 00:00:00
676	ACIC68AO866	B07DXRGWDJ	1	5995.00	2022-05-03 00:00:00	2022-05-03 00:00:00
677	ACIC68AO866	B0B9XLX8VR	12	65000.00	2022-05-03 00:00:00	2022-05-03 00:00:00
678	ACIC68AO866	B07VZYMQNZ	7	1440.00	2022-05-03 00:00:00	2022-05-03 00:00:00
679	ACIC68AO866	B07QHHCB27	10	2100.00	2022-05-03 00:00:00	2022-05-03 00:00:00
680	ACIC68AO866	B08FN6WGDQ	14	15990.00	2022-05-03 00:00:00	2022-05-03 00:00:00
681	NMIA04CA762	B07WMS7TWB	8	1245.00	2022-09-23 00:00:00	2022-09-23 00:00:00
682	NNCP32NI783	B014I8SX4Y	9	1400.00	2021-10-09 00:00:00	2021-10-09 00:00:00
683	NNCP32NI783	B07QMRHWJD	1	999.00	2021-10-09 00:00:00	2021-10-09 00:00:00
684	NNCP32NI783	B08497Z1MQ	13	700.00	2021-10-09 00:00:00	2021-10-09 00:00:00
685	NNCP32NI783	B01J8S6X2I	10	1100.00	2021-10-09 00:00:00	2021-10-09 00:00:00
686	NNCP32NI783	B09CMM3VGK	2	499.00	2021-10-09 00:00:00	2021-10-09 00:00:00
687	NNCP32NI783	B07N42JB4S	3	3990.00	2021-10-09 00:00:00	2021-10-09 00:00:00
688	NNCP32NI783	B082ZQ4479	6	4330.00	2021-10-09 00:00:00	2021-10-09 00:00:00
689	CMOA61II113	B0989W6J2F	15	1799.00	2021-05-05 00:00:00	2021-05-05 00:00:00
690	CMOA61II113	B099FDW2ZF	6	1499.00	2021-05-05 00:00:00	2021-05-05 00:00:00
691	CMOA61II113	B0BBMGLQDW	14	1999.00	2021-05-05 00:00:00	2021-05-05 00:00:00
692	OAAN33CI669	B0B3RRWSF6	10	9999.00	2022-10-06 00:00:00	2022-10-06 00:00:00
693	OAAN33CI669	B08DCVRW98	14	499.00	2022-10-06 00:00:00	2022-10-06 00:00:00
694	OAAN33CI669	B07HZ2QCGR	4	599.00	2022-10-06 00:00:00	2022-10-06 00:00:00
695	OAAN33CI669	B08K4PSZ3V	15	999.00	2022-10-06 00:00:00	2022-10-06 00:00:00
696	OAAN33CI669	B079Y6JZC8	11	299.00	2022-10-06 00:00:00	2022-10-06 00:00:00
697	NNCO51AN178	B083M7WPZD	3	5999.00	2021-02-05 00:00:00	2021-02-05 00:00:00
698	NNCO51AN178	B0994GFWBH	7	999.00	2021-02-05 00:00:00	2021-02-05 00:00:00
699	NNCO51AN178	B082LSVT4B	13	399.00	2021-02-05 00:00:00	2021-02-05 00:00:00
700	NNCO51AN178	B07W7Z6DVL	5	2999.00	2021-02-05 00:00:00	2021-02-05 00:00:00
701	NNCO51AN178	B09RMQYHLH	8	15999.00	2021-02-05 00:00:00	2021-02-05 00:00:00
702	PNOM47CN306	B07XJWTYM2	12	1999.00	2022-11-29 00:00:00	2022-11-29 00:00:00
703	PNOM47CN306	B09L8DSSFH	4	999.00	2022-11-29 00:00:00	2022-11-29 00:00:00
704	PNOM47CN306	B0989W6J2F	14	1799.00	2022-11-29 00:00:00	2022-11-29 00:00:00
705	PNOM47CN306	B07L8KNP5F	6	1399.00	2022-11-29 00:00:00	2022-11-29 00:00:00
706	PNOM47CN306	B0B12K5BPM	13	2299.00	2022-11-29 00:00:00	2022-11-29 00:00:00
707	PNOM47CN306	B07Y9PY6Y1	2	8820.00	2022-11-29 00:00:00	2022-11-29 00:00:00
708	PNOM47CN306	B0BBWJFK5C	13	8999.00	2022-11-29 00:00:00	2022-11-29 00:00:00
709	PAAO54AO440	B09GFPN6TP	11	9499.00	2021-12-06 00:00:00	2021-12-06 00:00:00
710	PAAO54AO440	B00P93X0VO	8	120.00	2021-12-06 00:00:00	2021-12-06 00:00:00
711	PAAO54AO440	B01F25X6RQ	15	499.00	2021-12-06 00:00:00	2021-12-06 00:00:00
712	PAAO54AO440	B01GGKYKQM	7	700.00	2021-12-06 00:00:00	2021-12-06 00:00:00
713	PAAO54AO440	B07V82W5CN	7	2198.00	2021-12-06 00:00:00	2021-12-06 00:00:00
714	PAAO54AO440	B00A0VCJPI	6	2499.00	2021-12-06 00:00:00	2021-12-06 00:00:00
715	PIAP44CA204	B01JOFKL0A	5	6355.00	2022-01-13 00:00:00	2022-01-13 00:00:00
716	PIAP44CA204	B01NCVJMKX	14	999.00	2022-01-13 00:00:00	2022-01-13 00:00:00
717	PIAP44CA204	B0B5ZF3NRK	4	599.00	2022-01-13 00:00:00	2022-01-13 00:00:00
718	PIAP44CA204	B0765B3TH7	3	599.00	2022-01-13 00:00:00	2022-01-13 00:00:00
719	PIAP44CA204	B0B3XXSB1K	13	79990.00	2022-01-13 00:00:00	2022-01-13 00:00:00
720	PIAP44CA204	B07GLS2563	3	1899.00	2022-01-13 00:00:00	2022-01-13 00:00:00
721	PIAP44CA204	B0949FPSFY	6	1999.00	2022-01-13 00:00:00	2022-01-13 00:00:00
722	AAIO34PI934	B0BF563HB4	10	19999.00	2022-01-17 00:00:00	2022-01-17 00:00:00
723	CMIP88NA589	B09NNHFSSF	12	4700.00	2022-10-10 00:00:00	2022-10-10 00:00:00
724	CMIP88NA589	B00AXHBBXU	6	550.00	2022-10-10 00:00:00	2022-10-10 00:00:00
725	CMIP88NA589	B09QS9X16F	6	18999.00	2022-10-10 00:00:00	2022-10-10 00:00:00
726	CMIP88NA589	B01LONQBDG	15	899.00	2022-10-10 00:00:00	2022-10-10 00:00:00
727	CMIP88NA589	B08QW937WV	1	2999.00	2022-10-10 00:00:00	2022-10-10 00:00:00
728	CMIP88NA589	B09DDCQFMT	13	1999.00	2022-10-10 00:00:00	2022-10-10 00:00:00
729	CMIP88NA589	B09NNZ1GF7	9	999.00	2022-10-10 00:00:00	2022-10-10 00:00:00
730	IPOI55CA161	B08TDJNM3G	2	59.00	2021-01-15 00:00:00	2021-01-15 00:00:00
731	IPOI55CA161	B0819HZPXL	8	549.00	2021-01-15 00:00:00	2021-01-15 00:00:00
732	OMCM79AC353	B01DF26V7A	13	1299.00	2021-12-02 00:00:00	2021-12-02 00:00:00
733	OMCM79AC353	B00LZLPYHW	15	160.00	2021-12-02 00:00:00	2021-12-02 00:00:00
734	OMCM79AC353	B01LYU3BZF	15	3190.00	2021-12-02 00:00:00	2021-12-02 00:00:00
735	OMCM79AC353	B09CMP1SC8	15	499.00	2021-12-02 00:00:00	2021-12-02 00:00:00
736	OMCM79AC353	B09CKSYBLR	4	1499.00	2021-12-02 00:00:00	2021-12-02 00:00:00
737	OMCP32AM407	B08TGG316Z	10	2399.00	2021-06-22 00:00:00	2021-06-22 00:00:00
738	OMCP32AM407	B07XLML2YS	4	3299.00	2021-06-22 00:00:00	2021-06-22 00:00:00
739	OMCP32AM407	B07J2NGB69	14	1390.00	2021-06-22 00:00:00	2021-06-22 00:00:00
740	AOOP20CA601	B08HVL8QN3	11	2199.00	2021-08-13 00:00:00	2021-08-13 00:00:00
741	AOOP20CA601	B09ND94ZRG	12	5999.00	2021-08-13 00:00:00	2021-08-13 00:00:00
742	AOOP20CA601	B00NNQMYNE	7	499.00	2021-08-13 00:00:00	2021-08-13 00:00:00
743	AOOP20CA601	B08JMC1988	13	2490.00	2021-08-13 00:00:00	2021-08-13 00:00:00
744	AOOP20CA601	B07YNTJ8ZM	10	999.00	2021-08-13 00:00:00	2021-08-13 00:00:00
745	AAOI49CI264	B009P2L7CO	15	1920.00	2021-11-16 00:00:00	2021-11-16 00:00:00
746	AAOI49CI264	B097R2V1W8	15	5890.00	2021-11-16 00:00:00	2021-11-16 00:00:00
747	INIA14CI242	B08QJJCY2Q	15	299.00	2022-06-19 00:00:00	2022-06-19 00:00:00
748	INIA14CI242	B09H34V36W	13	2495.00	2022-06-19 00:00:00	2022-06-19 00:00:00
749	INIA14CI242	B09V2Q4QVQ	9	1599.00	2022-06-19 00:00:00	2022-06-19 00:00:00
750	INIA14CI242	B09LRZYBH1	6	3999.00	2022-06-19 00:00:00	2022-06-19 00:00:00
751	INIA14CI242	B07VZH6ZBB	6	12500.00	2022-06-19 00:00:00	2022-06-19 00:00:00
752	INIA14CI242	B075ZTJ9XR	4	650.00	2022-06-19 00:00:00	2022-06-19 00:00:00
753	INIA14CI242	B07VSG5SXZ	14	1499.00	2022-06-19 00:00:00	2022-06-19 00:00:00
754	NIAA24AI565	B0814LP6S9	8	1099.00	2022-11-11 00:00:00	2022-11-11 00:00:00
755	NIAA24AI565	B00AXHBBXU	14	550.00	2022-11-11 00:00:00	2022-11-11 00:00:00
756	PINI84CC225	B0746JGVDS	14	999.00	2021-06-10 00:00:00	2021-06-10 00:00:00
757	PINI84CC225	B07T9FV9YP	6	1799.00	2021-06-10 00:00:00	2021-06-10 00:00:00
758	PINI84CC225	B0B7L86YCB	8	300.00	2021-06-10 00:00:00	2021-06-10 00:00:00
759	PINI84CC225	B07GMFY9QM	11	999.00	2021-06-10 00:00:00	2021-06-10 00:00:00
760	PINI84CC225	B08TR61BVK	14	1499.00	2021-06-10 00:00:00	2021-06-10 00:00:00
761	PINI84CC225	B09J4YQYX3	2	2290.00	2021-06-10 00:00:00	2021-06-10 00:00:00
762	PINI84CC225	B07Q7561HD	15	180.00	2021-06-10 00:00:00	2021-06-10 00:00:00
763	CMNO69CI547	B07GVR9TG7	13	4999.00	2022-05-08 00:00:00	2022-05-08 00:00:00
764	CMNO69CI547	B09NL7LBWT	5	1999.00	2022-05-08 00:00:00	2022-05-08 00:00:00
765	CMNO69CI547	B01MQZ7J8K	2	1445.00	2022-05-08 00:00:00	2022-05-08 00:00:00
766	CMNO69CI547	B09H3BXWTK	11	2799.00	2022-05-08 00:00:00	2022-05-08 00:00:00
767	CMNO69CI547	B00NNQMYNE	2	499.00	2022-05-08 00:00:00	2022-05-08 00:00:00
768	CMNO69CI547	B0B3RRWSF6	1	9999.00	2022-05-08 00:00:00	2022-05-08 00:00:00
769	AANP00PA225	B08D64C9FN	10	2799.00	2021-09-14 00:00:00	2021-09-14 00:00:00
770	AOAO10PM553	B09T3KB6JZ	11	40990.00	2022-03-19 00:00:00	2022-03-19 00:00:00
771	AOAO10PM553	B09RZS1NQT	8	999.00	2022-03-19 00:00:00	2022-03-19 00:00:00
772	AOAO10PM553	B0B23LW7NV	11	2899.00	2022-03-19 00:00:00	2022-03-19 00:00:00
773	AOAO10PM553	B09W5XR9RT	15	1999.00	2022-03-19 00:00:00	2022-03-19 00:00:00
774	AOAO10PM553	B09HQSV46W	8	29999.00	2022-03-19 00:00:00	2022-03-19 00:00:00
775	COPA59AC328	B00VA7YYUO	9	99.00	2021-02-25 00:00:00	2021-02-25 00:00:00
776	COPA59AC328	B0819ZZK5K	12	2800.00	2021-02-25 00:00:00	2021-02-25 00:00:00
777	COPA59AC328	B08C7TYHPB	2	1490.00	2021-02-25 00:00:00	2021-02-25 00:00:00
778	COPA59AC328	B09C6HXFC1	10	1799.00	2021-02-25 00:00:00	2021-02-25 00:00:00
779	OMAA69CA525	B07JW9H4J1	2	1099.00	2022-03-28 00:00:00	2022-03-28 00:00:00
780	OMAA69CA525	B0BMTZ4T1D	8	1599.00	2022-03-28 00:00:00	2022-03-28 00:00:00
781	ACNC73OP088	B0B3MQXNFB	10	199.00	2022-07-26 00:00:00	2022-07-26 00:00:00
782	ACNC73OP088	B08L4SBJRY	4	1299.00	2022-07-26 00:00:00	2022-07-26 00:00:00
783	ACNC73OP088	B01HJI0FS2	15	650.00	2022-07-26 00:00:00	2022-07-26 00:00:00
784	ACNC73OP088	B07B88KQZ8	12	2999.00	2022-07-26 00:00:00	2022-07-26 00:00:00
785	ACNC73OP088	B09ZTZ9N3Q	9	1699.00	2022-07-26 00:00:00	2022-07-26 00:00:00
786	ACNC73OP088	B0752LL57V	11	440.00	2022-07-26 00:00:00	2022-07-26 00:00:00
787	ACNC73OP088	B08LKS3LSP	5	999.00	2022-07-26 00:00:00	2022-07-26 00:00:00
788	NNPA33NA073	B084PJSSQ1	7	3000.00	2022-12-10 00:00:00	2022-12-10 00:00:00
789	NNPA33NA073	B08K36NZSV	14	999.00	2022-12-10 00:00:00	2022-12-10 00:00:00
790	NNPA33NA073	B088WCFPQF	8	1500.00	2022-12-10 00:00:00	2022-12-10 00:00:00
791	NNPA33NA073	B07ZJND9B9	5	1990.00	2022-12-10 00:00:00	2022-12-10 00:00:00
792	NNPA33NA073	B08FY4FG5X	8	2499.00	2022-12-10 00:00:00	2022-12-10 00:00:00
793	NNPA33NA073	B0B7L86YCB	3	300.00	2022-12-10 00:00:00	2022-12-10 00:00:00
794	IONM47AA760	B09P858DK8	15	1999.00	2022-08-03 00:00:00	2022-08-03 00:00:00
795	IONM47AA760	B09NHVCHS9	5	199.00	2022-08-03 00:00:00	2022-08-03 00:00:00
796	IONM47AA760	B091JF2TFD	8	1299.00	2022-08-03 00:00:00	2022-08-03 00:00:00
797	CMAI85NO786	B07G3YNLJB	13	3100.00	2021-09-24 00:00:00	2021-09-24 00:00:00
798	CMAI85NO786	B0BNVBJW2S	6	7990.00	2021-09-24 00:00:00	2021-09-24 00:00:00
799	CMAI85NO786	B09PTT8DZF	12	670.00	2021-09-24 00:00:00	2021-09-24 00:00:00
800	CMAI85NO786	B09T37CKQ5	10	599.00	2021-09-24 00:00:00	2021-09-24 00:00:00
801	PMIC36OC462	B095K14P86	6	1299.00	2022-07-19 00:00:00	2022-07-19 00:00:00
802	PMIC36OC462	B0B61GCHC1	5	999.00	2022-07-19 00:00:00	2022-07-19 00:00:00
803	PMIC36OC462	B07TC9F7PN	3	16899.00	2022-07-19 00:00:00	2022-07-19 00:00:00
804	PMIC36OC462	B07SLNG3LW	5	10295.00	2022-07-19 00:00:00	2022-07-19 00:00:00
805	PMIC36OC462	B00K32PEW4	11	535.00	2022-07-19 00:00:00	2022-07-19 00:00:00
806	PMIC36OC462	B0BDRVFDKP	1	1000.00	2022-07-19 00:00:00	2022-07-19 00:00:00
807	PMIC36OC462	B08L879JSN	2	13750.00	2022-07-19 00:00:00	2022-07-19 00:00:00
808	ONAC00PM416	B09QS9X16F	6	18999.00	2022-12-31 00:00:00	2022-12-31 00:00:00
809	ONAC00PM416	B07JF9B592	15	699.00	2022-12-31 00:00:00	2022-12-31 00:00:00
810	IOOA09PM311	B08MVXPTDG	15	4200.00	2022-01-11 00:00:00	2022-01-11 00:00:00
811	IOOA09PM311	B09VC2D2WG	4	1499.00	2022-01-11 00:00:00	2022-01-11 00:00:00
812	OOCP27CM230	B07XCM6T4N	6	1499.00	2022-06-03 00:00:00	2022-06-03 00:00:00
813	OOCP27CM230	B0B1YZ9CB8	9	47990.00	2022-06-03 00:00:00	2022-06-03 00:00:00
814	OOCP27CM230	B075S9FVRY	5	7200.00	2022-06-03 00:00:00	2022-06-03 00:00:00
815	OOCP27CM230	B09H7JDJCW	15	3595.00	2022-06-03 00:00:00	2022-06-03 00:00:00
816	OOCP27CM230	B07Y1RCCW5	2	2550.00	2022-06-03 00:00:00	2022-06-03 00:00:00
817	OOCP27CM230	B08R69VDHT	14	499.00	2022-06-03 00:00:00	2022-06-03 00:00:00
818	MAIA97ON803	B09TBCVJS3	8	7999.00	2021-11-13 00:00:00	2021-11-13 00:00:00
819	MAIA97ON803	B07JGCGNDG	8	11500.00	2021-11-13 00:00:00	2021-11-13 00:00:00
820	MAIA97ON803	B0B3NDPCS9	9	17999.00	2021-11-13 00:00:00	2021-11-13 00:00:00
821	MAIA97ON803	B078JBK4GX	12	4560.00	2021-11-13 00:00:00	2021-11-13 00:00:00
822	MAIA97ON803	B07WHQBZLS	3	21990.00	2021-11-13 00:00:00	2021-11-13 00:00:00
823	MAIA97ON803	B0BMTZ4T1D	4	1599.00	2021-11-13 00:00:00	2021-11-13 00:00:00
824	AINN46MP083	B09H39KTTB	5	499.00	2022-01-07 00:00:00	2022-01-07 00:00:00
825	AINN46MP083	B0BHZCNC4P	2	3999.00	2022-01-07 00:00:00	2022-01-07 00:00:00
826	NAAA96PA305	B09RF2QXGX	14	299.00	2021-01-02 00:00:00	2021-01-02 00:00:00
827	NAAA96PA305	B09NVPJ3P4	6	3999.00	2021-01-02 00:00:00	2021-01-02 00:00:00
828	NAAA96PA305	B07YNHCW6N	4	2499.00	2021-01-02 00:00:00	2021-01-02 00:00:00
829	NAAA96PA305	B071R3LHFM	15	5500.00	2021-01-02 00:00:00	2021-01-02 00:00:00
830	NAAA96PA305	B0BJYSCWFQ	8	1999.00	2021-01-02 00:00:00	2021-01-02 00:00:00
831	NAAA96PA305	B01GGKZ4NU	5	995.00	2021-01-02 00:00:00	2021-01-02 00:00:00
832	NAAA96PA305	B00A0VCJPI	3	2499.00	2021-01-02 00:00:00	2021-01-02 00:00:00
833	AAMA73AP965	B01N90RZ4M	2	499.00	2022-11-05 00:00:00	2022-11-05 00:00:00
834	AAMA73AP965	B00A0VCJPI	5	2499.00	2022-11-05 00:00:00	2022-11-05 00:00:00
835	AAMA73AP965	B01J8S6X2I	11	1100.00	2022-11-05 00:00:00	2022-11-05 00:00:00
836	AAAO61OP563	B09ZDVL7L8	3	3895.00	2022-03-11 00:00:00	2022-03-11 00:00:00
837	AAAO61OP563	B00H0B29DI	5	2990.00	2022-03-11 00:00:00	2022-03-11 00:00:00
838	AAAO61OP563	B005LJQMCK	11	599.00	2022-03-11 00:00:00	2022-03-11 00:00:00
839	AAAO61OP563	B07NC12T2R	1	4990.00	2022-03-11 00:00:00	2022-03-11 00:00:00
840	AAAO61OP563	B09T37CKQ5	9	599.00	2022-03-11 00:00:00	2022-03-11 00:00:00
841	AAAO61OP563	B08M66K48D	6	599.00	2022-03-11 00:00:00	2022-03-11 00:00:00
842	AAAO61OP563	B08TM71L54	14	4195.00	2022-03-11 00:00:00	2022-03-11 00:00:00
843	PCOC60NA273	B09F5Z694W	13	9625.00	2021-11-07 00:00:00	2021-11-07 00:00:00
844	PCOC60NA273	B07WGPBXY9	1	1249.00	2021-11-07 00:00:00	2021-11-07 00:00:00
845	PCOC60NA273	B01M0505SJ	12	2485.00	2021-11-07 00:00:00	2021-11-07 00:00:00
846	PCOC60NA273	B07LGT55SJ	15	1099.00	2021-11-07 00:00:00	2021-11-07 00:00:00
847	PCOC60NA273	B08BJN4MP3	12	24850.00	2021-11-07 00:00:00	2021-11-07 00:00:00
848	PCOC60NA273	B09FKDH6FS	3	7999.00	2021-11-07 00:00:00	2021-11-07 00:00:00
849	NIAA20AP944	B09LD3116F	5	3990.00	2021-09-26 00:00:00	2021-09-26 00:00:00
850	NIAA20AP944	B09MB3DKG1	8	3999.00	2021-09-26 00:00:00	2021-09-26 00:00:00
851	NIAA20AP944	B07B5XJ572	2	3190.00	2021-09-26 00:00:00	2021-09-26 00:00:00
852	NIAA20AP944	B0BM4KTNL1	11	1599.00	2021-09-26 00:00:00	2021-09-26 00:00:00
853	NIAA20AP944	B0856HNMR7	1	2499.00	2021-09-26 00:00:00	2021-09-26 00:00:00
854	NIAA20AP944	B07VJ9ZTXS	15	599.00	2021-09-26 00:00:00	2021-09-26 00:00:00
855	NIAA20AP944	B008FWZGSG	1	599.00	2021-09-26 00:00:00	2021-09-26 00:00:00
856	COCN21NP868	B078JF6X9B	10	6070.00	2021-01-10 00:00:00	2021-01-10 00:00:00
857	COCN21NP868	B084DTMYWK	14	999.00	2021-01-10 00:00:00	2021-01-10 00:00:00
858	COCN21NP868	B09NNJ9WYM	8	19990.00	2021-01-10 00:00:00	2021-01-10 00:00:00
859	COCN21NP868	B01J0XWYKQ	9	895.00	2021-01-10 00:00:00	2021-01-10 00:00:00
860	COCN21NP868	B07JW1Y6XV	4	1099.00	2021-01-10 00:00:00	2021-01-10 00:00:00
861	CPOA07AA907	B09MQSCJQ1	12	7990.00	2022-08-16 00:00:00	2022-08-16 00:00:00
862	CPOA07AA907	B07F366Z51	13	2385.00	2022-08-16 00:00:00	2022-08-16 00:00:00
863	CPOA07AA907	B00VA7YYUO	9	99.00	2022-08-16 00:00:00	2022-08-16 00:00:00
864	CPOA07AA907	B006LW0WDQ	5	795.00	2022-08-16 00:00:00	2022-08-16 00:00:00
865	CPOA07AA907	B00N3XLDW0	11	400.00	2022-08-16 00:00:00	2022-08-16 00:00:00
866	CPOA07AA907	B09XRBJ94N	8	4600.00	2022-08-16 00:00:00	2022-08-16 00:00:00
867	CPOA07AA907	B08VS3YLRK	12	1499.00	2022-08-16 00:00:00	2022-08-16 00:00:00
868	MAMN79CP738	B09JKNF147	1	1999.00	2022-01-17 00:00:00	2022-01-17 00:00:00
869	MAMN79CP738	B0117H7GZ6	12	399.00	2022-01-17 00:00:00	2022-01-17 00:00:00
870	MAMN79CP738	B07KSB1MLX	9	1600.00	2022-01-17 00:00:00	2022-01-17 00:00:00
871	MAMN79CP738	B0B4HKH19N	2	931.00	2022-01-17 00:00:00	2022-01-17 00:00:00
872	MAMN79CP738	B09GFN8WZL	6	999.00	2022-01-17 00:00:00	2022-01-17 00:00:00
873	MAMN79CP738	B07WDKLDRX	8	34999.00	2022-01-17 00:00:00	2022-01-17 00:00:00
874	MAMN79CP738	B0949SBKMP	15	6990.00	2022-01-17 00:00:00	2022-01-17 00:00:00
875	CAAC99AM151	B083342NKJ	9	399.00	2021-11-27 00:00:00	2021-11-27 00:00:00
876	CAAC99AM151	B09SZ5TWHW	1	2890.00	2021-11-27 00:00:00	2021-11-27 00:00:00
877	CMCA26IP030	B08RX8G496	14	1099.00	2022-08-31 00:00:00	2022-08-31 00:00:00
878	CMCA26IP030	B09JSW16QD	12	1490.00	2022-08-31 00:00:00	2022-08-31 00:00:00
879	CMCA26IP030	B07WVQG8WZ	9	4995.00	2022-08-31 00:00:00	2022-08-31 00:00:00
880	CMCA26IP030	B071SDRGWL	14	699.00	2022-08-31 00:00:00	2022-08-31 00:00:00
881	CMCA26IP030	B07HZ2QCGR	14	599.00	2022-08-31 00:00:00	2022-08-31 00:00:00
882	AMMN05AP739	B005LJQMCK	12	599.00	2021-06-29 00:00:00	2021-06-29 00:00:00
883	AMMN05AP739	B0B5CGTBKV	7	7990.00	2021-06-29 00:00:00	2021-06-29 00:00:00
884	AMMN05AP739	B0BBN4DZBD	10	8999.00	2021-06-29 00:00:00	2021-06-29 00:00:00
885	AMMN05AP739	B09B9SPC7F	8	1299.00	2021-06-29 00:00:00	2021-06-29 00:00:00
886	AMMN05AP739	B00TI8E7BI	6	2695.00	2021-06-29 00:00:00	2021-06-29 00:00:00
887	IMAM35NP392	B08VB2CMR3	4	20990.00	2021-05-22 00:00:00	2021-05-22 00:00:00
888	IMAM35NP392	B00ABMASXG	3	720.00	2021-05-22 00:00:00	2021-05-22 00:00:00
889	IMAM35NP392	B09H39KTTB	11	499.00	2021-05-22 00:00:00	2021-05-22 00:00:00
890	IMAM35NP392	B009P2LK08	14	1129.00	2021-05-22 00:00:00	2021-05-22 00:00:00
891	MAAI61NI596	B09XXZXQC1	6	37999.00	2022-01-12 00:00:00	2022-01-12 00:00:00
892	IMNI07OA932	B071Z8M4KX	15	999.00	2021-02-06 00:00:00	2021-02-06 00:00:00
893	IMNI07OA932	B07232M876	1	395.00	2021-02-06 00:00:00	2021-02-06 00:00:00
894	IMNI07OA932	B08B6XWQ1C	12	995.00	2021-02-06 00:00:00	2021-02-06 00:00:00
895	IMNI07OA932	B09JPC82QC	15	34999.00	2021-02-06 00:00:00	2021-02-06 00:00:00
896	IMNI07OA932	B01M72LILF	14	1295.00	2021-02-06 00:00:00	2021-02-06 00:00:00
897	IMNI07OA932	B09F3PDDRF	1	999.00	2021-02-06 00:00:00	2021-02-06 00:00:00
898	IMNI07OA932	B0B1F6GQPS	8	4499.00	2021-02-06 00:00:00	2021-02-06 00:00:00
899	IIAA47AM818	B07B275VN9	11	799.00	2021-12-26 00:00:00	2021-12-26 00:00:00
900	IIAA47AM818	B0BN6M3TCM	3	999.00	2021-12-26 00:00:00	2021-12-26 00:00:00
901	IIAA47AM818	B09YHLPQYT	13	600.00	2021-12-26 00:00:00	2021-12-26 00:00:00
902	IIAA47AM818	B08TT63N58	3	2199.00	2021-12-26 00:00:00	2021-12-26 00:00:00
903	ICOC39CA105	B07X963JNS	12	2499.00	2022-02-20 00:00:00	2022-02-20 00:00:00
904	ICOC39CA105	B0B31FR4Y2	13	9999.00	2022-02-20 00:00:00	2022-02-20 00:00:00
905	ICOC39CA105	B0B4F1YC3J	7	19499.00	2022-02-20 00:00:00	2022-02-20 00:00:00
906	ICOC39CA105	B071VNHMX2	9	2095.00	2022-02-20 00:00:00	2022-02-20 00:00:00
907	MCAM07NI365	B08CT62BM1	13	999.00	2022-03-25 00:00:00	2022-03-25 00:00:00
908	MCAM07NI365	B08QHLXWV3	4	11990.00	2022-03-25 00:00:00	2022-03-25 00:00:00
909	IPPM29MA429	B082T6GVLJ	6	1809.00	2021-11-11 00:00:00	2021-11-11 00:00:00
910	IPPM29MA429	B08HDJ86NZ	8	699.00	2021-11-11 00:00:00	2021-11-11 00:00:00
911	IPPM29MA429	B08243SKCK	6	299.00	2021-11-11 00:00:00	2021-11-11 00:00:00
912	IPPM29MA429	B0BG62HMDJ	7	775.00	2021-11-11 00:00:00	2021-11-11 00:00:00
913	IPPM29MA429	B00LZLQ624	3	160.00	2021-11-11 00:00:00	2021-11-11 00:00:00
914	POAP94AA158	B00NH11PEY	11	750.00	2021-10-17 00:00:00	2021-10-17 00:00:00
915	POAP94AA158	B07SYYVP69	15	1950.00	2021-10-17 00:00:00	2021-10-17 00:00:00
916	POAP94AA158	B07JPX9CR7	9	1299.00	2021-10-17 00:00:00	2021-10-17 00:00:00
917	POAP94AA158	B079Y6JZC8	12	299.00	2021-10-17 00:00:00	2021-10-17 00:00:00
918	POAP94AA158	B00V4BGDKU	4	1899.00	2021-10-17 00:00:00	2021-10-17 00:00:00
919	POAP94AA158	B07G147SZD	1	3799.00	2021-10-17 00:00:00	2021-10-17 00:00:00
920	AMII92MO051	B08S6RKT4L	4	4290.00	2022-01-28 00:00:00	2022-01-28 00:00:00
921	AMII92MO051	B07Z1X6VFC	3	999.00	2022-01-28 00:00:00	2022-01-28 00:00:00
922	AMII92MO051	B0798PJPCL	11	2699.00	2022-01-28 00:00:00	2022-01-28 00:00:00
923	AMII92MO051	B07WGMMQGP	13	20999.00	2022-01-28 00:00:00	2022-01-28 00:00:00
924	AMII92MO051	B09V12K8NT	4	6990.00	2022-01-28 00:00:00	2022-01-28 00:00:00
925	CACO65PO613	B00LY12TH6	4	230.00	2022-12-14 00:00:00	2022-12-14 00:00:00
926	CACO65PO613	B00SMFPJG0	12	670.00	2022-12-14 00:00:00	2022-12-14 00:00:00
927	CACO65PO613	B00NH13Q8W	9	800.00	2022-12-14 00:00:00	2022-12-14 00:00:00
928	CACO65PO613	B084N1BM9L	1	1999.00	2022-12-14 00:00:00	2022-12-14 00:00:00
929	CACO65PO613	B0B4HKH19N	13	931.00	2022-12-14 00:00:00	2022-12-14 00:00:00
930	IANC06MA528	B0B2PQL5N3	1	999.00	2021-05-15 00:00:00	2021-05-15 00:00:00
931	IANC06MA528	B07FJNNZCJ	1	13049.00	2021-05-15 00:00:00	2021-05-15 00:00:00
932	IANC06MA528	B07SYYVP69	13	1950.00	2021-05-15 00:00:00	2021-05-15 00:00:00
933	IANC06MA528	B098R25TGC	3	2999.00	2021-05-15 00:00:00	2021-05-15 00:00:00
934	IAPI13PM894	B0762HXMTF	10	1950.00	2021-04-04 00:00:00	2021-04-04 00:00:00
935	IAPI13PM894	B0BF54972T	15	19999.00	2021-04-04 00:00:00	2021-04-04 00:00:00
936	IAPI13PM894	B0B4DT8MKT	3	1499.00	2021-04-04 00:00:00	2021-04-04 00:00:00
937	IAPI13PM894	B09CYTJV3N	2	5999.00	2021-04-04 00:00:00	2021-04-04 00:00:00
938	IAPI13PM894	B01MUAUOCX	9	747.00	2021-04-04 00:00:00	2021-04-04 00:00:00
939	IAPI13PM894	B089WB69Y1	3	649.00	2021-04-04 00:00:00	2021-04-04 00:00:00
940	IAPI13PM894	B09VZBGL1N	15	499.00	2021-04-04 00:00:00	2021-04-04 00:00:00
941	PAMC92PA424	B0B8XNPQPN	8	7950.00	2021-06-09 00:00:00	2021-06-09 00:00:00
942	PAMC92PA424	B09V12K8NT	7	6990.00	2021-06-09 00:00:00	2021-06-09 00:00:00
943	PAMC92PA424	B0B3XXSB1K	9	79990.00	2021-06-09 00:00:00	2021-06-09 00:00:00
944	PAMC92PA424	B07XLML2YS	10	3299.00	2021-06-09 00:00:00	2021-06-09 00:00:00
945	PAMC92PA424	B07JNVF678	9	999.00	2021-06-09 00:00:00	2021-06-09 00:00:00
946	PAMC92PA424	B0B2DD66GS	8	2900.00	2021-06-09 00:00:00	2021-06-09 00:00:00
947	NMAA50PN291	B07J2BQZD6	6	399.00	2022-08-26 00:00:00	2022-08-26 00:00:00
948	NMAA50PN291	B01M5F614J	13	13999.00	2022-08-26 00:00:00	2022-08-26 00:00:00
949	NMAA50PN291	B0B1MDZV9C	12	4495.00	2022-08-26 00:00:00	2022-08-26 00:00:00
950	NMAA50PN291	B07LGT55SJ	12	1099.00	2022-08-26 00:00:00	2022-08-26 00:00:00
951	NMAA50PN291	B01MQ2A86A	13	1645.00	2022-08-26 00:00:00	2022-08-26 00:00:00
952	CCAO54OO225	B08YD264ZS	7	2499.00	2022-01-02 00:00:00	2022-01-02 00:00:00
953	CCAO54OO225	B09T39K9YL	4	24999.00	2022-01-02 00:00:00	2022-01-02 00:00:00
954	CCAO54OO225	B08J4PL1Z3	6	1490.00	2022-01-02 00:00:00	2022-01-02 00:00:00
955	CCAO54OO225	B09T39K9YL	3	24999.00	2022-01-02 00:00:00	2022-01-02 00:00:00
956	CCAO54OO225	B0B3TBY2YX	15	2299.00	2022-01-02 00:00:00	2022-01-02 00:00:00
957	CCAO54OO225	B07VTFN6HM	15	7350.00	2022-01-02 00:00:00	2022-01-02 00:00:00
958	CCAO54OO225	B097ZQTDVZ	10	899.00	2022-01-02 00:00:00	2022-01-02 00:00:00
959	MOCM76NI909	B0BNXFDTZ2	15	11999.00	2021-02-19 00:00:00	2021-02-19 00:00:00
960	MOCM76NI909	B08D64C9FN	10	2799.00	2021-02-19 00:00:00	2021-02-19 00:00:00
961	MOCM76NI909	B076B8G5D8	11	1995.00	2021-02-19 00:00:00	2021-02-19 00:00:00
962	MOCM76NI909	B08XXVXP3J	6	999.00	2021-02-19 00:00:00	2021-02-19 00:00:00
963	MOCM76NI909	B0BG62HMDJ	7	775.00	2021-02-19 00:00:00	2021-02-19 00:00:00
964	MOCM76NI909	B09BL2KHQW	2	260.00	2021-02-19 00:00:00	2021-02-19 00:00:00
965	AIIN78NN907	B01C8P29T4	3	785.00	2022-03-09 00:00:00	2022-03-09 00:00:00
966	AIIN78NN907	B08S6RKT4L	8	4290.00	2022-03-09 00:00:00	2022-03-09 00:00:00
967	AIIN78NN907	B01LWYDEQ7	1	495.00	2022-03-09 00:00:00	2022-03-09 00:00:00
968	AIIN78NN907	B07F1P8KNV	10	1099.00	2022-03-09 00:00:00	2022-03-09 00:00:00
969	AIIN78NN907	B0B4G2MWSB	6	999.00	2022-03-09 00:00:00	2022-03-09 00:00:00
970	AIIN78NN907	B0993BB11X	5	1599.00	2022-03-09 00:00:00	2022-03-09 00:00:00
971	AIIN78NN907	B07W4HTS8Q	8	3790.00	2022-03-09 00:00:00	2022-03-09 00:00:00
972	NPPN83NC891	B0B3JSWG81	7	999.00	2021-04-04 00:00:00	2021-04-04 00:00:00
973	NPPN83NC891	B0BQ3K23Y1	3	499.00	2021-04-04 00:00:00	2021-04-04 00:00:00
974	NPPN83NC891	B00ABMASXG	13	720.00	2021-04-04 00:00:00	2021-04-04 00:00:00
975	NPPN83NC891	B08CF4SCNP	8	599.00	2021-04-04 00:00:00	2021-04-04 00:00:00
976	NPPN83NC891	B09LQH3SD9	15	2000.00	2021-04-04 00:00:00	2021-04-04 00:00:00
977	NPPN83NC891	B07JJFSG2B	7	2500.00	2021-04-04 00:00:00	2021-04-04 00:00:00
978	NPPN83NC891	B08H5L8V1L	6	1099.00	2021-04-04 00:00:00	2021-04-04 00:00:00
979	MPAC06IA292	B00V4BGDKU	7	1899.00	2022-11-28 00:00:00	2022-11-28 00:00:00
980	MPAC06IA292	B01LYLJ99X	5	1300.00	2022-11-28 00:00:00	2022-11-28 00:00:00
981	MPAC06IA292	B07CD2BN46	7	599.00	2022-11-28 00:00:00	2022-11-28 00:00:00
982	MPAC06IA292	B09J2SCVQT	5	5000.00	2022-11-28 00:00:00	2022-11-28 00:00:00
983	MNOC95IA500	B00OFM6PEO	10	799.00	2021-10-18 00:00:00	2021-10-18 00:00:00
984	NOII68OO204	B09NC2TY11	14	5999.00	2022-05-29 00:00:00	2022-05-29 00:00:00
985	MICC97NI116	B09PTT8DZF	9	670.00	2021-03-10 00:00:00	2021-03-10 00:00:00
986	MICC97NI116	B08JQN8DGZ	12	2990.00	2021-03-10 00:00:00	2021-03-10 00:00:00
987	MICC97NI116	B01EZ0X3L8	9	1650.00	2021-03-10 00:00:00	2021-03-10 00:00:00
988	AACP77AC250	B0BQ3K23Y1	3	499.00	2022-02-23 00:00:00	2022-02-23 00:00:00
989	MAOI86CA351	B09XTQFFCG	7	3199.00	2021-03-08 00:00:00	2021-03-08 00:00:00
990	MAOI86CA351	B09LMMFW3S	2	399.00	2021-03-08 00:00:00	2021-03-08 00:00:00
991	MAOI86CA351	B09QS9CWLV	15	18999.00	2021-03-08 00:00:00	2021-03-08 00:00:00
992	MAOI86CA351	B00RFWNJMC	6	499.00	2021-03-08 00:00:00	2021-03-08 00:00:00
993	MAOI86CA351	B01892MIPA	5	10900.00	2021-03-08 00:00:00	2021-03-08 00:00:00
994	CANP49AM465	B09VZBGL1N	2	499.00	2022-01-18 00:00:00	2022-01-18 00:00:00
995	CANP49AM465	B09P858DK8	2	1999.00	2022-01-18 00:00:00	2022-01-18 00:00:00
996	CANP49AM465	B09PNR6F8Q	12	399.00	2022-01-18 00:00:00	2022-01-18 00:00:00
997	CANP49AM465	B07K19NYZ8	11	3290.00	2022-01-18 00:00:00	2022-01-18 00:00:00
998	CANP49AM465	B0BDG6QDYD	4	1990.00	2022-01-18 00:00:00	2022-01-18 00:00:00
999	CANP49AM465	B09KRHXTLN	3	1699.00	2022-01-18 00:00:00	2022-01-18 00:00:00
1000	CANP49AM465	B09N6TTHT6	5	99.00	2022-01-18 00:00:00	2022-01-18 00:00:00
1001	CIIN71MA273	B075S9FVRY	1	7200.00	2022-07-13 00:00:00	2022-07-13 00:00:00
1002	CIIN71MA273	B07QZ3CZ48	13	1290.00	2022-07-13 00:00:00	2022-07-13 00:00:00
1003	MCOM31AO664	B09PTT8DZF	7	670.00	2022-10-22 00:00:00	2022-10-22 00:00:00
1004	MCOM31AO664	B085DTN6R2	5	899.00	2022-10-22 00:00:00	2022-10-22 00:00:00
1005	MCOM31AO664	B09RMQYHLH	7	15999.00	2022-10-22 00:00:00	2022-10-22 00:00:00
1006	PAMN72MA968	B00P0R95EA	2	640.00	2021-07-21 00:00:00	2021-07-21 00:00:00
1007	PAMN72MA968	B0BD3T6Z1D	12	13499.00	2021-07-21 00:00:00	2021-07-21 00:00:00
1008	PAMN72MA968	B07JF9B592	1	699.00	2021-07-21 00:00:00	2021-07-21 00:00:00
1009	PAMN72MA968	B0B25LQQPC	10	6100.00	2021-07-21 00:00:00	2021-07-21 00:00:00
1010	PAMN72MA968	B09Q3M3WLJ	7	1499.00	2021-07-21 00:00:00	2021-07-21 00:00:00
1011	PAMN72MA968	B08VFF6JQ8	3	1699.00	2021-07-21 00:00:00	2021-07-21 00:00:00
1012	PAMN72MA968	B092BJMT8Q	6	52900.00	2021-07-21 00:00:00	2021-07-21 00:00:00
1013	INCA19PM526	B0B21C4BMX	12	899.00	2021-10-13 00:00:00	2021-10-13 00:00:00
1014	INCA19PM526	B00AXHBBXU	11	550.00	2021-10-13 00:00:00	2021-10-13 00:00:00
1015	INCA19PM526	B09ZPM4C2C	11	30990.00	2021-10-13 00:00:00	2021-10-13 00:00:00
1016	INCA19PM526	B07GLSKXS1	10	1950.00	2021-10-13 00:00:00	2021-10-13 00:00:00
1017	INCA19PM526	B09T3H12GV	2	2498.00	2021-10-13 00:00:00	2021-10-13 00:00:00
1018	IONA75PN485	B07K2HVKLL	6	1020.00	2021-07-28 00:00:00	2021-07-28 00:00:00
1019	IONA75PN485	B08ZHYNTM1	11	4005.00	2021-07-28 00:00:00	2021-07-28 00:00:00
1020	IONA75PN485	B08VRMK55F	14	699.00	2021-07-28 00:00:00	2021-07-28 00:00:00
1021	IONA75PN485	B0B4F52B5X	5	14999.00	2021-07-28 00:00:00	2021-07-28 00:00:00
1022	IONA75PN485	B09GB5B4BK	9	899.00	2021-07-28 00:00:00	2021-07-28 00:00:00
1023	IONA75PN485	B00NH11PEY	4	750.00	2021-07-28 00:00:00	2021-07-28 00:00:00
1024	IONA75PN485	B09XJ5LD6L	14	32999.00	2021-07-28 00:00:00	2021-07-28 00:00:00
1025	CPPM61IM391	B093ZNQZ2Y	1	799.00	2022-05-22 00:00:00	2022-05-22 00:00:00
1026	CPPM61IM391	B01N4EV2TL	4	1995.00	2022-05-22 00:00:00	2022-05-22 00:00:00
1027	CPPM61IM391	B0BDZWMGZ1	8	2990.00	2022-05-22 00:00:00	2022-05-22 00:00:00
1028	CPPM61IM391	B098JYT4SY	12	1190.00	2022-05-22 00:00:00	2022-05-22 00:00:00
1029	CPPM61IM391	B09MDCZJXS	5	5499.00	2022-05-22 00:00:00	2022-05-22 00:00:00
1030	CPPM61IM391	B086PXQ2R4	15	165.00	2022-05-22 00:00:00	2022-05-22 00:00:00
1031	MCNI44MM309	B09XB7DPW1	4	11999.00	2022-02-22 00:00:00	2022-02-22 00:00:00
1032	MCNI44MM309	B0BMM7R92G	15	999.00	2022-02-22 00:00:00	2022-02-22 00:00:00
1033	MCNI44MM309	B099S26HWG	11	300.00	2022-02-22 00:00:00	2022-02-22 00:00:00
1034	MCNI44MM309	B092BJMT8Q	12	52900.00	2022-02-22 00:00:00	2022-02-22 00:00:00
1035	MCNI44MM309	B00H0B29DI	14	2990.00	2022-02-22 00:00:00	2022-02-22 00:00:00
1036	MCNI44MM309	B082FTPRSK	2	1999.00	2022-02-22 00:00:00	2022-02-22 00:00:00
1037	MCNI44MM309	B08VGDBF3B	5	499.00	2022-02-22 00:00:00	2022-02-22 00:00:00
1038	OPCO30CM973	B0B6F98KJJ	2	29999.00	2021-08-13 00:00:00	2021-08-13 00:00:00
1039	OPCO30CM973	B09MZ6WZ6V	15	999.00	2021-08-13 00:00:00	2021-08-13 00:00:00
1040	OPCO30CM973	B083342NKJ	9	399.00	2021-08-13 00:00:00	2021-08-13 00:00:00
1041	IIOA20OI253	B0B8ZWNR5T	4	499.00	2021-12-16 00:00:00	2021-12-16 00:00:00
1042	IIOA20OI253	B07T4D9FNY	9	1490.00	2021-12-16 00:00:00	2021-12-16 00:00:00
1043	IIOA20OI253	B08CKW1KH9	1	599.00	2021-12-16 00:00:00	2021-12-16 00:00:00
1044	PONA26AP083	B09VH568H7	10	299.00	2022-07-12 00:00:00	2022-07-12 00:00:00
1045	PONA26AP083	B0BCZCQTJX	6	3999.00	2022-07-12 00:00:00	2022-07-12 00:00:00
1046	PONA26AP083	B0B6BLTGTT	15	5999.00	2022-07-12 00:00:00	2022-07-12 00:00:00
1047	PONA26AP083	B09XB7SRQ5	8	11999.00	2022-07-12 00:00:00	2022-07-12 00:00:00
1048	PONA26AP083	B00LM4W1N2	12	600.00	2022-07-12 00:00:00	2022-07-12 00:00:00
1049	PONA26AP083	B08NW8GHCJ	3	999.00	2022-07-12 00:00:00	2022-07-12 00:00:00
1050	PONA26AP083	B0819HZPXL	9	549.00	2022-07-12 00:00:00	2022-07-12 00:00:00
1051	PINI36II653	B08G43CCLC	5	999.00	2022-07-16 00:00:00	2022-07-16 00:00:00
1052	PINI36II653	B07JH1C41D	7	1999.00	2022-07-16 00:00:00	2022-07-16 00:00:00
1053	PINI36II653	B07GXPDLYQ	15	499.00	2022-07-16 00:00:00	2022-07-16 00:00:00
1054	PINI36II653	B016XVRKZM	5	4100.00	2022-07-16 00:00:00	2022-07-16 00:00:00
1055	AAPP19AN194	B07LG59NPV	1	4499.00	2021-03-02 00:00:00	2021-03-02 00:00:00
1056	PAAA29IC843	B072J83V9W	14	9995.00	2022-04-20 00:00:00	2022-04-20 00:00:00
1057	PAAA29IC843	B0BL3R4RGS	3	999.00	2022-04-20 00:00:00	2022-04-20 00:00:00
1058	PAAA29IC843	B08GTYFC37	7	32000.00	2022-04-20 00:00:00	2022-04-20 00:00:00
1059	IAOO30PP903	B0978V2CP6	2	3100.00	2022-09-22 00:00:00	2022-09-22 00:00:00
1060	IAOO30PP903	B087FXHB6J	5	999.00	2022-09-22 00:00:00	2022-09-22 00:00:00
1061	IAOO30PP903	B0B3X2BY3M	5	7299.00	2022-09-22 00:00:00	2022-09-22 00:00:00
1062	IAOO30PP903	B083GQGT3Z	15	799.00	2022-09-22 00:00:00	2022-09-22 00:00:00
1063	IAOO30PP903	B09GFPVD9Y	13	10999.00	2022-09-22 00:00:00	2022-09-22 00:00:00
1064	NIMA82OA664	B09VPH38JS	15	1499.00	2022-01-06 00:00:00	2022-01-06 00:00:00
1065	NIMA82OA664	B08HDH26JX	7	699.00	2022-01-06 00:00:00	2022-01-06 00:00:00
1066	IMCO42IP168	B0BPBXNQQT	7	1989.00	2022-02-15 00:00:00	2022-02-15 00:00:00
1067	IMCO42IP168	B0B9RZ4G4W	14	1699.00	2022-02-15 00:00:00	2022-02-15 00:00:00
1068	IMCO42IP168	B06XR9PR5X	11	600.00	2022-02-15 00:00:00	2022-02-15 00:00:00
1069	IMCO42IP168	B0B5V47VK4	7	49999.00	2022-02-15 00:00:00	2022-02-15 00:00:00
1070	NNPC58IO750	B08MCD9JFY	15	1999.00	2021-03-03 00:00:00	2021-03-03 00:00:00
1071	NNPC58IO750	B09VGS66FV	1	1850.00	2021-03-03 00:00:00	2021-03-03 00:00:00
1072	NNPC58IO750	B09YV42QHZ	12	7999.00	2021-03-03 00:00:00	2021-03-03 00:00:00
1073	NNPC58IO750	B077T3BG5L	3	399.00	2021-03-03 00:00:00	2021-03-03 00:00:00
1074	NNPC58IO750	B07F366Z51	14	2385.00	2021-03-03 00:00:00	2021-03-03 00:00:00
1075	CCAC79AA580	B09J2SCVQT	2	5000.00	2021-06-25 00:00:00	2021-06-25 00:00:00
1076	CCAC79AA580	B07DFYJRQV	7	1499.00	2021-06-25 00:00:00	2021-06-25 00:00:00
1077	CCAC79AA580	B07ZR4S1G4	10	699.00	2021-06-25 00:00:00	2021-06-25 00:00:00
1078	CCAC79AA580	B08L7J3T31	15	919.00	2021-06-25 00:00:00	2021-06-25 00:00:00
1079	CCAC79AA580	B076B8G5D8	7	1995.00	2021-06-25 00:00:00	2021-06-25 00:00:00
1080	CCAC79AA580	B07VTFN6HM	8	7350.00	2021-06-25 00:00:00	2021-06-25 00:00:00
1081	CCAC79AA580	B086X18Q71	1	12150.00	2021-06-25 00:00:00	2021-06-25 00:00:00
1082	OAIA90PO644	B07JF9B592	2	699.00	2022-09-02 00:00:00	2022-09-02 00:00:00
1083	OAIA90PO644	B00LZLQ624	10	160.00	2022-09-02 00:00:00	2022-09-02 00:00:00
1084	OAIA90PO644	B06XR9PR5X	13	600.00	2022-09-02 00:00:00	2022-09-02 00:00:00
1085	OAIA90PO644	B0B61GCHC1	13	999.00	2022-09-02 00:00:00	2022-09-02 00:00:00
1086	OAIA90PO644	B01MUAUOCX	11	747.00	2022-09-02 00:00:00	2022-09-02 00:00:00
1087	OAIA90PO644	B08CYPB15D	3	761.00	2022-09-02 00:00:00	2022-09-02 00:00:00
1088	OAIA90PO644	B07D2NMTTV	1	3500.00	2022-09-02 00:00:00	2022-09-02 00:00:00
1089	MIAC36AA596	B0B23LW7NV	11	2899.00	2022-07-14 00:00:00	2022-07-14 00:00:00
1090	MIAC36AA596	B07GWTWFS2	10	1975.00	2022-07-14 00:00:00	2022-07-14 00:00:00
1091	MIAC36AA596	B0972BQ2RS	1	9999.00	2022-07-14 00:00:00	2022-07-14 00:00:00
1092	MIAC36AA596	B0B31BYXQQ	4	5499.00	2022-07-14 00:00:00	2022-07-14 00:00:00
1093	MIAC36AA596	B07WDK3ZS2	8	29990.00	2022-07-14 00:00:00	2022-07-14 00:00:00
1094	AIIM14NO584	B0B56YRBNT	5	13499.00	2022-10-31 00:00:00	2022-10-31 00:00:00
1095	OIPI97AP918	B097RJ867P	12	11595.00	2022-08-16 00:00:00	2022-08-16 00:00:00
1096	OIPI97AP918	B0B9XLX8VR	2	65000.00	2022-08-16 00:00:00	2022-08-16 00:00:00
1097	OIPI97AP918	B0756CLQWL	15	3999.00	2022-08-16 00:00:00	2022-08-16 00:00:00
1098	OIPI97AP918	B0B8ZWNR5T	3	499.00	2022-08-16 00:00:00	2022-08-16 00:00:00
1099	OIPI97AP918	B0B3CQBRB4	14	28999.00	2022-08-16 00:00:00	2022-08-16 00:00:00
1100	OIPI97AP918	B01M0505SJ	12	2485.00	2022-08-16 00:00:00	2022-08-16 00:00:00
1101	OAMA60NA397	B09ZPM4C2C	5	30990.00	2022-12-23 00:00:00	2022-12-23 00:00:00
1102	OAMA60NA397	B09T39K9YL	1	24999.00	2022-12-23 00:00:00	2022-12-23 00:00:00
1103	NAAP10MA445	B0B4KPCBSH	12	499.00	2021-06-05 00:00:00	2021-06-05 00:00:00
1104	NAAP10MA445	B00KIE28X0	1	310.00	2021-06-05 00:00:00	2021-06-05 00:00:00
1105	NAAP10MA445	B088WCFPQF	2	1500.00	2021-06-05 00:00:00	2021-06-05 00:00:00
1106	NAAP10MA445	B07TMCXRFV	2	1599.00	2021-06-05 00:00:00	2021-06-05 00:00:00
1107	NAAP10MA445	B07WVQG8WZ	11	4995.00	2021-06-05 00:00:00	2021-06-05 00:00:00
1108	NAAP10MA445	B09LHZSMRR	10	20999.00	2021-06-05 00:00:00	2021-06-05 00:00:00
1109	CAOM46AA078	B07P681N66	13	2199.00	2021-06-28 00:00:00	2021-06-28 00:00:00
1110	CAOM46AA078	B0B4T8RSJ1	10	800.00	2021-06-28 00:00:00	2021-06-28 00:00:00
1111	CAOM46AA078	B09VGKFM7Y	14	499.00	2021-06-28 00:00:00	2021-06-28 00:00:00
1112	CAOM46AA078	B0926V9CTV	2	599.00	2021-06-28 00:00:00	2021-06-28 00:00:00
1113	CAOM46AA078	B00TI8E7BI	13	2695.00	2021-06-28 00:00:00	2021-06-28 00:00:00
1114	AMNA51CA703	B0B97D658R	1	799.00	2022-02-06 00:00:00	2022-02-06 00:00:00
1115	AMNA51CA703	B07JGDB5M1	9	1299.00	2022-02-06 00:00:00	2022-02-06 00:00:00
1116	AMNA51CA703	B098NS6PVG	5	349.00	2022-02-06 00:00:00	2022-02-06 00:00:00
1117	AMNA51CA703	B09ND94ZRG	8	5999.00	2022-02-06 00:00:00	2022-02-06 00:00:00
1118	AMNA51CA703	B09TBCVJS3	7	7999.00	2022-02-06 00:00:00	2022-02-06 00:00:00
1119	AMNA51CA703	B09LHZSMRR	12	20999.00	2022-02-06 00:00:00	2022-02-06 00:00:00
1120	MMAC02CC299	B08HD7JQHX	15	499.00	2022-02-03 00:00:00	2022-02-03 00:00:00
1121	AOAP09AM727	B08TV2P1N8	1	3990.00	2022-11-16 00:00:00	2022-11-16 00:00:00
1122	AOAP09AM727	B01HJI0FS2	3	650.00	2022-11-16 00:00:00	2022-11-16 00:00:00
1123	AOOO98MM856	B0B4HKH19N	5	931.00	2021-09-12 00:00:00	2021-09-12 00:00:00
1124	AOOO98MM856	B0989W6J2F	11	1799.00	2021-09-12 00:00:00	2021-09-12 00:00:00
1125	AOOO98MM856	B0941392C8	7	449.00	2021-09-12 00:00:00	2021-09-12 00:00:00
1126	AOOO98MM856	B08KS2KQTK	12	499.00	2021-09-12 00:00:00	2021-09-12 00:00:00
1127	AOOO98MM856	B09NL4DCXK	8	599.00	2021-09-12 00:00:00	2021-09-12 00:00:00
1128	AOOO98MM856	B082T6GXS5	14	2100.00	2021-09-12 00:00:00	2021-09-12 00:00:00
1129	AOOO98MM856	B07GQD4K6L	1	999.00	2021-09-12 00:00:00	2021-09-12 00:00:00
1130	IION38CA762	B07TMCXRFV	5	1599.00	2022-01-14 00:00:00	2022-01-14 00:00:00
1131	IION38CA762	B07Q4NJQC5	1	599.00	2022-01-14 00:00:00	2022-01-14 00:00:00
1132	IION38CA762	B09JKNF147	15	1999.00	2022-01-14 00:00:00	2022-01-14 00:00:00
1133	IION38CA762	B07KSMBL2H	3	700.00	2022-01-14 00:00:00	2022-01-14 00:00:00
1134	IION38CA762	B07NKNBTT3	7	1230.00	2022-01-14 00:00:00	2022-01-14 00:00:00
1135	IION38CA762	B09MFR93KS	9	5999.00	2022-01-14 00:00:00	2022-01-14 00:00:00
1136	IION38CA762	B08ZN4B121	15	1599.00	2022-01-14 00:00:00	2022-01-14 00:00:00
1137	NOCO41II376	B0BD92GDQH	7	6999.00	2021-12-11 00:00:00	2021-12-11 00:00:00
1138	NOCO41II376	B0814LP6S9	5	1099.00	2021-12-11 00:00:00	2021-12-11 00:00:00
1139	NOCO41II376	B09VCHLSJF	12	39999.00	2021-12-11 00:00:00	2021-12-11 00:00:00
1140	NOCO41II376	B08FGNPQ9X	11	2999.00	2021-12-11 00:00:00	2021-12-11 00:00:00
1141	NOCO41II376	B0BMGB3CH9	2	11999.00	2021-12-11 00:00:00	2021-12-11 00:00:00
1142	NOCO41II376	B009P2LK80	14	1639.00	2021-12-11 00:00:00	2021-12-11 00:00:00
1143	ICMA25AN058	B09MZCQYHZ	5	1599.00	2021-04-03 00:00:00	2021-04-03 00:00:00
1144	ICMA25AN058	B08S7V8YTN	7	3500.00	2021-04-03 00:00:00	2021-04-03 00:00:00
1145	ICMA25AN058	B08NW8GHCJ	7	999.00	2021-04-03 00:00:00	2021-04-03 00:00:00
1146	ICMA25AN058	B0BD92GDQH	3	6999.00	2021-04-03 00:00:00	2021-04-03 00:00:00
1147	ICMA25AN058	B0BPJBTB3F	3	2495.00	2021-04-03 00:00:00	2021-04-03 00:00:00
1148	ICMA25AN058	B00C3GBCIS	6	499.00	2021-04-03 00:00:00	2021-04-03 00:00:00
1149	ICMA25AN058	B00935MD1C	11	3945.00	2021-04-03 00:00:00	2021-04-03 00:00:00
1150	AACA97NA367	B0B5GF6DQD	1	5999.00	2021-04-06 00:00:00	2021-04-06 00:00:00
1151	AACA97NA367	B09JKNF147	4	1999.00	2021-04-06 00:00:00	2021-04-06 00:00:00
1152	AACA97NA367	B08W56G1K9	13	999.00	2021-04-06 00:00:00	2021-04-06 00:00:00
1153	AACA97NA367	B09GFPN6TP	14	9499.00	2021-04-06 00:00:00	2021-04-06 00:00:00
1154	AACA97NA367	B07VQGVL68	10	499.00	2021-04-06 00:00:00	2021-04-06 00:00:00
1155	AAAM07NN991	B07QMRHWJD	11	999.00	2022-07-31 00:00:00	2022-07-31 00:00:00
1156	AIAI27IA833	B07NKNBTT3	15	1230.00	2022-01-17 00:00:00	2022-01-17 00:00:00
1157	CCCC95MA396	B08Y57TPDM	9	200.00	2022-12-10 00:00:00	2022-12-10 00:00:00
1158	CCCC95MA396	B07SRM58TP	5	2099.00	2022-12-10 00:00:00	2022-12-10 00:00:00
1159	CANA63MP740	B09P858DK8	3	1999.00	2021-09-08 00:00:00	2021-09-08 00:00:00
1160	CANA63MP740	B09N3ZNHTY	14	4490.00	2021-09-08 00:00:00	2021-09-08 00:00:00
1161	CANA63MP740	B099FDW2ZF	14	1499.00	2021-09-08 00:00:00	2021-09-08 00:00:00
1162	CANA63MP740	B09R1YFL6S	7	2999.00	2021-09-08 00:00:00	2021-09-08 00:00:00
1163	CANA63MP740	B09V12K8NT	9	6990.00	2021-09-08 00:00:00	2021-09-08 00:00:00
1164	CANA63MP740	B08CF4SCNP	14	599.00	2021-09-08 00:00:00	2021-09-08 00:00:00
1165	CANA63MP740	B08B6XWQ1C	13	995.00	2021-09-08 00:00:00	2021-09-08 00:00:00
1166	AAMP13CO060	B083RD1J99	12	399.00	2021-08-05 00:00:00	2021-08-05 00:00:00
1167	AAMP13CO060	B09VC2D2WG	13	1499.00	2021-08-05 00:00:00	2021-08-05 00:00:00
1168	AAMP13CO060	B07WDK3ZS6	8	18999.00	2021-08-05 00:00:00	2021-08-05 00:00:00
1169	AAMP13CO060	B09GFLXVH9	12	8499.00	2021-08-05 00:00:00	2021-08-05 00:00:00
1170	AAMP13CO060	B0B4KPCBSH	15	499.00	2021-08-05 00:00:00	2021-08-05 00:00:00
1171	PAAP17IA250	B09KNMLH4Y	10	1999.00	2021-09-24 00:00:00	2021-09-24 00:00:00
1172	PAAP17IA250	B0763K5HLQ	2	1499.00	2021-09-24 00:00:00	2021-09-24 00:00:00
1173	PAAP17IA250	B0B6F8HHR6	12	35999.00	2021-09-24 00:00:00	2021-09-24 00:00:00
1174	PAAP17IA250	B08LPJZSSW	8	995.00	2021-09-24 00:00:00	2021-09-24 00:00:00
1175	NAPP36PM708	B0B3N8VG24	2	299.00	2021-07-02 00:00:00	2021-07-02 00:00:00
1176	NAPP36PM708	B0B72BSW7K	1	699.00	2021-07-02 00:00:00	2021-07-02 00:00:00
1177	NAPP36PM708	B099S26HWG	10	300.00	2021-07-02 00:00:00	2021-07-02 00:00:00
1178	NAPP36PM708	B078JF6X9B	8	6070.00	2021-07-02 00:00:00	2021-07-02 00:00:00
1179	NAPP36PM708	B07WDKLRM4	1	19999.00	2021-07-02 00:00:00	2021-07-02 00:00:00
1180	NAPP36PM708	B00LY12TH6	1	230.00	2021-07-02 00:00:00	2021-07-02 00:00:00
1181	PONO84AP707	B0BLV1GNLN	5	9990.00	2022-01-11 00:00:00	2022-01-11 00:00:00
1182	PONO84AP707	B00P0R95EA	10	640.00	2022-01-11 00:00:00	2022-01-11 00:00:00
1183	PONO84AP707	B01F7B2JCI	11	450.00	2022-01-11 00:00:00	2022-01-11 00:00:00
1184	PONO84AP707	B08NW8GHCJ	6	999.00	2022-01-11 00:00:00	2022-01-11 00:00:00
1185	PONO84AP707	B08HF4W2CT	12	3499.00	2022-01-11 00:00:00	2022-01-11 00:00:00
1186	IANA12AA070	B0B6F7LX4C	14	24999.00	2021-04-10 00:00:00	2021-04-10 00:00:00
1187	IANA12AA070	B07BRKK9JQ	2	1599.00	2021-04-10 00:00:00	2021-04-10 00:00:00
1188	IANA12AA070	B08V9C4B1J	13	999.00	2021-04-10 00:00:00	2021-04-10 00:00:00
1189	NACO19AO374	B09PNR6F8Q	15	399.00	2022-06-15 00:00:00	2022-06-15 00:00:00
1190	NACO19AO374	B097C564GC	8	4999.00	2022-06-15 00:00:00	2022-06-15 00:00:00
1191	NACO19AO374	B09Z6WH2N1	13	499.00	2022-06-15 00:00:00	2022-06-15 00:00:00
1192	IOPA60AI619	B09NL4DCXK	13	599.00	2021-06-04 00:00:00	2021-06-04 00:00:00
1193	IOPA60AI619	B0B2931FCV	15	4199.00	2021-06-04 00:00:00	2021-06-04 00:00:00
1194	IOPA60AI619	B015OW3M1W	8	1700.00	2021-06-04 00:00:00	2021-06-04 00:00:00
1195	IOPA60AI619	B086199CWG	6	4799.00	2021-06-04 00:00:00	2021-06-04 00:00:00
1196	MAAA62AC900	B08PSQRW2T	11	1099.00	2022-03-13 00:00:00	2022-03-13 00:00:00
1197	MAAA62AC900	B07V5YF4ND	2	1199.00	2022-03-13 00:00:00	2022-03-13 00:00:00
1198	MAAA62AC900	B0B997FBZT	9	49990.00	2022-03-13 00:00:00	2022-03-13 00:00:00
1199	MAAA62AC900	B08HV83HL3	8	2199.00	2022-03-13 00:00:00	2022-03-13 00:00:00
1200	MAAA62AC900	B078HRR1XV	3	4699.00	2022-03-13 00:00:00	2022-03-13 00:00:00
1201	OAAI22PP602	B08CDKQ8T6	10	349.00	2021-11-09 00:00:00	2021-11-09 00:00:00
1202	OAAI22PP602	B09FPP3R1D	14	2495.00	2021-11-09 00:00:00	2021-11-09 00:00:00
1203	OOMO29PN149	B09JPC82QC	7	34999.00	2021-11-15 00:00:00	2021-11-15 00:00:00
1204	OOMO29PN149	B086GVRP63	4	2400.00	2021-11-15 00:00:00	2021-11-15 00:00:00
1205	OOMO29PN149	B0B97D658R	13	799.00	2021-11-15 00:00:00	2021-11-15 00:00:00
1206	OOMO29PN149	B092R48XXB	4	29999.00	2021-11-15 00:00:00	2021-11-15 00:00:00
1207	OOMO29PN149	B08RZ12GKR	13	499.00	2021-11-15 00:00:00	2021-11-15 00:00:00
1208	OOMO29PN149	B09T2S8X9C	2	28999.00	2021-11-15 00:00:00	2021-11-15 00:00:00
1209	MMIA09AM186	B09NNJ9WYM	2	19990.00	2021-10-27 00:00:00	2021-10-27 00:00:00
1210	MMIA09AM186	B09W5XR9RT	12	1999.00	2021-10-27 00:00:00	2021-10-27 00:00:00
1211	MMIA09AM186	B0BC9BW512	10	24990.00	2021-10-27 00:00:00	2021-10-27 00:00:00
1212	MMIA09AM186	B075JJ5NQC	7	4999.00	2021-10-27 00:00:00	2021-10-27 00:00:00
1213	OANA35AI314	B0B9XLX8VR	3	65000.00	2021-04-24 00:00:00	2021-04-24 00:00:00
1214	OANA35AI314	B0856HNMR7	3	2499.00	2021-04-24 00:00:00	2021-04-24 00:00:00
1215	OANA35AI314	B01N6LU1VF	7	1400.00	2021-04-24 00:00:00	2021-04-24 00:00:00
1216	OANA35AI314	B00P0R95EA	8	640.00	2021-04-24 00:00:00	2021-04-24 00:00:00
1217	OANA35AI314	B07PFJ5W31	8	495.00	2021-04-24 00:00:00	2021-04-24 00:00:00
1218	OANA35AI314	B08JMC1988	12	2490.00	2021-04-24 00:00:00	2021-04-24 00:00:00
1219	OANA35AI314	B08FGNPQ9X	15	2999.00	2021-04-24 00:00:00	2021-04-24 00:00:00
1220	AMAN62CC720	B09MZ6WZ6V	9	999.00	2021-10-12 00:00:00	2021-10-12 00:00:00
1221	AMAN62CC720	B077Z65HSD	4	999.00	2021-10-12 00:00:00	2021-10-12 00:00:00
1222	AMAN62CC720	B09Q5SWVBJ	11	21999.00	2021-10-12 00:00:00	2021-10-12 00:00:00
1223	OMCN88PI333	B07966M8XH	14	2999.00	2021-04-16 00:00:00	2021-04-16 00:00:00
1224	OMCN88PI333	B0B31BYXQQ	4	5499.00	2021-04-16 00:00:00	2021-04-16 00:00:00
1225	OMCN88PI333	B0B3CPQ5PF	3	28999.00	2021-04-16 00:00:00	2021-04-16 00:00:00
1226	OMCN88PI333	B09MT94QLL	10	4775.00	2021-04-16 00:00:00	2021-04-16 00:00:00
1227	AIIA36AA266	B086X18Q71	13	12150.00	2022-02-19 00:00:00	2022-02-19 00:00:00
1228	AIIA36AA266	B09NJN8L25	6	199.00	2022-02-19 00:00:00	2022-02-19 00:00:00
1229	AIIA36AA266	B078V8R9BS	5	1111.00	2022-02-19 00:00:00	2022-02-19 00:00:00
1230	AIIA36AA266	B084DTMYWK	4	999.00	2022-02-19 00:00:00	2022-02-19 00:00:00
1231	AIIA36AA266	B0BBFJ9M3X	2	15999.00	2022-02-19 00:00:00	2022-02-19 00:00:00
1232	ACAN02NA849	B07989VV5K	8	1560.00	2021-05-13 00:00:00	2021-05-13 00:00:00
1233	ACAN02NA849	B09GFWJDY1	5	1499.00	2021-05-13 00:00:00	2021-05-13 00:00:00
1234	ACAN02NA849	B07DKZCZ89	1	499.00	2021-05-13 00:00:00	2021-05-13 00:00:00
1235	ACAN02NA849	B0B296NTFV	9	599.00	2021-05-13 00:00:00	2021-05-13 00:00:00
1236	ACAN02NA849	B07X2L5Z8C	5	2295.00	2021-05-13 00:00:00	2021-05-13 00:00:00
1237	ACAN02NA849	B08C7TYHPB	2	1490.00	2021-05-13 00:00:00	2021-05-13 00:00:00
1238	ACAN02NA849	B09TMZ1MF8	11	4000.00	2021-05-13 00:00:00	2021-05-13 00:00:00
1239	APMC20NA667	B0BP7XLX48	2	1999.00	2022-04-06 00:00:00	2022-04-06 00:00:00
1240	APMC20NA667	B098NS6PVG	12	349.00	2022-04-06 00:00:00	2022-04-06 00:00:00
1241	APMC20NA667	B08RZ5K9YH	9	1999.00	2022-04-06 00:00:00	2022-04-06 00:00:00
1242	APMC20NA667	B09C635BMM	4	999.00	2022-04-06 00:00:00	2022-04-06 00:00:00
1243	APMC20NA667	B002PD61Y4	12	1208.00	2022-04-06 00:00:00	2022-04-06 00:00:00
1244	AOAA96OA558	B09NNGHG22	14	56790.00	2022-08-18 00:00:00	2022-08-18 00:00:00
1245	AOAA96OA558	B08498D67S	2	1800.00	2022-08-18 00:00:00	2022-08-18 00:00:00
1246	AOAA96OA558	B09YLX91QR	13	399.00	2022-08-18 00:00:00	2022-08-18 00:00:00
1247	AOAA96OA558	B0B217Z5VK	6	3999.00	2022-08-18 00:00:00	2022-08-18 00:00:00
1248	AOAA96OA558	B07HZ2QCGR	5	599.00	2022-08-18 00:00:00	2022-08-18 00:00:00
1249	AOAA96OA558	B00GGGOYEK	10	699.00	2022-08-18 00:00:00	2022-08-18 00:00:00
1250	AOAA96OA558	B07H1S7XW8	1	499.00	2022-08-18 00:00:00	2022-08-18 00:00:00
1251	OPCN80MP605	B0B5CGTBKV	15	7990.00	2021-01-31 00:00:00	2021-01-31 00:00:00
1252	OPCN80MP605	B07L5L4GTB	4	404.00	2021-01-31 00:00:00	2021-01-31 00:00:00
1253	OPCN80MP605	B081NHWT6Z	10	1199.00	2021-01-31 00:00:00	2021-01-31 00:00:00
1254	NIAO78MI198	B09CMP1SC8	12	499.00	2021-06-26 00:00:00	2021-06-26 00:00:00
1255	NIAO78MI198	B00K32PEW4	5	535.00	2021-06-26 00:00:00	2021-06-26 00:00:00
1256	NIAO78MI198	B09PTT8DZF	7	670.00	2021-06-26 00:00:00	2021-06-26 00:00:00
1257	ANIC35NI361	B082T6GVLJ	3	1809.00	2021-12-10 00:00:00	2021-12-10 00:00:00
1258	ANIC35NI361	B09X1M3DHX	4	27990.00	2021-12-10 00:00:00	2021-12-10 00:00:00
1259	ANIC35NI361	B07SYYVP69	7	1950.00	2021-12-10 00:00:00	2021-12-10 00:00:00
1260	ANIC35NI361	B08ZHYNTM1	14	4005.00	2021-12-10 00:00:00	2021-12-10 00:00:00
1261	ANIC35NI361	B084872DQY	13	14999.00	2021-12-10 00:00:00	2021-12-10 00:00:00
1262	ANIC35NI361	B09MKP344P	7	12999.00	2021-12-10 00:00:00	2021-12-10 00:00:00
1263	IANP60AO848	B09GFN8WZL	11	999.00	2022-09-28 00:00:00	2022-09-28 00:00:00
1264	OCCA34PN087	B078HRR1XV	14	4699.00	2022-06-11 00:00:00	2022-06-11 00:00:00
1265	OCCA34PN087	B0BD92GDQH	13	6999.00	2022-06-11 00:00:00	2022-06-11 00:00:00
1266	OCCA34PN087	B08CF4SCNP	1	599.00	2022-06-11 00:00:00	2022-06-11 00:00:00
1267	OCCA34PN087	B08TR61BVK	11	1499.00	2022-06-11 00:00:00	2022-06-11 00:00:00
1268	OCCA34PN087	B01GFTEV5Y	3	3193.00	2022-06-11 00:00:00	2022-06-11 00:00:00
1269	OCCA34PN087	B097R45BH8	8	13150.00	2022-06-11 00:00:00	2022-06-11 00:00:00
1270	OCCA34PN087	B0BPCJM7TB	1	999.00	2022-06-11 00:00:00	2022-06-11 00:00:00
1271	MPIO76NA387	B0BC9BW512	2	24990.00	2022-12-30 00:00:00	2022-12-30 00:00:00
1272	CANN94AN834	B07B5XJ572	10	3190.00	2021-03-17 00:00:00	2021-03-17 00:00:00
1273	CANN94AN834	B07W7Z6DVL	12	2999.00	2021-03-17 00:00:00	2021-03-17 00:00:00
1274	CANN94AN834	B06XGWRKYT	1	15999.00	2021-03-17 00:00:00	2021-03-17 00:00:00
1275	CANN94AN834	B0BBN4DZBD	4	8999.00	2021-03-17 00:00:00	2021-03-17 00:00:00
1276	CANN94AN834	B097R25DP7	14	4999.00	2021-03-17 00:00:00	2021-03-17 00:00:00
1277	CANN94AN834	B09LMMFW3S	13	399.00	2021-03-17 00:00:00	2021-03-17 00:00:00
1278	CANN94AN834	B08Y7MXFMK	14	1499.00	2021-03-17 00:00:00	2021-03-17 00:00:00
1279	APMM60IO836	B09XTQFFCG	5	3199.00	2022-05-22 00:00:00	2022-05-22 00:00:00
1280	APMM60IO836	B0BGSV43WY	12	7999.00	2022-05-22 00:00:00	2022-05-22 00:00:00
1281	APMM60IO836	B01C8P29N0	11	1400.00	2022-05-22 00:00:00	2022-05-22 00:00:00
1282	APMM60IO836	B07V5YF4ND	9	1199.00	2022-05-22 00:00:00	2022-05-22 00:00:00
1283	APMM60IO836	B00O24PUO6	9	1650.00	2022-05-22 00:00:00	2022-05-22 00:00:00
1284	NOOA72PP371	B07HK53XM4	14	599.00	2022-06-11 00:00:00	2022-06-11 00:00:00
1285	NOOA72PP371	B084PJSSQ1	11	3000.00	2022-06-11 00:00:00	2022-06-11 00:00:00
1286	NOOA72PP371	B07MP21WJD	9	299.00	2022-06-11 00:00:00	2022-06-11 00:00:00
1287	MMAO73MO813	B0BG62HMDJ	7	775.00	2022-11-23 00:00:00	2022-11-23 00:00:00
1288	MMAO73MO813	B01GGKYKQM	8	700.00	2022-11-23 00:00:00	2022-11-23 00:00:00
1289	MMAO73MO813	B09P182Z2H	5	5799.00	2022-11-23 00:00:00	2022-11-23 00:00:00
1290	MMAO73MO813	B0BBLHTRM9	10	699.00	2022-11-23 00:00:00	2022-11-23 00:00:00
1291	APCM59ON293	B086X18Q71	9	12150.00	2021-11-07 00:00:00	2021-11-07 00:00:00
1292	APCM59ON293	B08Y57TPDM	7	200.00	2021-11-07 00:00:00	2021-11-07 00:00:00
1293	APCM59ON293	B0971DWFDT	1	699.00	2021-11-07 00:00:00	2021-11-07 00:00:00
1294	APCM59ON293	B08D64C9FN	8	2799.00	2021-11-07 00:00:00	2021-11-07 00:00:00
1295	APCM59ON293	B07VZYMQNZ	15	1440.00	2021-11-07 00:00:00	2021-11-07 00:00:00
1296	NINO57NM251	B08LT9BMPP	6	1995.00	2022-06-09 00:00:00	2022-06-09 00:00:00
1297	NINO57NM251	B086X18Q71	7	12150.00	2022-06-09 00:00:00	2022-06-09 00:00:00
1298	NINO57NM251	B09QS9X16F	1	18999.00	2022-06-09 00:00:00	2022-06-09 00:00:00
1299	NINO57NM251	B095JQVC7N	1	59999.00	2022-06-09 00:00:00	2022-06-09 00:00:00
1300	NINO57NM251	B0989W6J2F	13	1799.00	2022-06-09 00:00:00	2022-06-09 00:00:00
1301	NINO57NM251	B0B2CPVXHX	8	1499.00	2022-06-09 00:00:00	2022-06-09 00:00:00
1302	NINO57NM251	B09KNMLH4Y	4	1999.00	2022-06-09 00:00:00	2022-06-09 00:00:00
1303	PAMA72PM376	B09L8DT7D6	7	499.00	2022-09-10 00:00:00	2022-09-10 00:00:00
1304	PMNA04AN030	B0B5GJRTHB	2	1999.00	2021-04-07 00:00:00	2021-04-07 00:00:00
1305	PMNA04AN030	B00LHZW3XY	4	180.00	2021-04-07 00:00:00	2021-04-07 00:00:00
1306	PMNA04AN030	B09LHZSMRR	14	20999.00	2021-04-07 00:00:00	2021-04-07 00:00:00
1307	PMNA04AN030	B07J2BQZD6	1	399.00	2021-04-07 00:00:00	2021-04-07 00:00:00
1308	PMNA04AN030	B086WMSCN3	5	5999.00	2021-04-07 00:00:00	2021-04-07 00:00:00
1309	PMNA04AN030	B01F25X6RQ	10	499.00	2021-04-07 00:00:00	2021-04-07 00:00:00
1310	PAAN97AM975	B09CMP1SC8	2	499.00	2021-10-06 00:00:00	2021-10-06 00:00:00
1311	PAAN97AM975	B00R1P3B4O	1	549.00	2021-10-06 00:00:00	2021-10-06 00:00:00
1312	PAAN97AM975	B0B244R4KB	13	2899.00	2021-10-06 00:00:00	2021-10-06 00:00:00
1313	PAAN97AM975	B0BNDRK886	9	599.00	2021-10-06 00:00:00	2021-10-06 00:00:00
1314	PAAN97AM975	B07WNK1FFN	9	1699.00	2021-10-06 00:00:00	2021-10-06 00:00:00
1315	CPCA85NC726	B00HVXS7WC	6	3210.00	2021-08-02 00:00:00	2021-08-02 00:00:00
1316	CPCA85NC726	B07MDRGHWQ	14	11000.00	2021-08-02 00:00:00	2021-08-02 00:00:00
1317	CPCA85NC726	B0BJ6P3LSK	12	24999.00	2021-08-02 00:00:00	2021-08-02 00:00:00
1318	CPCA85NC726	B07W4HTS8Q	5	3790.00	2021-08-02 00:00:00	2021-08-02 00:00:00
1319	CPCA85NC726	B0B8CB7MHW	2	999.00	2021-08-02 00:00:00	2021-08-02 00:00:00
1320	CPCA85NC726	B09RX1FK54	4	999.00	2021-08-02 00:00:00	2021-08-02 00:00:00
1321	OCMP69AP412	B0B3CPQ5PF	1	28999.00	2021-09-25 00:00:00	2021-09-25 00:00:00
1322	OCMP69AP412	B01F7B2JCI	13	450.00	2021-09-25 00:00:00	2021-09-25 00:00:00
1323	OCMP69AP412	B0B2DZ5S6R	14	1299.00	2021-09-25 00:00:00	2021-09-25 00:00:00
1324	OCMP69AP412	B0B1MDZV9C	9	4495.00	2021-09-25 00:00:00	2021-09-25 00:00:00
1325	OCMP69AP412	B009DA69W6	9	1900.00	2021-09-25 00:00:00	2021-09-25 00:00:00
1326	OCMP69AP412	B08HV83HL3	14	2199.00	2021-09-25 00:00:00	2021-09-25 00:00:00
1327	INPP69OP690	B00OFM6PEO	4	799.00	2022-12-03 00:00:00	2022-12-03 00:00:00
1328	INPP69OP690	B09ZPL5VYM	2	499.00	2022-12-03 00:00:00	2022-12-03 00:00:00
1329	INPP69OP690	B0B3TBY2YX	15	2299.00	2022-12-03 00:00:00	2022-12-03 00:00:00
1330	OANI13AN627	B084N1BM9L	10	1999.00	2021-09-08 00:00:00	2021-09-08 00:00:00
1331	NMNM47MO025	B09MQSCJQ1	15	7990.00	2021-09-18 00:00:00	2021-09-18 00:00:00
1332	NMNM47MO025	B0926V9CTV	3	599.00	2021-09-18 00:00:00	2021-09-18 00:00:00
1333	NMNM47MO025	B0BF4YBLPX	13	19999.00	2021-09-18 00:00:00	2021-09-18 00:00:00
1334	NMNM47MO025	B08QSDKFGQ	5	1099.00	2021-09-18 00:00:00	2021-09-18 00:00:00
1335	NMNM47MO025	B0B8VQ7KDS	13	2499.00	2021-09-18 00:00:00	2021-09-18 00:00:00
1336	NMNM47MO025	B0B3N8VG24	15	299.00	2021-09-18 00:00:00	2021-09-18 00:00:00
1337	AMMN80IA693	B01CS4A5V4	10	1690.00	2021-09-11 00:00:00	2021-09-11 00:00:00
1338	CAIA31MA818	B01LONQBDG	3	899.00	2021-02-17 00:00:00	2021-02-17 00:00:00
1339	CAIA31MA818	B08J4PL1Z3	4	1490.00	2021-02-17 00:00:00	2021-02-17 00:00:00
1340	PIMC13AA065	B09PL79D2X	10	2990.00	2021-02-23 00:00:00	2021-02-23 00:00:00
1341	IOIP77MP703	B01L6MT7E0	3	11995.00	2022-09-28 00:00:00	2022-09-28 00:00:00
1342	IOIP77MP703	B099PR2GQJ	2	999.00	2022-09-28 00:00:00	2022-09-28 00:00:00
1343	IOIP77MP703	B07JW1Y6XV	9	1099.00	2022-09-28 00:00:00	2022-09-28 00:00:00
1344	IOIP77MP703	B0B9RZ4G4W	13	1699.00	2022-09-28 00:00:00	2022-09-28 00:00:00
1345	IOIP77MP703	B0752LL57V	11	440.00	2022-09-28 00:00:00	2022-09-28 00:00:00
1346	IOIP77MP703	B0BBWJFK5C	8	8999.00	2022-09-28 00:00:00	2022-09-28 00:00:00
1347	IOIP77MP703	B075JJ5NQC	14	4999.00	2022-09-28 00:00:00	2022-09-28 00:00:00
1348	AIOO52MA455	B0BC9BW512	4	24990.00	2022-07-03 00:00:00	2022-07-03 00:00:00
1349	AIOO52MA455	B009UORDX4	1	975.00	2022-07-03 00:00:00	2022-07-03 00:00:00
1350	AIOO52MA455	B098NS6PVG	4	349.00	2022-07-03 00:00:00	2022-07-03 00:00:00
1351	AIOO52MA455	B07DXRGWDJ	7	5995.00	2022-07-03 00:00:00	2022-07-03 00:00:00
1352	AIOO52MA455	B09GFN8WZL	5	999.00	2022-07-03 00:00:00	2022-07-03 00:00:00
1353	AIOO52MA455	B082T6GVLJ	14	1809.00	2022-07-03 00:00:00	2022-07-03 00:00:00
1354	MPAA39PI241	B083342NKJ	13	399.00	2022-09-21 00:00:00	2022-09-21 00:00:00
1355	MPAA39PI241	B0841KQR1Z	7	999.00	2022-09-21 00:00:00	2022-09-21 00:00:00
1356	MPAA39PI241	B09CMQRQM6	1	899.00	2022-09-21 00:00:00	2022-09-21 00:00:00
1357	MPAA39PI241	B0B21C4BMX	14	899.00	2022-09-21 00:00:00	2022-09-21 00:00:00
1358	MPAA39PI241	B09NNGHG22	11	56790.00	2022-09-21 00:00:00	2022-09-21 00:00:00
1359	MPAA39PI241	B008P7IF02	8	5795.00	2022-09-21 00:00:00	2022-09-21 00:00:00
1360	AINA98IA399	B09NNHFSSF	13	4700.00	2022-05-24 00:00:00	2022-05-24 00:00:00
1361	AINA98IA399	B08497Z1MQ	15	700.00	2022-05-24 00:00:00	2022-05-24 00:00:00
1362	AINA98IA399	B082FTPRSK	12	1999.00	2022-05-24 00:00:00	2022-05-24 00:00:00
1363	AINA98IA399	B07JQKQ91F	8	999.00	2022-05-24 00:00:00	2022-05-24 00:00:00
1364	AINA98IA399	B078JBK4GX	9	4560.00	2022-05-24 00:00:00	2022-05-24 00:00:00
1365	AMON95AP107	B07DC4RZPY	7	1999.00	2021-08-24 00:00:00	2021-08-24 00:00:00
1366	AANP52IC668	B0BBN4DZBD	11	8999.00	2021-05-02 00:00:00	2021-05-02 00:00:00
1367	AANP52IC668	B09ZHCJDP1	2	1000.00	2021-05-02 00:00:00	2021-05-02 00:00:00
1368	AACA66AI853	B0B8CHJLWJ	8	1199.00	2022-02-18 00:00:00	2022-02-18 00:00:00
1369	AACA66AI853	B07F6GXNPB	10	500.00	2022-02-18 00:00:00	2022-02-18 00:00:00
1370	AACA66AI853	B098TV3L96	13	1999.00	2022-02-18 00:00:00	2022-02-18 00:00:00
1371	AACA66AI853	B01M5967SY	2	999.00	2022-02-18 00:00:00	2022-02-18 00:00:00
1372	AACA66AI853	B09GP6FBZT	10	999.00	2022-02-18 00:00:00	2022-02-18 00:00:00
1373	AACA66AI853	B08D64C9FN	7	2799.00	2022-02-18 00:00:00	2022-02-18 00:00:00
1374	PCMO54CM783	B0B4T6MR8N	8	800.00	2022-01-19 00:00:00	2022-01-19 00:00:00
1375	PCMO54CM783	B07DXRGWDJ	5	5995.00	2022-01-19 00:00:00	2022-01-19 00:00:00
1376	PCMO54CM783	B00NNQMYNE	6	499.00	2022-01-19 00:00:00	2022-01-19 00:00:00
1377	PCMO54CM783	B084N18QZY	10	849.00	2022-01-19 00:00:00	2022-01-19 00:00:00
1378	AANP95PO388	B09HQSV46W	10	29999.00	2022-06-04 00:00:00	2022-06-04 00:00:00
1379	AANP95PO388	B08LVVTGZK	9	1300.00	2022-06-04 00:00:00	2022-06-04 00:00:00
1380	IAAN98AA671	B09FHHTL8L	12	199.00	2021-10-12 00:00:00	2021-10-12 00:00:00
1381	IAAN98AA671	B01J8S6X2I	2	1100.00	2021-10-12 00:00:00	2021-10-12 00:00:00
1382	IAAN98AA671	B083J64CBB	4	499.00	2021-10-12 00:00:00	2021-10-12 00:00:00
1383	IAAN98AA671	B09ZQK9X8G	3	5999.00	2021-10-12 00:00:00	2021-10-12 00:00:00
1384	PPPA12OP401	B0B4G2MWSB	11	999.00	2022-12-22 00:00:00	2022-12-22 00:00:00
1385	PPPA12OP401	B07CRL2GY6	9	799.00	2022-12-22 00:00:00	2022-12-22 00:00:00
1386	PPPA12OP401	B0756K5DYZ	7	6295.00	2022-12-22 00:00:00	2022-12-22 00:00:00
1387	MACI85IN528	B09Q5SWVBJ	13	21999.00	2021-11-30 00:00:00	2021-11-30 00:00:00
1388	MACI85IN528	B09C635BMM	6	999.00	2021-11-30 00:00:00	2021-11-30 00:00:00
1389	MACI85IN528	B084DTMYWK	2	999.00	2021-11-30 00:00:00	2021-11-30 00:00:00
1390	MACI85IN528	B08MZQBFLN	9	4999.00	2021-11-30 00:00:00	2021-11-30 00:00:00
1391	MACI85IN528	B0B7NWGXS6	5	2545.00	2021-11-30 00:00:00	2021-11-30 00:00:00
1392	NPMI23AC049	B0B3RS9DNF	1	9999.00	2021-07-03 00:00:00	2021-07-03 00:00:00
1393	NPMI23AC049	B09GYBZPHF	11	2499.00	2021-07-03 00:00:00	2021-07-03 00:00:00
1394	AAOC03AO741	B00CEQEGPI	2	2295.00	2022-07-03 00:00:00	2022-07-03 00:00:00
1395	AAOC03AO741	B0BMGB3CH9	14	11999.00	2022-07-03 00:00:00	2022-07-03 00:00:00
1396	AAOC03AO741	B09Y358DZQ	10	4295.00	2022-07-03 00:00:00	2022-07-03 00:00:00
1397	AAOC03AO741	B08MWJTST6	1	1299.00	2022-07-03 00:00:00	2022-07-03 00:00:00
1398	CPCI10MC952	B09NTHQRW3	12	2499.00	2021-05-29 00:00:00	2021-05-29 00:00:00
1399	CPCI10MC952	B00GG59HU2	2	599.00	2021-05-29 00:00:00	2021-05-29 00:00:00
1400	CPCI10MC952	B0BDZWMGZ1	1	2990.00	2021-05-29 00:00:00	2021-05-29 00:00:00
1401	CPCI10MC952	B08LVVTGZK	13	1300.00	2021-05-29 00:00:00	2021-05-29 00:00:00
1402	CPCI10MC952	B0BDG6QDYD	1	1990.00	2021-05-29 00:00:00	2021-05-29 00:00:00
1403	CPCI10MC952	B07X963JNS	11	2499.00	2021-05-29 00:00:00	2021-05-29 00:00:00
1404	CPCI10MC952	B09MZCQYHZ	2	1599.00	2021-05-29 00:00:00	2021-05-29 00:00:00
1405	PPPA67PM824	B09NVPSCQT	4	3999.00	2022-04-20 00:00:00	2022-04-20 00:00:00
1406	PPPA67PM824	B092BL5DCX	1	69900.00	2022-04-20 00:00:00	2022-04-20 00:00:00
1407	PPPA67PM824	B00DJ5N9VK	10	150.00	2022-04-20 00:00:00	2022-04-20 00:00:00
1408	PPPA67PM824	B0811VCGL5	3	12999.00	2022-04-20 00:00:00	2022-04-20 00:00:00
1409	PPPA67PM824	B0188KPKB2	14	9455.00	2022-04-20 00:00:00	2022-04-20 00:00:00
1410	PPPA67PM824	B01F262EUU	11	999.00	2022-04-20 00:00:00	2022-04-20 00:00:00
1411	CPNC17II765	B0B694PXQJ	10	2999.00	2022-08-02 00:00:00	2022-08-02 00:00:00
1412	CPNC17II765	B07SRM58TP	14	2099.00	2022-08-02 00:00:00	2022-08-02 00:00:00
1413	CPNC17II765	B01N4EV2TL	4	1995.00	2022-08-02 00:00:00	2022-08-02 00:00:00
1414	PAMA18MN123	B086GVRP63	14	2400.00	2022-04-30 00:00:00	2022-04-30 00:00:00
1415	PAMA18MN123	B09VCHLSJF	1	39999.00	2022-04-30 00:00:00	2022-04-30 00:00:00
1416	MPAN98AO752	B0BBWJFK5C	2	8999.00	2021-08-31 00:00:00	2021-08-31 00:00:00
1417	MPAN98AO752	B09PNR6F8Q	10	399.00	2021-08-31 00:00:00	2021-08-31 00:00:00
1418	MPAN98AO752	B06XGWRKYT	15	15999.00	2021-08-31 00:00:00	2021-08-31 00:00:00
1419	INAO90CP531	B0B2DZ5S6R	10	1299.00	2021-08-26 00:00:00	2021-08-26 00:00:00
1420	INAO90CP531	B082T6GXS5	6	2100.00	2021-08-26 00:00:00	2021-08-26 00:00:00
1421	INAO90CP531	B078WB1VWJ	13	1599.00	2021-08-26 00:00:00	2021-08-26 00:00:00
1422	INAO90CP531	B0B7FJNSZR	12	19990.00	2021-08-26 00:00:00	2021-08-26 00:00:00
1423	INAO90CP531	B0B3JSWG81	1	999.00	2021-08-26 00:00:00	2021-08-26 00:00:00
1424	INAO90CP531	B08CF4SCNP	1	599.00	2021-08-26 00:00:00	2021-08-26 00:00:00
1425	INAO90CP531	B097RJ867P	3	11595.00	2021-08-26 00:00:00	2021-08-26 00:00:00
1426	APIO20OI992	B08L879JSN	5	13750.00	2021-03-05 00:00:00	2021-03-05 00:00:00
1427	APIO20OI992	B00GHL8VP2	8	4990.00	2021-03-05 00:00:00	2021-03-05 00:00:00
1428	APIO20OI992	B08TR61BVK	12	1499.00	2021-03-05 00:00:00	2021-03-05 00:00:00
1429	APIO20OI992	B00JBNZPFM	3	10999.00	2021-03-05 00:00:00	2021-03-05 00:00:00
1430	NOAN45MN886	B095244Q22	8	999.00	2022-09-30 00:00:00	2022-09-30 00:00:00
1431	NOAN45MN886	B07J2BQZD6	11	399.00	2022-09-30 00:00:00	2022-09-30 00:00:00
1432	NOAN45MN886	B08CFCK6CW	11	7999.00	2022-09-30 00:00:00	2022-09-30 00:00:00
1433	NOAN45MN886	B082T6GVG9	12	1500.00	2022-09-30 00:00:00	2022-09-30 00:00:00
1434	ACOA03AI195	B08S74GTBT	8	1999.00	2022-12-04 00:00:00	2022-12-04 00:00:00
1435	NIPN63PO613	B075TJHWVC	5	2299.00	2022-07-01 00:00:00	2022-07-01 00:00:00
1436	NIPN63PO613	B08Y5QJXSR	14	5190.00	2022-07-01 00:00:00	2022-07-01 00:00:00
1437	NIPN63PO613	B07CVR2L5K	6	2695.00	2022-07-01 00:00:00	2022-07-01 00:00:00
1438	NIPN63PO613	B07K19NYZ8	10	3290.00	2022-07-01 00:00:00	2022-07-01 00:00:00
1439	NIPN63PO613	B0BC9BW512	10	24990.00	2022-07-01 00:00:00	2022-07-01 00:00:00
1440	NIPN63PO613	B07HZ2QCGR	4	599.00	2022-07-01 00:00:00	2022-07-01 00:00:00
1441	CCCI56OP232	B09R1YFL6S	7	2999.00	2022-08-12 00:00:00	2022-08-12 00:00:00
1442	NMAM26OA191	B009UORDX4	10	975.00	2022-11-23 00:00:00	2022-11-23 00:00:00
1443	NMAM26OA191	B082LSVT4B	9	399.00	2022-11-23 00:00:00	2022-11-23 00:00:00
1444	NMAM26OA191	B01LYLJ99X	4	1300.00	2022-11-23 00:00:00	2022-11-23 00:00:00
1445	NMAM26OA191	B0B5RP43VN	13	4650.00	2022-11-23 00:00:00	2022-11-23 00:00:00
1446	NMAM26OA191	B08444S68L	6	15990.00	2022-11-23 00:00:00	2022-11-23 00:00:00
1447	CIPO34IP632	B00N3XLDW0	3	400.00	2022-02-24 00:00:00	2022-02-24 00:00:00
1448	CIPO34IP632	B07SPVMSC6	6	2660.00	2022-02-24 00:00:00	2022-02-24 00:00:00
1449	CIPO34IP632	B0B5B6PQCT	6	7990.00	2022-02-24 00:00:00	2022-02-24 00:00:00
1450	CIPO34IP632	B0814ZY6FP	15	1199.00	2022-02-24 00:00:00	2022-02-24 00:00:00
1451	CIPO34IP632	B09FFK1PQG	11	1699.00	2022-02-24 00:00:00	2022-02-24 00:00:00
1452	NMNA74PA758	B008QS9J6Y	13	2595.00	2021-12-05 00:00:00	2021-12-05 00:00:00
1453	NMNA74PA758	B099PR2GQJ	13	999.00	2021-12-05 00:00:00	2021-12-05 00:00:00
1454	NMNA74PA758	B0BQ3K23Y1	3	499.00	2021-12-05 00:00:00	2021-12-05 00:00:00
1455	NMNA74PA758	B07F1P8KNV	13	1099.00	2021-12-05 00:00:00	2021-12-05 00:00:00
1456	NMNA74PA758	B073BRXPZX	12	590.00	2021-12-05 00:00:00	2021-12-05 00:00:00
1457	PCOA03CA916	B0B3G5XZN5	4	3499.00	2022-12-21 00:00:00	2022-12-21 00:00:00
1458	CCCM89OC649	B06Y36JKC3	2	300.00	2022-08-08 00:00:00	2022-08-08 00:00:00
1459	CCCM89OC649	B01FSYQ2A4	3	2990.00	2022-08-08 00:00:00	2022-08-08 00:00:00
1460	CCCM89OC649	B088WCFPQF	9	1500.00	2022-08-08 00:00:00	2022-08-08 00:00:00
1461	CCCM89OC649	B07WHQBZLS	4	21990.00	2022-08-08 00:00:00	2022-08-08 00:00:00
1462	CCCM89OC649	B09939XJX8	12	1500.00	2022-08-08 00:00:00	2022-08-08 00:00:00
1463	CCCM89OC649	B096TWZRJC	2	1899.00	2022-08-08 00:00:00	2022-08-08 00:00:00
1464	MCPA97CM274	B09NNJ9WYM	4	19990.00	2021-03-28 00:00:00	2021-03-28 00:00:00
1465	MCPA97CM274	B00NH12R1O	5	485.00	2021-03-28 00:00:00	2021-03-28 00:00:00
1466	MCPA97CM274	B08D9NDZ1Y	7	4332.00	2021-03-28 00:00:00	2021-03-28 00:00:00
1467	PNAO83OP167	B0BR4F878Q	6	1999.00	2022-07-14 00:00:00	2022-07-14 00:00:00
1468	PNAO83OP167	B09LHZSMRR	13	20999.00	2022-07-14 00:00:00	2022-07-14 00:00:00
1469	PNAO83OP167	B0B935YNR7	3	2999.00	2022-07-14 00:00:00	2022-07-14 00:00:00
1470	PNAO83OP167	B09MMD1FDN	10	699.00	2022-07-14 00:00:00	2022-07-14 00:00:00
1471	AAMC41MA324	B08WLY8V9S	12	899.00	2021-07-26 00:00:00	2021-07-26 00:00:00
1472	AAMC41MA324	B07NC12T2R	4	4990.00	2021-07-26 00:00:00	2021-07-26 00:00:00
1473	AAMC41MA324	B0949SBKMP	4	6990.00	2021-07-26 00:00:00	2021-07-26 00:00:00
1474	AAMC41MA324	B0B5YBGCKD	5	599.00	2021-07-26 00:00:00	2021-07-26 00:00:00
1475	CPPI93AN663	B07DL1KC3H	14	899.00	2022-11-21 00:00:00	2022-11-21 00:00:00
1476	CPPI93AN663	B071VMP1Z4	11	399.00	2022-11-21 00:00:00	2022-11-21 00:00:00
1477	CPPI93AN663	B07WNK1FFN	5	1699.00	2022-11-21 00:00:00	2022-11-21 00:00:00
1478	CPPI93AN663	B07F6GXNPB	11	500.00	2022-11-21 00:00:00	2022-11-21 00:00:00
1479	CPPI93AN663	B0859M539M	7	2999.00	2022-11-21 00:00:00	2022-11-21 00:00:00
1480	AMPI13IC529	B0B4G2MWSB	12	999.00	2021-04-22 00:00:00	2021-04-22 00:00:00
1481	ICIM16AM844	B0083T231O	1	1499.00	2022-02-18 00:00:00	2022-02-18 00:00:00
1482	ICIM16AM844	B09XX51X2G	11	999.00	2022-02-18 00:00:00	2022-02-18 00:00:00
1483	ICIM16AM844	B08MZQBFLN	10	4999.00	2022-02-18 00:00:00	2022-02-18 00:00:00
1484	ICIM16AM844	B0BCZCQTJX	3	3999.00	2022-02-18 00:00:00	2022-02-18 00:00:00
1485	ICIM16AM844	B0BJ966M5K	10	24999.00	2022-02-18 00:00:00	2022-02-18 00:00:00
1486	ICIM16AM844	B08N6P8G5K	1	10995.00	2022-02-18 00:00:00	2022-02-18 00:00:00
1487	ICIM16AM844	B0B65P827P	11	549.00	2022-02-18 00:00:00	2022-02-18 00:00:00
1488	CNAA75MO718	B09ZHCJDP1	12	1000.00	2021-11-18 00:00:00	2021-11-18 00:00:00
1489	CNAA75MO718	B06XGWRKYT	1	15999.00	2021-11-18 00:00:00	2021-11-18 00:00:00
1490	CNAA75MO718	B07VNFP3C2	13	1245.00	2021-11-18 00:00:00	2021-11-18 00:00:00
1491	CNAA75MO718	B0BBN3WF7V	8	8999.00	2021-11-18 00:00:00	2021-11-18 00:00:00
1492	MAAI15MA636	B08TZD7FQN	14	599.00	2021-09-26 00:00:00	2021-09-26 00:00:00
1493	MAAI15MA636	B0B5V47VK4	12	49999.00	2021-09-26 00:00:00	2021-09-26 00:00:00
1494	MAAI15MA636	B00NH12R1O	15	485.00	2021-09-26 00:00:00	2021-09-26 00:00:00
1495	MAAI15MA636	B097JVLW3L	2	3500.00	2021-09-26 00:00:00	2021-09-26 00:00:00
1496	POAA42AP121	B08TM71L54	14	4195.00	2021-12-31 00:00:00	2021-12-31 00:00:00
1497	POAA42AP121	B08VGM3YMF	6	499.00	2021-12-31 00:00:00	2021-12-31 00:00:00
1498	POAA42AP121	B084N133Y7	15	1999.00	2021-12-31 00:00:00	2021-12-31 00:00:00
1499	POAA42AP121	B07F1T31ZZ	3	400.00	2021-12-31 00:00:00	2021-12-31 00:00:00
1500	APOM28AM128	B0B8CXTTG3	7	25999.00	2021-05-22 00:00:00	2021-05-22 00:00:00
1501	APOM28AM128	B0926V9CTV	7	599.00	2021-05-22 00:00:00	2021-05-22 00:00:00
1502	APOM28AM128	B099K9ZX65	11	44990.00	2021-05-22 00:00:00	2021-05-22 00:00:00
1503	APOM28AM128	B01KK0HU3Y	10	1499.00	2021-05-22 00:00:00	2021-05-22 00:00:00
1504	IPAO88II165	B07R99NBVB	13	599.00	2022-06-02 00:00:00	2022-06-02 00:00:00
1505	IPAO88II165	B009DA69W6	9	1900.00	2022-06-02 00:00:00	2022-06-02 00:00:00
1506	IPAO88II165	B083J64CBB	5	499.00	2022-06-02 00:00:00	2022-06-02 00:00:00
1507	IAAA00PN450	B094G9L9LT	15	1950.00	2022-06-12 00:00:00	2022-06-12 00:00:00
1508	IAAA00PN450	B097JVLW3L	5	3500.00	2022-06-12 00:00:00	2022-06-12 00:00:00
1509	IAAA00PN450	B08WRBG3XW	12	499.00	2022-06-12 00:00:00	2022-06-12 00:00:00
1510	IAAA00PN450	B09B125CFJ	7	799.00	2022-06-12 00:00:00	2022-06-12 00:00:00
1511	IAAA00PN450	B08498H13H	11	3499.00	2022-06-12 00:00:00	2022-06-12 00:00:00
1512	OAMA80AC896	B083GQGT3Z	14	799.00	2021-04-23 00:00:00	2021-04-23 00:00:00
1513	PIPA86IO818	B083T5G5PM	6	1990.00	2022-03-05 00:00:00	2022-03-05 00:00:00
1514	PIPA86IO818	B09VGKFM7Y	14	499.00	2022-03-05 00:00:00	2022-03-05 00:00:00
1515	PIPA86IO818	B073BRXPZX	15	590.00	2022-03-05 00:00:00	2022-03-05 00:00:00
1516	PIPA86IO818	B0977CGNJJ	9	11495.00	2022-03-05 00:00:00	2022-03-05 00:00:00
1517	PIPA86IO818	B09BVCVTBC	9	3499.00	2022-03-05 00:00:00	2022-03-05 00:00:00
1518	AANA30NI109	B09QGZFBPM	14	999.00	2022-08-05 00:00:00	2022-08-05 00:00:00
1519	AANA30NI109	B0BQRJ3C47	8	999.00	2022-08-05 00:00:00	2022-08-05 00:00:00
1520	AANA30NI109	B07RZZ1QSW	3	799.00	2022-08-05 00:00:00	2022-08-05 00:00:00
1521	AANA30NI109	B0978V2CP6	13	3100.00	2022-08-05 00:00:00	2022-08-05 00:00:00
1522	ICPP75PI748	B09TBCVJS3	8	7999.00	2021-05-27 00:00:00	2021-05-27 00:00:00
1523	ICPP75PI748	B0B2CWRDB1	10	9999.00	2021-05-27 00:00:00	2021-05-27 00:00:00
1524	ICPP75PI748	B099K9ZX65	8	44990.00	2021-05-27 00:00:00	2021-05-27 00:00:00
1525	ICPP75PI748	B07B275VN9	1	799.00	2021-05-27 00:00:00	2021-05-27 00:00:00
1526	ICPP75PI748	B07QHHCB27	6	2100.00	2021-05-27 00:00:00	2021-05-27 00:00:00
1527	ICPP75PI748	B094JB13XL	7	5999.00	2021-05-27 00:00:00	2021-05-27 00:00:00
1528	INAI93NI790	B07WGPKMP5	3	20999.00	2021-07-12 00:00:00	2021-07-12 00:00:00
1529	INAI93NI790	B07TXCY3YK	2	3899.00	2021-07-12 00:00:00	2021-07-12 00:00:00
1530	AAOC10OC209	B07W6VWZ8C	6	1999.00	2021-01-08 00:00:00	2021-01-08 00:00:00
1531	AAOC10OC209	B09P858DK8	5	1999.00	2021-01-08 00:00:00	2021-01-08 00:00:00
1532	AAOC10OC209	B01F262EUU	8	999.00	2021-01-08 00:00:00	2021-01-08 00:00:00
1533	AAOC10OC209	B01IOZUHRS	3	499.00	2021-01-08 00:00:00	2021-01-08 00:00:00
1534	POIC49AO203	B01MQZ7J8K	6	1445.00	2021-04-04 00:00:00	2021-04-04 00:00:00
1535	IAOA10OA060	B01F7B2JCI	8	450.00	2021-04-06 00:00:00	2021-04-06 00:00:00
1536	IAOA10OA060	B0BF563HB4	3	19999.00	2021-04-06 00:00:00	2021-04-06 00:00:00
1537	IAOA10OA060	B07NRTCDS5	15	1499.00	2021-04-06 00:00:00	2021-04-06 00:00:00
1538	IAOA10OA060	B0759QMF85	3	2399.00	2021-04-06 00:00:00	2021-04-06 00:00:00
1539	IAOA10OA060	B08TM71L54	10	4195.00	2021-04-06 00:00:00	2021-04-06 00:00:00
1540	IAOA10OA060	B087FXHB6J	13	999.00	2021-04-06 00:00:00	2021-04-06 00:00:00
1541	IAOA10OA060	B096YCN3SD	14	1000.00	2021-04-06 00:00:00	2021-04-06 00:00:00
1542	ACMP75NA528	B078JBK4GX	9	4560.00	2022-09-24 00:00:00	2022-09-24 00:00:00
1543	ACMP75NA528	B07H5PBN54	7	2600.00	2022-09-24 00:00:00	2022-09-24 00:00:00
1544	ACMP75NA528	B09F6KL23R	2	2799.00	2022-09-24 00:00:00	2022-09-24 00:00:00
1545	ACMP75NA528	B00J5DYCCA	7	1890.00	2022-09-24 00:00:00	2022-09-24 00:00:00
1546	ACMP75NA528	B097RN7BBK	1	1999.00	2022-09-24 00:00:00	2022-09-24 00:00:00
1547	ACMP75NA528	B01GGKZ4NU	12	995.00	2022-09-24 00:00:00	2022-09-24 00:00:00
1548	ACMP75NA528	B06XPYRWV5	13	1795.00	2022-09-24 00:00:00	2022-09-24 00:00:00
1549	MACA64OC385	B084N18QZY	3	849.00	2022-10-19 00:00:00	2022-10-19 00:00:00
1550	CPIC89PA079	B09PNR6F8Q	3	399.00	2022-05-01 00:00:00	2022-05-01 00:00:00
1551	CPIC89PA079	B06Y36JKC3	7	300.00	2022-05-01 00:00:00	2022-05-01 00:00:00
1552	CPIC89PA079	B0B6F8HHR6	7	35999.00	2022-05-01 00:00:00	2022-05-01 00:00:00
1553	CPIC89PA079	B07SLNG3LW	7	10295.00	2022-05-01 00:00:00	2022-05-01 00:00:00
1554	CPIC89PA079	B09XB1R2F3	4	799.00	2022-05-01 00:00:00	2022-05-01 00:00:00
1555	OONA59MA424	B0B4HKH19N	7	931.00	2022-04-14 00:00:00	2022-04-14 00:00:00
1556	OONA59MA424	B01F25X6RQ	1	499.00	2022-04-14 00:00:00	2022-04-14 00:00:00
1557	MIAI82II104	B00W56GLOQ	3	5000.00	2022-07-26 00:00:00	2022-07-26 00:00:00
1558	MIAI82II104	B0162LYSFS	13	1749.00	2022-07-26 00:00:00	2022-07-26 00:00:00
1559	MIAI82II104	B09RKFBCV7	8	7999.00	2022-07-26 00:00:00	2022-07-26 00:00:00
1560	MIAI82II104	B07RX42D3D	7	350.00	2022-07-26 00:00:00	2022-07-26 00:00:00
1561	MIAI82II104	B00N3XLDW0	1	400.00	2022-07-26 00:00:00	2022-07-26 00:00:00
1562	PNPI93ON578	B00EYW1U68	14	3599.00	2021-10-03 00:00:00	2021-10-03 00:00:00
1563	PNPI93ON578	B00MUTWLW4	12	3295.00	2021-10-03 00:00:00	2021-10-03 00:00:00
1564	PNPI93ON578	B08HV83HL3	9	2199.00	2021-10-03 00:00:00	2021-10-03 00:00:00
1565	PNPI93ON578	B0BCKWZ884	6	2999.00	2021-10-03 00:00:00	2021-10-03 00:00:00
1566	CAOI10IO062	B00LVMTA2A	9	250.00	2022-02-04 00:00:00	2022-02-04 00:00:00
1567	CAOI10IO062	B07YC8JHMB	15	16000.00	2022-02-04 00:00:00	2022-02-04 00:00:00
1568	CAOI10IO062	B09LQQYNZQ	3	4699.00	2022-02-04 00:00:00	2022-02-04 00:00:00
1569	AACC62OO154	B078V8R9BS	8	1111.00	2021-04-30 00:00:00	2021-04-30 00:00:00
1570	AACC62OO154	B07JPX9CR7	6	1299.00	2021-04-30 00:00:00	2021-04-30 00:00:00
1571	AACC62OO154	B08243SKCK	10	299.00	2021-04-30 00:00:00	2021-04-30 00:00:00
1572	NMAC56AM322	B09VCHLSJF	11	39999.00	2022-06-19 00:00:00	2022-06-19 00:00:00
1573	NMAC56AM322	B09WRMNJ9G	13	38999.00	2022-06-19 00:00:00	2022-06-19 00:00:00
1574	NMAC56AM322	B0B694PXQJ	8	2999.00	2022-06-19 00:00:00	2022-06-19 00:00:00
1575	AAAM80AC798	B0B5RP43VN	7	4650.00	2021-03-26 00:00:00	2021-03-26 00:00:00
1576	AAAM80AC798	B01MRARGBW	11	400.00	2021-03-26 00:00:00	2021-03-26 00:00:00
1577	AAAM80AC798	B07SPVMSC6	1	2660.00	2021-03-26 00:00:00	2021-03-26 00:00:00
1578	AAAM80AC798	B09939XJX8	3	1500.00	2021-03-26 00:00:00	2021-03-26 00:00:00
1579	AAAM80AC798	B0BDYW3RN3	2	3500.00	2021-03-26 00:00:00	2021-03-26 00:00:00
1580	IIAC92IP908	B01EJ5MM5M	8	3875.00	2022-04-27 00:00:00	2022-04-27 00:00:00
1581	IIAC92IP908	B08WKCTFF3	10	1999.00	2022-04-27 00:00:00	2022-04-27 00:00:00
1582	IIAC92IP908	B0BBMPH39N	6	999.00	2022-04-27 00:00:00	2022-04-27 00:00:00
1583	IIAC92IP908	B08WKG2MWT	3	1099.00	2022-04-27 00:00:00	2022-04-27 00:00:00
1584	IIAC92IP908	B09VC2D2WG	4	1499.00	2022-04-27 00:00:00	2022-04-27 00:00:00
1585	IIAC92IP908	B01L7C4IU2	13	3045.00	2022-04-27 00:00:00	2022-04-27 00:00:00
1586	IIAC92IP908	B08BG4M4N7	3	499.00	2022-04-27 00:00:00	2022-04-27 00:00:00
1587	NAIO67AA436	B01GGKZ0V6	6	845.00	2022-01-30 00:00:00	2022-01-30 00:00:00
1588	NAIO67AA436	B086394NY5	15	2490.00	2022-01-30 00:00:00	2022-01-30 00:00:00
1589	NAIO67AA436	B08D75R3Z1	15	1900.00	2022-01-30 00:00:00	2022-01-30 00:00:00
1590	IIAA87NP744	B01GGKYKQM	7	700.00	2022-12-08 00:00:00	2022-12-08 00:00:00
1591	CCAM11NN233	B097XJQZ8H	9	6000.00	2022-07-10 00:00:00	2022-07-10 00:00:00
1592	CCAM11NN233	B09F6VHQXB	5	20000.00	2022-07-10 00:00:00	2022-07-10 00:00:00
1593	CCAM11NN233	B075TJHWVC	11	2299.00	2022-07-10 00:00:00	2022-07-10 00:00:00
1594	CCAM11NN233	B01LONQBDG	13	899.00	2022-07-10 00:00:00	2022-07-10 00:00:00
1595	CCAM11NN233	B0B9F9PT8R	11	2999.00	2022-07-10 00:00:00	2022-07-10 00:00:00
1596	CCAM11NN233	B00P93X0VO	14	120.00	2022-07-10 00:00:00	2022-07-10 00:00:00
1597	CCAM11NN233	B086PXQ2R4	13	165.00	2022-07-10 00:00:00	2022-07-10 00:00:00
1598	OMOC45CN000	B06XPYRWV5	6	1795.00	2021-03-29 00:00:00	2021-03-29 00:00:00
1599	OMOC45CN000	B07WFPMGQQ	10	27990.00	2021-03-29 00:00:00	2021-03-29 00:00:00
1600	OMOC45CN000	B094YFFSMY	14	1999.00	2021-03-29 00:00:00	2021-03-29 00:00:00
1601	OMOC45CN000	B00RGLI0ZS	5	599.00	2021-03-29 00:00:00	2021-03-29 00:00:00
1602	OMOC45CN000	B07YY1BY5B	8	4999.00	2021-03-29 00:00:00	2021-03-29 00:00:00
1603	OMOC45CN000	B0B2DD66GS	11	2900.00	2021-03-29 00:00:00	2021-03-29 00:00:00
1604	OMOC45CN000	B0B3RSDSZ3	13	9999.00	2021-03-29 00:00:00	2021-03-29 00:00:00
1605	ICOP36PN998	B07NC12T2R	1	4990.00	2022-08-27 00:00:00	2022-08-27 00:00:00
1606	ICOP36PN998	B09FPP3R1D	4	2495.00	2022-08-27 00:00:00	2022-08-27 00:00:00
1607	ICOP36PN998	B077BTLQ67	2	4890.00	2022-08-27 00:00:00	2022-08-27 00:00:00
1608	ICOP36PN998	B07TC9F7PN	14	16899.00	2022-08-27 00:00:00	2022-08-27 00:00:00
1609	ICOP36PN998	B08XNL93PL	11	2999.00	2022-08-27 00:00:00	2022-08-27 00:00:00
1610	NCMA24OO498	B01LY9W8AF	10	1282.00	2021-12-09 00:00:00	2021-12-09 00:00:00
1611	NCMA24OO498	B07X2L5Z8C	7	2295.00	2021-12-09 00:00:00	2021-12-09 00:00:00
1612	NCMA24OO498	B092JHPL72	3	999.00	2021-12-09 00:00:00	2021-12-09 00:00:00
1613	NCMA24OO498	B0814P4L98	10	999.00	2021-12-09 00:00:00	2021-12-09 00:00:00
1614	NCMA24OO498	B09H39KTTB	2	499.00	2021-12-09 00:00:00	2021-12-09 00:00:00
1615	NCMA24OO498	B07VV37FT4	9	250.00	2021-12-09 00:00:00	2021-12-09 00:00:00
1616	IPMA98NM030	B08JW1GVS7	2	3999.00	2021-12-09 00:00:00	2021-12-09 00:00:00
1617	IPMA98NM030	B07H3WDC4X	4	999.00	2021-12-09 00:00:00	2021-12-09 00:00:00
1618	IPMA98NM030	B01GGKYKQM	3	700.00	2021-12-09 00:00:00	2021-12-09 00:00:00
1619	IPMA98NM030	B00JBNZPFM	1	10999.00	2021-12-09 00:00:00	2021-12-09 00:00:00
1620	IPMA98NM030	B01LONQBDG	13	899.00	2021-12-09 00:00:00	2021-12-09 00:00:00
1621	AMAI66CA484	B07Q4NJQC5	11	599.00	2021-07-23 00:00:00	2021-07-23 00:00:00
1622	AMAI66CA484	B0B6BLTGTT	7	5999.00	2021-07-23 00:00:00	2021-07-23 00:00:00
1623	AMAI66CA484	B09J4YQYX3	6	2290.00	2021-07-23 00:00:00	2021-07-23 00:00:00
1624	AMAI66CA484	B098K3H92Z	11	899.00	2021-07-23 00:00:00	2021-07-23 00:00:00
1625	AMAI66CA484	B00RFWNJMC	11	499.00	2021-07-23 00:00:00	2021-07-23 00:00:00
1626	AMAI66CA484	B09L8DSSFH	9	999.00	2021-07-23 00:00:00	2021-07-23 00:00:00
1627	MAPC99IM251	B09MKG4ZCM	2	2999.00	2021-04-15 00:00:00	2021-04-15 00:00:00
1628	MAPC99IM251	B01D5H90L4	2	700.00	2021-04-15 00:00:00	2021-04-15 00:00:00
1629	MAPC99IM251	B0B7NWGXS6	1	2545.00	2021-04-15 00:00:00	2021-04-15 00:00:00
1630	MAPC99IM251	B07KCMR8D6	12	50.00	2021-04-15 00:00:00	2021-04-15 00:00:00
1631	MAPC99IM251	B09JPC82QC	9	34999.00	2021-04-15 00:00:00	2021-04-15 00:00:00
1632	MAPC99IM251	B08S74GTBT	8	1999.00	2021-04-15 00:00:00	2021-04-15 00:00:00
1633	CIPC39NC705	B09GFN8WZL	8	999.00	2021-09-01 00:00:00	2021-09-01 00:00:00
1634	CIPC39NC705	B07LDN9Q2P	14	1295.00	2021-09-01 00:00:00	2021-09-01 00:00:00
1635	CIPC39NC705	B07WHS7MZ1	2	39990.00	2021-09-01 00:00:00	2021-09-01 00:00:00
1636	CIPC39NC705	B07F1P8KNV	11	1099.00	2021-09-01 00:00:00	2021-09-01 00:00:00
1637	CIPC39NC705	B01GGKZ0V6	12	845.00	2021-09-01 00:00:00	2021-09-01 00:00:00
1638	CIPC39NC705	B06Y36JKC3	13	300.00	2021-09-01 00:00:00	2021-09-01 00:00:00
1639	CIPC39NC705	B07WGPKMP5	2	20999.00	2021-09-01 00:00:00	2021-09-01 00:00:00
1640	ACAN21NO150	B097RN7BBK	6	1999.00	2021-05-26 00:00:00	2021-05-26 00:00:00
1641	ACAN21NO150	B09PL79D2X	11	2990.00	2021-05-26 00:00:00	2021-05-26 00:00:00
1642	ACAN21NO150	B0B4F3QNDM	12	19499.00	2021-05-26 00:00:00	2021-05-26 00:00:00
1643	ACCA92CI733	B08WJ86PV2	3	990.00	2021-04-19 00:00:00	2021-04-19 00:00:00
1644	ACCA92CI733	B0756KCV5K	3	5295.00	2021-04-19 00:00:00	2021-04-19 00:00:00
1645	ACCA92CI733	B09GBBJV72	1	2199.00	2021-04-19 00:00:00	2021-04-19 00:00:00
1646	ACCA92CI733	B0B61HYR92	11	999.00	2021-04-19 00:00:00	2021-04-19 00:00:00
1647	ACCA92CI733	B08HVJCW95	4	2199.00	2021-04-19 00:00:00	2021-04-19 00:00:00
1648	ACCA92CI733	B09B125CFJ	6	799.00	2021-04-19 00:00:00	2021-04-19 00:00:00
1649	CNIC83NC613	B0856HY85J	13	4999.00	2022-08-02 00:00:00	2022-08-02 00:00:00
1650	CNIC83NC613	B08BQ947H3	4	149.00	2022-08-02 00:00:00	2022-08-02 00:00:00
1651	CNIC83NC613	B08XXF5V6G	5	50999.00	2022-08-02 00:00:00	2022-08-02 00:00:00
1652	CNIC83NC613	B07Y9PY6Y1	5	8820.00	2022-08-02 00:00:00	2022-08-02 00:00:00
1653	CNIC83NC613	B09DSXK8JX	2	19499.00	2022-08-02 00:00:00	2022-08-02 00:00:00
1654	OPCM84PI865	B00UGZWM2I	6	800.00	2021-06-25 00:00:00	2021-06-25 00:00:00
1655	OPCM84PI865	B097XJQZ8H	11	6000.00	2021-06-25 00:00:00	2021-06-25 00:00:00
1656	OPCM84PI865	B08X77LM8C	6	999.00	2021-06-25 00:00:00	2021-06-25 00:00:00
1657	OPCM84PI865	B0941392C8	5	449.00	2021-06-25 00:00:00	2021-06-25 00:00:00
1658	OPCM84PI865	B0B3MMYHYW	15	45999.00	2021-06-25 00:00:00	2021-06-25 00:00:00
1659	OPCM84PI865	B09X5C9VLK	7	3500.00	2021-06-25 00:00:00	2021-06-25 00:00:00
1660	OPCM84PI865	B01FSYQ2A4	14	2990.00	2021-06-25 00:00:00	2021-06-25 00:00:00
1661	OMMP59AP409	B09BNXQ6BR	2	6499.00	2021-06-05 00:00:00	2021-06-05 00:00:00
1662	OMMP59AP409	B07GQD4K6L	2	999.00	2021-06-05 00:00:00	2021-06-05 00:00:00
1663	NAAP82MA536	B08PSVBB2X	5	1099.00	2021-06-26 00:00:00	2021-06-26 00:00:00
1664	NAAP82MA536	B09J2QCKKM	3	3500.00	2021-06-26 00:00:00	2021-06-26 00:00:00
1665	POIN88CO021	B09NY7W8YD	3	11999.00	2021-02-13 00:00:00	2021-02-13 00:00:00
1666	IOAA28AO395	B08CDKQ8T6	2	349.00	2022-11-26 00:00:00	2022-11-26 00:00:00
1667	IOAA28AO395	B0BBN4DZBD	9	8999.00	2022-11-26 00:00:00	2022-11-26 00:00:00
1668	IOAA28AO395	B00YMJ0OI8	12	3645.00	2022-11-26 00:00:00	2022-11-26 00:00:00
1669	IOAA28AO395	B08XXVXP3J	3	999.00	2022-11-26 00:00:00	2022-11-26 00:00:00
1670	IOAA28AO395	B09RWZRCP1	11	999.00	2022-11-26 00:00:00	2022-11-26 00:00:00
1671	IOAA28AO395	B07F366Z51	15	2385.00	2022-11-26 00:00:00	2022-11-26 00:00:00
1672	PNAP10MC737	B09WMTJPG7	1	4400.00	2022-02-27 00:00:00	2022-02-27 00:00:00
1673	PNAP10MC737	B0B8CXTTG3	6	25999.00	2022-02-27 00:00:00	2022-02-27 00:00:00
1674	AMAO59CA809	B0981XSZJ7	10	999.00	2022-03-21 00:00:00	2022-03-21 00:00:00
1675	PNMP92MO379	B0B2X35B1K	9	6999.00	2022-08-16 00:00:00	2022-08-16 00:00:00
1676	PNMP92MO379	B00A7PLVU6	10	899.00	2022-08-16 00:00:00	2022-08-16 00:00:00
1677	PNMP92MO379	B08YRMBK9R	1	6299.00	2022-08-16 00:00:00	2022-08-16 00:00:00
1678	PNMP92MO379	B08WRKSF9D	12	8500.00	2022-08-16 00:00:00	2022-08-16 00:00:00
1679	PNMP92MO379	B00J4YG0PC	15	720.00	2022-08-16 00:00:00	2022-08-16 00:00:00
1680	ANMO98IP230	B09X7DY7Q4	14	1800.00	2022-12-16 00:00:00	2022-12-16 00:00:00
1681	ANMO98IP230	B07WFPMGQQ	10	27990.00	2022-12-16 00:00:00	2022-12-16 00:00:00
1682	ANMO98IP230	B01M5F614J	8	13999.00	2022-12-16 00:00:00	2022-12-16 00:00:00
1683	ANMO98IP230	B07QCWY5XV	1	1399.00	2022-12-16 00:00:00	2022-12-16 00:00:00
1684	OPCC99IN290	B07FJNNZCJ	2	13049.00	2021-10-28 00:00:00	2021-10-28 00:00:00
1685	OPCC99IN290	B07FJNNZCJ	9	13049.00	2021-10-28 00:00:00	2021-10-28 00:00:00
1686	OPCC99IN290	B08BCKN299	9	999.00	2021-10-28 00:00:00	2021-10-28 00:00:00
1687	OPCC99IN290	B0941392C8	9	449.00	2021-10-28 00:00:00	2021-10-28 00:00:00
1688	OPCC99IN290	B0B5F3YZY4	4	1099.00	2021-10-28 00:00:00	2021-10-28 00:00:00
1689	CMAP03CN269	B01IBRHE3E	11	499.00	2022-09-22 00:00:00	2022-09-22 00:00:00
1690	CMAP03CN269	B09DL9978Y	9	4590.00	2022-09-22 00:00:00	2022-09-22 00:00:00
1691	ACAA67OI570	B0073QGKAS	5	1499.00	2022-10-09 00:00:00	2022-10-09 00:00:00
1692	ACAA67OI570	B00ZRBWPA0	1	180.00	2022-10-09 00:00:00	2022-10-09 00:00:00
1693	ACAA67OI570	B09Q8WQ5QJ	1	499.00	2022-10-09 00:00:00	2022-10-09 00:00:00
1694	ACAA67OI570	B01D5H90L4	12	700.00	2022-10-09 00:00:00	2022-10-09 00:00:00
1695	ACAA67OI570	B08SJVD8QD	2	389.00	2022-10-09 00:00:00	2022-10-09 00:00:00
1696	ACAA67OI570	B09F6VHQXB	15	20000.00	2022-10-09 00:00:00	2022-10-09 00:00:00
1697	PCNP02OA031	B08L12N5H1	7	2499.00	2022-04-08 00:00:00	2022-04-08 00:00:00
1698	PCNP02OA031	B005LJQMCK	9	599.00	2022-04-08 00:00:00	2022-04-08 00:00:00
1699	PCNP02OA031	B0B4F5L738	13	19499.00	2022-04-08 00:00:00	2022-04-08 00:00:00
1700	PCNP02OA031	B09MTLG4TP	4	999.00	2022-04-08 00:00:00	2022-04-08 00:00:00
1701	PCNP02OA031	B08RZ12GKR	10	499.00	2022-04-08 00:00:00	2022-04-08 00:00:00
1702	PCNP02OA031	B0BM9H2NY9	7	1599.00	2022-04-08 00:00:00	2022-04-08 00:00:00
1703	PIAA27MA715	B0765B3TH7	9	599.00	2022-11-05 00:00:00	2022-11-05 00:00:00
1704	PIAA27MA715	B07JGDB5M1	11	1299.00	2022-11-05 00:00:00	2022-11-05 00:00:00
1705	PIAA27MA715	B0BBLHTRM9	12	699.00	2022-11-05 00:00:00	2022-11-05 00:00:00
1706	PIAA27MA715	B09WF4Q7B3	13	2599.00	2022-11-05 00:00:00	2022-11-05 00:00:00
1707	ANAP07CA494	B08CTQP51L	10	1499.00	2022-08-22 00:00:00	2022-08-22 00:00:00
1708	ANAP07CA494	B08CF3B7N1	12	399.00	2022-08-22 00:00:00	2022-08-22 00:00:00
1709	ANAP07CA494	B06XSK3XL6	13	999.00	2022-08-22 00:00:00	2022-08-22 00:00:00
1710	ANAP07CA494	B0BNDD9TN6	11	28900.00	2022-08-22 00:00:00	2022-08-22 00:00:00
1711	ANAP07CA494	B0BMXMLSMM	9	999.00	2022-08-22 00:00:00	2022-08-22 00:00:00
1712	ANAP07CA494	B0B19VJXQZ	4	59900.00	2022-08-22 00:00:00	2022-08-22 00:00:00
1713	CCNI95IA930	B00R1P3B4O	13	549.00	2021-07-30 00:00:00	2021-07-30 00:00:00
1714	CCNI95IA930	B00LVMTA2A	1	250.00	2021-07-30 00:00:00	2021-07-30 00:00:00
1715	CCNI95IA930	B08YRMBK9R	4	6299.00	2021-07-30 00:00:00	2021-07-30 00:00:00
1716	CCNI95IA930	B00NH11PEY	2	750.00	2021-07-30 00:00:00	2021-07-30 00:00:00
1717	CCNI95IA930	B09L8DT7D6	14	499.00	2021-07-30 00:00:00	2021-07-30 00:00:00
1718	CCNI95IA930	B08VF8V79P	7	1699.00	2021-07-30 00:00:00	2021-07-30 00:00:00
1719	CCNI95IA930	B07924P3C5	12	799.00	2021-07-30 00:00:00	2021-07-30 00:00:00
1720	ACNM21OA616	B08FTFXNNB	10	1999.00	2022-07-24 00:00:00	2022-07-24 00:00:00
1721	ACNM21OA616	B0B3JSWG81	6	999.00	2022-07-24 00:00:00	2022-07-24 00:00:00
1722	ACNM21OA616	B09B9SPC7F	7	1299.00	2022-07-24 00:00:00	2022-07-24 00:00:00
1723	ACNM21OA616	B08H9Z3XQW	8	1490.00	2022-07-24 00:00:00	2022-07-24 00:00:00
1724	ACNM21OA616	B09Y5FZK9N	10	1545.00	2022-07-24 00:00:00	2022-07-24 00:00:00
1725	ACNM21OA616	B08VF8V79P	7	1699.00	2022-07-24 00:00:00	2022-07-24 00:00:00
1726	ACNM21OA616	B09CMQRQM6	11	899.00	2022-07-24 00:00:00	2022-07-24 00:00:00
1727	MAPC87PC335	B088ZFJY82	12	1499.00	2021-04-30 00:00:00	2021-04-30 00:00:00
1728	MAPC87PC335	B0BL11S5QK	5	3890.00	2021-04-30 00:00:00	2021-04-30 00:00:00
1729	MAPC87PC335	B07JW1Y6XV	6	1099.00	2021-04-30 00:00:00	2021-04-30 00:00:00
1730	MAPC87PC335	B08CTQP51L	11	1499.00	2021-04-30 00:00:00	2021-04-30 00:00:00
1731	MAPC87PC335	B0B8CHJLWJ	10	1199.00	2021-04-30 00:00:00	2021-04-30 00:00:00
1732	CNOM80OM280	B08TZD7FQN	3	599.00	2021-03-24 00:00:00	2021-03-24 00:00:00
1733	CNOM80OM280	B07N8RQ6W7	10	699.00	2021-03-24 00:00:00	2021-03-24 00:00:00
1734	CNOM80OM280	B0756KCV5K	15	5295.00	2021-03-24 00:00:00	2021-03-24 00:00:00
1735	CNOM80OM280	B073BRXPZX	1	590.00	2021-03-24 00:00:00	2021-03-24 00:00:00
1736	IPPN50AA543	B07GLNJC25	11	499.00	2021-04-27 00:00:00	2021-04-27 00:00:00
1737	IPPN50AA543	B09C635BMM	10	999.00	2021-04-27 00:00:00	2021-04-27 00:00:00
1738	IPPN50AA543	B078JF6X9B	9	6070.00	2021-04-27 00:00:00	2021-04-27 00:00:00
1739	AAMN26CC873	B08GYG6T12	13	800.00	2022-11-25 00:00:00	2022-11-25 00:00:00
1740	AAMN26CC873	B014HDJ7ZE	4	7445.00	2022-11-25 00:00:00	2022-11-25 00:00:00
1741	AAMN26CC873	B07JPX9CR7	9	1299.00	2022-11-25 00:00:00	2022-11-25 00:00:00
1742	AAMN26CC873	B08QW937WV	7	2999.00	2022-11-25 00:00:00	2022-11-25 00:00:00
1743	PAOC73NP295	B0BCKWZ884	14	2999.00	2021-06-12 00:00:00	2021-06-12 00:00:00
1744	PAOC73NP295	B08V9C4B1J	1	999.00	2021-06-12 00:00:00	2021-06-12 00:00:00
1745	PAOC73NP295	B008LN8KDM	3	2095.00	2021-06-12 00:00:00	2021-06-12 00:00:00
1746	PAOC73NP295	B00LY12TH6	9	230.00	2021-06-12 00:00:00	2021-06-12 00:00:00
1747	PAOC73NP295	B09XB7SRQ5	8	11999.00	2021-06-12 00:00:00	2021-06-12 00:00:00
1748	PAOC73NP295	B0B15CPR37	15	47900.00	2021-06-12 00:00:00	2021-06-12 00:00:00
1749	PAAO05IN851	B09P182Z2H	11	5799.00	2021-11-16 00:00:00	2021-11-16 00:00:00
1750	APMC03OI768	B00DJ5N9VK	1	150.00	2021-09-18 00:00:00	2021-09-18 00:00:00
1751	APMC03OI768	B005LJQMCK	6	599.00	2021-09-18 00:00:00	2021-09-18 00:00:00
1752	APMC03OI768	B07LDPLSZC	3	1190.00	2021-09-18 00:00:00	2021-09-18 00:00:00
1753	APMC03OI768	B092X94QNQ	12	3990.00	2021-09-18 00:00:00	2021-09-18 00:00:00
1754	APMC03OI768	B0BP18W8TM	5	9999.00	2021-09-18 00:00:00	2021-09-18 00:00:00
1755	APMC03OI768	B09BF8JBWX	9	1249.00	2021-09-18 00:00:00	2021-09-18 00:00:00
1756	APMC03OI768	B00KRCBA6E	2	5000.00	2021-09-18 00:00:00	2021-09-18 00:00:00
1757	MCCP53AI249	B072J83V9W	1	9995.00	2021-12-23 00:00:00	2021-12-23 00:00:00
1758	MCCP53AI249	B08CS3BT4L	6	12999.00	2021-12-23 00:00:00	2021-12-23 00:00:00
1759	MCCP53AI249	B09J4YQYX3	3	2290.00	2021-12-23 00:00:00	2021-12-23 00:00:00
1760	MCCP53AI249	B07YWS9SP9	8	999.00	2021-12-23 00:00:00	2021-12-23 00:00:00
1761	MCCP53AI249	B0BP89YBC1	9	3500.00	2021-12-23 00:00:00	2021-12-23 00:00:00
1762	MCCP53AI249	B07Y5FDPKV	13	2400.00	2021-12-23 00:00:00	2021-12-23 00:00:00
1763	MCCP53AI249	B0BBN4DZBD	12	8999.00	2021-12-23 00:00:00	2021-12-23 00:00:00
1764	POPM06PI837	B0B8CXTTG3	5	25999.00	2021-08-29 00:00:00	2021-08-29 00:00:00
1765	POPM06PI837	B09TWHTBKQ	14	25999.00	2021-08-29 00:00:00	2021-08-29 00:00:00
1766	POPM06PI837	B09NKZXMWJ	2	249.00	2021-08-29 00:00:00	2021-08-29 00:00:00
1767	POPM06PI837	B014I8SSD0	2	475.00	2021-08-29 00:00:00	2021-08-29 00:00:00
1768	POPM06PI837	B00VA7YYUO	8	99.00	2021-08-29 00:00:00	2021-08-29 00:00:00
1769	PANO46OP504	B0B61GCHC1	4	999.00	2021-01-18 00:00:00	2021-01-18 00:00:00
1770	PANO46OP504	B07TMCXRFV	12	1599.00	2021-01-18 00:00:00	2021-01-18 00:00:00
1771	PANO46OP504	B09NNJ9WYM	12	19990.00	2021-01-18 00:00:00	2021-01-18 00:00:00
1772	PANO46OP504	B09NY7W8YD	13	11999.00	2021-01-18 00:00:00	2021-01-18 00:00:00
1773	PANO46OP504	B07RY2X9MP	7	1500.00	2021-01-18 00:00:00	2021-01-18 00:00:00
1774	PMAO90NP658	B08MTCKDYN	6	299.00	2021-11-02 00:00:00	2021-11-02 00:00:00
1775	PMAO90NP658	B0B2CWRDB1	9	9999.00	2021-11-02 00:00:00	2021-11-02 00:00:00
1776	PMAO90NP658	B0B3MQXNFB	14	199.00	2021-11-02 00:00:00	2021-11-02 00:00:00
1777	PMAO90NP658	B09X79PP8F	8	299.00	2021-11-02 00:00:00	2021-11-02 00:00:00
1778	PMAO90NP658	B01GFTEV5Y	11	3193.00	2021-11-02 00:00:00	2021-11-02 00:00:00
1779	PMAO90NP658	B09MTLG4TP	3	999.00	2021-11-02 00:00:00	2021-11-02 00:00:00
1780	PMAO90NP658	B07JF9B592	1	699.00	2021-11-02 00:00:00	2021-11-02 00:00:00
1781	AINN44PC602	B0B14MR9L1	7	24999.00	2022-06-12 00:00:00	2022-06-12 00:00:00
1782	AINN44PC602	B0BBLHTRM9	6	699.00	2022-06-12 00:00:00	2022-06-12 00:00:00
1783	AINN44PC602	B07VTFN6HM	15	7350.00	2022-06-12 00:00:00	2022-06-12 00:00:00
1784	AINN44PC602	B01N4EV2TL	7	1995.00	2022-06-12 00:00:00	2022-06-12 00:00:00
1785	AINN44PC602	B08LT9BMPP	5	1995.00	2022-06-12 00:00:00	2022-06-12 00:00:00
1786	AINN44PC602	B08MVSGXMY	14	2300.00	2022-06-12 00:00:00	2022-06-12 00:00:00
1787	AINN44PC602	B0756CLQWL	15	3999.00	2022-06-12 00:00:00	2022-06-12 00:00:00
1788	MPCO78AO776	B07T4D9FNY	12	1490.00	2021-11-22 00:00:00	2021-11-22 00:00:00
1789	MPCO78AO776	B092BJMT8Q	1	52900.00	2021-11-22 00:00:00	2021-11-22 00:00:00
1790	MPCO78AO776	B0141EZMAI	3	800.00	2021-11-22 00:00:00	2021-11-22 00:00:00
1791	MPCO78AO776	B01KK0HU3Y	6	1499.00	2021-11-22 00:00:00	2021-11-22 00:00:00
1792	MPCO78AO776	B0BHYLCL19	12	399.00	2021-11-22 00:00:00	2021-11-22 00:00:00
1793	MPCO78AO776	B08VGM3YMF	11	499.00	2021-11-22 00:00:00	2021-11-22 00:00:00
1794	MAON31OC437	B091KNVNS9	6	699.00	2022-09-09 00:00:00	2022-09-09 00:00:00
1795	MAON31OC437	B07RX42D3D	9	350.00	2022-09-09 00:00:00	2022-09-09 00:00:00
1796	MAON31OC437	B0752LL57V	11	440.00	2022-09-09 00:00:00	2022-09-09 00:00:00
1797	MAON31OC437	B0B4F4QZ1H	11	19499.00	2022-09-09 00:00:00	2022-09-09 00:00:00
1798	MAON31OC437	B09LV1CMGH	4	2000.00	2022-09-09 00:00:00	2022-09-09 00:00:00
1799	IIIN74MA072	B07Z51CGGH	14	9999.00	2021-03-06 00:00:00	2021-03-06 00:00:00
1800	IIIN74MA072	B0758F7KK7	1	999.00	2021-03-06 00:00:00	2021-03-06 00:00:00
1801	IIIN74MA072	B07KY3FNQP	5	1290.00	2021-03-06 00:00:00	2021-03-06 00:00:00
1802	MIIN89OA237	B08WWKM5HQ	7	4780.00	2021-04-07 00:00:00	2021-04-07 00:00:00
1803	MIIN89OA237	B08FTFXNNB	9	1999.00	2021-04-07 00:00:00	2021-04-07 00:00:00
1804	MIIN89OA237	B0758F7KK7	5	999.00	2021-04-07 00:00:00	2021-04-07 00:00:00
1805	MIIN89OA237	B01IBRHE3E	10	499.00	2021-04-07 00:00:00	2021-04-07 00:00:00
1806	MIIN89OA237	B08CYPB15D	13	761.00	2021-04-07 00:00:00	2021-04-07 00:00:00
1807	MIIN89OA237	B08FD2VSD9	15	51990.00	2021-04-07 00:00:00	2021-04-07 00:00:00
1808	MIIN89OA237	B088GXTJM3	7	1299.00	2021-04-07 00:00:00	2021-04-07 00:00:00
1809	OAAN57NA741	B09H3BXWTK	3	2799.00	2021-01-28 00:00:00	2021-01-28 00:00:00
1810	OMPA92CM610	B08L5FM4JC	6	2400.00	2021-06-05 00:00:00	2021-06-05 00:00:00
1811	OMPA92CM610	B08J7VCT12	8	14999.00	2021-06-05 00:00:00	2021-06-05 00:00:00
1812	OMPA92CM610	B07W14CHV8	4	799.00	2021-06-05 00:00:00	2021-06-05 00:00:00
1813	ANPC91PI104	B08FTFXNNB	15	1999.00	2021-09-23 00:00:00	2021-09-23 00:00:00
1814	ANPC91PI104	B0BBN4DZBD	9	8999.00	2021-09-23 00:00:00	2021-09-23 00:00:00
1815	ANPC91PI104	B0BPCJM7TB	7	999.00	2021-09-23 00:00:00	2021-09-23 00:00:00
1816	ANPC91PI104	B09RMQYHLH	15	15999.00	2021-09-23 00:00:00	2021-09-23 00:00:00
1817	ANPC91PI104	B07QMRHWJD	13	999.00	2021-09-23 00:00:00	2021-09-23 00:00:00
1818	ANPC91PI104	B0B8CHJLWJ	9	1199.00	2021-09-23 00:00:00	2021-09-23 00:00:00
1819	ANPC91PI104	B09SB6SJB4	5	599.00	2021-09-23 00:00:00	2021-09-23 00:00:00
1820	CIAO12NP851	B0BP89YBC1	3	3500.00	2021-02-27 00:00:00	2021-02-27 00:00:00
1821	CIAO12NP851	B08CF4SCNP	9	599.00	2021-02-27 00:00:00	2021-02-27 00:00:00
1822	CIAO12NP851	B01486F4G6	3	3690.00	2021-02-27 00:00:00	2021-02-27 00:00:00
1823	CIAO12NP851	B07VV37FT4	4	250.00	2021-02-27 00:00:00	2021-02-27 00:00:00
1824	CIAO12NP851	B0B9XN9S3W	7	14990.00	2021-02-27 00:00:00	2021-02-27 00:00:00
1825	CIAO12NP851	B07RX42D3D	15	350.00	2021-02-27 00:00:00	2021-02-27 00:00:00
1826	NAPC36OA312	B0B7FJNSZR	5	19990.00	2021-12-25 00:00:00	2021-12-25 00:00:00
1827	NAPC36OA312	B07GNC2592	7	999.00	2021-12-25 00:00:00	2021-12-25 00:00:00
1828	NAPC36OA312	B093ZNQZ2Y	1	799.00	2021-12-25 00:00:00	2021-12-25 00:00:00
1829	NAPC36OA312	B0B4F4QZ1H	9	19499.00	2021-12-25 00:00:00	2021-12-25 00:00:00
1830	NAPC36OA312	B08HVJCW95	12	2199.00	2021-12-25 00:00:00	2021-12-25 00:00:00
1831	NAPC36OA312	B0B16KD737	3	15999.00	2021-12-25 00:00:00	2021-12-25 00:00:00
1832	OOCO86AA698	B08TDJNM3G	10	59.00	2021-05-21 00:00:00	2021-05-21 00:00:00
1833	OOCO86AA698	B07PFJ5W31	3	495.00	2021-05-21 00:00:00	2021-05-21 00:00:00
1834	OOCO86AA698	B07W9KYT62	4	3999.00	2021-05-21 00:00:00	2021-05-21 00:00:00
1835	IOCN43OM583	B09M3F4HGB	14	18990.00	2022-05-31 00:00:00	2022-05-31 00:00:00
1836	NPPP66MO749	B0941392C8	11	449.00	2022-12-23 00:00:00	2022-12-23 00:00:00
1837	NPPP66MO749	B08VB2CMR3	2	20990.00	2022-12-23 00:00:00	2022-12-23 00:00:00
1838	NPPP66MO749	B0846D5CBP	5	1295.00	2022-12-23 00:00:00	2022-12-23 00:00:00
1839	NPPP66MO749	B008FWZGSG	1	599.00	2022-12-23 00:00:00	2022-12-23 00:00:00
1840	NPPP66MO749	B01EY310UM	14	1545.00	2022-12-23 00:00:00	2022-12-23 00:00:00
1841	PAAA29AA944	B086199CWG	4	4799.00	2021-07-15 00:00:00	2021-07-15 00:00:00
1842	PAAA29AA944	B082T6GVG9	5	1500.00	2021-07-15 00:00:00	2021-07-15 00:00:00
1843	PAAA29AA944	B08HV83HL3	4	2199.00	2021-07-15 00:00:00	2021-07-15 00:00:00
1844	PAAA29AA944	B09KNMLH4Y	12	1999.00	2021-07-15 00:00:00	2021-07-15 00:00:00
1845	NNMP64NI174	B09NY6TRXG	6	11999.00	2022-12-26 00:00:00	2022-12-26 00:00:00
1846	NNMP64NI174	B08C4Z69LN	11	3500.00	2022-12-26 00:00:00	2022-12-26 00:00:00
1847	NNMP64NI174	B09SDDQQKP	13	3295.00	2022-12-26 00:00:00	2022-12-26 00:00:00
1848	NNMP64NI174	B09RQRZW2X	7	899.00	2022-12-26 00:00:00	2022-12-26 00:00:00
1849	NNMP64NI174	B09TT6BFDX	9	1999.00	2022-12-26 00:00:00	2022-12-26 00:00:00
1850	NNMP64NI174	B088WCFPQF	10	1500.00	2022-12-26 00:00:00	2022-12-26 00:00:00
1851	MOIC06PI413	B014I8SSD0	6	475.00	2021-01-28 00:00:00	2021-01-28 00:00:00
1852	MOIC06PI413	B01MRARGBW	1	400.00	2021-01-28 00:00:00	2021-01-28 00:00:00
1853	MOIC06PI413	B075JJ5NQC	13	4999.00	2021-01-28 00:00:00	2021-01-28 00:00:00
1854	MOIC06PI413	B09MZ6WZ6V	10	999.00	2021-01-28 00:00:00	2021-01-28 00:00:00
1855	MOIC06PI413	B07M69276N	14	2499.00	2021-01-28 00:00:00	2021-01-28 00:00:00
1856	MOIC06PI413	B0836JGZ74	2	2499.00	2021-01-28 00:00:00	2021-01-28 00:00:00
1857	IAMO55IP130	B071113J7M	14	7506.00	2021-08-22 00:00:00	2021-08-22 00:00:00
1858	IAMO55IP130	B00MFPCY5C	11	299.00	2021-08-22 00:00:00	2021-08-22 00:00:00
1859	PPIC53AO625	B09LHXNZLR	6	499.00	2022-03-12 00:00:00	2022-03-12 00:00:00
1860	PPIC53AO625	B0B3N8VG24	6	299.00	2022-03-12 00:00:00	2022-03-12 00:00:00
1861	ANMC28OA004	B07L1N3TJX	11	3499.00	2022-05-28 00:00:00	2022-05-28 00:00:00
1862	ANMC28OA004	B0836JGZ74	4	2499.00	2022-05-28 00:00:00	2022-05-28 00:00:00
1863	ANMC28OA004	B003L62T7W	3	375.00	2022-05-28 00:00:00	2022-05-28 00:00:00
1864	ANMC28OA004	B09V2Q4QVQ	5	1599.00	2022-05-28 00:00:00	2022-05-28 00:00:00
1865	CMNN69IA436	B09NJN8L25	11	199.00	2022-01-30 00:00:00	2022-01-30 00:00:00
1866	CMNN69IA436	B09B125CFJ	7	799.00	2022-01-30 00:00:00	2022-01-30 00:00:00
1867	CMNN69IA436	B0BMXMLSMM	11	999.00	2022-01-30 00:00:00	2022-01-30 00:00:00
1868	CMNN69IA436	B09YV4RG4D	6	7999.00	2022-01-30 00:00:00	2022-01-30 00:00:00
1869	CMNN69IA436	B07QZ3CZ48	10	1290.00	2022-01-30 00:00:00	2022-01-30 00:00:00
1870	CMNN69IA436	B07ZJND9B9	2	1990.00	2022-01-30 00:00:00	2022-01-30 00:00:00
1871	CMNN69IA436	B081RLM75M	1	599.00	2022-01-30 00:00:00	2022-01-30 00:00:00
1872	AACP34AA378	B0B15GSPQW	8	70900.00	2021-09-19 00:00:00	2021-09-19 00:00:00
1873	AACP34AA378	B09SB6SJB4	4	599.00	2021-09-19 00:00:00	2021-09-19 00:00:00
1874	AACP34AA378	B07SBGFDX9	4	120.00	2021-09-19 00:00:00	2021-09-19 00:00:00
1875	AMPN15PN006	B09HCH3JZG	12	1899.00	2021-07-29 00:00:00	2021-07-29 00:00:00
1876	AMPN15PN006	B08GJ57MKL	4	59900.00	2021-07-29 00:00:00	2021-07-29 00:00:00
1877	COAN17IA806	B08DPLCM6T	4	21990.00	2021-11-27 00:00:00	2021-11-27 00:00:00
1878	COAN17IA806	B078JF6X9B	12	6070.00	2021-11-27 00:00:00	2021-11-27 00:00:00
1879	AAAP73CA982	B0BQ3K23Y1	5	499.00	2021-10-20 00:00:00	2021-10-20 00:00:00
1880	MCAI39AO208	B09F9YQQ7B	12	24999.00	2021-09-15 00:00:00	2021-09-15 00:00:00
1881	MCAI39AO208	B08PSQRW2T	12	1099.00	2021-09-15 00:00:00	2021-09-15 00:00:00
1882	MCAI39AO208	B00GHL8VP2	15	4990.00	2021-09-15 00:00:00	2021-09-15 00:00:00
1883	MCAI39AO208	B09NY6TRXG	8	11999.00	2021-09-15 00:00:00	2021-09-15 00:00:00
1884	MCAI39AO208	B08VRMK55F	8	699.00	2021-09-15 00:00:00	2021-09-15 00:00:00
1885	MCAI39AO208	B09ZPL5VYM	9	499.00	2021-09-15 00:00:00	2021-09-15 00:00:00
1886	MCAI39AO208	B07F6GXNPB	1	500.00	2021-09-15 00:00:00	2021-09-15 00:00:00
1887	AIIA72AC054	B0B2RBP83P	1	59890.00	2021-02-11 00:00:00	2021-02-11 00:00:00
1888	AIIA72AC054	B08BJN4MP3	3	24850.00	2021-02-11 00:00:00	2021-02-11 00:00:00
1889	AIIA72AC054	B071R3LHFM	15	5500.00	2021-02-11 00:00:00	2021-02-11 00:00:00
1890	AIIA72AC054	B09PTT8DZF	9	670.00	2021-02-11 00:00:00	2021-02-11 00:00:00
1891	AIIA72AC054	B08C7TYHPB	3	1490.00	2021-02-11 00:00:00	2021-02-11 00:00:00
1892	MONI02CN749	B08Y5KXR6Z	8	800.00	2021-01-17 00:00:00	2021-01-17 00:00:00
1893	MONI02CN749	B07DKZCZ89	5	499.00	2021-01-17 00:00:00	2021-01-17 00:00:00
1894	MONI02CN749	B09L8DT7D6	4	499.00	2021-01-17 00:00:00	2021-01-17 00:00:00
1895	MONI02CN749	B09474JWN6	3	1500.00	2021-01-17 00:00:00	2021-01-17 00:00:00
1896	MONI02CN749	B07LGT55SJ	10	1099.00	2021-01-17 00:00:00	2021-01-17 00:00:00
1897	INAM58AC598	B00YQLG7GK	2	1695.00	2021-01-24 00:00:00	2021-01-24 00:00:00
1898	AAIA08MI133	B08G1RW2Q3	10	799.00	2022-09-18 00:00:00	2022-09-18 00:00:00
1899	AAIA08MI133	B09V12K8NT	4	6990.00	2022-09-18 00:00:00	2022-09-18 00:00:00
1900	CNAA76ON346	B0941392C8	8	449.00	2022-09-29 00:00:00	2022-09-29 00:00:00
1901	CNAA87CA329	B09ZQK9X8G	11	5999.00	2022-10-26 00:00:00	2022-10-26 00:00:00
1902	CNAA87CA329	B094JB13XL	15	5999.00	2022-10-26 00:00:00	2022-10-26 00:00:00
1903	CNAA87CA329	B0B4T6MR8N	7	800.00	2022-10-26 00:00:00	2022-10-26 00:00:00
1904	CNAA87CA329	B0B7DHSKS7	15	5299.00	2022-10-26 00:00:00	2022-10-26 00:00:00
1905	CNAA87CA329	B00P0R95EA	10	640.00	2022-10-26 00:00:00	2022-10-26 00:00:00
1906	CNAA87CA329	B0B694PXQJ	14	2999.00	2022-10-26 00:00:00	2022-10-26 00:00:00
1907	CNAA87CA329	B08D77XZX5	6	2499.00	2022-10-26 00:00:00	2022-10-26 00:00:00
1908	NCCI50NC073	B09NL7LBWT	9	1999.00	2021-02-19 00:00:00	2021-02-19 00:00:00
1909	NCCI50NC073	B07SLMR1K6	4	1350.00	2021-02-19 00:00:00	2021-02-19 00:00:00
1910	NCCI50NC073	B07KR5P3YD	13	699.00	2021-02-19 00:00:00	2021-02-19 00:00:00
1911	NCCI50NC073	B0B2CPVXHX	13	1499.00	2021-02-19 00:00:00	2021-02-19 00:00:00
1912	MAPA28IN803	B0B4HJNPV4	8	999.00	2021-08-05 00:00:00	2021-08-05 00:00:00
1913	MAPA28IN803	B09KGV7WSV	11	5999.00	2021-08-05 00:00:00	2021-08-05 00:00:00
1914	MAPA28IN803	B09T39K9YL	12	24999.00	2021-08-05 00:00:00	2021-08-05 00:00:00
1915	MAPA28IN803	B09MQ9PDHR	4	1999.00	2021-08-05 00:00:00	2021-08-05 00:00:00
1916	MAPA28IN803	B0B694PXQJ	15	2999.00	2021-08-05 00:00:00	2021-08-05 00:00:00
1917	OCPI95AC383	B07TC9F7PN	11	16899.00	2021-11-15 00:00:00	2021-11-15 00:00:00
1918	OCPI95AC383	B09HN7LD5L	13	4500.00	2021-11-15 00:00:00	2021-11-15 00:00:00
1919	OCPI95AC383	B099Z83VRC	12	1790.00	2021-11-15 00:00:00	2021-11-15 00:00:00
1920	OCPI95AC383	B09WRMNJ9G	4	38999.00	2021-11-15 00:00:00	2021-11-15 00:00:00
1921	OCPI95AC383	B074CWD7MS	1	2495.00	2021-11-15 00:00:00	2021-11-15 00:00:00
1922	APAC91IO592	B09KLVMZ3B	8	399.00	2022-01-12 00:00:00	2022-01-12 00:00:00
1923	APAC91IO592	B01M5B0TPW	6	2490.00	2022-01-12 00:00:00	2022-01-12 00:00:00
1924	CAAC19IO329	B09PDZNSBG	15	6700.00	2021-01-02 00:00:00	2021-01-02 00:00:00
1925	CAAC19IO329	B00Y4ORQ46	14	795.00	2021-01-02 00:00:00	2021-01-02 00:00:00
1926	CAAC19IO329	B0B2DZ5S6R	12	1299.00	2021-01-02 00:00:00	2021-01-02 00:00:00
1927	CAAC19IO329	B07WDKLRM4	2	19999.00	2021-01-02 00:00:00	2021-01-02 00:00:00
1928	IPIA01CC712	B00P93X6EK	8	160.00	2021-08-04 00:00:00	2021-08-04 00:00:00
1929	ACNA54MA642	B0B82YGCF6	14	3499.00	2021-06-09 00:00:00	2021-06-09 00:00:00
1930	ACNA54MA642	B06XMZV7RH	14	499.00	2021-06-09 00:00:00	2021-06-09 00:00:00
1931	ACNA54MA642	B07MP21WJD	14	299.00	2021-06-09 00:00:00	2021-06-09 00:00:00
1932	ACNA54MA642	B082T6GVLJ	2	1809.00	2021-06-09 00:00:00	2021-06-09 00:00:00
1933	ACNA54MA642	B09CMP1SC8	4	499.00	2021-06-09 00:00:00	2021-06-09 00:00:00
1934	CIOO49AA881	B08WWKM5HQ	10	4780.00	2021-09-05 00:00:00	2021-09-05 00:00:00
1935	AINP62NN491	B09SZ5TWHW	9	2890.00	2022-07-24 00:00:00	2022-07-24 00:00:00
1936	AINP62NN491	B0085IATT6	14	1800.00	2022-07-24 00:00:00	2022-07-24 00:00:00
1937	AINP62NN491	B0B12K5BPM	15	2299.00	2022-07-24 00:00:00	2022-07-24 00:00:00
1938	AINP62NN491	B0B8ZKWGKD	10	1052.00	2022-07-24 00:00:00	2022-07-24 00:00:00
1939	AINP62NN491	B0718ZN31Q	8	4999.00	2022-07-24 00:00:00	2022-07-24 00:00:00
1940	AINP62NN491	B0BHVPTM2C	14	1949.00	2022-07-24 00:00:00	2022-07-24 00:00:00
1941	MMAC31IO429	B07WKB69RS	9	5550.00	2022-01-13 00:00:00	2022-01-13 00:00:00
1942	MMAC31IO429	B09RX1FK54	12	999.00	2022-01-13 00:00:00	2022-01-13 00:00:00
1943	MMAC31IO429	B0B9BXKBC7	15	3999.00	2022-01-13 00:00:00	2022-01-13 00:00:00
1944	MMAC31IO429	B099S26HWG	12	300.00	2022-01-13 00:00:00	2022-01-13 00:00:00
1945	MMAC31IO429	B09SB6SJB4	15	599.00	2022-01-13 00:00:00	2022-01-13 00:00:00
1946	MMAC31IO429	B0BGSV43WY	1	7999.00	2022-01-13 00:00:00	2022-01-13 00:00:00
1947	MOPA57MO547	B0971DWFDT	7	699.00	2021-02-15 00:00:00	2021-02-15 00:00:00
1948	MOPA57MO547	B07222HQKP	7	999.00	2021-02-15 00:00:00	2021-02-15 00:00:00
1949	MOPA57MO547	B082T6GVLJ	13	1809.00	2021-02-15 00:00:00	2021-02-15 00:00:00
1950	MOPA57MO547	B0B6F98KJJ	15	29999.00	2021-02-15 00:00:00	2021-02-15 00:00:00
1951	NANM67IP105	B09RMQYHLH	15	15999.00	2022-06-19 00:00:00	2022-06-19 00:00:00
1952	OCAP43CM319	B082ZQ4479	4	4330.00	2022-03-26 00:00:00	2022-03-26 00:00:00
1953	OCAP43CM319	B07W9KYT62	6	3999.00	2022-03-26 00:00:00	2022-03-26 00:00:00
1954	OCAP43CM319	B0B2PQL5N3	13	999.00	2022-03-26 00:00:00	2022-03-26 00:00:00
1955	OCAP43CM319	B07XLML2YS	9	3299.00	2022-03-26 00:00:00	2022-03-26 00:00:00
1956	OCAP43CM319	B0B2DD66GS	15	2900.00	2022-03-26 00:00:00	2022-03-26 00:00:00
1957	OCAP43CM319	B01MRARGBW	3	400.00	2022-03-26 00:00:00	2022-03-26 00:00:00
1958	AMPM78IN378	B00Y4ORQ46	5	795.00	2022-12-16 00:00:00	2022-12-16 00:00:00
1959	AMPM78IN378	B083RD1J99	11	399.00	2022-12-16 00:00:00	2022-12-16 00:00:00
1960	AMPM78IN378	B08Y5QJXSR	10	5190.00	2022-12-16 00:00:00	2022-12-16 00:00:00
1961	APNN12PP169	B00E3DVQFS	1	1109.00	2022-11-11 00:00:00	2022-11-11 00:00:00
1962	APNN12PP169	B09GFWJDY1	5	1499.00	2022-11-11 00:00:00	2022-11-11 00:00:00
1963	APNN12PP169	B07Y9PY6Y1	14	8820.00	2022-11-11 00:00:00	2022-11-11 00:00:00
1964	APNN12PP169	B09PNKXSKF	6	3990.00	2022-11-11 00:00:00	2022-11-11 00:00:00
1965	PIOO43OM138	B08XNL93PL	11	2999.00	2022-05-07 00:00:00	2022-05-07 00:00:00
1966	PIOO43OM138	B00J5DYCCA	13	1890.00	2022-05-07 00:00:00	2022-05-07 00:00:00
1967	PIOO43OM138	B0814ZY6FP	13	1199.00	2022-05-07 00:00:00	2022-05-07 00:00:00
1968	PIOO43OM138	B08HDJ86NZ	13	699.00	2022-05-07 00:00:00	2022-05-07 00:00:00
1969	PIOO43OM138	B009P2L7CO	14	1920.00	2022-05-07 00:00:00	2022-05-07 00:00:00
1970	PIOO43OM138	B00N1U7JXM	15	175.00	2022-05-07 00:00:00	2022-05-07 00:00:00
1971	PIOO43OM138	B085DTN6R2	5	899.00	2022-05-07 00:00:00	2022-05-07 00:00:00
1972	OAPA60MA512	B00GG59HU2	14	599.00	2021-09-21 00:00:00	2021-09-21 00:00:00
1973	OAAP24AC841	B09GP6FBZT	13	999.00	2022-02-05 00:00:00	2022-02-05 00:00:00
1974	OAAP24AC841	B0B9RZ4G4W	13	1699.00	2022-02-05 00:00:00	2022-02-05 00:00:00
1975	OAAP24AC841	B08QJJCY2Q	3	299.00	2022-02-05 00:00:00	2022-02-05 00:00:00
1976	OAAP24AC841	B0B65P827P	15	549.00	2022-02-05 00:00:00	2022-02-05 00:00:00
1977	OAAP24AC841	B00LY17RHI	11	225.00	2022-02-05 00:00:00	2022-02-05 00:00:00
1978	OAAP24AC841	B00B3VFJY2	6	980.00	2022-02-05 00:00:00	2022-02-05 00:00:00
1979	AMOI58IA082	B09BW334ML	13	1499.00	2022-03-05 00:00:00	2022-03-05 00:00:00
1980	AMOI58IA082	B09V2Q4QVQ	6	1599.00	2022-03-05 00:00:00	2022-03-05 00:00:00
1981	AMOI58IA082	B098JYT4SY	7	1190.00	2022-03-05 00:00:00	2022-03-05 00:00:00
1982	AMOI58IA082	B07VQGVL68	1	499.00	2022-03-05 00:00:00	2022-03-05 00:00:00
1983	AMOI58IA082	B086394NY5	9	2490.00	2022-03-05 00:00:00	2022-03-05 00:00:00
1984	AMOI58IA082	B0BK1K598K	12	1499.00	2022-03-05 00:00:00	2022-03-05 00:00:00
1985	AMOI58IA082	B07QZ3CZ48	1	1290.00	2022-03-05 00:00:00	2022-03-05 00:00:00
1986	POPO53IA002	B08DCVRW98	5	499.00	2021-05-08 00:00:00	2021-05-08 00:00:00
1987	POPO53IA002	B0B2C5MJN6	8	54990.00	2021-05-08 00:00:00	2021-05-08 00:00:00
1988	POPO53IA002	B00GZLB57U	1	699.00	2021-05-08 00:00:00	2021-05-08 00:00:00
1989	POPO53IA002	B082T6GVLJ	9	1809.00	2021-05-08 00:00:00	2021-05-08 00:00:00
1990	POPO53IA002	B083M7WPZD	1	5999.00	2021-05-08 00:00:00	2021-05-08 00:00:00
1991	POPO53IA002	B08YDFX7Y1	10	449.00	2021-05-08 00:00:00	2021-05-08 00:00:00
1992	POPO53IA002	B09C635BMM	14	999.00	2021-05-08 00:00:00	2021-05-08 00:00:00
1993	OPOA60OM525	B09Y14JLP3	15	499.00	2022-05-23 00:00:00	2022-05-23 00:00:00
1994	OPOA60OM525	B08K4RDQ71	9	999.00	2022-05-23 00:00:00	2022-05-23 00:00:00
1995	OPOA60OM525	B09MDCZJXS	11	5499.00	2022-05-23 00:00:00	2022-05-23 00:00:00
1996	OPOA60OM525	B06XR9PR5X	13	600.00	2022-05-23 00:00:00	2022-05-23 00:00:00
1997	OPOA60OM525	B07KSMBL2H	12	700.00	2022-05-23 00:00:00	2022-05-23 00:00:00
1998	NCAA03OI363	B00KIE28X0	7	310.00	2021-04-06 00:00:00	2021-04-06 00:00:00
1999	PONC62MO929	B0B15CPR37	15	47900.00	2022-05-19 00:00:00	2022-05-19 00:00:00
2000	PONC62MO929	B079Y6JZC8	15	299.00	2022-05-19 00:00:00	2022-05-19 00:00:00
2001	PONC62MO929	B00RGLI0ZS	7	599.00	2022-05-19 00:00:00	2022-05-19 00:00:00
2002	AOMP24NP849	B09LMMFW3S	5	399.00	2022-11-05 00:00:00	2022-11-05 00:00:00
2003	CICM47II812	B01N1XVVLC	14	15999.00	2022-07-12 00:00:00	2022-07-12 00:00:00
2004	CICM47II812	B0B54Y2SNX	5	3990.00	2022-07-12 00:00:00	2022-07-12 00:00:00
2005	CMMA41OA442	B07K19NYZ8	2	3290.00	2022-12-11 00:00:00	2022-12-11 00:00:00
2006	CMMA41OA442	B08PFSZ7FH	14	1499.00	2022-12-11 00:00:00	2022-12-11 00:00:00
2007	CMMA41OA442	B09NL7LBWT	6	1999.00	2022-12-11 00:00:00	2022-12-11 00:00:00
2008	NPAC39OC587	B07FJNNZCJ	1	13049.00	2021-09-12 00:00:00	2021-09-12 00:00:00
2009	NPAC39OC587	B012ELCYUG	10	635.00	2021-09-12 00:00:00	2021-09-12 00:00:00
2010	NPAC39OC587	B0BFBNXS94	9	1499.00	2021-09-12 00:00:00	2021-09-12 00:00:00
2011	NPAC39OC587	B09KGV7WSV	14	5999.00	2021-09-12 00:00:00	2021-09-12 00:00:00
2012	NPAC39OC587	B08YD264ZS	13	2499.00	2021-09-12 00:00:00	2021-09-12 00:00:00
2013	AIOP06NC883	B0BCYQY9X5	1	16490.00	2022-02-09 00:00:00	2022-02-09 00:00:00
2014	AIOP06NC883	B08WKFSN84	15	1099.00	2022-02-09 00:00:00	2022-02-09 00:00:00
2015	AIOP06NC883	B00NH11PEY	12	750.00	2022-02-09 00:00:00	2022-02-09 00:00:00
2016	AIOP06NC883	B09WN3SRC7	4	139900.00	2022-02-09 00:00:00	2022-02-09 00:00:00
2017	AIOP06NC883	B084BR3QX8	7	999.00	2022-02-09 00:00:00	2022-02-09 00:00:00
2018	AIOP06NC883	B07KNM95JK	2	1150.00	2022-02-09 00:00:00	2022-02-09 00:00:00
2019	AICN84OA165	B096TWZRJC	13	1899.00	2021-10-25 00:00:00	2021-10-25 00:00:00
2020	AICN84OA165	B09DSXK8JX	9	19499.00	2021-10-25 00:00:00	2021-10-25 00:00:00
2021	AICN84OA165	B09NL7LBWT	7	1999.00	2021-10-25 00:00:00	2021-10-25 00:00:00
2022	AICN84OA165	B0856HNMR7	10	2499.00	2021-10-25 00:00:00	2021-10-25 00:00:00
2023	AICN84OA165	B092X94QNQ	8	3990.00	2021-10-25 00:00:00	2021-10-25 00:00:00
2024	AICN84OA165	B00LM4X3XE	13	100.00	2021-10-25 00:00:00	2021-10-25 00:00:00
2025	AICN84OA165	B0BNDGL26T	6	2199.00	2021-10-25 00:00:00	2021-10-25 00:00:00
2026	MANA11OM393	B07Y1RCCW5	15	2550.00	2021-05-12 00:00:00	2021-05-12 00:00:00
2027	MANA11OM393	B085CZ3SR1	5	599.00	2021-05-12 00:00:00	2021-05-12 00:00:00
2028	MANA11OM393	B08DPLCM6T	14	21990.00	2021-05-12 00:00:00	2021-05-12 00:00:00
2029	MANA11OM393	B07CD2BN46	7	599.00	2021-05-12 00:00:00	2021-05-12 00:00:00
2030	MANA11OM393	B08XXVXP3J	3	999.00	2021-05-12 00:00:00	2021-05-12 00:00:00
2031	MANA11OM393	B00DJ5N9VK	15	150.00	2021-05-12 00:00:00	2021-05-12 00:00:00
2032	MANA11OM393	B098NS6PVG	1	349.00	2021-05-12 00:00:00	2021-05-12 00:00:00
2033	NOIC38IA201	B0B3RHX6B6	15	399.00	2022-01-04 00:00:00	2022-01-04 00:00:00
2034	NOIC38IA201	B09NS5TKPN	4	75990.00	2022-01-04 00:00:00	2022-01-04 00:00:00
2035	NOIC38IA201	B09GFN8WZL	11	999.00	2022-01-04 00:00:00	2022-01-04 00:00:00
2036	NOIC38IA201	B07Z3K96FR	3	1499.00	2022-01-04 00:00:00	2022-01-04 00:00:00
2037	NOIC38IA201	B09NNZ1GF7	10	999.00	2022-01-04 00:00:00	2022-01-04 00:00:00
2038	NOIC38IA201	B00NM6MO26	15	3945.00	2022-01-04 00:00:00	2022-01-04 00:00:00
2039	MNAN89CN428	B009P2L7CO	6	1920.00	2021-09-13 00:00:00	2021-09-13 00:00:00
2040	ANCN14AC337	B0B997FBZT	15	49990.00	2021-04-29 00:00:00	2021-04-29 00:00:00
2041	ANCN14AC337	B094DQWV9B	8	399.00	2021-04-29 00:00:00	2021-04-29 00:00:00
2042	ANCN14AC337	B01LWYDEQ7	12	495.00	2021-04-29 00:00:00	2021-04-29 00:00:00
2043	ANCN14AC337	B07SLMR1K6	13	1350.00	2021-04-29 00:00:00	2021-04-29 00:00:00
2044	ANCN14AC337	B0BMM7R92G	1	999.00	2021-04-29 00:00:00	2021-04-29 00:00:00
2045	ANCN14AC337	B07WHQBZLS	5	21990.00	2021-04-29 00:00:00	2021-04-29 00:00:00
2046	IANI61AI979	B08VJFYH6N	11	1620.00	2022-02-21 00:00:00	2022-02-21 00:00:00
2047	IANI61AI979	B01N90RZ4M	12	499.00	2022-02-21 00:00:00	2022-02-21 00:00:00
2048	IANI61AI979	B00YQLG7GK	13	1695.00	2022-02-21 00:00:00	2022-02-21 00:00:00
2049	IANI61AI979	B01L6MT7E0	11	11995.00	2022-02-21 00:00:00	2022-02-21 00:00:00
2050	INNI63AO211	B08TZD7FQN	12	599.00	2021-11-07 00:00:00	2021-11-07 00:00:00
2051	INNI63AO211	B09KH58JZR	14	399.00	2021-11-07 00:00:00	2021-11-07 00:00:00
2052	INNI63AO211	B00LHZWD0C	3	315.00	2021-11-07 00:00:00	2021-11-07 00:00:00
2053	INNI63AO211	B07RCGTZ4M	4	9999.00	2021-11-07 00:00:00	2021-11-07 00:00:00
2054	INNI63AO211	B09MJ77786	5	49999.00	2021-11-07 00:00:00	2021-11-07 00:00:00
2055	INNI63AO211	B0188KPKB2	12	9455.00	2021-11-07 00:00:00	2021-11-07 00:00:00
2056	INNI63AO211	B0989W6J2F	7	1799.00	2021-11-07 00:00:00	2021-11-07 00:00:00
2057	OAOA54IN281	B0BHYJ8CVF	6	1499.00	2022-12-01 00:00:00	2022-12-01 00:00:00
2058	OAOA54IN281	B0B9BXKBC7	1	3999.00	2022-12-01 00:00:00	2022-12-01 00:00:00
2059	OAOA54IN281	B09BL2KHQW	2	260.00	2022-12-01 00:00:00	2022-12-01 00:00:00
2060	IOAP27CA709	B08CTQP51L	4	1499.00	2021-04-26 00:00:00	2021-04-26 00:00:00
2061	IOAP27CA709	B0BBW521YC	6	999.00	2021-04-26 00:00:00	2021-04-26 00:00:00
2062	IOAP27CA709	B07VQGVL68	12	499.00	2021-04-26 00:00:00	2021-04-26 00:00:00
2063	NCPO43NI626	B08MWJTST6	5	1299.00	2021-10-21 00:00:00	2021-10-21 00:00:00
2064	NCPO43NI626	B08G43CCLC	13	999.00	2021-10-21 00:00:00	2021-10-21 00:00:00
2065	NCPO43NI626	B09Y5FZK9N	13	1545.00	2021-10-21 00:00:00	2021-10-21 00:00:00
2066	NCPO43NI626	B07MP21WJD	13	299.00	2021-10-21 00:00:00	2021-10-21 00:00:00
2067	IPAI50CO351	B09RQRZW2X	5	899.00	2021-01-11 00:00:00	2021-01-11 00:00:00
2068	AMPA68NA593	B08BQ947H3	4	149.00	2021-02-27 00:00:00	2021-02-27 00:00:00
2069	AAAO32OA347	B0BF563HB4	5	19999.00	2022-12-08 00:00:00	2022-12-08 00:00:00
2070	AAAO32OA347	B0B61GCHC1	12	999.00	2022-12-08 00:00:00	2022-12-08 00:00:00
2071	AAAO32OA347	B07CVR2L5K	2	2695.00	2022-12-08 00:00:00	2022-12-08 00:00:00
2072	AAAO32OA347	B0B31FR4Y2	11	9999.00	2022-12-08 00:00:00	2022-12-08 00:00:00
2073	AAAO32OA347	B078JT7LTD	2	8073.00	2022-12-08 00:00:00	2022-12-08 00:00:00
2074	AAAO32OA347	B01M6453MB	14	3045.00	2022-12-08 00:00:00	2022-12-08 00:00:00
2075	AAAO32OA347	B0B5V47VK4	9	49999.00	2022-12-08 00:00:00	2022-12-08 00:00:00
2076	CIMC67AP664	B0B9JZW1SQ	11	1200.00	2021-05-22 00:00:00	2021-05-22 00:00:00
2077	CIMC67AP664	B0BNLFQDG2	7	2199.00	2021-05-22 00:00:00	2021-05-22 00:00:00
2078	CIMC67AP664	B09DDCQFMT	14	1999.00	2021-05-22 00:00:00	2021-05-22 00:00:00
2079	AIAN56IA130	B00N1U7JXM	14	175.00	2022-06-26 00:00:00	2022-06-26 00:00:00
2080	AIAN56IA130	B0B8ZKWGKD	5	1052.00	2022-06-26 00:00:00	2022-06-26 00:00:00
2081	AIAN56IA130	B07WGPBXY9	7	1249.00	2022-06-26 00:00:00	2022-06-26 00:00:00
2082	AIAN56IA130	B09NFSHCWN	7	1899.00	2022-06-26 00:00:00	2022-06-26 00:00:00
2083	AIAN56IA130	B0B3XY5YT4	8	49990.00	2022-06-26 00:00:00	2022-06-26 00:00:00
2084	AIAN56IA130	B0BHYLCL19	5	399.00	2022-06-26 00:00:00	2022-06-26 00:00:00
2085	AIAN56IA130	B0B2CPVXHX	7	1499.00	2022-06-26 00:00:00	2022-06-26 00:00:00
2086	IIAC98PA691	B09CTRPSJR	4	237.00	2021-09-26 00:00:00	2021-09-26 00:00:00
2087	IIAC98PA691	B0B54Y2SNX	5	3990.00	2021-09-26 00:00:00	2021-09-26 00:00:00
2088	IIAC98PA691	B08WJ86PV2	11	990.00	2021-09-26 00:00:00	2021-09-26 00:00:00
2089	IIAC98PA691	B0B694PXQJ	12	2999.00	2021-09-26 00:00:00	2021-09-26 00:00:00
2090	IIAC98PA691	B084PJSSQ1	1	3000.00	2021-09-26 00:00:00	2021-09-26 00:00:00
2091	IIAC98PA691	B0BNV7JM5Y	2	7990.00	2021-09-26 00:00:00	2021-09-26 00:00:00
2092	IIAC98PA691	B07XCM6T4N	4	1499.00	2021-09-26 00:00:00	2021-09-26 00:00:00
2093	COAI00AM667	B0B8VQ7KDS	15	2499.00	2022-03-05 00:00:00	2022-03-05 00:00:00
2094	COAI00AM667	B085LPT5F4	15	2800.00	2022-03-05 00:00:00	2022-03-05 00:00:00
2095	COAI00AM667	B08PSVBB2X	10	1099.00	2022-03-05 00:00:00	2022-03-05 00:00:00
2096	COAI00AM667	B082LZGK39	2	299.00	2022-03-05 00:00:00	2022-03-05 00:00:00
2097	MPMA37MP383	B0B4G2MWSB	12	999.00	2022-09-02 00:00:00	2022-09-02 00:00:00
2098	MPMA37MP383	B01M6453MB	7	3045.00	2022-09-02 00:00:00	2022-09-02 00:00:00
2099	MPMA37MP383	B0B3RS9DNF	7	9999.00	2022-09-02 00:00:00	2022-09-02 00:00:00
2100	MPMA37MP383	B09MKP344P	9	12999.00	2022-09-02 00:00:00	2022-09-02 00:00:00
2101	NAON41PA309	B083GKDRKR	5	2995.00	2022-04-21 00:00:00	2022-04-21 00:00:00
2102	MIOI29AA444	B01I1LDZGA	1	1775.00	2022-09-19 00:00:00	2022-09-19 00:00:00
2103	MIOI29AA444	B00MFPCY5C	6	299.00	2022-09-19 00:00:00	2022-09-19 00:00:00
2104	MIOI29AA444	B016XVRKZM	13	4100.00	2022-09-19 00:00:00	2022-09-19 00:00:00
2105	MIOI29AA444	B09CMM3VGK	5	499.00	2022-09-19 00:00:00	2022-09-19 00:00:00
2106	MIOI29AA444	B075JJ5NQC	7	4999.00	2022-09-19 00:00:00	2022-09-19 00:00:00
2107	MIOI29AA444	B089WB69Y1	4	649.00	2022-09-19 00:00:00	2022-09-19 00:00:00
2108	CMCM81MC064	B0BBN56J5H	1	8999.00	2022-01-01 00:00:00	2022-01-01 00:00:00
2109	CMCM81MC064	B089BDBDGM	8	249.00	2022-01-01 00:00:00	2022-01-01 00:00:00
2110	CMCM81MC064	B09TMZ1MF8	6	4000.00	2022-01-01 00:00:00	2022-01-01 00:00:00
2111	CMCM81MC064	B086394NY5	11	2490.00	2022-01-01 00:00:00	2022-01-01 00:00:00
2112	AMPO31AN853	B09GYBZPHF	7	2499.00	2021-05-02 00:00:00	2021-05-02 00:00:00
2113	AMPO31AN853	B09QGZFBPM	8	999.00	2021-05-02 00:00:00	2021-05-02 00:00:00
2114	AMPO31AN853	B0B3RS9DNF	5	9999.00	2021-05-02 00:00:00	2021-05-02 00:00:00
2115	AMPO31AN853	B09X7DY7Q4	13	1800.00	2021-05-02 00:00:00	2021-05-02 00:00:00
2116	AMPO31AN853	B07Z1Z77ZZ	5	999.00	2021-05-02 00:00:00	2021-05-02 00:00:00
2117	AOPP04AP119	B09XXZXQC1	12	37999.00	2022-02-25 00:00:00	2022-02-25 00:00:00
2118	OOMM34NN204	B00N1U7JXM	5	175.00	2022-02-22 00:00:00	2022-02-22 00:00:00
2119	OOMM34NN204	B07P434WJY	15	1999.00	2022-02-22 00:00:00	2022-02-22 00:00:00
2120	OOMM34NN204	B0085W2MUQ	6	970.00	2022-02-22 00:00:00	2022-02-22 00:00:00
2121	OOMM34NN204	B09ZVJXN5L	13	999.00	2022-02-22 00:00:00	2022-02-22 00:00:00
2122	OOMM34NN204	B0B8SSC5D9	14	1999.00	2022-02-22 00:00:00	2022-02-22 00:00:00
2123	OOMM34NN204	B07JW9H4J1	7	1099.00	2022-02-22 00:00:00	2022-02-22 00:00:00
2124	OOMM34NN204	B07TXCY3YK	11	3899.00	2022-02-22 00:00:00	2022-02-22 00:00:00
2125	AOPA80II895	B0B5DDJNH4	9	7990.00	2022-08-05 00:00:00	2022-08-05 00:00:00
2126	AOPA80II895	B09QGZM8QB	14	999.00	2022-08-05 00:00:00	2022-08-05 00:00:00
2127	AOPA80II895	B07R679HTT	3	23999.00	2022-08-05 00:00:00	2022-08-05 00:00:00
2128	AOPA80II895	B08TZD7FQN	14	599.00	2022-08-05 00:00:00	2022-08-05 00:00:00
2129	AOPA80II895	B08HV83HL3	3	2199.00	2022-08-05 00:00:00	2022-08-05 00:00:00
2130	AOPA80II895	B09P858DK8	7	1999.00	2022-08-05 00:00:00	2022-08-05 00:00:00
2131	AOPA80II895	B01M5967SY	4	999.00	2022-08-05 00:00:00	2022-08-05 00:00:00
2132	NIAC19MM103	B00LY17RHI	7	225.00	2021-07-23 00:00:00	2021-07-23 00:00:00
2133	NIAC19MM103	B09BNXQ6BR	4	6499.00	2021-07-23 00:00:00	2021-07-23 00:00:00
2134	MPAN95AP710	B09DDCQFMT	15	1999.00	2022-03-18 00:00:00	2022-03-18 00:00:00
2135	MPAN95AP710	B08RHPDNVV	9	599.00	2022-03-18 00:00:00	2022-03-18 00:00:00
2136	MPAN95AP710	B06XR9PR5X	7	600.00	2022-03-18 00:00:00	2022-03-18 00:00:00
2137	MPAN95AP710	B07TTSS5MP	3	3299.00	2022-03-18 00:00:00	2022-03-18 00:00:00
2138	MPAN95AP710	B084BR3QX8	4	999.00	2022-03-18 00:00:00	2022-03-18 00:00:00
2139	MPAN95AP710	B08VB57558	2	74999.00	2022-03-18 00:00:00	2022-03-18 00:00:00
2140	OAII73NM675	B07DJLFMPS	4	1600.00	2022-07-01 00:00:00	2022-07-01 00:00:00
2141	OAII73NM675	B09V2Q4QVQ	1	1599.00	2022-07-01 00:00:00	2022-07-01 00:00:00
2142	OAII73NM675	B08Y57TPDM	2	200.00	2022-07-01 00:00:00	2022-07-01 00:00:00
2143	INAI25MM183	B08W9BK4MD	11	899.00	2021-01-09 00:00:00	2021-01-09 00:00:00
2144	INAI25MM183	B09YV4MW2T	3	9999.00	2021-01-09 00:00:00	2021-01-09 00:00:00
2145	INAI25MM183	B00V9NHDI4	10	3799.00	2021-01-09 00:00:00	2021-01-09 00:00:00
2146	INAI25MM183	B099FDW2ZF	1	1499.00	2021-01-09 00:00:00	2021-01-09 00:00:00
2147	INAI25MM183	B00A7PLVU6	9	899.00	2021-01-09 00:00:00	2021-01-09 00:00:00
2148	INAI25MM183	B07DGD4Z4C	15	5795.00	2021-01-09 00:00:00	2021-01-09 00:00:00
2149	COAA45NI130	B01CS4A5V4	6	1690.00	2021-04-23 00:00:00	2021-04-23 00:00:00
2150	COAA45NI130	B07N2MGB3G	13	1999.00	2021-04-23 00:00:00	2021-04-23 00:00:00
2151	COAA45NI130	B09TBCVJS3	8	7999.00	2021-04-23 00:00:00	2021-04-23 00:00:00
2152	COAA45NI130	B07P1BR7L8	7	8995.00	2021-04-23 00:00:00	2021-04-23 00:00:00
2153	OIAN78AC126	B08DPLCM6T	6	21990.00	2022-04-07 00:00:00	2022-04-07 00:00:00
2154	OIAN78AC126	B0B2C5MJN6	13	54990.00	2022-04-07 00:00:00	2022-04-07 00:00:00
2155	OIAN78AC126	B07QHHCB27	9	2100.00	2022-04-07 00:00:00	2022-04-07 00:00:00
2156	OIAN78AC126	B00LM4W1N2	2	600.00	2022-04-07 00:00:00	2022-04-07 00:00:00
2157	OIAN78AC126	B0BHYLCL19	1	399.00	2022-04-07 00:00:00	2022-04-07 00:00:00
2158	OIAN78AC126	B0BMFD94VD	12	499.00	2022-04-07 00:00:00	2022-04-07 00:00:00
2159	OIAN78AC126	B07DXRGWDJ	10	5995.00	2022-04-07 00:00:00	2022-04-07 00:00:00
2160	INON78AO782	B01MY839VW	11	1090.00	2022-11-29 00:00:00	2022-11-29 00:00:00
2161	INON78AO782	B0B2C5MJN6	11	54990.00	2022-11-29 00:00:00	2022-11-29 00:00:00
2162	INON78AO782	B099SD8PRP	3	1090.00	2022-11-29 00:00:00	2022-11-29 00:00:00
2163	INON78AO782	B07NKNBTT3	11	1230.00	2022-11-29 00:00:00	2022-11-29 00:00:00
2164	INON78AO782	B09V17S2BG	8	6990.00	2022-11-29 00:00:00	2022-11-29 00:00:00
2165	INON78AO782	B082T6GXS5	13	2100.00	2022-11-29 00:00:00	2022-11-29 00:00:00
2166	NMOA33NC406	B08GM5S4CQ	6	14290.00	2021-01-06 00:00:00	2021-01-06 00:00:00
2167	NMOA33NC406	B07RX14W1Q	1	900.00	2021-01-06 00:00:00	2021-01-06 00:00:00
2168	NMOA33NC406	B095K14P86	5	1299.00	2021-01-06 00:00:00	2021-01-06 00:00:00
2169	NMOA33NC406	B01EZ0X3L8	8	1650.00	2021-01-06 00:00:00	2021-01-06 00:00:00
2170	AONO33NA546	B08D75R3Z1	7	1900.00	2022-02-21 00:00:00	2022-02-21 00:00:00
2171	AONO33NA546	B083GKDRKR	8	2995.00	2022-02-21 00:00:00	2022-02-21 00:00:00
2172	AONO33NA546	B00A7PLVU6	14	899.00	2022-02-21 00:00:00	2022-02-21 00:00:00
2173	AONO33NA546	B08WD18LJZ	8	600.00	2022-02-21 00:00:00	2022-02-21 00:00:00
2174	AONO33NA546	B07QZ3CZ48	1	1290.00	2022-02-21 00:00:00	2022-02-21 00:00:00
2175	PAAA35AP850	B09QS8V5N8	6	17999.00	2022-07-21 00:00:00	2022-07-21 00:00:00
2176	PAAA35AP850	B005FYNT3G	1	650.00	2022-07-21 00:00:00	2022-07-21 00:00:00
2177	PAAA35AP850	B08G28Z33M	3	699.00	2022-07-21 00:00:00	2022-07-21 00:00:00
2178	PAAA35AP850	B0994GP1CX	14	999.00	2022-07-21 00:00:00	2022-07-21 00:00:00
2179	NPCM54CP981	B078JF6X9B	7	6070.00	2021-03-19 00:00:00	2021-03-19 00:00:00
2180	NPCM54CP981	B097R4D42G	9	9650.00	2021-03-19 00:00:00	2021-03-19 00:00:00
2181	NPCM54CP981	B005LJQMZC	9	1999.00	2021-03-19 00:00:00	2021-03-19 00:00:00
2182	NPCM54CP981	B09RQRZW2X	5	899.00	2021-03-19 00:00:00	2021-03-19 00:00:00
2183	NPCM54CP981	B08QX1CC14	3	19125.00	2021-03-19 00:00:00	2021-03-19 00:00:00
2184	NPCM54CP981	B01M5967SY	1	999.00	2021-03-19 00:00:00	2021-03-19 00:00:00
2185	NPCM54CP981	B07LGT55SJ	2	1099.00	2021-03-19 00:00:00	2021-03-19 00:00:00
2186	OANC36PO385	B0856HY85J	7	4999.00	2022-08-21 00:00:00	2022-08-21 00:00:00
2187	OANC36PO385	B00R1P3B4O	2	549.00	2022-08-21 00:00:00	2022-08-21 00:00:00
2188	OANC36PO385	B0BCKWZ884	6	2999.00	2022-08-21 00:00:00	2022-08-21 00:00:00
2189	ANMC24CP072	B01D5H90L4	4	700.00	2021-12-14 00:00:00	2021-12-14 00:00:00
2190	ANMC24CP072	B08H673XKN	8	7795.00	2021-12-14 00:00:00	2021-12-14 00:00:00
2191	ANMC24CP072	B09939XJX8	1	1500.00	2021-12-14 00:00:00	2021-12-14 00:00:00
2192	ANMC24CP072	B0B4F3QNDM	12	19499.00	2021-12-14 00:00:00	2021-12-14 00:00:00
2193	IOON21IP819	B08J82K4GX	7	19110.00	2022-11-11 00:00:00	2022-11-11 00:00:00
2194	IOON21IP819	B0B4SJKRDF	11	239.00	2022-11-11 00:00:00	2022-11-11 00:00:00
2195	AMCO89ON854	B08L12N5H1	10	2499.00	2022-07-10 00:00:00	2022-07-10 00:00:00
2196	AMCO89ON854	B07PFJ5VQD	2	595.00	2022-07-10 00:00:00	2022-07-10 00:00:00
2197	AMCO89ON854	B00KRCBA6E	2	5000.00	2022-07-10 00:00:00	2022-07-10 00:00:00
2198	AMCO89ON854	B07WDK3ZS6	6	18999.00	2022-07-10 00:00:00	2022-07-10 00:00:00
2199	AMCO89ON854	B083GQGT3Z	7	799.00	2022-07-10 00:00:00	2022-07-10 00:00:00
2200	AAPO00NC642	B07FL3WRX5	15	6500.00	2022-05-27 00:00:00	2022-05-27 00:00:00
2201	AAPO00NC642	B08LW31NQ6	8	2890.00	2022-05-27 00:00:00	2022-05-27 00:00:00
2202	AAPO00NC642	B08TZD7FQN	8	599.00	2022-05-27 00:00:00	2022-05-27 00:00:00
2203	AAPO00NC642	B08QHLXWV3	13	11990.00	2022-05-27 00:00:00	2022-05-27 00:00:00
2204	AAPO00NC642	B07924P3C5	1	799.00	2022-05-27 00:00:00	2022-05-27 00:00:00
2205	AAPO00NC642	B01NCVJMKX	14	999.00	2022-05-27 00:00:00	2022-05-27 00:00:00
2206	NONC70IC960	B07GVR9TG7	7	4999.00	2021-07-31 00:00:00	2021-07-31 00:00:00
2207	NONC70IC960	B083M7WPZD	12	5999.00	2021-07-31 00:00:00	2021-07-31 00:00:00
2208	NONC70IC960	B098K3H92Z	8	899.00	2021-07-31 00:00:00	2021-07-31 00:00:00
2209	NONC70IC960	B09ZDVL7L8	13	3895.00	2021-07-31 00:00:00	2021-07-31 00:00:00
2210	NONC70IC960	B0BDYVC5TD	3	1800.00	2021-07-31 00:00:00	2021-07-31 00:00:00
2211	NONC70IC960	B09NR6G588	6	4999.00	2021-07-31 00:00:00	2021-07-31 00:00:00
2212	NONC70IC960	B097C564GC	6	4999.00	2021-07-31 00:00:00	2021-07-31 00:00:00
2213	OACC72PN249	B09T39K9YL	9	24999.00	2022-05-23 00:00:00	2022-05-23 00:00:00
2214	OCAC11IC388	B0B86CDHL1	4	899.00	2022-03-26 00:00:00	2022-03-26 00:00:00
2215	OACP32AO062	B00B7GKXMG	5	850.00	2021-10-02 00:00:00	2021-10-02 00:00:00
2216	OACP32AO062	B07JPX9CR7	7	1299.00	2021-10-02 00:00:00	2021-10-02 00:00:00
2217	OACP32AO062	B09Y5FZK9N	1	1545.00	2021-10-02 00:00:00	2021-10-02 00:00:00
2218	OACP32AO062	B00KIDSU8S	5	2360.00	2021-10-02 00:00:00	2021-10-02 00:00:00
2219	OACP32AO062	B083RCTXLL	15	1199.00	2021-10-02 00:00:00	2021-10-02 00:00:00
2220	OACP32AO062	B0BNDGL26T	6	2199.00	2021-10-02 00:00:00	2021-10-02 00:00:00
2221	OACP32AO062	B08L7J3T31	1	919.00	2021-10-02 00:00:00	2021-10-02 00:00:00
2222	MNMP20MO754	B083GKDRKR	4	2995.00	2021-10-26 00:00:00	2021-10-26 00:00:00
2223	MNMP20MO754	B09YLX91QR	11	399.00	2021-10-26 00:00:00	2021-10-26 00:00:00
2224	MNMP20MO754	B07WDK3ZS6	11	18999.00	2021-10-26 00:00:00	2021-10-26 00:00:00
2225	CMOC86MM565	B08C7TYHPB	14	1490.00	2021-08-01 00:00:00	2021-08-01 00:00:00
2226	CMOC86MM565	B09YHLPQYT	14	600.00	2021-08-01 00:00:00	2021-08-01 00:00:00
2227	CMOC86MM565	B07WGPKMP5	4	20999.00	2021-08-01 00:00:00	2021-08-01 00:00:00
2228	ACMA79IO253	B0B1YY6JJL	13	34990.00	2021-08-16 00:00:00	2021-08-16 00:00:00
2229	ACMA79IO253	B08Y1TFSP6	8	1000.00	2021-08-16 00:00:00	2021-08-16 00:00:00
2230	ACMA79IO253	B08K4RDQ71	5	999.00	2021-08-16 00:00:00	2021-08-16 00:00:00
2231	ACMA79IO253	B075JJ5NQC	7	4999.00	2021-08-16 00:00:00	2021-08-16 00:00:00
2232	ACMA79IO253	B078JT7LTD	4	8073.00	2021-08-16 00:00:00	2021-08-16 00:00:00
2233	OOCM35PC618	B0763K5HLQ	13	1499.00	2021-09-12 00:00:00	2021-09-12 00:00:00
2234	OOCM35PC618	B09ND94ZRG	12	5999.00	2021-09-12 00:00:00	2021-09-12 00:00:00
2235	OOCM35PC618	B09PLFJ7ZW	12	4999.00	2021-09-12 00:00:00	2021-09-12 00:00:00
2236	OOCM35PC618	B09RWQ7YR6	4	69999.00	2021-09-12 00:00:00	2021-09-12 00:00:00
2237	OOCM35PC618	B00A0VCJPI	7	2499.00	2021-09-12 00:00:00	2021-09-12 00:00:00
2238	ICOO13CP077	B0BF54LXW6	4	19999.00	2021-05-22 00:00:00	2021-05-22 00:00:00
2239	ICOO13CP077	B07966M8XH	2	2999.00	2021-05-22 00:00:00	2021-05-22 00:00:00
2240	ICOO13CP077	B08G8H8DPL	5	6375.00	2021-05-22 00:00:00	2021-05-22 00:00:00
2241	ICOO13CP077	B09V2Q4QVQ	8	1599.00	2021-05-22 00:00:00	2021-05-22 00:00:00
2242	ICOO13CP077	B09BCNQ9R2	1	499.00	2021-05-22 00:00:00	2021-05-22 00:00:00
2243	ICOO13CP077	B09XB1R2F3	11	799.00	2021-05-22 00:00:00	2021-05-22 00:00:00
2244	NMAN21NA645	B07QDSN9V6	12	1595.00	2022-05-22 00:00:00	2022-05-22 00:00:00
2245	NMAN21NA645	B09MKP344P	10	12999.00	2022-05-22 00:00:00	2022-05-22 00:00:00
2246	NMAN21NA645	B07S9S86BF	5	1490.00	2022-05-22 00:00:00	2022-05-22 00:00:00
2247	NMAN21NA645	B09XB7DPW1	6	11999.00	2022-05-22 00:00:00	2022-05-22 00:00:00
2248	NMAN21NA645	B08ZHYNTM1	2	4005.00	2022-05-22 00:00:00	2022-05-22 00:00:00
2249	NMAN21NA645	B07L1N3TJX	15	3499.00	2022-05-22 00:00:00	2022-05-22 00:00:00
2250	PMMA83OA909	B07LFQLKFZ	2	420.00	2021-02-12 00:00:00	2021-02-12 00:00:00
2251	PMMA83OA909	B07L1N3TJX	14	3499.00	2021-02-12 00:00:00	2021-02-12 00:00:00
2252	PMMA83OA909	B09YV42QHZ	7	7999.00	2021-02-12 00:00:00	2021-02-12 00:00:00
2253	PMMA83OA909	B08WRWPM22	2	499.00	2021-02-12 00:00:00	2021-02-12 00:00:00
2254	PMMA83OA909	B09H7JDJCW	8	3595.00	2021-02-12 00:00:00	2021-02-12 00:00:00
2255	PMMA83OA909	B07XLCFSSN	5	1900.00	2021-02-12 00:00:00	2021-02-12 00:00:00
2256	ACPM13NA982	B08MZNT7GP	6	19825.00	2022-01-09 00:00:00	2022-01-09 00:00:00
2257	NAOA29II043	B08BCKN299	2	999.00	2022-01-20 00:00:00	2022-01-20 00:00:00
2258	NAOA29II043	B09ZPL5VYM	9	499.00	2022-01-20 00:00:00	2022-01-20 00:00:00
2259	NAOA29II043	B075JJ5NQC	1	4999.00	2022-01-20 00:00:00	2022-01-20 00:00:00
2260	NAOA29II043	B07JGDB5M1	13	1299.00	2022-01-20 00:00:00	2022-01-20 00:00:00
2261	NAOA29II043	B0B6BLTGTT	14	5999.00	2022-01-20 00:00:00	2022-01-20 00:00:00
2262	NAOA29II043	B08Y55LPBF	9	44999.00	2022-01-20 00:00:00	2022-01-20 00:00:00
2263	NAOA29II043	B08JKPVDKL	10	699.00	2022-01-20 00:00:00	2022-01-20 00:00:00
2264	NAAP48IN274	B0117H7GZ6	11	399.00	2022-01-06 00:00:00	2022-01-06 00:00:00
2265	NAAP48IN274	B09Q5P2MT3	12	31999.00	2022-01-06 00:00:00	2022-01-06 00:00:00
2266	NAAP48IN274	B0994GFWBH	1	999.00	2022-01-06 00:00:00	2022-01-06 00:00:00
2267	NCIA67MC264	B0B61GCHC1	10	999.00	2022-07-29 00:00:00	2022-07-29 00:00:00
2268	NCIA67MC264	B07P1BR7L8	5	8995.00	2022-07-29 00:00:00	2022-07-29 00:00:00
2269	NCIA67MC264	B09FHHTL8L	14	199.00	2022-07-29 00:00:00	2022-07-29 00:00:00
2270	NCIA67MC264	B0752LL57V	7	440.00	2022-07-29 00:00:00	2022-07-29 00:00:00
2271	NCIA67MC264	B09Z7YGV3R	9	699.00	2022-07-29 00:00:00	2022-07-29 00:00:00
2272	NCIA67MC264	B09KLVMZ3B	12	399.00	2022-07-29 00:00:00	2022-07-29 00:00:00
2273	PIAI51IO130	B00N1U9AJS	5	165.00	2022-08-25 00:00:00	2022-08-25 00:00:00
2274	PIAI51IO130	B01I1LDZGA	11	1775.00	2022-08-25 00:00:00	2022-08-25 00:00:00
2275	PIAI51IO130	B09ZTZ9N3Q	4	1699.00	2022-08-25 00:00:00	2022-08-25 00:00:00
2276	PIAI51IO130	B08DCVRW98	7	499.00	2022-08-25 00:00:00	2022-08-25 00:00:00
2277	AAMA13AA292	B07YC8JHMB	8	16000.00	2021-04-06 00:00:00	2021-04-06 00:00:00
2278	AAMA13AA292	B08J4PL1Z3	8	1490.00	2021-04-06 00:00:00	2021-04-06 00:00:00
2279	AAMA13AA292	B08D75R3Z1	15	1900.00	2021-04-06 00:00:00	2021-04-06 00:00:00
2280	AAMA13AA292	B08WJ86PV2	15	990.00	2021-04-06 00:00:00	2021-04-06 00:00:00
2281	AAMA13AA292	B01M69WCZ6	7	3550.00	2021-04-06 00:00:00	2021-04-06 00:00:00
2282	AAMA13AA292	B0162K34H2	10	999.00	2021-04-06 00:00:00	2021-04-06 00:00:00
2283	AAMA13AA292	B096VF5YYF	8	7990.00	2021-04-06 00:00:00	2021-04-06 00:00:00
2284	MPPM54MA498	B07KKJPTWB	3	1999.00	2021-08-12 00:00:00	2021-08-12 00:00:00
2285	MPPM54MA498	B08VRMK55F	7	699.00	2021-08-12 00:00:00	2021-08-12 00:00:00
2286	MPPM54MA498	B01IBRHE3E	3	499.00	2021-08-12 00:00:00	2021-08-12 00:00:00
2287	MPPM54MA498	B0117H7GZ6	1	399.00	2021-08-12 00:00:00	2021-08-12 00:00:00
2288	MPPM54MA498	B00B7GKXMG	8	850.00	2021-08-12 00:00:00	2021-08-12 00:00:00
2289	AANP13MO848	B07JH1CBGW	12	1999.00	2022-02-12 00:00:00	2022-02-12 00:00:00
2290	AANP13MO848	B0B5GJRTHB	9	1999.00	2022-02-12 00:00:00	2022-02-12 00:00:00
2291	AANP13MO848	B08CYPB15D	8	761.00	2022-02-12 00:00:00	2022-02-12 00:00:00
2292	AANP13MO848	B07JH1CBGW	3	1999.00	2022-02-12 00:00:00	2022-02-12 00:00:00
2293	CAMA67PP955	B07DGD4Z4C	9	5795.00	2022-09-02 00:00:00	2022-09-02 00:00:00
2294	CAMA67PP955	B09C6FML9B	5	599.00	2022-09-02 00:00:00	2022-09-02 00:00:00
2295	CAMA67PP955	B09NC2TY11	3	5999.00	2022-09-02 00:00:00	2022-09-02 00:00:00
2296	CAMA67PP955	B08QDPB1SL	2	220.00	2022-09-02 00:00:00	2022-09-02 00:00:00
2297	CAMA67PP955	B07M69276N	1	2499.00	2022-09-02 00:00:00	2022-09-02 00:00:00
2298	OAAA67AN267	B07Z1X6VFC	6	999.00	2021-06-04 00:00:00	2021-06-04 00:00:00
2299	OAAA67AN267	B00ZRBWPA0	1	180.00	2021-06-04 00:00:00	2021-06-04 00:00:00
2300	OAAA67AN267	B00NH11PEY	4	750.00	2021-06-04 00:00:00	2021-06-04 00:00:00
2301	OAAA67AN267	B09GB5B4BK	13	899.00	2021-06-04 00:00:00	2021-06-04 00:00:00
2302	OCCI59AA060	B09X5C9VLK	2	3500.00	2021-10-23 00:00:00	2021-10-23 00:00:00
2303	OCCI59AA060	B00R1P3B4O	10	549.00	2021-10-23 00:00:00	2021-10-23 00:00:00
2304	OCCI59AA060	B076VQS87V	5	799.00	2021-10-23 00:00:00	2021-10-23 00:00:00
2305	OCCI59AA060	B08497Z1MQ	5	700.00	2021-10-23 00:00:00	2021-10-23 00:00:00
2306	OCCI59AA060	B08HDCWDXD	7	6999.00	2021-10-23 00:00:00	2021-10-23 00:00:00
2307	OCCI59AA060	B07PLHTTB4	11	499.00	2021-10-23 00:00:00	2021-10-23 00:00:00
2308	PICO10AA142	B08D11DZ2W	8	8999.00	2021-06-01 00:00:00	2021-06-01 00:00:00
2309	PICO10AA142	B08SMJT55F	15	3990.00	2021-06-01 00:00:00	2021-06-01 00:00:00
2310	IOOA74MN810	B01M5967SY	14	999.00	2022-08-24 00:00:00	2022-08-24 00:00:00
2311	IOOA74MN810	B07924P3C5	6	799.00	2022-08-24 00:00:00	2022-08-24 00:00:00
2312	IOOA74MN810	B07MDRGHWQ	7	11000.00	2022-08-24 00:00:00	2022-08-24 00:00:00
2313	IOOA74MN810	B07YNHCW6N	1	2499.00	2022-08-24 00:00:00	2022-08-24 00:00:00
2314	ACAC76IA504	B09Q8WQ5QJ	5	499.00	2021-12-09 00:00:00	2021-12-09 00:00:00
2315	ACAC76IA504	B079Y6JZC8	10	299.00	2021-12-09 00:00:00	2021-12-09 00:00:00
2316	ACAC76IA504	B097ZQTDVZ	5	899.00	2021-12-09 00:00:00	2021-12-09 00:00:00
2317	ACAC76IA504	B01J8S6X2I	6	1100.00	2021-12-09 00:00:00	2021-12-09 00:00:00
2318	ACAC76IA504	B09X76VL5L	1	3490.00	2021-12-09 00:00:00	2021-12-09 00:00:00
2319	CNCA98IN094	B07NPBG1B4	2	3300.00	2021-09-17 00:00:00	2021-09-17 00:00:00
2320	CNCA98IN094	B08498H13H	11	3499.00	2021-09-17 00:00:00	2021-09-17 00:00:00
2321	CNCA98IN094	B0BB3CBFBM	8	65000.00	2021-09-17 00:00:00	2021-09-17 00:00:00
2322	CNCA98IN094	B08JD36C6H	10	450.00	2021-09-17 00:00:00	2021-09-17 00:00:00
2323	CNCA98IN094	B0BBWJFK5C	15	8999.00	2021-09-17 00:00:00	2021-09-17 00:00:00
2324	CNCA98IN094	B07CVR2L5K	3	2695.00	2021-09-17 00:00:00	2021-09-17 00:00:00
2325	CPAC79OA808	B076VQS87V	12	799.00	2022-05-06 00:00:00	2022-05-06 00:00:00
2326	CPAC79OA808	B09YHLPQYT	13	600.00	2022-05-06 00:00:00	2022-05-06 00:00:00
2327	CPAC79OA808	B07966M8XH	14	2999.00	2022-05-06 00:00:00	2022-05-06 00:00:00
2328	CPAC79OA808	B09TMZ1MF8	1	4000.00	2022-05-06 00:00:00	2022-05-06 00:00:00
2329	CPAC79OA808	B09LRZYBH1	6	3999.00	2022-05-06 00:00:00	2022-05-06 00:00:00
2330	CPAC79OA808	B095XCRDQW	5	1599.00	2022-05-06 00:00:00	2022-05-06 00:00:00
2331	PNAA20MA862	B08WLY8V9S	3	899.00	2021-02-22 00:00:00	2021-02-22 00:00:00
2332	PNAA20MA862	B07JNVF678	13	999.00	2021-02-22 00:00:00	2021-02-22 00:00:00
2333	PNAA20MA862	B098T9CJVQ	4	699.00	2021-02-22 00:00:00	2021-02-22 00:00:00
2334	PNAA20MA862	B0B3CPQ5PF	12	28999.00	2021-02-22 00:00:00	2021-02-22 00:00:00
2335	PNAA20MA862	B00NH11KIK	15	695.00	2021-02-22 00:00:00	2021-02-22 00:00:00
2336	OAIP84CA671	B096TWZRJC	11	1899.00	2021-11-10 00:00:00	2021-11-10 00:00:00
2337	OAIP84CA671	B075JJ5NQC	6	4999.00	2021-11-10 00:00:00	2021-11-10 00:00:00
2338	OAIP84CA671	B0B5GF6DQD	10	5999.00	2021-11-10 00:00:00	2021-11-10 00:00:00
2339	MOAC18AI350	B09H34V36W	1	2495.00	2022-08-31 00:00:00	2022-08-31 00:00:00
2340	MOAC18AI350	B07NTKGW45	9	899.00	2022-08-31 00:00:00	2022-08-31 00:00:00
2341	MOAC18AI350	B0BDS8MY8J	9	999.00	2022-08-31 00:00:00	2022-08-31 00:00:00
2342	MOAC18AI350	B09NL7LBWT	2	1999.00	2022-08-31 00:00:00	2022-08-31 00:00:00
2343	MOAC18AI350	B00DJ5N9VK	2	150.00	2022-08-31 00:00:00	2022-08-31 00:00:00
2344	MOAC18AI350	B0B25LQQPC	9	6100.00	2022-08-31 00:00:00	2022-08-31 00:00:00
2345	MOAC18AI350	B0BF54LXW6	1	19999.00	2022-08-31 00:00:00	2022-08-31 00:00:00
2346	PMIA31IA399	B07WMS7TWB	7	1245.00	2021-01-22 00:00:00	2021-01-22 00:00:00
2347	PMIA31IA399	B098LCVYPW	5	999.00	2021-01-22 00:00:00	2021-01-22 00:00:00
2348	PMIA31IA399	B09X76VL5L	5	3490.00	2021-01-22 00:00:00	2021-01-22 00:00:00
2349	PMIA31IA399	B0BBFJLP21	13	15999.00	2021-01-22 00:00:00	2021-01-22 00:00:00
2350	PMIA31IA399	B07WHS7MZ1	9	39990.00	2021-01-22 00:00:00	2021-01-22 00:00:00
2351	PMIA31IA399	B07CWNJLPC	14	1200.00	2021-01-22 00:00:00	2021-01-22 00:00:00
2352	PMIA31IA399	B083RD1J99	7	399.00	2021-01-22 00:00:00	2021-01-22 00:00:00
2353	MOIP28MM581	B096MSW6CT	3	1899.00	2022-02-24 00:00:00	2022-02-24 00:00:00
2354	MOIP28MM581	B07J2BQZD6	15	399.00	2022-02-24 00:00:00	2022-02-24 00:00:00
2355	MOIP28MM581	B01M5B0TPW	1	2490.00	2022-02-24 00:00:00	2022-02-24 00:00:00
2356	MOIP28MM581	B08XMG618K	1	499.00	2022-02-24 00:00:00	2022-02-24 00:00:00
2357	MOIP28MM581	B08PKBMJKS	3	499.00	2022-02-24 00:00:00	2022-02-24 00:00:00
2358	AINN58NM977	B09N6TTHT6	13	99.00	2021-05-05 00:00:00	2021-05-05 00:00:00
2359	AINN58NM977	B08HDJ86NZ	12	699.00	2021-05-05 00:00:00	2021-05-05 00:00:00
2360	AINN58NM977	B07WGPBXY9	1	1249.00	2021-05-05 00:00:00	2021-05-05 00:00:00
2361	AINN58NM977	B09RWZRCP1	1	999.00	2021-05-05 00:00:00	2021-05-05 00:00:00
2362	AINN58NM977	B09QGZFBPM	12	999.00	2021-05-05 00:00:00	2021-05-05 00:00:00
2363	AOAO21CI322	B0B3RSDSZ3	3	9999.00	2021-05-17 00:00:00	2021-05-17 00:00:00
2364	AOAO21CI322	B09VL9KFDB	4	4200.00	2021-05-17 00:00:00	2021-05-17 00:00:00
2365	AOAO21CI322	B07232M876	5	395.00	2021-05-17 00:00:00	2021-05-17 00:00:00
2366	AIMA70AN124	B09NL4DCXK	13	599.00	2022-11-23 00:00:00	2022-11-23 00:00:00
2367	AIMA70AN124	B07W7Z6DVL	7	2999.00	2022-11-23 00:00:00	2022-11-23 00:00:00
2368	AIMA70AN124	B00TI8E7BI	7	2695.00	2022-11-23 00:00:00	2022-11-23 00:00:00
2369	ACIA91NA276	B08461VC1Z	13	1995.00	2021-01-31 00:00:00	2021-01-31 00:00:00
2370	ACIA91NA276	B09GFN8WZL	15	999.00	2021-01-31 00:00:00	2021-01-31 00:00:00
2371	ACIA91NA276	B07PFJ5W31	4	495.00	2021-01-31 00:00:00	2021-01-31 00:00:00
2372	ANOC75PC437	B09YHLPQYT	10	600.00	2021-12-29 00:00:00	2021-12-29 00:00:00
2373	ANOC75PC437	B08YDFX7Y1	11	449.00	2021-12-29 00:00:00	2021-12-29 00:00:00
2374	ANOC75PC437	B071R3LHFM	8	5500.00	2021-12-29 00:00:00	2021-12-29 00:00:00
2375	ANOC75PC437	B09WMTJPG7	13	4400.00	2021-12-29 00:00:00	2021-12-29 00:00:00
2376	ANOC75PC437	B08243SKCK	9	299.00	2021-12-29 00:00:00	2021-12-29 00:00:00
2377	PPIM31AP541	B0B1F6GQPS	11	4499.00	2022-07-31 00:00:00	2022-07-31 00:00:00
2378	PPIM31AP541	B07T4D9FNY	7	1490.00	2022-07-31 00:00:00	2022-07-31 00:00:00
2379	PPIM31AP541	B0B3MMYHYW	14	45999.00	2022-07-31 00:00:00	2022-07-31 00:00:00
2380	PPIM31AP541	B0BNLFQDG2	3	2199.00	2022-07-31 00:00:00	2022-07-31 00:00:00
2381	PPIM31AP541	B08YD264ZS	15	2499.00	2022-07-31 00:00:00	2022-07-31 00:00:00
2382	PPIM31AP541	B08CTQP51L	1	1499.00	2022-07-31 00:00:00	2022-07-31 00:00:00
2383	OCCA84AI191	B0BPBG712X	2	1199.00	2022-03-24 00:00:00	2022-03-24 00:00:00
2384	OCCA84AI191	B09XJ5LD6L	7	32999.00	2022-03-24 00:00:00	2022-03-24 00:00:00
2385	OCCA84AI191	B099S26HWG	8	300.00	2022-03-24 00:00:00	2022-03-24 00:00:00
2386	OCCA84AI191	B06XSK3XL6	10	999.00	2022-03-24 00:00:00	2022-03-24 00:00:00
2387	OCCA84AI191	B00BN5SNF0	3	250.00	2022-03-24 00:00:00	2022-03-24 00:00:00
2388	NCIN60OC864	B01JOFKL0A	1	6355.00	2022-09-22 00:00:00	2022-09-22 00:00:00
2389	NCIN60OC864	B0BDYW3RN3	9	3500.00	2022-09-22 00:00:00	2022-09-22 00:00:00
2390	NCIN60OC864	B08B6XWQ1C	12	995.00	2022-09-22 00:00:00	2022-09-22 00:00:00
2391	NCIN60OC864	B085W8CFLH	10	1800.00	2022-09-22 00:00:00	2022-09-22 00:00:00
2392	NCIN60OC864	B09T2S8X9C	4	28999.00	2022-09-22 00:00:00	2022-09-22 00:00:00
2393	NCIN60OC864	B09C635BMM	7	999.00	2022-09-22 00:00:00	2022-09-22 00:00:00
2394	CCNN65IP373	B092R48XXB	13	29999.00	2022-09-07 00:00:00	2022-09-07 00:00:00
2395	CCNN65IP373	B01MUAUOCX	14	747.00	2022-09-07 00:00:00	2022-09-07 00:00:00
2396	CCNN65IP373	B009P2LIL4	10	3080.00	2022-09-07 00:00:00	2022-09-07 00:00:00
2397	CCNN65IP373	B0BBVKRP7B	7	1999.00	2022-09-07 00:00:00	2022-09-07 00:00:00
2398	CCNN65IP373	B0BBN56J5H	6	8999.00	2022-09-07 00:00:00	2022-09-07 00:00:00
2399	CMAA38AP552	B08FN6WGDQ	6	15990.00	2021-02-09 00:00:00	2021-02-09 00:00:00
2400	CMAA38AP552	B0B4F5L738	6	19499.00	2021-02-09 00:00:00	2021-02-09 00:00:00
2401	CMAA38AP552	B097R3XH9R	12	15270.00	2021-02-09 00:00:00	2021-02-09 00:00:00
2402	IAAM03NO224	B07WDK3ZS6	11	18999.00	2021-06-21 00:00:00	2021-06-21 00:00:00
2403	IAAM03NO224	B088Z1YWBC	9	15990.00	2021-06-21 00:00:00	2021-06-21 00:00:00
2404	IAMI63CO748	B09W9V2PXG	4	1999.00	2022-03-02 00:00:00	2022-03-02 00:00:00
2405	IAMI63CO748	B082FTPRSK	9	1999.00	2022-03-02 00:00:00	2022-03-02 00:00:00
2406	IAMI63CO748	B0BFWGBX61	10	349.00	2022-03-02 00:00:00	2022-03-02 00:00:00
2407	IAMI63CO748	B0B5CGTBKV	15	7990.00	2022-03-02 00:00:00	2022-03-02 00:00:00
2408	IAMI63CO748	B08498H13H	9	3499.00	2022-03-02 00:00:00	2022-03-02 00:00:00
2409	IAMI63CO748	B098QXR9X2	9	2999.00	2022-03-02 00:00:00	2022-03-02 00:00:00
2410	IAMI63CO748	B015OW3M1W	1	1700.00	2022-03-02 00:00:00	2022-03-02 00:00:00
2411	MPAA57CN399	B07WJV6P1R	9	18999.00	2022-11-16 00:00:00	2022-11-16 00:00:00
2412	MPAA57CN399	B09ZVJXN5L	5	999.00	2022-11-16 00:00:00	2022-11-16 00:00:00
2413	MPAA57CN399	B0BBMPH39N	2	999.00	2022-11-16 00:00:00	2022-11-16 00:00:00
2414	MPAA57CN399	B09NNHFSSF	1	4700.00	2022-11-16 00:00:00	2022-11-16 00:00:00
2415	MPAA57CN399	B0814P4L98	14	999.00	2022-11-16 00:00:00	2022-11-16 00:00:00
2416	MPAA57CN399	B09MZ6WZ6V	12	999.00	2022-11-16 00:00:00	2022-11-16 00:00:00
2417	OPIA60MI193	B077BTLQ67	12	4890.00	2022-04-20 00:00:00	2022-04-20 00:00:00
2418	OPIA60MI193	B09JS562TP	13	1630.00	2022-04-20 00:00:00	2022-04-20 00:00:00
2419	AAMN16ON430	B07R99NBVB	4	599.00	2021-09-14 00:00:00	2021-09-14 00:00:00
2420	AAMN16ON430	B009P2LK08	8	1129.00	2021-09-14 00:00:00	2021-09-14 00:00:00
2421	AAMN16ON430	B0BM4KTNL1	6	1599.00	2021-09-14 00:00:00	2021-09-14 00:00:00
2422	AAMN16ON430	B08RP2L2NL	3	999.00	2021-09-14 00:00:00	2021-09-14 00:00:00
2423	AAMN16ON430	B07YC8JHMB	11	16000.00	2021-09-14 00:00:00	2021-09-14 00:00:00
2424	AAMN16ON430	B09L8DSSFH	13	999.00	2021-09-14 00:00:00	2021-09-14 00:00:00
2425	CCAA77IN011	B07WJWRNVK	10	20990.00	2022-12-12 00:00:00	2022-12-12 00:00:00
2426	INAA28AA991	B0926V9CTV	7	599.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2427	INAA28AA991	B094YFFSMY	4	1999.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2428	INAA28AA991	B07JGCGNDG	8	11500.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2429	INAA28AA991	B07S851WX5	15	1299.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2430	INAA28AA991	B014I8SSD0	6	475.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2431	INAA28AA991	B07NTKGW45	13	899.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2432	OOMP67NN045	B07T4D9FNY	14	1490.00	2021-03-20 00:00:00	2021-03-20 00:00:00
2433	OOMP67NN045	B09M8888DM	2	799.00	2021-03-20 00:00:00	2021-03-20 00:00:00
2434	IONA09NI934	B07WHSJXLF	10	29990.00	2022-04-05 00:00:00	2022-04-05 00:00:00
2435	IONA09NI934	B09VT6JKRP	3	999.00	2022-04-05 00:00:00	2022-04-05 00:00:00
2436	ANCN19PC462	B00HZIOGXW	1	825.00	2021-09-27 00:00:00	2021-09-27 00:00:00
2437	ANCN19PC462	B0B4KPCBSH	12	499.00	2021-09-27 00:00:00	2021-09-27 00:00:00
2438	COON02OM272	B09TBCVJS3	4	7999.00	2022-01-19 00:00:00	2022-01-19 00:00:00
2439	COON02OM272	B01M5B0TPW	14	2490.00	2022-01-19 00:00:00	2022-01-19 00:00:00
2440	COON02OM272	B092BL5DCX	9	69900.00	2022-01-19 00:00:00	2022-01-19 00:00:00
2441	CAIA74MA106	B09C6HWG18	7	1999.00	2021-05-16 00:00:00	2021-05-16 00:00:00
2442	CAIA74MA106	B0974H97TJ	7	799.00	2021-05-16 00:00:00	2021-05-16 00:00:00
2443	CAIA74MA106	B08243SKCK	11	299.00	2021-05-16 00:00:00	2021-05-16 00:00:00
2444	IMOI33OM683	B0B9RN5X8B	1	4700.00	2021-07-21 00:00:00	2021-07-21 00:00:00
2445	IMOI33OM683	B014I8SSD0	12	475.00	2021-07-21 00:00:00	2021-07-21 00:00:00
2446	IMOI33OM683	B005LJQMZC	12	1999.00	2021-07-21 00:00:00	2021-07-21 00:00:00
2447	IMOI33OM683	B08GJNM9N7	9	1199.00	2021-07-21 00:00:00	2021-07-21 00:00:00
2448	IMOI33OM683	B07966M8XH	15	2999.00	2021-07-21 00:00:00	2021-07-21 00:00:00
2449	IMOI33OM683	B083J64CBB	5	499.00	2021-07-21 00:00:00	2021-07-21 00:00:00
2450	IMOI33OM683	B09V2Q4QVQ	15	1599.00	2021-07-21 00:00:00	2021-07-21 00:00:00
2451	CPAC14IA979	B082T6V3DT	11	2100.00	2021-08-25 00:00:00	2021-08-25 00:00:00
2452	CPAC14IA979	B07RY2X9MP	11	1500.00	2021-08-25 00:00:00	2021-08-25 00:00:00
2453	CPAC14IA979	B00LY17RHI	15	225.00	2021-08-25 00:00:00	2021-08-25 00:00:00
2454	CPAC14IA979	B0BB3CBFBM	6	65000.00	2021-08-25 00:00:00	2021-08-25 00:00:00
2455	CPAC14IA979	B0746N6WML	7	450.00	2021-08-25 00:00:00	2021-08-25 00:00:00
2456	CPAC14IA979	B00LY17RHI	4	225.00	2021-08-25 00:00:00	2021-08-25 00:00:00
2457	CAPC34AC786	B09NY6TRXG	9	11999.00	2021-09-07 00:00:00	2021-09-07 00:00:00
2458	CAPC34AC786	B01CS4A5V4	10	1690.00	2021-09-07 00:00:00	2021-09-07 00:00:00
2459	CAPC34AC786	B08BCKN299	13	999.00	2021-09-07 00:00:00	2021-09-07 00:00:00
2460	CAPC34AC786	B09JFR8H3Q	4	1499.00	2021-09-07 00:00:00	2021-09-07 00:00:00
2461	IMAN86MA661	B09ND94ZRG	4	5999.00	2021-01-24 00:00:00	2021-01-24 00:00:00
2462	IMAN86MA661	B0B4T6MR8N	4	800.00	2021-01-24 00:00:00	2021-01-24 00:00:00
2463	IMAN86MA661	B0856HY85J	10	4999.00	2021-01-24 00:00:00	2021-01-24 00:00:00
2464	IMAN86MA661	B07VNFP3C2	1	1245.00	2021-01-24 00:00:00	2021-01-24 00:00:00
2465	IMAN86MA661	B07KRCW6LZ	4	1599.00	2021-01-24 00:00:00	2021-01-24 00:00:00
2466	IMAN86MA661	B0747VDH9L	13	3995.00	2021-01-24 00:00:00	2021-01-24 00:00:00
2467	NNAA79PN596	B08B6XWQ1C	4	995.00	2021-01-01 00:00:00	2021-01-01 00:00:00
2468	PCPA51NA649	B07XJYYH7L	9	999.00	2021-02-14 00:00:00	2021-02-14 00:00:00
2469	PCPA51NA649	B09BW2GP18	14	1000.00	2021-02-14 00:00:00	2021-02-14 00:00:00
2470	PCPA51NA649	B0BM4KTNL1	10	1599.00	2021-02-14 00:00:00	2021-02-14 00:00:00
2471	PCPA51NA649	B0763K5HLQ	10	1499.00	2021-02-14 00:00:00	2021-02-14 00:00:00
2472	PCPA51NA649	B07H3WDC4X	15	999.00	2021-02-14 00:00:00	2021-02-14 00:00:00
2473	PCPA51NA649	B07WJV6P1R	2	18999.00	2021-02-14 00:00:00	2021-02-14 00:00:00
2474	PCPA51NA649	B0B4F5L738	12	19499.00	2021-02-14 00:00:00	2021-02-14 00:00:00
2475	OCNN93PC521	B08B42LWKN	12	19999.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2476	OCNN93PC521	B01LY9W8AF	2	1282.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2477	OCNN93PC521	B0BCKWZ884	14	2999.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2478	OCNN93PC521	B09CKSYBLR	9	1499.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2479	OCNN93PC521	B09VKWGZD7	9	8990.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2480	OCNN93PC521	B089WB69Y1	4	649.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2481	OCNN93PC521	B0BF563HB4	3	19999.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2482	PAAO51NP808	B01N90RZ4M	3	499.00	2022-12-15 00:00:00	2022-12-15 00:00:00
2483	IAMI55NM007	B01LY9W8AF	10	1282.00	2021-12-13 00:00:00	2021-12-13 00:00:00
2484	IAMI55NM007	B08WRWPM22	15	499.00	2021-12-13 00:00:00	2021-12-13 00:00:00
2485	IAMI55NM007	B082T6GXS5	3	2100.00	2021-12-13 00:00:00	2021-12-13 00:00:00
2486	IAMI55NM007	B096YCN3SD	12	1000.00	2021-12-13 00:00:00	2021-12-13 00:00:00
2487	IAMI55NM007	B08W56G1K9	3	999.00	2021-12-13 00:00:00	2021-12-13 00:00:00
2488	IAMI55NM007	B078WB1VWJ	1	1599.00	2021-12-13 00:00:00	2021-12-13 00:00:00
2489	IPAO78OI378	B0BD92GDQH	7	6999.00	2021-06-14 00:00:00	2021-06-14 00:00:00
2490	IPAO78OI378	B08CF3D7QR	7	339.00	2021-06-14 00:00:00	2021-06-14 00:00:00
2491	IPAO78OI378	B0856HNMR7	7	2499.00	2021-06-14 00:00:00	2021-06-14 00:00:00
2492	IIMN44CP969	B06Y36JKC3	6	300.00	2022-07-01 00:00:00	2022-07-01 00:00:00
2493	IIMN44CP969	B078JDNZJ8	15	6190.00	2022-07-01 00:00:00	2022-07-01 00:00:00
2494	PMAA23NP735	B00Y4ORQ46	12	795.00	2022-11-30 00:00:00	2022-11-30 00:00:00
2495	PMAA23NP735	B0B8ZKWGKD	13	1052.00	2022-11-30 00:00:00	2022-11-30 00:00:00
2496	PMAA23NP735	B084N18QZY	12	849.00	2022-11-30 00:00:00	2022-11-30 00:00:00
2497	PMAA23NP735	B01DEWVZ2C	8	999.00	2022-11-30 00:00:00	2022-11-30 00:00:00
2498	PMAA23NP735	B08VB57558	15	74999.00	2022-11-30 00:00:00	2022-11-30 00:00:00
2499	PMAA23NP735	B01MQ2A86A	3	1645.00	2022-11-30 00:00:00	2022-11-30 00:00:00
2500	PMAA23NP735	B08PPHFXG3	13	999.00	2022-11-30 00:00:00	2022-11-30 00:00:00
2501	NIMA80II116	B09HV71RL1	5	1499.00	2021-04-10 00:00:00	2021-04-10 00:00:00
2502	NIMA80II116	B00P93X2H6	4	75.00	2021-04-10 00:00:00	2021-04-10 00:00:00
2503	AMNA40NM292	B08TR61BVK	11	1499.00	2021-12-06 00:00:00	2021-12-06 00:00:00
2504	AMNA40NM292	B0BMZ6SY89	5	1599.00	2021-12-06 00:00:00	2021-12-06 00:00:00
2505	AMNA40NM292	B00OFM6PEO	6	799.00	2021-12-06 00:00:00	2021-12-06 00:00:00
2506	AMNA40NM292	B07Y5FDPKV	2	2400.00	2021-12-06 00:00:00	2021-12-06 00:00:00
2507	AMNA40NM292	B07WHQBZLS	8	21990.00	2021-12-06 00:00:00	2021-12-06 00:00:00
2508	MPMM09II242	B0949FPSFY	9	1999.00	2021-05-29 00:00:00	2021-05-29 00:00:00
2509	MPMM09II242	B0BHYJ8CVF	7	1499.00	2021-05-29 00:00:00	2021-05-29 00:00:00
2510	MPMM09II242	B09YV575RK	12	9999.00	2021-05-29 00:00:00	2021-05-29 00:00:00
2511	MPMM09II242	B0B935YNR7	1	2999.00	2021-05-29 00:00:00	2021-05-29 00:00:00
2512	MPMM09II242	B00DJ5N9VK	13	150.00	2021-05-29 00:00:00	2021-05-29 00:00:00
2513	MPMM09II242	B09KRHXTLN	2	1699.00	2021-05-29 00:00:00	2021-05-29 00:00:00
2514	MPMM09II242	B0B1NX6JTN	12	2599.00	2021-05-29 00:00:00	2021-05-29 00:00:00
2515	IICN53AO356	B092R48XXB	2	29999.00	2021-08-13 00:00:00	2021-08-13 00:00:00
2516	IICN53AO356	B07SRM58TP	3	2099.00	2021-08-13 00:00:00	2021-08-13 00:00:00
2517	IICN53AO356	B078JDNZJ8	9	6190.00	2021-08-13 00:00:00	2021-08-13 00:00:00
2518	IICN53AO356	B08VRMK55F	12	699.00	2021-08-13 00:00:00	2021-08-13 00:00:00
2519	IICN53AO356	B00GGGOYEK	5	699.00	2021-08-13 00:00:00	2021-08-13 00:00:00
2520	IICN53AO356	B09XJ5LD6L	9	32999.00	2021-08-13 00:00:00	2021-08-13 00:00:00
2521	CCCP43PA930	B09NVPJ3P4	4	3999.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2522	CCCP43PA930	B09CMQRQM6	15	899.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2523	CCCP43PA930	B09P1MFKG1	10	2999.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2524	CCCP43PA930	B0765B3TH7	10	599.00	2021-04-25 00:00:00	2021-04-25 00:00:00
2525	ANAM66PI616	B0B3RS9DNF	10	9999.00	2022-09-11 00:00:00	2022-09-11 00:00:00
2526	ANAM66PI616	B086X18Q71	4	12150.00	2022-09-11 00:00:00	2022-09-11 00:00:00
2527	ICIP43CO476	B07VZYMQNZ	5	1440.00	2021-11-07 00:00:00	2021-11-07 00:00:00
2528	ICIP43CO476	B0B9XLX8VR	14	65000.00	2021-11-07 00:00:00	2021-11-07 00:00:00
2529	ICIP43CO476	B08RP2L2NL	13	999.00	2021-11-07 00:00:00	2021-11-07 00:00:00
2530	ICIP43CO476	B07ZR4S1G4	14	699.00	2021-11-07 00:00:00	2021-11-07 00:00:00
2531	ICIP43CO476	B09P182Z2H	2	5799.00	2021-11-07 00:00:00	2021-11-07 00:00:00
2532	ICIP43CO476	B0756CLQWL	4	3999.00	2021-11-07 00:00:00	2021-11-07 00:00:00
2533	PONN42CN970	B0123P3PWE	3	1075.00	2022-09-17 00:00:00	2022-09-17 00:00:00
2534	PONN42CN970	B0BNDD9TN6	10	28900.00	2022-09-17 00:00:00	2022-09-17 00:00:00
2535	PONN42CN970	B08CGW4GYR	11	999.00	2022-09-17 00:00:00	2022-09-17 00:00:00
2536	NIMA13PP812	B07KY3FNQP	8	1290.00	2021-10-24 00:00:00	2021-10-24 00:00:00
2537	NIMA13PP812	B09HS1NDRQ	8	799.00	2021-10-24 00:00:00	2021-10-24 00:00:00
2538	AACI33NN688	B09JPC82QC	8	34999.00	2021-04-28 00:00:00	2021-04-28 00:00:00
2539	AACI33NN688	B07GLS2563	1	1899.00	2021-04-28 00:00:00	2021-04-28 00:00:00
2540	AACI33NN688	B08MXJYB2V	7	3390.00	2021-04-28 00:00:00	2021-04-28 00:00:00
2541	AACI33NN688	B0BF54LXW6	3	19999.00	2021-04-28 00:00:00	2021-04-28 00:00:00
2542	AACI33NN688	B095XCRDQW	15	1599.00	2021-04-28 00:00:00	2021-04-28 00:00:00
2543	AACI33NN688	B09P564ZTJ	5	1599.00	2021-04-28 00:00:00	2021-04-28 00:00:00
2544	AACI33NN688	B0117H7GZ6	14	399.00	2021-04-28 00:00:00	2021-04-28 00:00:00
2545	POAC58IA127	B0BMM7R92G	2	999.00	2022-05-05 00:00:00	2022-05-05 00:00:00
2546	POAC58IA127	B078JF6X9B	13	6070.00	2022-05-05 00:00:00	2022-05-05 00:00:00
2547	POAC58IA127	B07GLNJC25	10	499.00	2022-05-05 00:00:00	2022-05-05 00:00:00
2548	AOAI51OA563	B099FDW2ZF	1	1499.00	2021-09-04 00:00:00	2021-09-04 00:00:00
2549	AAII26CI171	B0B94JPY2N	9	999.00	2021-04-16 00:00:00	2021-04-16 00:00:00
2550	AAII26CI171	B0B9RN5X8B	10	4700.00	2021-04-16 00:00:00	2021-04-16 00:00:00
2551	PCIM04IA608	B07L5L4GTB	9	404.00	2022-07-24 00:00:00	2022-07-24 00:00:00
2552	PCIM04IA608	B0B7L86YCB	13	300.00	2022-07-24 00:00:00	2022-07-24 00:00:00
2553	PCIM04IA608	B08YK7BBD2	6	999.00	2022-07-24 00:00:00	2022-07-24 00:00:00
2554	PCIM04IA608	B09ZTZ9N3Q	10	1699.00	2022-07-24 00:00:00	2022-07-24 00:00:00
2555	PCIM04IA608	B086JTMRYL	3	1899.00	2022-07-24 00:00:00	2022-07-24 00:00:00
2556	PCIM04IA608	B08CRRQK6Z	6	12499.00	2022-07-24 00:00:00	2022-07-24 00:00:00
2557	AIAA40PM979	B08CRRQK6Z	11	12499.00	2022-01-20 00:00:00	2022-01-20 00:00:00
2558	AIAA40PM979	B098K3H92Z	7	899.00	2022-01-20 00:00:00	2022-01-20 00:00:00
2559	AIAA40PM979	B07XJYYH7L	14	999.00	2022-01-20 00:00:00	2022-01-20 00:00:00
2560	AIAA40PM979	B0BJYSCWFQ	3	1999.00	2022-01-20 00:00:00	2022-01-20 00:00:00
2561	AIAA40PM979	B07J2NGB69	2	1390.00	2022-01-20 00:00:00	2022-01-20 00:00:00
2562	ACPA73NO535	B08DDRGWTJ	9	299.00	2022-12-07 00:00:00	2022-12-07 00:00:00
2563	ACPA73NO535	B0B244R4KB	7	2899.00	2022-12-07 00:00:00	2022-12-07 00:00:00
2564	ACPA73NO535	B08VB57558	10	74999.00	2022-12-07 00:00:00	2022-12-07 00:00:00
2565	ACPA73NO535	B01I1LDZGA	14	1775.00	2022-12-07 00:00:00	2022-12-07 00:00:00
2566	ACPA73NO535	B08VFF6JQ8	7	1699.00	2022-12-07 00:00:00	2022-12-07 00:00:00
2567	POOP48AA571	B09YV3K34W	11	9999.00	2021-11-21 00:00:00	2021-11-21 00:00:00
2568	POOP48AA571	B0B23LW7NV	8	2899.00	2021-11-21 00:00:00	2021-11-21 00:00:00
2569	POOP48AA571	B07K19NYZ8	8	3290.00	2021-11-21 00:00:00	2021-11-21 00:00:00
2570	AAAN21AP374	B099Z83VRC	5	1790.00	2022-05-19 00:00:00	2022-05-19 00:00:00
2571	AAAN21AP374	B08HVL8QN3	13	2199.00	2022-05-19 00:00:00	2022-05-19 00:00:00
2572	AAAN21AP374	B099K9ZX65	1	44990.00	2022-05-19 00:00:00	2022-05-19 00:00:00
2573	AAAN21AP374	B08RP2L2NL	11	999.00	2022-05-19 00:00:00	2022-05-19 00:00:00
2574	AAAN21AP374	B09Q8WQ5QJ	10	499.00	2022-05-19 00:00:00	2022-05-19 00:00:00
2575	NOAP32MM923	B08LKS3LSP	1	999.00	2022-06-18 00:00:00	2022-06-18 00:00:00
2576	NOAP32MM923	B07N8RQ6W7	5	699.00	2022-06-18 00:00:00	2022-06-18 00:00:00
2577	NOAP32MM923	B00P93X0VO	15	120.00	2022-06-18 00:00:00	2022-06-18 00:00:00
2578	NOAP32MM923	B0B82YGCF6	2	3499.00	2022-06-18 00:00:00	2022-06-18 00:00:00
2579	NOAP32MM923	B07F1P8KNV	2	1099.00	2022-06-18 00:00:00	2022-06-18 00:00:00
2580	CMAC97PA028	B087FXHB6J	11	999.00	2021-07-15 00:00:00	2021-07-15 00:00:00
2581	CMAC97PA028	B09JKNF147	6	1999.00	2021-07-15 00:00:00	2021-07-15 00:00:00
2582	OPMI98MO606	B07CD2BN46	15	599.00	2021-07-24 00:00:00	2021-07-24 00:00:00
2583	OPMI98MO606	B07JW9H4J1	8	1099.00	2021-07-24 00:00:00	2021-07-24 00:00:00
2584	OPMI98MO606	B09WF4Q7B3	1	2599.00	2021-07-24 00:00:00	2021-07-24 00:00:00
2585	OPMI98MO606	B08ZN4B121	11	1599.00	2021-07-24 00:00:00	2021-07-24 00:00:00
2586	OPMI98MO606	B0BMFD94VD	6	499.00	2021-07-24 00:00:00	2021-07-24 00:00:00
2587	OPMI98MO606	B078JT7LTD	8	8073.00	2021-07-24 00:00:00	2021-07-24 00:00:00
2588	AOOA57AM790	B00CEQEGPI	10	2295.00	2021-03-02 00:00:00	2021-03-02 00:00:00
2589	AOOA57AM790	B09DDCQFMT	4	1999.00	2021-03-02 00:00:00	2021-03-02 00:00:00
2590	AOOA57AM790	B0B4PPD89B	6	79.00	2021-03-02 00:00:00	2021-03-02 00:00:00
2591	OMAN02CI741	B07TC9F7PN	8	16899.00	2022-10-04 00:00:00	2022-10-04 00:00:00
2592	OMAN02CI741	B012ELCYUG	13	635.00	2022-10-04 00:00:00	2022-10-04 00:00:00
2593	OMAN02CI741	B096YCN3SD	3	1000.00	2022-10-04 00:00:00	2022-10-04 00:00:00
2594	IAAN47MO552	B09NNGHG22	2	56790.00	2021-05-12 00:00:00	2021-05-12 00:00:00
2595	OAOA40IA027	B01N1XVVLC	14	15999.00	2022-01-16 00:00:00	2022-01-16 00:00:00
2596	AAAO55CN827	B08VF8V79P	15	1699.00	2022-02-23 00:00:00	2022-02-23 00:00:00
2597	AAAO55CN827	B00UGZWM2I	2	800.00	2022-02-23 00:00:00	2022-02-23 00:00:00
2598	AAAO55CN827	B017NC2IPM	2	2911.00	2022-02-23 00:00:00	2022-02-23 00:00:00
2599	AAAO55CN827	B09XB1R2F3	13	799.00	2022-02-23 00:00:00	2022-02-23 00:00:00
2600	AAAO55CN827	B0188KPKB2	9	9455.00	2022-02-23 00:00:00	2022-02-23 00:00:00
2601	AMIA41IO812	B00ZRBWPA0	15	180.00	2022-04-22 00:00:00	2022-04-22 00:00:00
2602	AMIA41IO812	B0B5LVS732	8	4999.00	2022-04-22 00:00:00	2022-04-22 00:00:00
2603	AMIA41IO812	B085W8CFLH	1	1800.00	2022-04-22 00:00:00	2022-04-22 00:00:00
2604	AMIA41IO812	B0B1YZ9CB8	5	47990.00	2022-04-22 00:00:00	2022-04-22 00:00:00
2605	AMIA41IO812	B07FL3WRX5	4	6500.00	2022-04-22 00:00:00	2022-04-22 00:00:00
2606	AMIA41IO812	B0B2DD66GS	9	2900.00	2022-04-22 00:00:00	2022-04-22 00:00:00
2607	OAAM68II751	B09Z6WH2N1	15	499.00	2021-08-24 00:00:00	2021-08-24 00:00:00
2608	OAAM68II751	B00LM4X0KU	5	100.00	2021-08-24 00:00:00	2021-08-24 00:00:00
2609	OAAM68II751	B08G8H8DPL	1	6375.00	2021-08-24 00:00:00	2021-08-24 00:00:00
2610	OAAM68II751	B0088TKTY2	15	1399.00	2021-08-24 00:00:00	2021-08-24 00:00:00
2611	OAAM68II751	B0B21XL94T	15	34990.00	2021-08-24 00:00:00	2021-08-24 00:00:00
2612	MIAI78ON016	B01CS4A5V4	10	1690.00	2021-09-09 00:00:00	2021-09-09 00:00:00
2613	MIAI78ON016	B07WFPMGQQ	8	27990.00	2021-09-09 00:00:00	2021-09-09 00:00:00
2614	MIAI78ON016	B08PFSZ7FH	7	1499.00	2021-09-09 00:00:00	2021-09-09 00:00:00
2615	MIAI78ON016	B07QDSN9V6	8	1595.00	2021-09-09 00:00:00	2021-09-09 00:00:00
2616	PCPA49NM495	B009UORDX4	11	975.00	2022-08-17 00:00:00	2022-08-17 00:00:00
2617	PCPA49NM495	B07YSJ7FF1	12	1100.00	2022-08-17 00:00:00	2022-08-17 00:00:00
2618	PCPA49NM495	B07YSJ7FF1	2	1100.00	2022-08-17 00:00:00	2022-08-17 00:00:00
2619	NMAO06PN604	B08VJFYH6N	6	1620.00	2022-03-12 00:00:00	2022-03-12 00:00:00
2620	NMAO06PN604	B09NTHQRW3	13	2499.00	2022-03-12 00:00:00	2022-03-12 00:00:00
2621	NMAO06PN604	B09P182Z2H	9	5799.00	2022-03-12 00:00:00	2022-03-12 00:00:00
2622	NMAO06PN604	B07SY4C3TD	11	723.00	2022-03-12 00:00:00	2022-03-12 00:00:00
2623	AIAP16AA098	B09ZDVL7L8	13	3895.00	2021-05-09 00:00:00	2021-05-09 00:00:00
2624	AIAP16AA098	B082FTPRSK	4	1999.00	2021-05-09 00:00:00	2021-05-09 00:00:00
2625	AIAP16AA098	B08QHLXWV3	12	11990.00	2021-05-09 00:00:00	2021-05-09 00:00:00
2626	AIAP16AA098	B0746N6WML	9	450.00	2021-05-09 00:00:00	2021-05-09 00:00:00
2627	IMAA61AA925	B07DWFX9YS	13	1999.00	2022-01-21 00:00:00	2022-01-21 00:00:00
2628	NAIP34PN051	B07LGT55SJ	1	1099.00	2022-06-18 00:00:00	2022-06-18 00:00:00
2629	NAIP34PN051	B08HLC7Z3G	14	2995.00	2022-06-18 00:00:00	2022-06-18 00:00:00
2630	NAIP34PN051	B08JV91JTK	4	1299.00	2022-06-18 00:00:00	2022-06-18 00:00:00
2631	NAIP34PN051	B095K14P86	3	1299.00	2022-06-18 00:00:00	2022-06-18 00:00:00
2632	NAIP34PN051	B07VVXJ2P5	5	399.00	2022-06-18 00:00:00	2022-06-18 00:00:00
2633	NAIP34PN051	B09NBZ36F7	12	4000.00	2022-06-18 00:00:00	2022-06-18 00:00:00
2634	PANA91CP158	B0B2DJ5RVQ	14	1999.00	2022-09-04 00:00:00	2022-09-04 00:00:00
2635	PANA91CP158	B07WDK3ZS6	1	18999.00	2022-09-04 00:00:00	2022-09-04 00:00:00
2636	PANA91CP158	B07XJWTYM2	9	1999.00	2022-09-04 00:00:00	2022-09-04 00:00:00
2637	PANA91CP158	B09P858DK8	13	1999.00	2022-09-04 00:00:00	2022-09-04 00:00:00
2638	NMAN87PI235	B0B6F98KJJ	13	29999.00	2022-02-16 00:00:00	2022-02-16 00:00:00
2639	NMAN87PI235	B07JJFSG2B	13	2500.00	2022-02-16 00:00:00	2022-02-16 00:00:00
2640	MNMA91NA929	B00SH18114	9	299.00	2021-10-26 00:00:00	2021-10-26 00:00:00
2641	MNMA91NA929	B09YV3K34W	11	9999.00	2021-10-26 00:00:00	2021-10-26 00:00:00
2642	MNMA91NA929	B09BF8JBWX	1	1249.00	2021-10-26 00:00:00	2021-10-26 00:00:00
2643	AONN45NI425	B09LHYZ3GJ	8	20999.00	2021-12-29 00:00:00	2021-12-29 00:00:00
2644	AONN45NI425	B07YNTJ8ZM	12	999.00	2021-12-29 00:00:00	2021-12-29 00:00:00
2645	NNAO69CM629	B0B16KD737	15	15999.00	2022-05-02 00:00:00	2022-05-02 00:00:00
2646	NNAO69CM629	B00VA7YYUO	1	99.00	2022-05-02 00:00:00	2022-05-02 00:00:00
2647	NNAO69CM629	B07JF9B592	1	699.00	2022-05-02 00:00:00	2022-05-02 00:00:00
2648	NNAO69CM629	B07VQGVL68	4	499.00	2022-05-02 00:00:00	2022-05-02 00:00:00
2649	NNAO69CM629	B08RX8G496	1	1099.00	2022-05-02 00:00:00	2022-05-02 00:00:00
2650	NNAO69CM629	B08WJ86PV2	10	990.00	2022-05-02 00:00:00	2022-05-02 00:00:00
2651	NOAI95NM024	B096MSW6CT	6	1899.00	2022-06-06 00:00:00	2022-06-06 00:00:00
2652	NOAI95NM024	B08CT62BM1	5	999.00	2022-06-06 00:00:00	2022-06-06 00:00:00
2653	NOAI95NM024	B09NTHQRW3	8	2499.00	2022-06-06 00:00:00	2022-06-06 00:00:00
2654	IPCA54IN003	B09QGZFBPM	12	999.00	2021-09-18 00:00:00	2021-09-18 00:00:00
2655	IPCA54IN003	B08WKG2MWT	6	1099.00	2021-09-18 00:00:00	2021-09-18 00:00:00
2656	IPCA54IN003	B0BPBG712X	6	1199.00	2021-09-18 00:00:00	2021-09-18 00:00:00
2657	IPCA54IN003	B00UGZWM2I	14	800.00	2021-09-18 00:00:00	2021-09-18 00:00:00
2658	IPCA54IN003	B08PV1X771	14	20900.00	2021-09-18 00:00:00	2021-09-18 00:00:00
2659	IPCA54IN003	B08XMSKKMM	5	1999.00	2021-09-18 00:00:00	2021-09-18 00:00:00
2660	IPCA54IN003	B07R679HTT	15	23999.00	2021-09-18 00:00:00	2021-09-18 00:00:00
2661	OOMI16CN325	B09QGZM8QB	15	999.00	2022-10-30 00:00:00	2022-10-30 00:00:00
2662	OOMI16CN325	B07YQ5SN4H	5	595.00	2022-10-30 00:00:00	2022-10-30 00:00:00
2663	OOMI16CN325	B0B3N8VG24	4	299.00	2022-10-30 00:00:00	2022-10-30 00:00:00
2664	OOMI16CN325	B09NY7W8YD	5	11999.00	2022-10-30 00:00:00	2022-10-30 00:00:00
2665	AOMN42AI111	B095X38CJS	12	99.00	2021-01-31 00:00:00	2021-01-31 00:00:00
2666	AOMN42AI111	B00K32PEW4	8	535.00	2021-01-31 00:00:00	2021-01-31 00:00:00
2667	AOMN42AI111	B0883LQJ6B	14	1690.00	2021-01-31 00:00:00	2021-01-31 00:00:00
2668	OAAA26AA377	B0B4HKH19N	14	931.00	2022-10-09 00:00:00	2022-10-09 00:00:00
2669	OAAA26AA377	B0B4F2TTTS	11	14999.00	2022-10-09 00:00:00	2022-10-09 00:00:00
2670	OAAA26AA377	B0BBFJLP21	14	15999.00	2022-10-09 00:00:00	2022-10-09 00:00:00
2671	OAAA26AA377	B0BN2576GQ	3	1599.00	2022-10-09 00:00:00	2022-10-09 00:00:00
2672	CCAI16AM280	B07DC4RZPY	8	1999.00	2022-03-08 00:00:00	2022-03-08 00:00:00
2673	CCAI16AM280	B08KHM9VBJ	9	3250.00	2022-03-08 00:00:00	2022-03-08 00:00:00
2674	CCAI16AM280	B09HK9JH4F	5	399.00	2022-03-08 00:00:00	2022-03-08 00:00:00
2675	AAPC62AO332	B0B4F4QZ1H	4	19499.00	2022-02-15 00:00:00	2022-02-15 00:00:00
2676	AAPC62AO332	B078KRFWQB	13	3945.00	2022-02-15 00:00:00	2022-02-15 00:00:00
2677	NMAO92AN877	B07KNM95JK	12	1150.00	2022-02-24 00:00:00	2022-02-24 00:00:00
2678	NMAO92AN877	B07D2NMTTV	2	3500.00	2022-02-24 00:00:00	2022-02-24 00:00:00
2679	NMAO92AN877	B07LGT55SJ	15	1099.00	2022-02-24 00:00:00	2022-02-24 00:00:00
2680	NMAO92AN877	B01GGKYKQM	9	700.00	2022-02-24 00:00:00	2022-02-24 00:00:00
2681	NMAO92AN877	B09BW334ML	6	1499.00	2022-02-24 00:00:00	2022-02-24 00:00:00
2682	NMAO92AN877	B09Z6WH2N1	12	499.00	2022-02-24 00:00:00	2022-02-24 00:00:00
2683	PANO03MC709	B00B3VFJY2	10	980.00	2021-01-06 00:00:00	2021-01-06 00:00:00
2684	PANO03MC709	B09CKSYBLR	13	1499.00	2021-01-06 00:00:00	2021-01-06 00:00:00
2685	PANO03MC709	B0B65P827P	15	549.00	2021-01-06 00:00:00	2021-01-06 00:00:00
2686	PANO03MC709	B08HDH26JX	5	699.00	2021-01-06 00:00:00	2021-01-06 00:00:00
2687	AAIN56MI630	B09C6FML9B	11	599.00	2021-11-01 00:00:00	2021-11-01 00:00:00
2688	AAIN56MI630	B00VA7YYUO	9	99.00	2021-11-01 00:00:00	2021-11-01 00:00:00
2689	AAIN56MI630	B08JQN8DGZ	2	2990.00	2021-11-01 00:00:00	2021-11-01 00:00:00
2690	AAIN56MI630	B00E3DVQFS	2	1109.00	2021-11-01 00:00:00	2021-11-01 00:00:00
2691	AAIN56MI630	B08M66K48D	11	599.00	2021-11-01 00:00:00	2021-11-01 00:00:00
2692	AAIN56MI630	B0814LP6S9	9	1099.00	2021-11-01 00:00:00	2021-11-01 00:00:00
2693	AAIN56MI630	B077Z65HSD	14	999.00	2021-11-01 00:00:00	2021-11-01 00:00:00
2694	CCCA80CO209	B07WNK1FFN	3	1699.00	2021-05-21 00:00:00	2021-05-21 00:00:00
2695	CCCA80CO209	B0B65MJ45G	10	549.00	2021-05-21 00:00:00	2021-05-21 00:00:00
2696	CCCA80CO209	B098R25TGC	3	2999.00	2021-05-21 00:00:00	2021-05-21 00:00:00
2697	CCCA80CO209	B09VH568H7	15	299.00	2021-05-21 00:00:00	2021-05-21 00:00:00
2698	CCCA80CO209	B09BVCVTBC	11	3499.00	2021-05-21 00:00:00	2021-05-21 00:00:00
2699	CCCA80CO209	B08VS3YLRK	13	1499.00	2021-05-21 00:00:00	2021-05-21 00:00:00
2700	CCCA80CO209	B008YW8M0G	14	875.00	2021-05-21 00:00:00	2021-05-21 00:00:00
2701	NAON81MN204	B084N18QZY	1	849.00	2022-05-12 00:00:00	2022-05-12 00:00:00
2702	NAON81MN204	B07D8VBYB4	9	7776.00	2022-05-12 00:00:00	2022-05-12 00:00:00
2703	NAON81MN204	B08GJNM9N7	5	1199.00	2022-05-12 00:00:00	2022-05-12 00:00:00
2704	NAON81MN204	B083P71WKK	1	1500.00	2022-05-12 00:00:00	2022-05-12 00:00:00
2705	PNPC54AM226	B09DSXK8JX	3	19499.00	2021-10-23 00:00:00	2021-10-23 00:00:00
2706	PNPC54AM226	B09SJ1FTYV	11	1899.00	2021-10-23 00:00:00	2021-10-23 00:00:00
2707	PNPC54AM226	B09G5TSGXV	6	799.00	2021-10-23 00:00:00	2021-10-23 00:00:00
2708	PNPC54AM226	B08CYNJ5KY	12	861.00	2021-10-23 00:00:00	2021-10-23 00:00:00
2709	NOCA46NO783	B09HN7LD5L	3	4500.00	2022-06-21 00:00:00	2022-06-21 00:00:00
2710	NOCA46NO783	B0B3JSWG81	4	999.00	2022-06-21 00:00:00	2022-06-21 00:00:00
2711	NOCA46NO783	B00RFWNJMC	15	499.00	2022-06-21 00:00:00	2022-06-21 00:00:00
2712	NCMP81AO908	B0BHYLCL19	13	399.00	2022-09-26 00:00:00	2022-09-26 00:00:00
2713	NCMP81AO908	B08H6CZSHT	1	3295.00	2022-09-26 00:00:00	2022-09-26 00:00:00
2714	OAPA59PP421	B0B94JPY2N	6	999.00	2022-10-03 00:00:00	2022-10-03 00:00:00
2715	OAPA59PP421	B08C4Z69LN	15	3500.00	2022-10-03 00:00:00	2022-10-03 00:00:00
2716	OAPA59PP421	B085DTN6R2	10	899.00	2022-10-03 00:00:00	2022-10-03 00:00:00
2717	OAPA59PP421	B07BRKK9JQ	8	1599.00	2022-10-03 00:00:00	2022-10-03 00:00:00
2718	NCNM12NC707	B07SRM58TP	7	2099.00	2021-12-20 00:00:00	2021-12-20 00:00:00
2719	NCNM12NC707	B07LFWP97N	15	1099.00	2021-12-20 00:00:00	2021-12-20 00:00:00
2720	NCNM12NC707	B08FYB5HHK	8	1999.00	2021-12-20 00:00:00	2021-12-20 00:00:00
2721	NCNM12NC707	B06XR9PR5X	15	600.00	2021-12-20 00:00:00	2021-12-20 00:00:00
2722	NCNM12NC707	B08DDRGWTJ	11	299.00	2021-12-20 00:00:00	2021-12-20 00:00:00
2723	NCNM12NC707	B06XSK3XL6	10	999.00	2021-12-20 00:00:00	2021-12-20 00:00:00
2724	PACN90NM183	B09TWH8YHM	3	24999.00	2022-07-18 00:00:00	2022-07-18 00:00:00
2725	PACN90NM183	B07WGPKTS4	4	19999.00	2022-07-18 00:00:00	2022-07-18 00:00:00
2726	PACN90NM183	B09C6HXFC1	3	1799.00	2022-07-18 00:00:00	2022-07-18 00:00:00
2727	PACN90NM183	B0746JGVDS	8	999.00	2022-07-18 00:00:00	2022-07-18 00:00:00
2728	PMCO78CO417	B09H39KTTB	12	499.00	2021-03-24 00:00:00	2021-03-24 00:00:00
2729	OANP54CA404	B0B53QFZPY	15	5999.00	2021-05-27 00:00:00	2021-05-27 00:00:00
2730	OANP54CA404	B013B2WGT6	9	1899.00	2021-05-27 00:00:00	2021-05-27 00:00:00
2731	OANP54CA404	B09MTLG4TP	4	999.00	2021-05-27 00:00:00	2021-05-27 00:00:00
2732	OANP54CA404	B09N6TTHT6	6	99.00	2021-05-27 00:00:00	2021-05-27 00:00:00
2733	OANP54CA404	B07YSJ7FF1	11	1100.00	2021-05-27 00:00:00	2021-05-27 00:00:00
2734	MACA18AM861	B08L4SBJRY	15	1299.00	2021-12-21 00:00:00	2021-12-21 00:00:00
2735	MACA18AM861	B09C6FML9B	12	599.00	2021-12-21 00:00:00	2021-12-21 00:00:00
2736	MACA18AM861	B0789LZTCJ	12	799.00	2021-12-21 00:00:00	2021-12-21 00:00:00
2737	MACA18AM861	B07YY1BY5B	7	4999.00	2021-12-21 00:00:00	2021-12-21 00:00:00
2738	PPIO54AN625	B00N1U7JXM	5	175.00	2022-03-09 00:00:00	2022-03-09 00:00:00
2739	PPIO54AN625	B0BD3T6Z1D	12	13499.00	2022-03-09 00:00:00	2022-03-09 00:00:00
2740	PPIO54AN625	B008YW3CYM	6	1190.00	2022-03-09 00:00:00	2022-03-09 00:00:00
2741	PPIO54AN625	B00LVMTA2A	15	250.00	2022-03-09 00:00:00	2022-03-09 00:00:00
2742	PPIO54AN625	B07YWS9SP9	6	999.00	2022-03-09 00:00:00	2022-03-09 00:00:00
2743	PPIO54AN625	B0BLC2BYPX	4	1299.00	2022-03-09 00:00:00	2022-03-09 00:00:00
2744	PPIO54AN625	B0B467CCB9	4	16990.00	2022-03-09 00:00:00	2022-03-09 00:00:00
2745	INPN16CN863	B096YCN3SD	3	1000.00	2022-02-13 00:00:00	2022-02-13 00:00:00
2746	INPN16CN863	B07K2HVKLL	8	1020.00	2022-02-13 00:00:00	2022-02-13 00:00:00
2747	INPN16CN863	B098K3H92Z	4	899.00	2022-02-13 00:00:00	2022-02-13 00:00:00
2748	OANC29AA171	B09VH568H7	1	299.00	2021-02-09 00:00:00	2021-02-09 00:00:00
2749	OANC29AA171	B08FYB5HHK	9	1999.00	2021-02-09 00:00:00	2021-02-09 00:00:00
2750	OANC29AA171	B08QSC1XY8	15	1099.00	2021-02-09 00:00:00	2021-02-09 00:00:00
2751	OANC29AA171	B0B4F5L738	1	19499.00	2021-02-09 00:00:00	2021-02-09 00:00:00
2752	OANC29AA171	B09YV4MW2T	12	9999.00	2021-02-09 00:00:00	2021-02-09 00:00:00
2753	AINM06IC708	B09VPH38JS	11	1499.00	2021-02-09 00:00:00	2021-02-09 00:00:00
2754	AINM06IC708	B09C6HWG18	7	1999.00	2021-02-09 00:00:00	2021-02-09 00:00:00
2755	AINM06IC708	B01MQZ7J8K	11	1445.00	2021-02-09 00:00:00	2021-02-09 00:00:00
2756	AINM06IC708	B07222HQKP	12	999.00	2021-02-09 00:00:00	2021-02-09 00:00:00
2757	AINM06IC708	B0BLC2BYPX	8	1299.00	2021-02-09 00:00:00	2021-02-09 00:00:00
2758	NAAM59PC929	B07Q4NJQC5	3	599.00	2021-07-14 00:00:00	2021-07-14 00:00:00
2759	OAAA33NI055	B09NS5TKPN	15	75990.00	2021-09-15 00:00:00	2021-09-15 00:00:00
2760	OAAA33NI055	B0BLC2BYPX	3	1299.00	2021-09-15 00:00:00	2021-09-15 00:00:00
2761	OAAA33NI055	B08WRKSF9D	5	8500.00	2021-09-15 00:00:00	2021-09-15 00:00:00
2762	OAAA33NI055	B01DJJVFPC	13	315.00	2021-09-15 00:00:00	2021-09-15 00:00:00
2763	MAAA10MO667	B0BR4F878Q	15	1999.00	2022-03-07 00:00:00	2022-03-07 00:00:00
2764	MAAA10MO667	B09NBZ36F7	6	4000.00	2022-03-07 00:00:00	2022-03-07 00:00:00
2765	PAOP81CN931	B09MFR93KS	11	5999.00	2021-04-07 00:00:00	2021-04-07 00:00:00
2766	PAOP81CN931	B00YQLG7GK	5	1695.00	2021-04-07 00:00:00	2021-04-07 00:00:00
2767	PAOP81CN931	B07YWS9SP9	3	999.00	2021-04-07 00:00:00	2021-04-07 00:00:00
2768	PAOP81CN931	B08R69VDHT	10	499.00	2021-04-07 00:00:00	2021-04-07 00:00:00
2769	PAOP81CN931	B09NY7W8YD	12	11999.00	2021-04-07 00:00:00	2021-04-07 00:00:00
2770	AACM23IP231	B06XFTHCNY	9	758.00	2021-07-14 00:00:00	2021-07-14 00:00:00
2771	ANMN30CM892	B01486F4G6	2	3690.00	2021-10-02 00:00:00	2021-10-02 00:00:00
2772	ANMN30CM892	B09F6KL23R	15	2799.00	2021-10-02 00:00:00	2021-10-02 00:00:00
2773	ANMN30CM892	B09BL2KHQW	4	260.00	2021-10-02 00:00:00	2021-10-02 00:00:00
2774	ANMN30CM892	B07WDK3ZS2	2	29990.00	2021-10-02 00:00:00	2021-10-02 00:00:00
2775	CPPI70IP320	B00LZPQVMK	13	320.00	2021-05-03 00:00:00	2021-05-03 00:00:00
2776	MAIM96IN362	B01EZ0X3L8	11	1650.00	2022-02-10 00:00:00	2022-02-10 00:00:00
2777	MAIM96IN362	B01C8P29T4	7	785.00	2022-02-10 00:00:00	2022-02-10 00:00:00
2778	MAIM96IN362	B09X76VL5L	8	3490.00	2022-02-10 00:00:00	2022-02-10 00:00:00
2779	AINA21PA645	B01M5F614J	1	13999.00	2021-02-27 00:00:00	2021-02-27 00:00:00
2780	AINA21PA645	B0BB3CBFBM	11	65000.00	2021-02-27 00:00:00	2021-02-27 00:00:00
2781	AINA21PA645	B09TMZ1MF8	12	4000.00	2021-02-27 00:00:00	2021-02-27 00:00:00
2782	MAPI88NO125	B00LXTFMRS	6	225.00	2021-04-30 00:00:00	2021-04-30 00:00:00
2783	MAPI88NO125	B0B3RSDSZ3	4	9999.00	2021-04-30 00:00:00	2021-04-30 00:00:00
2784	MAPI88NO125	B09BNXQ6BR	14	6499.00	2021-04-30 00:00:00	2021-04-30 00:00:00
2785	MAPI88NO125	B094YFFSMY	7	1999.00	2021-04-30 00:00:00	2021-04-30 00:00:00
2786	MAPI88NO125	B09Q8HMKZX	9	699.00	2021-04-30 00:00:00	2021-04-30 00:00:00
2787	MAPI88NO125	B07WFPMGQQ	6	27990.00	2021-04-30 00:00:00	2021-04-30 00:00:00
2788	MAPI88NO125	B009VCGPSY	11	649.00	2021-04-30 00:00:00	2021-04-30 00:00:00
2789	APNN19AP635	B09BF8JBWX	1	1249.00	2022-08-12 00:00:00	2022-08-12 00:00:00
2790	APNN19AP635	B00V9NHDI4	12	3799.00	2022-08-12 00:00:00	2022-08-12 00:00:00
2791	APNN19AP635	B08CGW4GYR	6	999.00	2022-08-12 00:00:00	2022-08-12 00:00:00
2792	APNN19AP635	B077Z65HSD	14	999.00	2022-08-12 00:00:00	2022-08-12 00:00:00
2793	APNN19AP635	B09WMTJPG7	15	4400.00	2022-08-12 00:00:00	2022-08-12 00:00:00
2794	APNN19AP635	B00KXULGJQ	8	5499.00	2022-08-12 00:00:00	2022-08-12 00:00:00
2795	APNN19AP635	B097XJQZ8H	5	6000.00	2022-08-12 00:00:00	2022-08-12 00:00:00
2796	PONP08MO139	B0836JGZ74	14	2499.00	2022-02-18 00:00:00	2022-02-18 00:00:00
2797	PONP08MO139	B09Z28BQZT	8	3999.00	2022-02-18 00:00:00	2022-02-18 00:00:00
2798	PONP08MO139	B085194JFL	12	499.00	2022-02-18 00:00:00	2022-02-18 00:00:00
2799	PONP08MO139	B07B275VN9	13	799.00	2022-02-18 00:00:00	2022-02-18 00:00:00
2800	PONP08MO139	B08TR61BVK	9	1499.00	2022-02-18 00:00:00	2022-02-18 00:00:00
2801	NAMC08AI414	B018SJJ0GE	6	2999.00	2022-04-07 00:00:00	2022-04-07 00:00:00
2802	ACIA12NO692	B0B2DD66GS	3	2900.00	2021-10-18 00:00:00	2021-10-18 00:00:00
2803	ACIA12NO692	B0971DWFDT	11	699.00	2021-10-18 00:00:00	2021-10-18 00:00:00
2804	ACIA12NO692	B091KNVNS9	15	699.00	2021-10-18 00:00:00	2021-10-18 00:00:00
2805	ACIA12NO692	B08FGNPQ9X	8	2999.00	2021-10-18 00:00:00	2021-10-18 00:00:00
2806	CMPO23IP608	B07SY4C3TD	1	723.00	2022-07-11 00:00:00	2022-07-11 00:00:00
2807	CMPO23IP608	B0974H97TJ	13	799.00	2022-07-11 00:00:00	2022-07-11 00:00:00
2808	CMPO23IP608	B0BJ6P3LSK	8	24999.00	2022-07-11 00:00:00	2022-07-11 00:00:00
2809	PNMN03NN968	B086PXQ2R4	3	165.00	2021-01-13 00:00:00	2021-01-13 00:00:00
2810	PNMN03NN968	B0B2CPVXHX	4	1499.00	2021-01-13 00:00:00	2021-01-13 00:00:00
2811	APNA16CO080	B09DG9VNWB	8	29999.00	2021-08-07 00:00:00	2021-08-07 00:00:00
2812	APNA16CO080	B09CYTJV3N	6	5999.00	2021-08-07 00:00:00	2021-08-07 00:00:00
2813	APNA16CO080	B004IO5BMQ	10	995.00	2021-08-07 00:00:00	2021-08-07 00:00:00
2814	APNA16CO080	B08L5FM4JC	3	2400.00	2021-08-07 00:00:00	2021-08-07 00:00:00
2815	APNA16CO080	B01M4GGIVU	3	699.00	2021-08-07 00:00:00	2021-08-07 00:00:00
2816	APNA16CO080	B097R3XH9R	4	15270.00	2021-08-07 00:00:00	2021-08-07 00:00:00
2817	CONC56AO163	B09G5TSGXV	7	799.00	2021-06-18 00:00:00	2021-06-18 00:00:00
2818	CONC56AO163	B00Y4ORQ46	8	795.00	2021-06-18 00:00:00	2021-06-18 00:00:00
2819	APAN19CP347	B08C7TYHPB	3	1490.00	2021-02-25 00:00:00	2021-02-25 00:00:00
2820	APAN19CP347	B06Y36JKC3	5	300.00	2021-02-25 00:00:00	2021-02-25 00:00:00
2821	APAN19CP347	B00A328ENA	6	3945.00	2021-02-25 00:00:00	2021-02-25 00:00:00
2822	AANA27AC090	B09NFSHCWN	7	1899.00	2022-12-27 00:00:00	2022-12-27 00:00:00
2823	AANA27AC090	B01F7B2JCI	2	450.00	2022-12-27 00:00:00	2022-12-27 00:00:00
2824	AANA27AC090	B094JNXNPV	3	399.00	2022-12-27 00:00:00	2022-12-27 00:00:00
2825	AANA27AC090	B0B31FR4Y2	2	9999.00	2022-12-27 00:00:00	2022-12-27 00:00:00
2826	CCPN20MO608	B09N3ZNHTY	5	4490.00	2022-04-12 00:00:00	2022-04-12 00:00:00
2827	CCPN20MO608	B083RCTXLL	7	1199.00	2022-04-12 00:00:00	2022-04-12 00:00:00
2828	MIIA15MM596	B09939XJX8	15	1500.00	2022-06-14 00:00:00	2022-06-14 00:00:00
2829	MIIA15MM596	B07SRM58TP	8	2099.00	2022-06-14 00:00:00	2022-06-14 00:00:00
2830	MIIA15MM596	B01IBRHE3E	12	499.00	2022-06-14 00:00:00	2022-06-14 00:00:00
2831	MIIA15MM596	B00P0R95EA	6	640.00	2022-06-14 00:00:00	2022-06-14 00:00:00
2832	MIIA15MM596	B07YC8JHMB	15	16000.00	2022-06-14 00:00:00	2022-06-14 00:00:00
2833	MIIA15MM596	B0BBWJFK5C	13	8999.00	2022-06-14 00:00:00	2022-06-14 00:00:00
2834	CONP85IC278	B09H39KTTB	14	499.00	2022-10-13 00:00:00	2022-10-13 00:00:00
2835	CONP85IC278	B08BQ947H3	14	149.00	2022-10-13 00:00:00	2022-10-13 00:00:00
2836	CONP85IC278	B09SJ1FTYV	3	1899.00	2022-10-13 00:00:00	2022-10-13 00:00:00
2837	CONP85IC278	B09SPTNG58	7	2349.00	2022-10-13 00:00:00	2022-10-13 00:00:00
2838	CONP85IC278	B09GFPVD9Y	4	10999.00	2022-10-13 00:00:00	2022-10-13 00:00:00
2839	MNOM52MO225	B08CGW4GYR	9	999.00	2022-07-20 00:00:00	2022-07-20 00:00:00
2840	MNOM52MO225	B07VQGVL68	15	499.00	2022-07-20 00:00:00	2022-07-20 00:00:00
2841	MNOM52MO225	B01F7B2JCI	9	450.00	2022-07-20 00:00:00	2022-07-20 00:00:00
2842	MNOM52MO225	B091V8HK8Z	10	1750.00	2022-07-20 00:00:00	2022-07-20 00:00:00
2843	MNOM52MO225	B09XTQFFCG	9	3199.00	2022-07-20 00:00:00	2022-07-20 00:00:00
2844	MNOM52MO225	B0BBMPH39N	5	999.00	2022-07-20 00:00:00	2022-07-20 00:00:00
2845	MNOM52MO225	B00O24PUO6	5	1650.00	2022-07-20 00:00:00	2022-07-20 00:00:00
2846	CAMC16AA801	B088ZTJT2R	14	1295.00	2022-12-20 00:00:00	2022-12-20 00:00:00
2847	CAMC16AA801	B0856HNMR7	11	2499.00	2022-12-20 00:00:00	2022-12-20 00:00:00
2848	CAMC16AA801	B08WKFSN84	9	1099.00	2022-12-20 00:00:00	2022-12-20 00:00:00
2849	CAMC16AA801	B07Z53L5QL	8	1499.00	2022-12-20 00:00:00	2022-12-20 00:00:00
2850	CAMC16AA801	B08BG4M4N7	3	499.00	2022-12-20 00:00:00	2022-12-20 00:00:00
2851	CCIA97PN012	B07GXHC691	3	499.00	2021-06-15 00:00:00	2021-06-15 00:00:00
2852	CCIA97PN012	B0BDYVC5TD	14	1800.00	2021-06-15 00:00:00	2021-06-15 00:00:00
2853	CCIA97PN012	B08PSQRW2T	10	1099.00	2021-06-15 00:00:00	2021-06-15 00:00:00
2854	CCIA97PN012	B0BB3CBFBM	8	65000.00	2021-06-15 00:00:00	2021-06-15 00:00:00
2855	CCIA97PN012	B083J64CBB	6	499.00	2021-06-15 00:00:00	2021-06-15 00:00:00
2856	CCIA97PN012	B09HS1NDRQ	3	799.00	2021-06-15 00:00:00	2021-06-15 00:00:00
2857	ACAN97AC770	B08SKZ2RMG	10	999.00	2021-05-29 00:00:00	2021-05-29 00:00:00
2858	ACAN97AC770	B08YK7BBD2	12	999.00	2021-05-29 00:00:00	2021-05-29 00:00:00
2859	ACAN97AC770	B08MZQBFLN	14	4999.00	2021-05-29 00:00:00	2021-05-29 00:00:00
2860	ACAN97AC770	B0085W2MUQ	11	970.00	2021-05-29 00:00:00	2021-05-29 00:00:00
2861	ACAN97AC770	B0993BB11X	12	1599.00	2021-05-29 00:00:00	2021-05-29 00:00:00
2862	CAAI01AP797	B08WLY8V9S	11	899.00	2022-03-30 00:00:00	2022-03-30 00:00:00
2863	CAAI01AP797	B08CRRQK6Z	10	12499.00	2022-03-30 00:00:00	2022-03-30 00:00:00
2864	CAAI01AP797	B08SMJT55F	11	3990.00	2022-03-30 00:00:00	2022-03-30 00:00:00
2865	CAAI01AP797	B00S9BSJC8	6	8995.00	2022-03-30 00:00:00	2022-03-30 00:00:00
2866	IMAA55OP822	B07JH1CBGW	6	1999.00	2021-12-05 00:00:00	2021-12-05 00:00:00
2867	IMAA55OP822	B09VC2D2WG	6	1499.00	2021-12-05 00:00:00	2021-12-05 00:00:00
2868	IMAA55OP822	B00P93X6EK	10	160.00	2021-12-05 00:00:00	2021-12-05 00:00:00
2869	IMAA55OP822	B09KRHXTLN	2	1699.00	2021-12-05 00:00:00	2021-12-05 00:00:00
2870	IMAA55OP822	B0B9BD2YL4	11	6999.00	2021-12-05 00:00:00	2021-12-05 00:00:00
2871	AACN38OO198	B07JPX9CR7	11	1299.00	2022-12-02 00:00:00	2022-12-02 00:00:00
2872	PAMO04CM511	B0B4T6MR8N	7	800.00	2021-02-13 00:00:00	2021-02-13 00:00:00
2873	PAMO04CM511	B09LV13JFB	3	999.00	2021-02-13 00:00:00	2021-02-13 00:00:00
2874	PAMO04CM511	B00EYW1U68	5	3599.00	2021-02-13 00:00:00	2021-02-13 00:00:00
2875	PAMO04CM511	B0148NPH9I	11	3195.00	2021-02-13 00:00:00	2021-02-13 00:00:00
2876	AOAN65IA348	B01DEWVZ2C	5	999.00	2021-07-07 00:00:00	2021-07-07 00:00:00
2877	AOAN65IA348	B0B2RBP83P	1	59890.00	2021-07-07 00:00:00	2021-07-07 00:00:00
2878	NIAP55AA813	B09P22HXH6	2	5490.00	2022-04-26 00:00:00	2022-04-26 00:00:00
2879	NIAP55AA813	B08K36NZSV	14	999.00	2022-04-26 00:00:00	2022-04-26 00:00:00
2880	NIAP55AA813	B00VA7YYUO	14	99.00	2022-04-26 00:00:00	2022-04-26 00:00:00
2881	NIAP55AA813	B09F6KL23R	6	2799.00	2022-04-26 00:00:00	2022-04-26 00:00:00
2882	NAAN82NA553	B0B5F3YZY4	9	1099.00	2021-04-11 00:00:00	2021-04-11 00:00:00
2883	NAAN82NA553	B09V175NP7	5	6990.00	2021-04-11 00:00:00	2021-04-11 00:00:00
2884	NAAN82NA553	B09PNR6F8Q	9	399.00	2021-04-11 00:00:00	2021-04-11 00:00:00
2885	ACAP28II916	B0883KDSXC	4	990.00	2022-11-21 00:00:00	2022-11-21 00:00:00
2886	ACAP28II916	B01J8S6X2I	4	1100.00	2022-11-21 00:00:00	2022-11-21 00:00:00
2887	ACAP28II916	B0B16KD737	9	15999.00	2022-11-21 00:00:00	2022-11-21 00:00:00
2888	ACAP28II916	B08WKG2MWT	1	1099.00	2022-11-21 00:00:00	2022-11-21 00:00:00
2889	ACAP28II916	B08CT62BM1	7	999.00	2022-11-21 00:00:00	2022-11-21 00:00:00
2890	ACAP28II916	B08VB2CMR3	5	20990.00	2022-11-21 00:00:00	2022-11-21 00:00:00
2891	IMCA38CM036	B09HN7LD5L	10	4500.00	2021-11-17 00:00:00	2021-11-17 00:00:00
2892	IMCA38CM036	B07L1N3TJX	4	3499.00	2021-11-17 00:00:00	2021-11-17 00:00:00
2893	IMCA38CM036	B09YLX91QR	14	399.00	2021-11-17 00:00:00	2021-11-17 00:00:00
2894	IMCA38CM036	B08SBH499M	11	1300.00	2021-11-17 00:00:00	2021-11-17 00:00:00
2895	IMCA38CM036	B07GXHC691	7	499.00	2021-11-17 00:00:00	2021-11-17 00:00:00
2896	IMCA38CM036	B08QHLXWV3	10	11990.00	2021-11-17 00:00:00	2021-11-17 00:00:00
2897	CNAI63AN627	B00SMJPA9C	10	940.00	2021-07-30 00:00:00	2021-07-30 00:00:00
2898	AACN29AA636	B00LM4X3XE	1	100.00	2021-11-06 00:00:00	2021-11-06 00:00:00
2899	AACN29AA636	B08WLY8V9S	2	899.00	2021-11-06 00:00:00	2021-11-06 00:00:00
2900	AACN29AA636	B07L1N3TJX	12	3499.00	2021-11-06 00:00:00	2021-11-06 00:00:00
2901	PMCC78CO611	B0B2DJ5RVQ	15	1999.00	2022-02-04 00:00:00	2022-02-04 00:00:00
2902	PMCC78CO611	B09V17S2BG	6	6990.00	2022-02-04 00:00:00	2022-02-04 00:00:00
2903	PMCC78CO611	B0083T231O	12	1499.00	2022-02-04 00:00:00	2022-02-04 00:00:00
2904	PMCC78CO611	B0B56YRBNT	12	13499.00	2022-02-04 00:00:00	2022-02-04 00:00:00
2905	PMCC78CO611	B09NBZ36F7	2	4000.00	2022-02-04 00:00:00	2022-02-04 00:00:00
2906	PMCC78CO611	B09FPP3R1D	9	2495.00	2022-02-04 00:00:00	2022-02-04 00:00:00
2907	PMCC78CO611	B09ZDVL7L8	7	3895.00	2022-02-04 00:00:00	2022-02-04 00:00:00
2908	NICM57AA041	B0B61DSF17	9	1999.00	2022-08-11 00:00:00	2022-08-11 00:00:00
2909	NICM57AA041	B0162K34H2	14	999.00	2022-08-11 00:00:00	2022-08-11 00:00:00
2910	NICM57AA041	B09X76VL5L	15	3490.00	2022-08-11 00:00:00	2022-08-11 00:00:00
2911	MCPA60PP002	B075K76YW1	2	1395.00	2021-03-11 00:00:00	2021-03-11 00:00:00
2912	MCPA60PP002	B08NCKT9FG	15	798.00	2021-03-11 00:00:00	2021-03-11 00:00:00
2913	MCPA60PP002	B0B4T8RSJ1	15	800.00	2021-03-11 00:00:00	2021-03-11 00:00:00
2914	MCPA60PP002	B097R3XH9R	12	15270.00	2021-03-11 00:00:00	2021-03-11 00:00:00
2915	IANO19IO719	B0BHVPTM2C	10	1949.00	2022-08-05 00:00:00	2022-08-05 00:00:00
2916	IANO19IO719	B0B7B9V9QP	8	35000.00	2022-08-05 00:00:00	2022-08-05 00:00:00
2917	IANO19IO719	B0711PVX6Z	1	500.00	2022-08-05 00:00:00	2022-08-05 00:00:00
2918	IANO19IO719	B08SCCG9D4	15	2000.00	2022-08-05 00:00:00	2022-08-05 00:00:00
2919	MNNN59AA631	B0765B3TH7	15	599.00	2022-11-13 00:00:00	2022-11-13 00:00:00
2920	MNNN59AA631	B0B56YRBNT	13	13499.00	2022-11-13 00:00:00	2022-11-13 00:00:00
2921	MNNN59AA631	B01LYU3BZF	10	3190.00	2022-11-13 00:00:00	2022-11-13 00:00:00
2922	MNNN59AA631	B09T39K9YL	2	24999.00	2022-11-13 00:00:00	2022-11-13 00:00:00
2923	MNNN59AA631	B09DG9VNWB	13	29999.00	2022-11-13 00:00:00	2022-11-13 00:00:00
2924	IINP01MI766	B09Z28BQZT	14	3999.00	2022-10-13 00:00:00	2022-10-13 00:00:00
2925	IINP01MI766	B00VA7YYUO	12	99.00	2022-10-13 00:00:00	2022-10-13 00:00:00
2926	IINP01MI766	B0746N6WML	2	450.00	2022-10-13 00:00:00	2022-10-13 00:00:00
2927	IINP01MI766	B09B125CFJ	10	799.00	2022-10-13 00:00:00	2022-10-13 00:00:00
2928	IINP01MI766	B09XJ5LD6L	12	32999.00	2022-10-13 00:00:00	2022-10-13 00:00:00
2929	IINP01MI766	B09JPC82QC	9	34999.00	2022-10-13 00:00:00	2022-10-13 00:00:00
2930	IINP01MI766	B09YV42QHZ	13	7999.00	2022-10-13 00:00:00	2022-10-13 00:00:00
2931	PAOM85MA933	B00NH12R1O	11	485.00	2022-11-28 00:00:00	2022-11-28 00:00:00
2932	CONA86OM901	B0912WJ87V	4	4000.00	2021-10-23 00:00:00	2021-10-23 00:00:00
2933	CONA86OM901	B09LQQYNZQ	8	4699.00	2021-10-23 00:00:00	2021-10-23 00:00:00
2934	CONA86OM901	B0B3MWYCHQ	8	9999.00	2021-10-23 00:00:00	2021-10-23 00:00:00
2935	CONA86OM901	B07J2NGB69	6	1390.00	2021-10-23 00:00:00	2021-10-23 00:00:00
2936	COIN66IN322	B0B19VJXQZ	9	59900.00	2022-08-24 00:00:00	2022-08-24 00:00:00
2937	COIN66IN322	B09LV13JFB	1	999.00	2022-08-24 00:00:00	2022-08-24 00:00:00
2938	COIN66IN322	B083T5G5PM	15	1990.00	2022-08-24 00:00:00	2022-08-24 00:00:00
2939	COIN66IN322	B0B4F5L738	10	19499.00	2022-08-24 00:00:00	2022-08-24 00:00:00
2940	COIN66IN322	B00F159RIK	11	625.00	2022-08-24 00:00:00	2022-08-24 00:00:00
2941	COIN66IN322	B098NS6PVG	14	349.00	2022-08-24 00:00:00	2022-08-24 00:00:00
2942	MAOI99IA780	B0BLV1GNLN	3	9990.00	2022-07-28 00:00:00	2022-07-28 00:00:00
2943	MAOI99IA780	B07DXRGWDJ	8	5995.00	2022-07-28 00:00:00	2022-07-28 00:00:00
2944	MAOI99IA780	B09GYBZPHF	7	2499.00	2022-07-28 00:00:00	2022-07-28 00:00:00
2945	MAOI99IA780	B07NTKGW45	4	899.00	2022-07-28 00:00:00	2022-07-28 00:00:00
2946	MAOI99IA780	B086394NY5	5	2490.00	2022-07-28 00:00:00	2022-07-28 00:00:00
2947	MAOI99IA780	B07NPBG1B4	13	3300.00	2022-07-28 00:00:00	2022-07-28 00:00:00
2948	MAOI99IA780	B083GQGT3Z	2	799.00	2022-07-28 00:00:00	2022-07-28 00:00:00
2949	INAP57MP433	B09NR6G588	3	4999.00	2021-05-17 00:00:00	2021-05-17 00:00:00
2950	ACPM37CC948	B08CHZ3ZQ7	11	799.00	2022-01-30 00:00:00	2022-01-30 00:00:00
2951	ACPM37CC948	B08K4RDQ71	9	999.00	2022-01-30 00:00:00	2022-01-30 00:00:00
2952	ACPM37CC948	B0B1MDZV9C	11	4495.00	2022-01-30 00:00:00	2022-01-30 00:00:00
2953	AAAA62PA275	B08KRMK9LZ	5	5999.00	2021-02-24 00:00:00	2021-02-24 00:00:00
2954	AAAA62PA275	B09L8DT7D6	4	499.00	2021-02-24 00:00:00	2021-02-24 00:00:00
2955	AAAA62PA275	B009P2LK80	3	1639.00	2021-02-24 00:00:00	2021-02-24 00:00:00
2956	AAAA62PA275	B08MWJTST6	2	1299.00	2021-02-24 00:00:00	2021-02-24 00:00:00
2957	AAAA62PA275	B00S2SEV7K	11	100.00	2021-02-24 00:00:00	2021-02-24 00:00:00
2958	AAAA62PA275	B0B2DJ5RVQ	6	1999.00	2021-02-24 00:00:00	2021-02-24 00:00:00
2959	AAAA62PA275	B07NTKGW45	6	899.00	2021-02-24 00:00:00	2021-02-24 00:00:00
2960	ANAA24IM900	B014HDJ7ZE	15	7445.00	2021-04-08 00:00:00	2021-04-08 00:00:00
2961	ANAA24IM900	B09XJ5LD6L	6	32999.00	2021-04-08 00:00:00	2021-04-08 00:00:00
2962	ANAA24IM900	B0141EZMAI	11	800.00	2021-04-08 00:00:00	2021-04-08 00:00:00
2963	ANAA24IM900	B084N1BM9L	12	1999.00	2021-04-08 00:00:00	2021-04-08 00:00:00
2964	AIAP80CI159	B0B5CGTBKV	10	7990.00	2022-10-13 00:00:00	2022-10-13 00:00:00
2965	AIAP80CI159	B0B97D658R	10	799.00	2022-10-13 00:00:00	2022-10-13 00:00:00
2966	PMAP21AA426	B09NL4DCXK	3	599.00	2022-08-10 00:00:00	2022-08-10 00:00:00
2967	PMAP21AA426	B07YY1BY5B	8	4999.00	2022-08-10 00:00:00	2022-08-10 00:00:00
2968	PMAP21AA426	B07JZSG42Y	12	2590.00	2022-08-10 00:00:00	2022-08-10 00:00:00
2969	PMAP21AA426	B07D2NMTTV	12	3500.00	2022-08-10 00:00:00	2022-08-10 00:00:00
2970	PMAP21AA426	B07Z1X6VFC	12	999.00	2022-08-10 00:00:00	2022-08-10 00:00:00
2971	OACN87CC958	B07P434WJY	4	1999.00	2021-01-21 00:00:00	2021-01-21 00:00:00
2972	OACN87CC958	B0BD92GDQH	2	6999.00	2021-01-21 00:00:00	2021-01-21 00:00:00
2973	OACN87CC958	B09J2QCKKM	8	3500.00	2021-01-21 00:00:00	2021-01-21 00:00:00
2974	OACN87CC958	B093QCY6YJ	5	349.00	2021-01-21 00:00:00	2021-01-21 00:00:00
2975	OACN87CC958	B07JW9H4J1	7	1099.00	2021-01-21 00:00:00	2021-01-21 00:00:00
2976	IAAA10CM953	B08Y5KXR6Z	3	800.00	2022-04-11 00:00:00	2022-04-11 00:00:00
2977	NIAM41PO183	B01NBX5RSB	6	1547.00	2021-01-09 00:00:00	2021-01-09 00:00:00
2978	NIAM41PO183	B07KR5P3YD	13	699.00	2021-01-09 00:00:00	2021-01-09 00:00:00
2979	NIAM41PO183	B0B3N7LR6K	4	16999.00	2021-01-09 00:00:00	2021-01-09 00:00:00
2980	NIAM41PO183	B07VZYMQNZ	14	1440.00	2021-01-09 00:00:00	2021-01-09 00:00:00
2981	NIAM41PO183	B077Z65HSD	13	999.00	2021-01-09 00:00:00	2021-01-09 00:00:00
2982	PAIC75IC232	B01MQZ7J8K	15	1445.00	2021-07-22 00:00:00	2021-07-22 00:00:00
2983	PAIC75IC232	B0BCZCQTJX	12	3999.00	2021-07-22 00:00:00	2021-07-22 00:00:00
2984	PAIC75IC232	B09YLYB9PB	1	399.00	2021-07-22 00:00:00	2021-07-22 00:00:00
2985	PAIC75IC232	B07MDRGHWQ	2	11000.00	2021-07-22 00:00:00	2021-07-22 00:00:00
2986	PAIC75IC232	B0B5KZ3C53	3	2900.00	2021-07-22 00:00:00	2021-07-22 00:00:00
2987	PAIC75IC232	B09GFPVD9Y	6	10999.00	2021-07-22 00:00:00	2021-07-22 00:00:00
2988	PAIC75IC232	B017PDR9N0	9	499.00	2021-07-22 00:00:00	2021-07-22 00:00:00
2989	IPAI82NA725	B09T2WRLJJ	1	26999.00	2022-02-08 00:00:00	2022-02-08 00:00:00
2990	IPAI82NA725	B01MQZ7J8K	3	1445.00	2022-02-08 00:00:00	2022-02-08 00:00:00
2991	IPAI82NA725	B09ZHCJDP1	12	1000.00	2022-02-08 00:00:00	2022-02-08 00:00:00
2992	IPAI82NA725	B0B2DD8BQ8	7	3099.00	2022-02-08 00:00:00	2022-02-08 00:00:00
2993	IPAI82NA725	B0B31BYXQQ	4	5499.00	2022-02-08 00:00:00	2022-02-08 00:00:00
2994	IPAI82NA725	B0188KPKB2	11	9455.00	2022-02-08 00:00:00	2022-02-08 00:00:00
2995	MANC63CA752	B0B53QLB9H	14	5999.00	2022-06-01 00:00:00	2022-06-01 00:00:00
2996	MANC63CA752	B09BL2KHQW	14	260.00	2022-06-01 00:00:00	2022-06-01 00:00:00
2997	MANC63CA752	B00E3DVQFS	4	1109.00	2022-06-01 00:00:00	2022-06-01 00:00:00
2998	MANC63CA752	B0746N6WML	14	450.00	2022-06-01 00:00:00	2022-06-01 00:00:00
2999	IACO67CO294	B082T6GXS5	1	2100.00	2022-08-19 00:00:00	2022-08-19 00:00:00
3000	IACO67CO294	B081FJWN52	7	999.00	2022-08-19 00:00:00	2022-08-19 00:00:00
3001	IACO67CO294	B01GFTEV5Y	13	3193.00	2022-08-19 00:00:00	2022-08-19 00:00:00
3002	IACO67CO294	B08L5HMJVW	7	700.00	2022-08-19 00:00:00	2022-08-19 00:00:00
3003	IACO67CO294	B08QHLXWV3	15	11990.00	2022-08-19 00:00:00	2022-08-19 00:00:00
3004	IACO67CO294	B00LP9RFSU	1	825.00	2022-08-19 00:00:00	2022-08-19 00:00:00
3005	IACO67CO294	B07RX42D3D	3	350.00	2022-08-19 00:00:00	2022-08-19 00:00:00
3006	MCNP77PP404	B09BCNQ9R2	6	499.00	2021-03-05 00:00:00	2021-03-05 00:00:00
3007	MCNP77PP404	B08Y7MXFMK	15	1499.00	2021-03-05 00:00:00	2021-03-05 00:00:00
3008	MCNP77PP404	B09ZHCJDP1	3	1000.00	2021-03-05 00:00:00	2021-03-05 00:00:00
3009	MCNP77PP404	B09RWZRCP1	4	999.00	2021-03-05 00:00:00	2021-03-05 00:00:00
3010	MCNP77PP404	B095JPKPH3	1	69999.00	2021-03-05 00:00:00	2021-03-05 00:00:00
3011	AIOC29AM238	B00KRCBA6E	14	5000.00	2022-04-21 00:00:00	2022-04-21 00:00:00
3012	AIOC29AM238	B093QCY6YJ	4	349.00	2022-04-21 00:00:00	2022-04-21 00:00:00
3013	AIOC29AM238	B00C3GBCIS	15	499.00	2022-04-21 00:00:00	2022-04-21 00:00:00
3014	AIOC29AM238	B08444S68L	3	15990.00	2022-04-21 00:00:00	2022-04-21 00:00:00
3015	MAAP70ON980	B0B25LQQPC	12	6100.00	2022-07-08 00:00:00	2022-07-08 00:00:00
3016	MAAP70ON980	B08CF3B7N1	12	399.00	2022-07-08 00:00:00	2022-07-08 00:00:00
3017	AAMO19OA842	B07JPX9CR7	3	1299.00	2022-01-01 00:00:00	2022-01-01 00:00:00
3018	AAMO19OA842	B015ZXUDD0	11	599.00	2022-01-01 00:00:00	2022-01-01 00:00:00
3019	AAMO19OA842	B0B2DD66GS	5	2900.00	2022-01-01 00:00:00	2022-01-01 00:00:00
3020	AAMO19OA842	B094JNXNPV	12	399.00	2022-01-01 00:00:00	2022-01-01 00:00:00
3021	AAMO19OA842	B09MFR93KS	3	5999.00	2022-01-01 00:00:00	2022-01-01 00:00:00
3022	AAMO19OA842	B01HGCLUH6	11	1699.00	2022-01-01 00:00:00	2022-01-01 00:00:00
3023	CIAO11AN662	B08RWCZ6SY	10	899.00	2022-11-29 00:00:00	2022-11-29 00:00:00
3024	CIAO11AN662	B0B9F9PT8R	1	2999.00	2022-11-29 00:00:00	2022-11-29 00:00:00
3025	CIAO11AN662	B07P434WJY	1	1999.00	2022-11-29 00:00:00	2022-11-29 00:00:00
3026	CIAO11AN662	B0B19VJXQZ	7	59900.00	2022-11-29 00:00:00	2022-11-29 00:00:00
3027	CIAO11AN662	B08GSQXLJ2	4	10400.00	2022-11-29 00:00:00	2022-11-29 00:00:00
3028	CIAO11AN662	B07G3YNLJB	10	3100.00	2022-11-29 00:00:00	2022-11-29 00:00:00
3029	AAMM18PP999	B018SJJ0GE	10	2999.00	2022-06-12 00:00:00	2022-06-12 00:00:00
3030	AAMM18PP999	B09RX1FK54	3	999.00	2022-06-12 00:00:00	2022-06-12 00:00:00
3031	AAMM18PP999	B08FYB5HHK	13	1999.00	2022-06-12 00:00:00	2022-06-12 00:00:00
3032	AAMM18PP999	B09NNHFSSF	3	4700.00	2022-06-12 00:00:00	2022-06-12 00:00:00
3033	AAMM18PP999	B075TJHWVC	6	2299.00	2022-06-12 00:00:00	2022-06-12 00:00:00
3034	AOAC96MM111	B09VKWGZD7	10	8990.00	2022-10-11 00:00:00	2022-10-11 00:00:00
3035	AOAC96MM111	B07V82W5CN	15	2198.00	2022-10-11 00:00:00	2022-10-11 00:00:00
3036	AOAC96MM111	B08HLZ28QC	13	3490.00	2022-10-11 00:00:00	2022-10-11 00:00:00
3037	AMOO74NC332	B0B6F98KJJ	15	29999.00	2021-09-20 00:00:00	2021-09-20 00:00:00
3038	AIAA65MM219	B0949SBKMP	15	6990.00	2021-09-12 00:00:00	2021-09-12 00:00:00
3039	AIPA83IP522	B07W6VWZ8C	4	1999.00	2021-09-12 00:00:00	2021-09-12 00:00:00
3040	AIPA83IP522	B08TV2P1N8	4	3990.00	2021-09-12 00:00:00	2021-09-12 00:00:00
3041	AIPA83IP522	B00TDD0YM4	10	1695.00	2021-09-12 00:00:00	2021-09-12 00:00:00
3042	NNCN17OP693	B09XJ1LM7R	11	799.00	2021-03-29 00:00:00	2021-03-29 00:00:00
3043	NNCN17OP693	B07W4HTS8Q	15	3790.00	2021-03-29 00:00:00	2021-03-29 00:00:00
3044	NNCN17OP693	B082T6GVG9	5	1500.00	2021-03-29 00:00:00	2021-03-29 00:00:00
3045	NNCN17OP693	B091JF2TFD	13	1299.00	2021-03-29 00:00:00	2021-03-29 00:00:00
3046	NNCN17OP693	B01N1XVVLC	11	15999.00	2021-03-29 00:00:00	2021-03-29 00:00:00
3047	NNCN17OP693	B01MQ2A86A	12	1645.00	2021-03-29 00:00:00	2021-03-29 00:00:00
3048	NNCN17OP693	B09SZ5TWHW	1	2890.00	2021-03-29 00:00:00	2021-03-29 00:00:00
3049	IMAM34AC899	B07WKBD37W	3	999.00	2022-01-29 00:00:00	2022-01-29 00:00:00
3050	APOC24PP586	B08TDJ5BVF	13	39.00	2021-10-08 00:00:00	2021-10-08 00:00:00
3051	APOC24PP586	B004IO5BMQ	7	995.00	2021-10-08 00:00:00	2021-10-08 00:00:00
3052	PAIA49MA715	B0BF563HB4	8	19999.00	2022-09-01 00:00:00	2022-09-01 00:00:00
3053	PAIA49MA715	B07JW9H4J1	10	1099.00	2022-09-01 00:00:00	2022-09-01 00:00:00
3054	PAIA49MA715	B0B4F52B5X	15	14999.00	2022-09-01 00:00:00	2022-09-01 00:00:00
3055	PAIA49MA715	B0BNVBJW2S	8	7990.00	2022-09-01 00:00:00	2022-09-01 00:00:00
3056	PAIA49MA715	B075DB1F13	6	1500.00	2022-09-01 00:00:00	2022-09-01 00:00:00
3057	PAIA49MA715	B09HK9JH4F	15	399.00	2022-09-01 00:00:00	2022-09-01 00:00:00
3058	OONI68OI748	B0B9RZ4G4W	3	1699.00	2021-08-10 00:00:00	2021-08-10 00:00:00
3059	OONI68OI748	B08X77LM8C	10	999.00	2021-08-10 00:00:00	2021-08-10 00:00:00
3060	OONI68OI748	B08T8KWNQ9	2	4999.00	2021-08-10 00:00:00	2021-08-10 00:00:00
3061	MPOI84AA348	B09PL79D2X	12	2990.00	2021-06-17 00:00:00	2021-06-17 00:00:00
3062	MPOI84AA348	B0BGSV43WY	14	7999.00	2021-06-17 00:00:00	2021-06-17 00:00:00
3063	OPOA60MA880	B07WGPKMP5	11	20999.00	2022-03-02 00:00:00	2022-03-02 00:00:00
3064	OPOA60MA880	B07B275VN9	1	799.00	2022-03-02 00:00:00	2022-03-02 00:00:00
3065	OPOA60MA880	B08W56G1K9	6	999.00	2022-03-02 00:00:00	2022-03-02 00:00:00
3066	OPOA60MA880	B0148NPH9I	5	3195.00	2022-03-02 00:00:00	2022-03-02 00:00:00
3067	OPOA60MA880	B0BMXMLSMM	14	999.00	2022-03-02 00:00:00	2022-03-02 00:00:00
3068	MAIP03NA343	B014I8SX4Y	5	1400.00	2021-03-08 00:00:00	2021-03-08 00:00:00
3069	MAIP03NA343	B01M5967SY	3	999.00	2021-03-08 00:00:00	2021-03-08 00:00:00
3070	MAIP03NA343	B092R48XXB	12	29999.00	2021-03-08 00:00:00	2021-03-08 00:00:00
3071	MAIP03NA343	B09T3H12GV	1	2498.00	2021-03-08 00:00:00	2021-03-08 00:00:00
3072	MAIP03NA343	B0746JGVDS	3	999.00	2021-03-08 00:00:00	2021-03-08 00:00:00
3073	MAIP03NA343	B0B72BSW7K	9	699.00	2021-03-08 00:00:00	2021-03-08 00:00:00
3074	MAIP03NA343	B09ZK6THRR	3	1000.00	2021-03-08 00:00:00	2021-03-08 00:00:00
3075	IACA14AP471	B0BBVKRP7B	4	1999.00	2022-07-05 00:00:00	2022-07-05 00:00:00
3076	MNNO31AA318	B09C6HXFC1	5	1799.00	2022-05-07 00:00:00	2022-05-07 00:00:00
3077	MNCP57AA123	B07YNHCW6N	4	2499.00	2022-02-23 00:00:00	2022-02-23 00:00:00
3078	MNCP57AA123	B09GFLXVH9	9	8499.00	2022-02-23 00:00:00	2022-02-23 00:00:00
3079	AOII93OP571	B07WGMMQGP	4	20999.00	2021-11-19 00:00:00	2021-11-19 00:00:00
3080	AOII93OP571	B07LDPLSZC	11	1190.00	2021-11-19 00:00:00	2021-11-19 00:00:00
3081	AOII93OP571	B09Z7YGV3R	1	699.00	2021-11-19 00:00:00	2021-11-19 00:00:00
3082	IIAO23AA096	B09BW334ML	1	1499.00	2022-04-19 00:00:00	2022-04-19 00:00:00
3083	IIAO23AA096	B08QJJCY2Q	12	299.00	2022-04-19 00:00:00	2022-04-19 00:00:00
3084	IIAO23AA096	B07RCGTZ4M	10	9999.00	2022-04-19 00:00:00	2022-04-19 00:00:00
3085	IIAO23AA096	B07D8VBYB4	6	7776.00	2022-04-19 00:00:00	2022-04-19 00:00:00
3086	IIAO23AA096	B0BF54972T	1	19999.00	2022-04-19 00:00:00	2022-04-19 00:00:00
3087	IIAO23AA096	B0B65P827P	2	549.00	2022-04-19 00:00:00	2022-04-19 00:00:00
3088	IIAO23AA096	B08MZQBFLN	14	4999.00	2022-04-19 00:00:00	2022-04-19 00:00:00
3089	PNIM28NA777	B093ZNQZ2Y	15	799.00	2022-09-16 00:00:00	2022-09-16 00:00:00
3090	IOCN45AA539	B096NTB9XT	11	24500.00	2021-05-07 00:00:00	2021-05-07 00:00:00
3091	CNMP93AM907	B0B2DD8BQ8	14	3099.00	2021-01-24 00:00:00	2021-01-24 00:00:00
3092	CNMP93AM907	B0B9LDCX89	9	999.00	2021-01-24 00:00:00	2021-01-24 00:00:00
3093	CNMP93AM907	B08243SKCK	7	299.00	2021-01-24 00:00:00	2021-01-24 00:00:00
3094	CNMP93AM907	B08MWJTST6	10	1299.00	2021-01-24 00:00:00	2021-01-24 00:00:00
3095	CNMP93AM907	B01N4EV2TL	15	1995.00	2021-01-24 00:00:00	2021-01-24 00:00:00
3096	AOOA45NI543	B0B16KD737	4	15999.00	2021-10-15 00:00:00	2021-10-15 00:00:00
3097	AOOA45NI543	B0B5GJRTHB	10	1999.00	2021-10-15 00:00:00	2021-10-15 00:00:00
3098	AOOA45NI543	B0BCKWZ884	12	2999.00	2021-10-15 00:00:00	2021-10-15 00:00:00
3099	AOOA45NI543	B0BDG6QDYD	10	1990.00	2021-10-15 00:00:00	2021-10-15 00:00:00
3100	AOOA45NI543	B08HF4W2CT	2	3499.00	2021-10-15 00:00:00	2021-10-15 00:00:00
3101	AOCP16PO076	B01L8ZNWN2	15	1500.00	2021-06-04 00:00:00	2021-06-04 00:00:00
3102	AOCP16PO076	B0BPBXNQQT	6	1989.00	2021-06-04 00:00:00	2021-06-04 00:00:00
3103	AOCP16PO076	B07R679HTT	14	23999.00	2021-06-04 00:00:00	2021-06-04 00:00:00
3104	AOCP16PO076	B013B2WGT6	9	1899.00	2021-06-04 00:00:00	2021-06-04 00:00:00
3105	AOCP16PO076	B07F1P8KNV	2	1099.00	2021-06-04 00:00:00	2021-06-04 00:00:00
3106	AOCP16PO076	B0187F2IOK	6	2199.00	2021-06-04 00:00:00	2021-06-04 00:00:00
3107	AOCP16PO076	B09VCHLSJF	3	39999.00	2021-06-04 00:00:00	2021-06-04 00:00:00
3108	IAIC14OO035	B08K9PX15C	7	1499.00	2022-01-27 00:00:00	2022-01-27 00:00:00
3109	IAIC14OO035	B07LDN9Q2P	2	1295.00	2022-01-27 00:00:00	2022-01-27 00:00:00
3110	AOPO78CM500	B07SPVMSC6	8	2660.00	2022-09-21 00:00:00	2022-09-21 00:00:00
3111	AOPO78CM500	B0814ZY6FP	2	1199.00	2022-09-21 00:00:00	2022-09-21 00:00:00
3112	IPPA86NM395	B0BBMPH39N	1	999.00	2022-05-16 00:00:00	2022-05-16 00:00:00
3113	NCCA16CA898	B005LJQMCK	11	599.00	2021-01-27 00:00:00	2021-01-27 00:00:00
3114	NCCA16CA898	B009DA69W6	9	1900.00	2021-01-27 00:00:00	2021-01-27 00:00:00
3115	NCCA16CA898	B07XLML2YS	5	3299.00	2021-01-27 00:00:00	2021-01-27 00:00:00
3116	NCCA16CA898	B07F6GXNPB	14	500.00	2021-01-27 00:00:00	2021-01-27 00:00:00
3117	AMAA69PA835	B08WKCTFF3	5	1999.00	2021-07-05 00:00:00	2021-07-05 00:00:00
3118	AMAA69PA835	B01486F4G6	14	3690.00	2021-07-05 00:00:00	2021-07-05 00:00:00
3119	AMAA69PA835	B09TBCVJS3	8	7999.00	2021-07-05 00:00:00	2021-07-05 00:00:00
3120	AMAA69PA835	B0BCZCQTJX	9	3999.00	2021-07-05 00:00:00	2021-07-05 00:00:00
3121	AMAA69PA835	B0BDZWMGZ1	9	2990.00	2021-07-05 00:00:00	2021-07-05 00:00:00
3122	AMAA69PA835	B07RX42D3D	12	350.00	2021-07-05 00:00:00	2021-07-05 00:00:00
3123	AMAA69PA835	B0B53QLB9H	3	5999.00	2021-07-05 00:00:00	2021-07-05 00:00:00
3124	ACNP61OM167	B07VVXJ2P5	12	399.00	2022-07-02 00:00:00	2022-07-02 00:00:00
3125	ACNP61OM167	B00H47GVGY	12	1695.00	2022-07-02 00:00:00	2022-07-02 00:00:00
3126	ACNP61OM167	B00GGGOYEK	15	699.00	2022-07-02 00:00:00	2022-07-02 00:00:00
3127	ACNP61OM167	B0B7FJNSZR	9	19990.00	2022-07-02 00:00:00	2022-07-02 00:00:00
3128	ACNP61OM167	B0B61GCHC1	7	999.00	2022-07-02 00:00:00	2022-07-02 00:00:00
3129	OOAI87MP503	B07SYYVP69	9	1950.00	2021-07-21 00:00:00	2021-07-21 00:00:00
3130	OOAI87MP503	B01M0505SJ	4	2485.00	2021-07-21 00:00:00	2021-07-21 00:00:00
3131	OOAI87MP503	B0B53DS4TF	5	20049.00	2021-07-21 00:00:00	2021-07-21 00:00:00
3132	OOAI87MP503	B09VGKFM7Y	3	499.00	2021-07-21 00:00:00	2021-07-21 00:00:00
3133	ICCI20AO677	B09F6S8BT6	7	22900.00	2021-01-22 00:00:00	2021-01-22 00:00:00
3134	ICCI20AO677	B0819HZPXL	2	549.00	2021-01-22 00:00:00	2021-01-22 00:00:00
3135	ACII85OO612	B078JDNZJ8	11	6190.00	2021-02-06 00:00:00	2021-02-06 00:00:00
3136	ACII85OO612	B07H3WDC4X	13	999.00	2021-02-06 00:00:00	2021-02-06 00:00:00
3137	ACII85OO612	B07F366Z51	12	2385.00	2021-02-06 00:00:00	2021-02-06 00:00:00
3138	ACII85OO612	B00O24PUO6	8	1650.00	2021-02-06 00:00:00	2021-02-06 00:00:00
3139	ACII85OO612	B08JQN8DGZ	7	2990.00	2021-02-06 00:00:00	2021-02-06 00:00:00
3140	ACII85OO612	B09JSW16QD	11	1490.00	2021-02-06 00:00:00	2021-02-06 00:00:00
3141	ACII85OO612	B07VZYMQNZ	13	1440.00	2021-02-06 00:00:00	2021-02-06 00:00:00
3142	AAAN57AM079	B09M8888DM	15	799.00	2022-07-28 00:00:00	2022-07-28 00:00:00
3143	AAAN57AM079	B07VNFP3C2	12	1245.00	2022-07-28 00:00:00	2022-07-28 00:00:00
3144	AAAN57AM079	B08D11DZ2W	12	8999.00	2022-07-28 00:00:00	2022-07-28 00:00:00
3145	AAAN57AM079	B08VF8V79P	6	1699.00	2022-07-28 00:00:00	2022-07-28 00:00:00
3146	OPCA75NI101	B0BJYSCWFQ	5	1999.00	2021-02-15 00:00:00	2021-02-15 00:00:00
3147	OPCA75NI101	B07CRL2GY6	7	799.00	2021-02-15 00:00:00	2021-02-15 00:00:00
3148	OPCA75NI101	B0BBVKRP7B	5	1999.00	2021-02-15 00:00:00	2021-02-15 00:00:00
3149	NAIP94NN411	B07HZ2QCGR	4	599.00	2022-10-19 00:00:00	2022-10-19 00:00:00
3150	NAIP94NN411	B004IO5BMQ	12	995.00	2022-10-19 00:00:00	2022-10-19 00:00:00
3151	NAIP94NN411	B09F3PDDRF	14	999.00	2022-10-19 00:00:00	2022-10-19 00:00:00
3152	IAAC50IP095	B09NHVCHS9	9	199.00	2021-04-27 00:00:00	2021-04-27 00:00:00
3153	IAAC50IP095	B07GPXXNNG	6	999.00	2021-04-27 00:00:00	2021-04-27 00:00:00
3154	IAAC50IP095	B07VTFN6HM	6	7350.00	2021-04-27 00:00:00	2021-04-27 00:00:00
3155	CNMA53CP990	B071VMP1Z4	11	399.00	2022-04-04 00:00:00	2022-04-04 00:00:00
3156	OPPM95PN917	B096MSW6CT	3	1899.00	2022-02-24 00:00:00	2022-02-24 00:00:00
3157	OPPM95PN917	B01LYU3BZF	3	3190.00	2022-02-24 00:00:00	2022-02-24 00:00:00
3158	OPPM95PN917	B0B5YBGCKD	7	599.00	2022-02-24 00:00:00	2022-02-24 00:00:00
3159	OPPM95PN917	B07FL3WRX5	7	6500.00	2022-02-24 00:00:00	2022-02-24 00:00:00
3160	OPPM95PN917	B08WD18LJZ	8	600.00	2022-02-24 00:00:00	2022-02-24 00:00:00
3161	OPPM95PN917	B09B125CFJ	10	799.00	2022-02-24 00:00:00	2022-02-24 00:00:00
3162	OPPM95PN917	B082KVTRW8	8	1900.00	2022-02-24 00:00:00	2022-02-24 00:00:00
3163	ACAM27MC988	B0B7DHSKS7	12	5299.00	2022-07-25 00:00:00	2022-07-25 00:00:00
3164	ACAM27MC988	B00GG59HU2	8	599.00	2022-07-25 00:00:00	2022-07-25 00:00:00
3165	ACAM27MC988	B09DDCQFMT	6	1999.00	2022-07-25 00:00:00	2022-07-25 00:00:00
3166	OCIA52AN377	B0747VDH9L	14	3995.00	2021-08-27 00:00:00	2021-08-27 00:00:00
3167	NAPA02CA761	B097R2V1W8	8	5890.00	2022-01-18 00:00:00	2022-01-18 00:00:00
3168	NAPA02CA761	B0BPBXNQQT	11	1989.00	2022-01-18 00:00:00	2022-01-18 00:00:00
3169	NAPA02CA761	B09MKG4ZCM	3	2999.00	2022-01-18 00:00:00	2022-01-18 00:00:00
3170	NAPA02CA761	B00LHZW3XY	12	180.00	2022-01-18 00:00:00	2022-01-18 00:00:00
3171	MINC80MP538	B0B2C5MJN6	4	54990.00	2022-12-01 00:00:00	2022-12-01 00:00:00
3172	MINC80MP538	B09L8DT7D6	2	499.00	2022-12-01 00:00:00	2022-12-01 00:00:00
3173	MINC80MP538	B012MQS060	9	1795.00	2022-12-01 00:00:00	2022-12-01 00:00:00
3174	MINC80MP538	B08B42LWKN	3	19999.00	2022-12-01 00:00:00	2022-12-01 00:00:00
3175	MINC80MP538	B07WGMMQGP	13	20999.00	2022-12-01 00:00:00	2022-12-01 00:00:00
3176	MINC80MP538	B0BMXMLSMM	1	999.00	2022-12-01 00:00:00	2022-12-01 00:00:00
3177	MINC80MP538	B0B23LW7NV	12	2899.00	2022-12-01 00:00:00	2022-12-01 00:00:00
3178	MAIA46CA344	B00LUGTJGO	15	1549.00	2021-01-19 00:00:00	2021-01-19 00:00:00
3179	MAIA46CA344	B09CGLY5CX	13	2400.00	2021-01-19 00:00:00	2021-01-19 00:00:00
3180	AOMP38AN575	B00UGZWM2I	2	800.00	2022-05-23 00:00:00	2022-05-23 00:00:00
3181	AOMP38AN575	B097JQ1J5G	2	499.00	2022-05-23 00:00:00	2022-05-23 00:00:00
3182	AIPC08OP605	B09H39KTTB	9	499.00	2021-04-07 00:00:00	2021-04-07 00:00:00
3183	AONM70AP350	B07RX42D3D	6	350.00	2022-05-02 00:00:00	2022-05-02 00:00:00
3184	AONM70AP350	B0746N6WML	11	450.00	2022-05-02 00:00:00	2022-05-02 00:00:00
3185	AONM70AP350	B09J2QCKKM	14	3500.00	2022-05-02 00:00:00	2022-05-02 00:00:00
3186	AONM70AP350	B07VNFP3C2	15	1245.00	2022-05-02 00:00:00	2022-05-02 00:00:00
3187	AONM70AP350	B09XJ1LM7R	12	799.00	2022-05-02 00:00:00	2022-05-02 00:00:00
3188	IAAC74AP049	B0811VCGL5	4	12999.00	2021-08-21 00:00:00	2021-08-21 00:00:00
3189	IAAC74AP049	B0162LYSFS	2	1749.00	2021-08-21 00:00:00	2021-08-21 00:00:00
3190	AOAA67PC576	B08VB57558	9	74999.00	2022-02-18 00:00:00	2022-02-18 00:00:00
3191	AOAA67PC576	B09LMMFW3S	3	399.00	2022-02-18 00:00:00	2022-02-18 00:00:00
3192	AOAA67PC576	B0BPBG712X	13	1199.00	2022-02-18 00:00:00	2022-02-18 00:00:00
3193	AOAA67PC576	B0B15CPR37	9	47900.00	2022-02-18 00:00:00	2022-02-18 00:00:00
3194	AOAA67PC576	B09MT84WV5	8	3999.00	2022-02-18 00:00:00	2022-02-18 00:00:00
3195	AOAA67PC576	B08TT63N58	6	2199.00	2022-02-18 00:00:00	2022-02-18 00:00:00
3196	AOAA67PC576	B0B4KPCBSH	5	499.00	2022-02-18 00:00:00	2022-02-18 00:00:00
3197	NCIM55CN918	B07S851WX5	6	1299.00	2022-11-04 00:00:00	2022-11-04 00:00:00
3198	NCIM55CN918	B08W9BK4MD	9	899.00	2022-11-04 00:00:00	2022-11-04 00:00:00
3199	NCIM55CN918	B0981XSZJ7	9	999.00	2022-11-04 00:00:00	2022-11-04 00:00:00
3200	NCIM55CN918	B09WRMNJ9G	11	38999.00	2022-11-04 00:00:00	2022-11-04 00:00:00
3201	NCIM55CN918	B08X77LM8C	7	999.00	2022-11-04 00:00:00	2022-11-04 00:00:00
3202	NCIM55CN918	B07QDSN9V6	9	1595.00	2022-11-04 00:00:00	2022-11-04 00:00:00
3203	CNPA64NN698	B08VJFYH6N	15	1620.00	2022-07-01 00:00:00	2022-07-01 00:00:00
3204	CNPA64NN698	B0BC9BW512	10	24990.00	2022-07-01 00:00:00	2022-07-01 00:00:00
3205	CNPA64NN698	B015ZXUDD0	13	599.00	2022-07-01 00:00:00	2022-07-01 00:00:00
3206	CNPA64NN698	B08SCCG9D4	7	2000.00	2022-07-01 00:00:00	2022-07-01 00:00:00
3207	NIOM05CI520	B084DTMYWK	11	999.00	2022-08-25 00:00:00	2022-08-25 00:00:00
3208	NIOM05CI520	B01N90RZ4M	5	499.00	2022-08-25 00:00:00	2022-08-25 00:00:00
3209	NIOM05CI520	B09FPP3R1D	7	2495.00	2022-08-25 00:00:00	2022-08-25 00:00:00
3210	NIOM05CI520	B09V17S2BG	1	6990.00	2022-08-25 00:00:00	2022-08-25 00:00:00
3211	NIOM05CI520	B0BBN4DZBD	8	8999.00	2022-08-25 00:00:00	2022-08-25 00:00:00
3212	MNAM83MP057	B08WJ86PV2	14	990.00	2022-11-15 00:00:00	2022-11-15 00:00:00
3213	MNAM83MP057	B0B4HJNPV4	12	999.00	2022-11-15 00:00:00	2022-11-15 00:00:00
3214	MNAM83MP057	B09CMM3VGK	8	499.00	2022-11-15 00:00:00	2022-11-15 00:00:00
3215	MNAM83MP057	B09CMM3VGK	3	499.00	2022-11-15 00:00:00	2022-11-15 00:00:00
3216	MNAM83MP057	B08YD264ZS	9	2499.00	2022-11-15 00:00:00	2022-11-15 00:00:00
3217	MNAM83MP057	B07WHQWXL7	1	20999.00	2022-11-15 00:00:00	2022-11-15 00:00:00
3218	NACA00AM695	B01DJJVFPC	7	315.00	2022-06-27 00:00:00	2022-06-27 00:00:00
3219	NACA00AM695	B0759QMF85	10	2399.00	2022-06-27 00:00:00	2022-06-27 00:00:00
3220	NACA00AM695	B00GGGOYEK	9	699.00	2022-06-27 00:00:00	2022-06-27 00:00:00
3221	NACA00AM695	B08MWJTST6	1	1299.00	2022-06-27 00:00:00	2022-06-27 00:00:00
3222	OACC69MP219	B09CTRPSJR	4	237.00	2021-06-30 00:00:00	2021-06-30 00:00:00
3223	OACC69MP219	B07WKB69RS	15	5550.00	2021-06-30 00:00:00	2021-06-30 00:00:00
3224	OACC69MP219	B095X38CJS	7	99.00	2021-06-30 00:00:00	2021-06-30 00:00:00
3225	OACC69MP219	B09DSXK8JX	7	19499.00	2021-06-30 00:00:00	2021-06-30 00:00:00
3226	OACC69MP219	B0B4PPD89B	13	79.00	2021-06-30 00:00:00	2021-06-30 00:00:00
3227	NIOC15OI480	B07P1BR7L8	3	8995.00	2022-05-10 00:00:00	2022-05-10 00:00:00
3228	CNPI61II530	B08QX1CC14	11	19125.00	2021-03-06 00:00:00	2021-03-06 00:00:00
3229	CNPI61II530	B0B1YY6JJL	3	34990.00	2021-03-06 00:00:00	2021-03-06 00:00:00
3230	NMON44AI133	B08FD2VSD9	9	51990.00	2021-08-08 00:00:00	2021-08-08 00:00:00
3231	NMON44AI133	B00KIE28X0	2	310.00	2021-08-08 00:00:00	2021-08-08 00:00:00
3232	NMON44AI133	B08Y1SJVV5	7	666.00	2021-08-08 00:00:00	2021-08-08 00:00:00
3233	NMON44AI133	B08Y57TPDM	10	200.00	2021-08-08 00:00:00	2021-08-08 00:00:00
3234	NMON44AI133	B09BVCVTBC	2	3499.00	2021-08-08 00:00:00	2021-08-08 00:00:00
3235	PAAN65NP052	B07GMFY9QM	7	999.00	2021-05-04 00:00:00	2021-05-04 00:00:00
3236	PAAN65NP052	B09KPXTZXN	14	1999.00	2021-05-04 00:00:00	2021-05-04 00:00:00
3237	PAAN65NP052	B08RX8G496	6	1099.00	2021-05-04 00:00:00	2021-05-04 00:00:00
3238	PAAN65NP052	B0856HNMR7	4	2499.00	2021-05-04 00:00:00	2021-05-04 00:00:00
3239	PAAN65NP052	B07JGCGNDG	11	11500.00	2021-05-04 00:00:00	2021-05-04 00:00:00
3240	IOPC07MI962	B07ZJND9B9	8	1990.00	2022-07-08 00:00:00	2022-07-08 00:00:00
3241	IOPC07MI962	B08CTNJ985	15	999.00	2022-07-08 00:00:00	2022-07-08 00:00:00
3242	IOPC07MI962	B08CKW1KH9	5	599.00	2022-07-08 00:00:00	2022-07-08 00:00:00
3243	IOPC07MI962	B08Y1TFSP6	2	1000.00	2022-07-08 00:00:00	2022-07-08 00:00:00
3244	IOPC07MI962	B01GGKYKQM	1	700.00	2022-07-08 00:00:00	2022-07-08 00:00:00
3245	CCPM72IO435	B01MUAUOCX	12	747.00	2022-01-31 00:00:00	2022-01-31 00:00:00
3246	CCPM72IO435	B08TZD7FQN	11	599.00	2022-01-31 00:00:00	2022-01-31 00:00:00
3247	CCPM72IO435	B09GBBJV72	4	2199.00	2022-01-31 00:00:00	2022-01-31 00:00:00
3248	APMA15IA664	B07DXRGWDJ	12	5995.00	2022-04-06 00:00:00	2022-04-06 00:00:00
3249	APMA15IA664	B08CF4SCNP	13	599.00	2022-04-06 00:00:00	2022-04-06 00:00:00
3250	APMA15IA664	B0B9XLX8VR	13	65000.00	2022-04-06 00:00:00	2022-04-06 00:00:00
3251	APMA15IA664	B08BQ947H3	8	149.00	2022-04-06 00:00:00	2022-04-06 00:00:00
3252	APMA15IA664	B086WMSCN3	13	5999.00	2022-04-06 00:00:00	2022-04-06 00:00:00
3253	CMAC30AI709	B09SZ5TWHW	13	2890.00	2022-08-24 00:00:00	2022-08-24 00:00:00
3254	MIIM02AO014	B00NH12R1O	4	485.00	2021-11-30 00:00:00	2021-11-30 00:00:00
3255	MIIM02AO014	B09XB8GFBQ	8	11999.00	2021-11-30 00:00:00	2021-11-30 00:00:00
3256	MIIM02AO014	B08WKCTFF3	1	1999.00	2021-11-30 00:00:00	2021-11-30 00:00:00
3257	MCPC47MN462	B0746N6WML	14	450.00	2021-07-09 00:00:00	2021-07-09 00:00:00
3258	MCPC47MN462	B0B2C5MJN6	11	54990.00	2021-07-09 00:00:00	2021-07-09 00:00:00
3259	MCPC47MN462	B09Y14JLP3	12	499.00	2021-07-09 00:00:00	2021-07-09 00:00:00
3260	MCPC47MN462	B07XLML2YS	7	3299.00	2021-07-09 00:00:00	2021-07-09 00:00:00
3261	MCPC47MN462	B08QW937WV	6	2999.00	2021-07-09 00:00:00	2021-07-09 00:00:00
3262	CNOA52IM277	B08X77LM8C	6	999.00	2021-02-04 00:00:00	2021-02-04 00:00:00
3263	CNOA52IM277	B0B3N8VG24	12	299.00	2021-02-04 00:00:00	2021-02-04 00:00:00
3264	CNOA52IM277	B01GZSQJPA	9	4295.00	2021-02-04 00:00:00	2021-02-04 00:00:00
3265	ONII51AA650	B075JJ5NQC	7	4999.00	2022-07-10 00:00:00	2022-07-10 00:00:00
3266	ONII51AA650	B0B8ZM9RVV	5	999.00	2022-07-10 00:00:00	2022-07-10 00:00:00
3267	ONII51AA650	B0811VCGL5	15	12999.00	2022-07-10 00:00:00	2022-07-10 00:00:00
3268	ONII51AA650	B09YV42QHZ	11	7999.00	2022-07-10 00:00:00	2022-07-10 00:00:00
3269	ONII51AA650	B0BBMGLQDW	15	1999.00	2022-07-10 00:00:00	2022-07-10 00:00:00
3270	ONOC29MN847	B07F6GXNPB	10	500.00	2022-12-12 00:00:00	2022-12-12 00:00:00
3271	ONOC29MN847	B07LG96SDB	13	510.00	2022-12-12 00:00:00	2022-12-12 00:00:00
3272	ONOC29MN847	B0B2DD8BQ8	11	3099.00	2022-12-12 00:00:00	2022-12-12 00:00:00
3273	ONOC29MN847	B09YL9SN9B	5	23990.00	2022-12-12 00:00:00	2022-12-12 00:00:00
3274	PONN53OA629	B07GLNJC25	15	499.00	2022-12-10 00:00:00	2022-12-10 00:00:00
3275	PONN53OA629	B07KY3FNQP	14	1290.00	2022-12-10 00:00:00	2022-12-10 00:00:00
3276	PONN53OA629	B07HK53XM4	14	599.00	2022-12-10 00:00:00	2022-12-10 00:00:00
3277	PONN53OA629	B09QS8V5N8	12	17999.00	2022-12-10 00:00:00	2022-12-10 00:00:00
3278	MAAN19ON504	B07Z3K96FR	11	1499.00	2021-07-06 00:00:00	2021-07-06 00:00:00
3279	MAAN19ON504	B07L8KNP5F	8	1399.00	2021-07-06 00:00:00	2021-07-06 00:00:00
3280	MAAN19ON504	B08WKFSN84	4	1099.00	2021-07-06 00:00:00	2021-07-06 00:00:00
3281	MAAN19ON504	B07VX71FZP	4	2000.00	2021-07-06 00:00:00	2021-07-06 00:00:00
3282	CPMP65NO170	B076VQS87V	2	799.00	2022-06-09 00:00:00	2022-06-09 00:00:00
3283	CPMP65NO170	B07PFJ5W31	11	495.00	2022-06-09 00:00:00	2022-06-09 00:00:00
3284	PIPA10PN160	B0BL11S5QK	8	3890.00	2022-08-23 00:00:00	2022-08-23 00:00:00
3285	PIPA10PN160	B071Z8M4KX	8	999.00	2022-08-23 00:00:00	2022-08-23 00:00:00
3286	PIPA10PN160	B09F5Z694W	14	9625.00	2022-08-23 00:00:00	2022-08-23 00:00:00
3287	PIPA10PN160	B08XXVXP3J	3	999.00	2022-08-23 00:00:00	2022-08-23 00:00:00
3288	PIPA10PN160	B08K9PX15C	4	1499.00	2022-08-23 00:00:00	2022-08-23 00:00:00
3289	PIPA10PN160	B01DF26V7A	15	1299.00	2022-08-23 00:00:00	2022-08-23 00:00:00
3290	ICMM98IA803	B08CHKQ8D4	1	1499.00	2022-02-22 00:00:00	2022-02-22 00:00:00
3291	ICMM98IA803	B014I8SSD0	4	475.00	2022-02-22 00:00:00	2022-02-22 00:00:00
3292	ICMM98IA803	B09YV4MW2T	2	9999.00	2022-02-22 00:00:00	2022-02-22 00:00:00
3293	ICMM98IA803	B07CRL2GY6	11	799.00	2022-02-22 00:00:00	2022-02-22 00:00:00
3294	ICMM98IA803	B09YLWT89W	3	18000.00	2022-02-22 00:00:00	2022-02-22 00:00:00
3295	ICMM98IA803	B082T6GVG9	1	1500.00	2022-02-22 00:00:00	2022-02-22 00:00:00
3296	AINP60IN980	B08CS3BT4L	5	12999.00	2022-02-16 00:00:00	2022-02-16 00:00:00
3297	AINP60IN980	B00KIDSU8S	15	2360.00	2022-02-16 00:00:00	2022-02-16 00:00:00
3298	AINP60IN980	B01LY9W8AF	11	1282.00	2022-02-16 00:00:00	2022-02-16 00:00:00
3299	AINP60IN980	B01F25X6RQ	6	499.00	2022-02-16 00:00:00	2022-02-16 00:00:00
3300	AINP60IN980	B07ZJND9B9	3	1990.00	2022-02-16 00:00:00	2022-02-16 00:00:00
3301	AINP60IN980	B009P2LK80	3	1639.00	2022-02-16 00:00:00	2022-02-16 00:00:00
3302	NPIC10NO480	B08TZD7FQN	11	599.00	2021-04-17 00:00:00	2021-04-17 00:00:00
3303	CANP44ON966	B09TT6BFDX	4	1999.00	2022-07-03 00:00:00	2022-07-03 00:00:00
3304	CANP44ON966	B09MT84WV5	1	3999.00	2022-07-03 00:00:00	2022-07-03 00:00:00
3305	MCOC13CN851	B0BBFJ9M3X	15	15999.00	2022-03-10 00:00:00	2022-03-10 00:00:00
3306	MCOC13CN851	B0BMFD94VD	7	499.00	2022-03-10 00:00:00	2022-03-10 00:00:00
3307	MCOC13CN851	B07WHQBZLS	15	21990.00	2022-03-10 00:00:00	2022-03-10 00:00:00
3308	MIIO36PP245	B00UGZWM2I	9	800.00	2022-06-14 00:00:00	2022-06-14 00:00:00
3309	MIIO36PP245	B08FB2LNSZ	9	2999.00	2022-06-14 00:00:00	2022-06-14 00:00:00
3310	NNCI09CA913	B09B125CFJ	3	799.00	2021-04-30 00:00:00	2021-04-30 00:00:00
3311	NNCI09CA913	B08L5FM4JC	9	2400.00	2021-04-30 00:00:00	2021-04-30 00:00:00
3312	NNCI09CA913	B01C8P29T4	7	785.00	2021-04-30 00:00:00	2021-04-30 00:00:00
3313	ACOC47OC916	B09NNGHG22	12	56790.00	2021-12-13 00:00:00	2021-12-13 00:00:00
3314	ACOC47OC916	B009P2L7CO	15	1920.00	2021-12-13 00:00:00	2021-12-13 00:00:00
3315	ACOC47OC916	B084872DQY	10	14999.00	2021-12-13 00:00:00	2021-12-13 00:00:00
3316	ACOC47OC916	B0B6F7LX4C	4	24999.00	2021-12-13 00:00:00	2021-12-13 00:00:00
3317	OAII42OM996	B0B1YY6JJL	10	34990.00	2021-06-14 00:00:00	2021-06-14 00:00:00
3318	OAII42OM996	B09BVCVTBC	12	3499.00	2021-06-14 00:00:00	2021-06-14 00:00:00
3319	OAII42OM996	B003B00484	6	499.00	2021-06-14 00:00:00	2021-06-14 00:00:00
3320	OAII42OM996	B09LV1CMGH	10	2000.00	2021-06-14 00:00:00	2021-06-14 00:00:00
3321	OAII42OM996	B09NL7LBWT	11	1999.00	2021-06-14 00:00:00	2021-06-14 00:00:00
3322	OAII42OM996	B01MY839VW	7	1090.00	2021-06-14 00:00:00	2021-06-14 00:00:00
3323	OAII42OM996	B06XDKWLJH	5	5734.00	2021-06-14 00:00:00	2021-06-14 00:00:00
3324	IMPP39OP007	B08YDFX7Y1	1	449.00	2022-06-09 00:00:00	2022-06-09 00:00:00
3325	IMPP39OP007	B09XRBJ94N	13	4600.00	2022-06-09 00:00:00	2022-06-09 00:00:00
3326	IMPP39OP007	B09NY7W8YD	10	11999.00	2022-06-09 00:00:00	2022-06-09 00:00:00
3327	IMPP39OP007	B09YV575RK	4	9999.00	2022-06-09 00:00:00	2022-06-09 00:00:00
3328	CACA78CC067	B09VCHLSJF	5	39999.00	2022-03-20 00:00:00	2022-03-20 00:00:00
3329	AAAA62MA342	B09FHHTL8L	7	199.00	2021-07-27 00:00:00	2021-07-27 00:00:00
3330	AAAA62MA342	B098T9CJVQ	1	699.00	2021-07-27 00:00:00	2021-07-27 00:00:00
3331	AAAA62MA342	B08FY4FG5X	2	2499.00	2021-07-27 00:00:00	2021-07-27 00:00:00
3332	AAAA62MA342	B09GFPN6TP	11	9499.00	2021-07-27 00:00:00	2021-07-27 00:00:00
3333	AAAA62MA342	B0BF57RN3K	9	19999.00	2021-07-27 00:00:00	2021-07-27 00:00:00
3334	AAAA62MA342	B08J82K4GX	1	19110.00	2021-07-27 00:00:00	2021-07-27 00:00:00
3335	INIA75OA672	B077BTLQ67	9	4890.00	2021-06-03 00:00:00	2021-06-03 00:00:00
3336	INIA75OA672	B07LFWP97N	8	1099.00	2021-06-03 00:00:00	2021-06-03 00:00:00
3337	PIAN74MN243	B07XLML2YS	6	3299.00	2022-05-22 00:00:00	2022-05-22 00:00:00
3338	PIAN74MN243	B08YD264ZS	6	2499.00	2022-05-22 00:00:00	2022-05-22 00:00:00
3339	PIAN74MN243	B008LN8KDM	5	2095.00	2022-05-22 00:00:00	2022-05-22 00:00:00
3340	PIAN74MN243	B0B2DJ5RVQ	11	1999.00	2022-05-22 00:00:00	2022-05-22 00:00:00
3341	ICPP93NN107	B08GSQXLJ2	8	10400.00	2022-07-03 00:00:00	2022-07-03 00:00:00
3342	ICPP93NN107	B01MRARGBW	8	400.00	2022-07-03 00:00:00	2022-07-03 00:00:00
3343	ICPP93NN107	B07G3YNLJB	10	3100.00	2022-07-03 00:00:00	2022-07-03 00:00:00
3344	AMPI26AI676	B08Y5QJXSR	6	5190.00	2022-06-18 00:00:00	2022-06-18 00:00:00
3345	AMPI26AI676	B0B16KD737	11	15999.00	2022-06-18 00:00:00	2022-06-18 00:00:00
3346	AMPI26AI676	B08YDFX7Y1	2	449.00	2022-06-18 00:00:00	2022-06-18 00:00:00
3347	AMPI26AI676	B0B72BSW7K	7	699.00	2022-06-18 00:00:00	2022-06-18 00:00:00
3348	AMPI26AI676	B07SLNG3LW	14	10295.00	2022-06-18 00:00:00	2022-06-18 00:00:00
3349	AMPI26AI676	B00MUTWLW4	4	3295.00	2022-06-18 00:00:00	2022-06-18 00:00:00
3350	APNI56AO035	B08JQN8DGZ	10	2990.00	2022-09-10 00:00:00	2022-09-10 00:00:00
3351	APNI56AO035	B0B7FJNSZR	1	19990.00	2022-09-10 00:00:00	2022-09-10 00:00:00
3352	APNI56AO035	B009UORDX4	4	975.00	2022-09-10 00:00:00	2022-09-10 00:00:00
3353	APNI56AO035	B09MJ77786	3	49999.00	2022-09-10 00:00:00	2022-09-10 00:00:00
3354	CPPA18NP849	B07K19NYZ8	12	3290.00	2021-10-12 00:00:00	2021-10-12 00:00:00
3355	CPPA18NP849	B09YDFDVNS	12	1699.00	2021-10-12 00:00:00	2021-10-12 00:00:00
3356	CPPA18NP849	B09V175NP7	6	6990.00	2021-10-12 00:00:00	2021-10-12 00:00:00
3357	CPPA18NP849	B08YD264ZS	2	2499.00	2021-10-12 00:00:00	2021-10-12 00:00:00
3358	AAAA60AA825	B09MZCQYHZ	8	1599.00	2021-04-02 00:00:00	2021-04-02 00:00:00
3359	AAAA60AA825	B07YWS9SP9	10	999.00	2021-04-02 00:00:00	2021-04-02 00:00:00
3360	AAAA60AA825	B07CD2BN46	13	599.00	2021-04-02 00:00:00	2021-04-02 00:00:00
3361	AAAA60AA825	B09KGV7WSV	7	5999.00	2021-04-02 00:00:00	2021-04-02 00:00:00
3362	AAAA60AA825	B08TDJNM3G	4	59.00	2021-04-02 00:00:00	2021-04-02 00:00:00
3363	AAAA60AA825	B01NCVJMKX	1	999.00	2021-04-02 00:00:00	2021-04-02 00:00:00
3364	AAAA60AA825	B073BRXPZX	12	590.00	2021-04-02 00:00:00	2021-04-02 00:00:00
3365	CONM21PC177	B07DFYJRQV	15	1499.00	2022-09-26 00:00:00	2022-09-26 00:00:00
3366	CONM21PC177	B076B8G5D8	9	1995.00	2022-09-26 00:00:00	2022-09-26 00:00:00
3367	CONM21PC177	B00P0R95EA	8	640.00	2022-09-26 00:00:00	2022-09-26 00:00:00
3368	CONM21PC177	B09LQQYNZQ	3	4699.00	2022-09-26 00:00:00	2022-09-26 00:00:00
3369	CONM21PC177	B07JH1CBGW	5	1999.00	2022-09-26 00:00:00	2022-09-26 00:00:00
3370	NAMO18NA976	B09VCHLSJF	3	39999.00	2022-02-03 00:00:00	2022-02-03 00:00:00
3371	NAMO18NA976	B083P71WKK	13	1500.00	2022-02-03 00:00:00	2022-02-03 00:00:00
3372	IAAP63MC340	B00TDD0YM4	1	1695.00	2021-01-14 00:00:00	2021-01-14 00:00:00
3373	IAAP63MC340	B0798PJPCL	7	2699.00	2021-01-14 00:00:00	2021-01-14 00:00:00
3374	IAAP63MC340	B08XMSKKMM	5	1999.00	2021-01-14 00:00:00	2021-01-14 00:00:00
3375	IAAP63MC340	B09X76VL5L	12	3490.00	2021-01-14 00:00:00	2021-01-14 00:00:00
3376	IAAP63MC340	B008IFXQFU	3	999.00	2021-01-14 00:00:00	2021-01-14 00:00:00
3377	IAAP63MC340	B08DPLCM6T	12	21990.00	2021-01-14 00:00:00	2021-01-14 00:00:00
3378	PAII72NA767	B0B694PXQJ	3	2999.00	2021-08-12 00:00:00	2021-08-12 00:00:00
3379	PAII72NA767	B08MZNT7GP	1	19825.00	2021-08-12 00:00:00	2021-08-12 00:00:00
3380	PAII72NA767	B09P8M18QM	8	2999.00	2021-08-12 00:00:00	2021-08-12 00:00:00
3381	NCAN95IA600	B0BBN4DZBD	1	8999.00	2021-02-05 00:00:00	2021-02-05 00:00:00
3382	NCAN95IA600	B0B9F9PT8R	7	2999.00	2021-02-05 00:00:00	2021-02-05 00:00:00
3383	AACM54PA214	B009UORDX4	4	975.00	2021-09-02 00:00:00	2021-09-02 00:00:00
3384	AACM54PA214	B07NTKGW45	12	899.00	2021-09-02 00:00:00	2021-09-02 00:00:00
3385	AACM54PA214	B0088TKTY2	15	1399.00	2021-09-02 00:00:00	2021-09-02 00:00:00
3386	AACM54PA214	B00GG59HU2	3	599.00	2021-09-02 00:00:00	2021-09-02 00:00:00
3387	AACM54PA214	B014I8SX4Y	3	1400.00	2021-09-02 00:00:00	2021-09-02 00:00:00
3388	AACM54PA214	B09GYBZPHF	7	2499.00	2021-09-02 00:00:00	2021-09-02 00:00:00
3389	AACM54PA214	B0B6F98KJJ	9	29999.00	2021-09-02 00:00:00	2021-09-02 00:00:00
3390	AAIO45MI964	B086394NY5	5	2490.00	2021-10-13 00:00:00	2021-10-13 00:00:00
3391	AAIO45MI964	B089WB69Y1	8	649.00	2021-10-13 00:00:00	2021-10-13 00:00:00
3392	AAIO45MI964	B0B3DV7S9B	9	499.00	2021-10-13 00:00:00	2021-10-13 00:00:00
3393	AAIO45MI964	B08CT62BM1	15	999.00	2021-10-13 00:00:00	2021-10-13 00:00:00
3394	AAIO45MI964	B01L8ZNWN2	7	1500.00	2021-10-13 00:00:00	2021-10-13 00:00:00
3395	AAIO45MI964	B07TR5HSR9	10	1499.00	2021-10-13 00:00:00	2021-10-13 00:00:00
3396	AAIO45MI964	B09CGLY5CX	8	2400.00	2021-10-13 00:00:00	2021-10-13 00:00:00
3397	ACOA49CA128	B09HK9JH4F	2	399.00	2021-09-22 00:00:00	2021-09-22 00:00:00
3398	AMMA02MO582	B09RF2QXGX	14	299.00	2022-12-07 00:00:00	2022-12-07 00:00:00
3399	AMMA02MO582	B0BC8BQ432	8	85000.00	2022-12-07 00:00:00	2022-12-07 00:00:00
3400	AMMA02MO582	B00B7GKXMG	14	850.00	2022-12-07 00:00:00	2022-12-07 00:00:00
3401	AMMA02MO582	B078KRFWQB	2	3945.00	2022-12-07 00:00:00	2022-12-07 00:00:00
3402	AMMA02MO582	B09T39K9YL	10	24999.00	2022-12-07 00:00:00	2022-12-07 00:00:00
3403	AMMA02MO582	B09474JWN6	3	1500.00	2022-12-07 00:00:00	2022-12-07 00:00:00
3404	ANAN90IO042	B09RZS1NQT	6	999.00	2021-01-23 00:00:00	2021-01-23 00:00:00
3405	ANAN90IO042	B0B4F3QNDM	1	19499.00	2021-01-23 00:00:00	2021-01-23 00:00:00
3406	APIP68MN291	B09ZK6THRR	14	1000.00	2022-03-07 00:00:00	2022-03-07 00:00:00
3407	APIP68MN291	B08X77LM8C	14	999.00	2022-03-07 00:00:00	2022-03-07 00:00:00
3408	APIP68MN291	B09X5HD5T1	3	499.00	2022-03-07 00:00:00	2022-03-07 00:00:00
3409	APIP68MN291	B0BK1K598K	1	1499.00	2022-03-07 00:00:00	2022-03-07 00:00:00
3410	APIP68MN291	B07FXLC2G2	6	699.00	2022-03-07 00:00:00	2022-03-07 00:00:00
3411	PNNC37IN892	B07WG8PDCW	9	1299.00	2021-02-25 00:00:00	2021-02-25 00:00:00
3412	MOIO79IO183	B09ZVJXN5L	4	999.00	2021-04-08 00:00:00	2021-04-08 00:00:00
3413	MOIO79IO183	B09QGZFBPM	4	999.00	2021-04-08 00:00:00	2021-04-08 00:00:00
3414	MOIO79IO183	B09XB7SRQ5	15	11999.00	2021-04-08 00:00:00	2021-04-08 00:00:00
3415	MOIO79IO183	B07WDKLDRX	2	34999.00	2021-04-08 00:00:00	2021-04-08 00:00:00
3416	IAOP49OO190	B09PNR6F8Q	2	399.00	2021-04-17 00:00:00	2021-04-17 00:00:00
3417	IAOP49OO190	B0BCKJJN8R	8	7290.00	2021-04-17 00:00:00	2021-04-17 00:00:00
3418	IAOP49OO190	B07MSLTW8Z	1	1999.00	2021-04-17 00:00:00	2021-04-17 00:00:00
3419	IAOP49OO190	B08MWJTST6	6	1299.00	2021-04-17 00:00:00	2021-04-17 00:00:00
3420	IAOP49OO190	B009UORDX4	13	975.00	2021-04-17 00:00:00	2021-04-17 00:00:00
3421	IAOP49OO190	B09SDDQQKP	4	3295.00	2021-04-17 00:00:00	2021-04-17 00:00:00
3422	IAOP49OO190	B07FXLC2G2	14	699.00	2021-04-17 00:00:00	2021-04-17 00:00:00
3423	PAIC42OC351	B07RZZ1QSW	14	799.00	2022-09-12 00:00:00	2022-09-12 00:00:00
3424	PAIC42OC351	B09NNGHG22	3	56790.00	2022-09-12 00:00:00	2022-09-12 00:00:00
3425	OCCC60PA845	B08VS3YLRK	9	1499.00	2022-05-01 00:00:00	2022-05-01 00:00:00
3426	OCCC60PA845	B09Z7YGV3R	1	699.00	2022-05-01 00:00:00	2022-05-01 00:00:00
3427	OCCC60PA845	B07S851WX5	1	1299.00	2022-05-01 00:00:00	2022-05-01 00:00:00
3428	OCCC60PA845	B09XHXXCFH	3	5495.00	2022-05-01 00:00:00	2022-05-01 00:00:00
3429	OCCC60PA845	B09XJ1LM7R	1	799.00	2022-05-01 00:00:00	2022-05-01 00:00:00
3430	ANAC12CN309	B09KPXTZXN	13	1999.00	2022-04-08 00:00:00	2022-04-08 00:00:00
3431	ANAC12CN309	B08XXF5V6G	4	50999.00	2022-04-08 00:00:00	2022-04-08 00:00:00
3432	ANAC12CN309	B09T39K9YL	8	24999.00	2022-04-08 00:00:00	2022-04-08 00:00:00
3433	ANAC12CN309	B078JDNZJ8	15	6190.00	2022-04-08 00:00:00	2022-04-08 00:00:00
3434	PCPP02MA307	B09F6KL23R	14	2799.00	2021-03-01 00:00:00	2021-03-01 00:00:00
3435	PCPP02MA307	B07WDKLRM4	5	19999.00	2021-03-01 00:00:00	2021-03-01 00:00:00
3436	AOPM57OO937	B08HVJCW95	8	2199.00	2022-09-13 00:00:00	2022-09-13 00:00:00
3437	AOPM57OO937	B008P7IF02	9	5795.00	2022-09-13 00:00:00	2022-09-13 00:00:00
3438	AOPM57OO937	B09Z28BQZT	15	3999.00	2022-09-13 00:00:00	2022-09-13 00:00:00
3439	AOPM57OO937	B0756K5DYZ	4	6295.00	2022-09-13 00:00:00	2022-09-13 00:00:00
3440	AOPM57OO937	B0BD92GDQH	14	6999.00	2022-09-13 00:00:00	2022-09-13 00:00:00
3441	CAPO39CO848	B0B9RZ4G4W	3	1699.00	2021-07-22 00:00:00	2021-07-22 00:00:00
3442	CAPO39CO848	B09FKDH6FS	13	7999.00	2021-07-22 00:00:00	2021-07-22 00:00:00
3443	NPAN77IC461	B08HF4W2CT	2	3499.00	2022-09-11 00:00:00	2022-09-11 00:00:00
3444	NPAN77IC461	B07WGPBXY9	13	1249.00	2022-09-11 00:00:00	2022-09-11 00:00:00
3445	NPAN77IC461	B08CFJBZRK	3	6295.00	2022-09-11 00:00:00	2022-09-11 00:00:00
3446	PAAA97IN357	B07Z1Z77ZZ	11	999.00	2021-11-13 00:00:00	2021-11-13 00:00:00
3447	PAAA97IN357	B09M3F4HGB	1	18990.00	2021-11-13 00:00:00	2021-11-13 00:00:00
3448	CMAO11NA836	B075S9FVRY	13	7200.00	2022-12-03 00:00:00	2022-12-03 00:00:00
3449	CMAO11NA836	B07GQD4K6L	9	999.00	2022-12-03 00:00:00	2022-12-03 00:00:00
3450	CMAO11NA836	B009P2LK80	1	1639.00	2022-12-03 00:00:00	2022-12-03 00:00:00
3451	CMAO11NA836	B0B4SJKRDF	8	239.00	2022-12-03 00:00:00	2022-12-03 00:00:00
3452	CMAO11NA836	B09PLD9TCD	1	42999.00	2022-12-03 00:00:00	2022-12-03 00:00:00
3453	OOAO15MA764	B08CF3D7QR	10	339.00	2022-02-24 00:00:00	2022-02-24 00:00:00
3454	MPNO53MA018	B00SMFPJG0	1	670.00	2022-10-27 00:00:00	2022-10-27 00:00:00
3455	MPNO53MA018	B09MZ6WZ6V	6	999.00	2022-10-27 00:00:00	2022-10-27 00:00:00
3456	MPNO53MA018	B092X94QNQ	12	3990.00	2022-10-27 00:00:00	2022-10-27 00:00:00
3457	ICCA26PA446	B08KDBLMQP	7	2500.00	2022-11-21 00:00:00	2022-11-21 00:00:00
3458	ICCA26PA446	B09SDDQQKP	10	3295.00	2022-11-21 00:00:00	2022-11-21 00:00:00
3459	OOCO99CN016	B08WWKM5HQ	7	4780.00	2021-04-06 00:00:00	2021-04-06 00:00:00
3460	OOCO99CN016	B095RTJH1M	8	2899.00	2021-04-06 00:00:00	2021-04-06 00:00:00
3461	OOCO99CN016	B0BPCJM7TB	2	999.00	2021-04-06 00:00:00	2021-04-06 00:00:00
3462	OOCO99CN016	B0B3TBY2YX	11	2299.00	2021-04-06 00:00:00	2021-04-06 00:00:00
3463	OOCO99CN016	B097R3XH9R	5	15270.00	2021-04-06 00:00:00	2021-04-06 00:00:00
3464	OOCO99CN016	B01N4EV2TL	3	1995.00	2021-04-06 00:00:00	2021-04-06 00:00:00
3465	MMAA59MN171	B086GVRP63	6	2400.00	2021-02-05 00:00:00	2021-02-05 00:00:00
3466	MMAA59MN171	B00S2SEV7K	8	100.00	2021-02-05 00:00:00	2021-02-05 00:00:00
3467	MMAA59MN171	B0B3CPQ5PF	14	28999.00	2021-02-05 00:00:00	2021-02-05 00:00:00
3468	MMAA59MN171	B09QGZFBPM	12	999.00	2021-02-05 00:00:00	2021-02-05 00:00:00
3469	MMAA59MN171	B08Y57TPDM	15	200.00	2021-02-05 00:00:00	2021-02-05 00:00:00
3470	MMAA59MN171	B0746JGVDS	10	999.00	2021-02-05 00:00:00	2021-02-05 00:00:00
3471	AMCA83IP860	B08K36NZSV	10	999.00	2022-02-08 00:00:00	2022-02-08 00:00:00
3472	AMCA83IP860	B091JF2TFD	14	1299.00	2022-02-08 00:00:00	2022-02-08 00:00:00
3473	AMCA83IP860	B09YV42QHZ	7	7999.00	2022-02-08 00:00:00	2022-02-08 00:00:00
3474	AMCA83IP860	B00UGZWM2I	1	800.00	2022-02-08 00:00:00	2022-02-08 00:00:00
3475	AMCA83IP860	B094G9L9LT	3	1950.00	2022-02-08 00:00:00	2022-02-08 00:00:00
3476	AMCA83IP860	B07VQGVL68	10	499.00	2022-02-08 00:00:00	2022-02-08 00:00:00
3477	CIPN86AN200	B0B84QN4CN	13	1100.00	2022-09-21 00:00:00	2022-09-21 00:00:00
3478	CIPN86AN200	B07VJ9ZTXS	3	599.00	2022-09-21 00:00:00	2022-09-21 00:00:00
3479	CIPN86AN200	B07JW1Y6XV	5	1099.00	2022-09-21 00:00:00	2022-09-21 00:00:00
3480	ACAO60MO080	B01IOZUHRS	8	499.00	2021-11-24 00:00:00	2021-11-24 00:00:00
3481	ACAO60MO080	B0BG62HMDJ	10	775.00	2021-11-24 00:00:00	2021-11-24 00:00:00
3482	ACAO60MO080	B07J9KXQCC	8	2299.00	2021-11-24 00:00:00	2021-11-24 00:00:00
3483	POCP92CA950	B06XSK3XL6	4	999.00	2022-05-15 00:00:00	2022-05-15 00:00:00
3484	POCP92CA950	B07DKZCZ89	5	499.00	2022-05-15 00:00:00	2022-05-15 00:00:00
3485	CPMO90NP025	B08M66K48D	9	599.00	2022-10-26 00:00:00	2022-10-26 00:00:00
3486	CPMO90NP025	B07WNK1FFN	6	1699.00	2022-10-26 00:00:00	2022-10-26 00:00:00
3487	CPMO90NP025	B097XJQZ8H	14	6000.00	2022-10-26 00:00:00	2022-10-26 00:00:00
3488	CPMO90NP025	B07FJNNZCJ	4	13049.00	2022-10-26 00:00:00	2022-10-26 00:00:00
3489	CPMO90NP025	B09CYTJV3N	1	5999.00	2022-10-26 00:00:00	2022-10-26 00:00:00
3490	POAP27IN761	B08WRWPM22	15	499.00	2021-07-29 00:00:00	2021-07-29 00:00:00
3491	POAP27IN761	B09XTQFFCG	7	3199.00	2021-07-29 00:00:00	2021-07-29 00:00:00
3492	NAIO11IN274	B08B6XWQ1C	15	995.00	2021-03-19 00:00:00	2021-03-19 00:00:00
3493	NAIO11IN274	B0B467CCB9	12	16990.00	2021-03-19 00:00:00	2021-03-19 00:00:00
3494	MIPP86AN952	B07WFPMGQQ	12	27990.00	2022-12-17 00:00:00	2022-12-17 00:00:00
3495	MIPP86AN952	B087FXHB6J	10	999.00	2022-12-17 00:00:00	2022-12-17 00:00:00
3496	MIPP86AN952	B08MVSGXMY	1	2300.00	2022-12-17 00:00:00	2022-12-17 00:00:00
3497	MIPP86AN952	B094JNXNPV	1	399.00	2022-12-17 00:00:00	2022-12-17 00:00:00
3498	MIPP86AN952	B09TWHTBKQ	6	25999.00	2022-12-17 00:00:00	2022-12-17 00:00:00
3499	ANOA72AO379	B0B4F2TTTS	14	14999.00	2022-03-21 00:00:00	2022-03-21 00:00:00
3500	ANOA72AO379	B08D77XZX5	11	2499.00	2022-03-21 00:00:00	2022-03-21 00:00:00
3501	ANOA72AO379	B08ZHYNTM1	7	4005.00	2022-03-21 00:00:00	2022-03-21 00:00:00
3502	IMCA46AA762	B00NH12R1O	14	485.00	2021-08-12 00:00:00	2021-08-12 00:00:00
3503	IMCA46AA762	B0B9XLX8VR	15	65000.00	2021-08-12 00:00:00	2021-08-12 00:00:00
3504	IMCA46AA762	B08CF3B7N1	13	399.00	2021-08-12 00:00:00	2021-08-12 00:00:00
3505	IMCA46AA762	B09F6VHQXB	2	20000.00	2021-08-12 00:00:00	2021-08-12 00:00:00
3506	IMCA46AA762	B01J0XWYKQ	3	895.00	2021-08-12 00:00:00	2021-08-12 00:00:00
3507	IMCA46AA762	B07D2NMTTV	4	3500.00	2021-08-12 00:00:00	2021-08-12 00:00:00
3508	IMCA46AA762	B09VGS66FV	4	1850.00	2021-08-12 00:00:00	2021-08-12 00:00:00
3509	CAIN67CO563	B09GFPVD9Y	12	10999.00	2022-03-31 00:00:00	2022-03-31 00:00:00
3510	CAIN67CO563	B08K4RDQ71	1	999.00	2022-03-31 00:00:00	2022-03-31 00:00:00
3511	CAIN67CO563	B00V4BGDKU	12	1899.00	2022-03-31 00:00:00	2022-03-31 00:00:00
3512	CAIN67CO563	B09JN37WBX	15	749.00	2022-03-31 00:00:00	2022-03-31 00:00:00
3513	CAIN67CO563	B09LMMFW3S	15	399.00	2022-03-31 00:00:00	2022-03-31 00:00:00
3514	CAIN67CO563	B0B694PXQJ	7	2999.00	2022-03-31 00:00:00	2022-03-31 00:00:00
3515	CAIN67CO563	B09474JWN6	3	1500.00	2022-03-31 00:00:00	2022-03-31 00:00:00
3516	NAAN91IA048	B08JW1GVS7	9	3999.00	2022-01-08 00:00:00	2022-01-08 00:00:00
3517	NAAN91IA048	B08FB2LNSZ	14	2999.00	2022-01-08 00:00:00	2022-01-08 00:00:00
3518	NAAN91IA048	B09MKG4ZCM	7	2999.00	2022-01-08 00:00:00	2022-01-08 00:00:00
3519	NAAN91IA048	B00E9G8KOY	7	600.00	2022-01-08 00:00:00	2022-01-08 00:00:00
3520	NAAN91IA048	B08497Z1MQ	15	700.00	2022-01-08 00:00:00	2022-01-08 00:00:00
3521	NAAN91IA048	B00GGGOYEU	4	699.00	2022-01-08 00:00:00	2022-01-08 00:00:00
3522	OAMP33AA556	B0B244R4KB	5	2899.00	2021-03-16 00:00:00	2021-03-16 00:00:00
3523	OAMP33AA556	B098JYT4SY	13	1190.00	2021-03-16 00:00:00	2021-03-16 00:00:00
3524	AACC23PM727	B09HV71RL1	9	1499.00	2021-08-17 00:00:00	2021-08-17 00:00:00
3525	AACC23PM727	B07WDK3ZS2	1	29990.00	2021-08-17 00:00:00	2021-08-17 00:00:00
3526	AACC23PM727	B0BJYSCWFQ	11	1999.00	2021-08-17 00:00:00	2021-08-17 00:00:00
3527	AACC23PM727	B01M6453MB	5	3045.00	2021-08-17 00:00:00	2021-08-17 00:00:00
3528	PAAC79AA513	B0846D5CBP	15	1295.00	2022-07-15 00:00:00	2022-07-15 00:00:00
3529	PAAC79AA513	B008YW8M0G	3	875.00	2022-07-15 00:00:00	2022-07-15 00:00:00
3530	PAAC79AA513	B071SDRGWL	12	699.00	2022-07-15 00:00:00	2022-07-15 00:00:00
3531	PAAC79AA513	B09Z7YGV3R	7	699.00	2022-07-15 00:00:00	2022-07-15 00:00:00
3532	PAAC79AA513	B0941392C8	12	449.00	2022-07-15 00:00:00	2022-07-15 00:00:00
3533	PAAC79AA513	B09YLX91QR	10	399.00	2022-07-15 00:00:00	2022-07-15 00:00:00
3534	PAAC79AA513	B0B466C3G4	8	18990.00	2022-07-15 00:00:00	2022-07-15 00:00:00
3535	OAOM52AO054	B09GB5B4BK	6	899.00	2021-11-30 00:00:00	2021-11-30 00:00:00
3536	OAOM52AO054	B078W65FJ7	6	2490.00	2021-11-30 00:00:00	2021-11-30 00:00:00
3537	OAOM52AO054	B09474JWN6	4	1500.00	2021-11-30 00:00:00	2021-11-30 00:00:00
3538	OAOM52AO054	B0836JGZ74	8	2499.00	2021-11-30 00:00:00	2021-11-30 00:00:00
3539	OAOM52AO054	B07VNFP3C2	8	1245.00	2021-11-30 00:00:00	2021-11-30 00:00:00
3540	MMIA00IO947	B0BL11S5QK	1	3890.00	2022-04-09 00:00:00	2022-04-09 00:00:00
3541	MMIA00IO947	B08JW1GVS7	4	3999.00	2022-04-09 00:00:00	2022-04-09 00:00:00
3542	MMIA00IO947	B082T6GVG9	12	1500.00	2022-04-09 00:00:00	2022-04-09 00:00:00
3543	MMIA00IO947	B0756K5DYZ	13	6295.00	2022-04-09 00:00:00	2022-04-09 00:00:00
3544	MMIA00IO947	B08MC57J31	15	2499.00	2022-04-09 00:00:00	2022-04-09 00:00:00
3545	MMIA00IO947	B07Y5FDPKV	11	2400.00	2022-04-09 00:00:00	2022-04-09 00:00:00
3546	MMIA00IO947	B01L7C4IU2	5	3045.00	2022-04-09 00:00:00	2022-04-09 00:00:00
3547	PNCP64OO071	B09NVPSCQT	2	3999.00	2022-04-21 00:00:00	2022-04-21 00:00:00
3548	PNCP64OO071	B09FZ89DK6	6	9999.00	2022-04-21 00:00:00	2022-04-21 00:00:00
3549	PNCP64OO071	B09T37CKQ5	14	599.00	2022-04-21 00:00:00	2022-04-21 00:00:00
3550	PNIN60AI917	B08PV1X771	3	20900.00	2022-12-10 00:00:00	2022-12-10 00:00:00
3551	PNIN60AI917	B09GFN8WZL	13	999.00	2022-12-10 00:00:00	2022-12-10 00:00:00
3552	PNIN60AI917	B08HDJ86NZ	14	699.00	2022-12-10 00:00:00	2022-12-10 00:00:00
3553	PNIN60AI917	B09127FZCK	1	899.00	2022-12-10 00:00:00	2022-12-10 00:00:00
3554	CMMI73CM809	B077T3BG5L	15	399.00	2021-07-24 00:00:00	2021-07-24 00:00:00
3555	CMMI73CM809	B0B3N7LR6K	7	16999.00	2021-07-24 00:00:00	2021-07-24 00:00:00
3556	CMMI73CM809	B00A0VCJPI	4	2499.00	2021-07-24 00:00:00	2021-07-24 00:00:00
3557	CMMI73CM809	B07RZZ1QSW	2	799.00	2021-07-24 00:00:00	2021-07-24 00:00:00
3558	CMMI73CM809	B09ZTZ9N3Q	9	1699.00	2021-07-24 00:00:00	2021-07-24 00:00:00
3559	MPII65CO707	B0B5ZF3NRK	14	599.00	2022-05-24 00:00:00	2022-05-24 00:00:00
3560	MPII65CO707	B07MP21WJD	6	299.00	2022-05-24 00:00:00	2022-05-24 00:00:00
3561	MPII65CO707	B08GSQXLJ2	15	10400.00	2022-05-24 00:00:00	2022-05-24 00:00:00
3562	MPII65CO707	B07XJWTYM2	6	1999.00	2022-05-24 00:00:00	2022-05-24 00:00:00
3563	MPII65CO707	B0BPBG712X	3	1199.00	2022-05-24 00:00:00	2022-05-24 00:00:00
3564	OCAI48AI857	B09V175NP7	12	6990.00	2021-08-27 00:00:00	2021-08-27 00:00:00
3565	OCAI48AI857	B09XB1R2F3	1	799.00	2021-08-27 00:00:00	2021-08-27 00:00:00
3566	OCAI48AI857	B0B8SSC5D9	9	1999.00	2021-08-27 00:00:00	2021-08-27 00:00:00
3567	OCAI48AI857	B07P434WJY	10	1999.00	2021-08-27 00:00:00	2021-08-27 00:00:00
3568	OCAI48AI857	B08W9BK4MD	4	899.00	2021-08-27 00:00:00	2021-08-27 00:00:00
3569	OCAI48AI857	B0758F7KK7	4	999.00	2021-08-27 00:00:00	2021-08-27 00:00:00
3570	OCAI48AI857	B07W14CHV8	9	799.00	2021-08-27 00:00:00	2021-08-27 00:00:00
3571	CAIO70AN784	B08RZ5K9YH	5	1999.00	2022-07-26 00:00:00	2022-07-26 00:00:00
3572	CAIO70AN784	B08K4PSZ3V	10	999.00	2022-07-26 00:00:00	2022-07-26 00:00:00
3573	CAIO70AN784	B0BLC2BYPX	9	1299.00	2022-07-26 00:00:00	2022-07-26 00:00:00
3574	CAIO70AN784	B00NH12R1O	14	485.00	2022-07-26 00:00:00	2022-07-26 00:00:00
3575	CAIO70AN784	B07Q4QV1DL	2	1499.00	2022-07-26 00:00:00	2022-07-26 00:00:00
3576	COAN18PN127	B00VA7YYUO	7	99.00	2021-11-29 00:00:00	2021-11-29 00:00:00
3577	COAN18PN127	B083J64CBB	14	499.00	2021-11-29 00:00:00	2021-11-29 00:00:00
3578	COAN18PN127	B01D5H8ZI8	5	595.00	2021-11-29 00:00:00	2021-11-29 00:00:00
3579	COAN18PN127	B09P18XVW6	10	4999.00	2021-11-29 00:00:00	2021-11-29 00:00:00
3580	COAN18PN127	B098K3H92Z	5	899.00	2021-11-29 00:00:00	2021-11-29 00:00:00
3581	AIIA82AM795	B00EDJJ7FS	3	5295.00	2022-10-27 00:00:00	2022-10-27 00:00:00
3582	AIIA82AM795	B08RWCZ6SY	10	899.00	2022-10-27 00:00:00	2022-10-27 00:00:00
3583	AIIA82AM795	B00TI8E7BI	8	2695.00	2022-10-27 00:00:00	2022-10-27 00:00:00
3584	AIIA82AM795	B098TV3L96	2	1999.00	2022-10-27 00:00:00	2022-10-27 00:00:00
3585	AIIA82AM795	B06XPYRWV5	6	1795.00	2022-10-27 00:00:00	2022-10-27 00:00:00
3586	CCCP76IO123	B0B2CWRDB1	8	9999.00	2022-02-08 00:00:00	2022-02-08 00:00:00
3587	CCCP76IO123	B099S26HWG	9	300.00	2022-02-08 00:00:00	2022-02-08 00:00:00
3588	CCCP76IO123	B01F25X6RQ	14	499.00	2022-02-08 00:00:00	2022-02-08 00:00:00
3589	CCCP76IO123	B0BLV1GNLN	9	9990.00	2022-02-08 00:00:00	2022-02-08 00:00:00
3590	CCCP76IO123	B08L5HMJVW	11	700.00	2022-02-08 00:00:00	2022-02-08 00:00:00
3591	MACI36CP463	B08FD2VSD9	7	51990.00	2022-04-15 00:00:00	2022-04-15 00:00:00
3592	MACI36CP463	B095JQVC7N	15	59999.00	2022-04-15 00:00:00	2022-04-15 00:00:00
3593	MACI36CP463	B0974G5Q2Y	10	999.00	2022-04-15 00:00:00	2022-04-15 00:00:00
3594	MACI36CP463	B0B12K5BPM	10	2299.00	2022-04-15 00:00:00	2022-04-15 00:00:00
3595	MACI36CP463	B0B59K1C8F	2	799.00	2022-04-15 00:00:00	2022-04-15 00:00:00
3596	PNAN02MP197	B07YL54NVJ	13	999.00	2021-07-07 00:00:00	2021-07-07 00:00:00
3597	PNAN02MP197	B09DSXK8JX	11	19499.00	2021-07-07 00:00:00	2021-07-07 00:00:00
3598	PNAN02MP197	B07MDRGHWQ	10	11000.00	2021-07-07 00:00:00	2021-07-07 00:00:00
3599	AIAN62IA923	B071Z8M4KX	6	999.00	2021-06-22 00:00:00	2021-06-22 00:00:00
3600	AIAN62IA923	B09T3H12GV	8	2498.00	2021-06-22 00:00:00	2021-06-22 00:00:00
3601	AIAN62IA923	B0B4F52B5X	3	14999.00	2021-06-22 00:00:00	2021-06-22 00:00:00
3602	MACP51IN778	B0B3CPQ5PF	2	28999.00	2022-02-24 00:00:00	2022-02-24 00:00:00
3603	MACP51IN778	B097R4D42G	6	9650.00	2022-02-24 00:00:00	2022-02-24 00:00:00
3604	MACP51IN778	B086Q3QMFS	5	120.00	2022-02-24 00:00:00	2022-02-24 00:00:00
3605	MACP51IN778	B092X94QNQ	2	3990.00	2022-02-24 00:00:00	2022-02-24 00:00:00
3606	MACP51IN778	B01L7C4IU2	4	3045.00	2022-02-24 00:00:00	2022-02-24 00:00:00
3607	APMM54OP955	B07TCN5VR9	11	999.00	2022-09-23 00:00:00	2022-09-23 00:00:00
3608	NMII48NI651	B097R2V1W8	11	5890.00	2021-06-24 00:00:00	2021-06-24 00:00:00
3609	COOC58NA784	B08WD18LJZ	2	600.00	2022-09-27 00:00:00	2022-09-27 00:00:00
3610	COOC58NA784	B07W4HTS8Q	3	3790.00	2022-09-27 00:00:00	2022-09-27 00:00:00
3611	COOC58NA784	B09HK9JH4F	7	399.00	2022-09-27 00:00:00	2022-09-27 00:00:00
3612	COOC58NA784	B06XGWRKYT	5	15999.00	2022-09-27 00:00:00	2022-09-27 00:00:00
3613	COOC58NA784	B0117H7GZ6	2	399.00	2022-09-27 00:00:00	2022-09-27 00:00:00
3614	NMNA61OM567	B0B6F98KJJ	5	29999.00	2021-02-06 00:00:00	2021-02-06 00:00:00
3615	NMNA61OM567	B08YK7BBD2	6	999.00	2021-02-06 00:00:00	2021-02-06 00:00:00
3616	NMNA61OM567	B09MY4W73Q	6	1799.00	2021-02-06 00:00:00	2021-02-06 00:00:00
3617	NMNA61OM567	B09SJ1FTYV	4	1899.00	2021-02-06 00:00:00	2021-02-06 00:00:00
3618	NMNA61OM567	B07DXRGWDJ	6	5995.00	2021-02-06 00:00:00	2021-02-06 00:00:00
3619	AANA44AN436	B07Z1X6VFC	6	999.00	2021-04-24 00:00:00	2021-04-24 00:00:00
3620	AANA44AN436	B09Q8WQ5QJ	12	499.00	2021-04-24 00:00:00	2021-04-24 00:00:00
3621	AANA44AN436	B016XVRKZM	15	4100.00	2021-04-24 00:00:00	2021-04-24 00:00:00
3622	AANA44AN436	B00NW4UWN6	15	1345.00	2021-04-24 00:00:00	2021-04-24 00:00:00
3623	AANA44AN436	B01N6IJG0F	15	1010.00	2021-04-24 00:00:00	2021-04-24 00:00:00
3624	AANA44AN436	B09GFN8WZL	7	999.00	2021-04-24 00:00:00	2021-04-24 00:00:00
3625	AANA44AN436	B07NKNBTT3	1	1230.00	2021-04-24 00:00:00	2021-04-24 00:00:00
3626	IAAC58MO380	B0083T231O	15	1499.00	2022-10-10 00:00:00	2022-10-10 00:00:00
3627	IAAC58MO380	B07VZYMQNZ	4	1440.00	2022-10-10 00:00:00	2022-10-10 00:00:00
3628	IAAC58MO380	B09PTT8DZF	10	670.00	2022-10-10 00:00:00	2022-10-10 00:00:00
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (order_id, customer_id, order_date, status, created_at, updated_at) FROM stdin;
IINI91PP812	697	2022-01-30 00:00:00	Success	2022-01-30 00:00:00	2022-01-31 00:00:00
ONNA03MN757	172	2021-01-03 00:00:00	Success	2021-01-03 00:00:00	2021-01-04 00:00:00
NPCC44AC852	824	2022-09-08 00:00:00	Success	2022-09-08 00:00:00	2022-09-09 00:00:00
MMIM69AM147	947	2021-06-26 00:00:00	Success	2021-06-26 00:00:00	2021-06-27 00:00:00
MCIA31MO690	336	2021-07-09 00:00:00	Success	2021-07-09 00:00:00	2021-07-10 00:00:00
IANC47AM423	965	2022-10-04 00:00:00	Canceled	2022-10-04 00:00:00	2022-10-04 00:00:00
NMCI31AN413	680	2021-03-09 00:00:00	Success	2021-03-09 00:00:00	2021-03-10 00:00:00
NPIP33OI307	994	2022-02-14 00:00:00	Success	2022-02-14 00:00:00	2022-02-15 00:00:00
AOCO44AC037	128	2022-08-03 00:00:00	Success	2022-08-03 00:00:00	2022-08-04 00:00:00
AAPP73OP114	624	2021-11-01 00:00:00	Success	2021-11-01 00:00:00	2021-11-02 00:00:00
APMI05CP558	537	2022-02-01 00:00:00	Success	2022-02-01 00:00:00	2022-02-02 00:00:00
OOMN48CC152	926	2022-05-16 00:00:00	Success	2022-05-16 00:00:00	2022-05-17 00:00:00
POOA33NM414	433	2021-08-01 00:00:00	Success	2021-08-01 00:00:00	2021-08-02 00:00:00
CMCI13CI706	311	2022-10-05 00:00:00	Success	2022-10-05 00:00:00	2022-10-06 00:00:00
IMMM96AC528	774	2021-04-08 00:00:00	Success	2021-04-08 00:00:00	2021-04-09 00:00:00
AIAP53NA160	741	2022-09-30 00:00:00	Success	2022-09-30 00:00:00	2022-10-01 00:00:00
PMMC74AI218	658	2022-09-10 00:00:00	Success	2022-09-10 00:00:00	2022-09-11 00:00:00
AAMI65AP544	963	2022-02-04 00:00:00	Success	2022-02-04 00:00:00	2022-02-05 00:00:00
POCO45OC178	331	2021-09-28 00:00:00	Success	2021-09-28 00:00:00	2021-09-29 00:00:00
PNPP59CM226	662	2021-03-10 00:00:00	Success	2021-03-10 00:00:00	2021-03-11 00:00:00
MPAI82AO102	389	2021-10-01 00:00:00	Success	2021-10-01 00:00:00	2021-10-02 00:00:00
AIMN31PN526	769	2022-04-13 00:00:00	Success	2022-04-13 00:00:00	2022-04-14 00:00:00
IANC05AP215	294	2022-08-29 00:00:00	Success	2022-08-29 00:00:00	2022-08-30 00:00:00
NOCO89CC732	749	2022-12-13 00:00:00	Success	2022-12-13 00:00:00	2022-12-14 00:00:00
NMIN32OO063	314	2021-11-19 00:00:00	Canceled	2021-11-19 00:00:00	2021-11-19 00:00:00
PNCA57MM691	377	2022-08-27 00:00:00	Success	2022-08-27 00:00:00	2022-08-28 00:00:00
OCIA09CI804	641	2021-09-02 00:00:00	Success	2021-09-02 00:00:00	2021-09-03 00:00:00
NPOA02PO977	570	2022-07-31 00:00:00	Success	2022-07-31 00:00:00	2022-08-01 00:00:00
IONN86ON753	234	2021-08-24 00:00:00	Success	2021-08-24 00:00:00	2021-08-25 00:00:00
CCOA32NI392	784	2021-07-02 00:00:00	Success	2021-07-02 00:00:00	2021-07-03 00:00:00
ACMA24CI703	512	2022-07-28 00:00:00	Success	2022-07-28 00:00:00	2022-07-29 00:00:00
OAAO43PI306	710	2021-05-06 00:00:00	Success	2021-05-06 00:00:00	2021-05-07 00:00:00
OMAA44IN067	824	2022-04-16 00:00:00	Success	2022-04-16 00:00:00	2022-04-17 00:00:00
MMMA64CA016	641	2022-06-15 00:00:00	Success	2022-06-15 00:00:00	2022-06-16 00:00:00
MCAM79PC949	949	2021-07-26 00:00:00	Success	2021-07-26 00:00:00	2021-07-27 00:00:00
OIAN87PA120	791	2021-02-12 00:00:00	Success	2021-02-12 00:00:00	2021-02-13 00:00:00
NAPI27AC059	158	2021-06-29 00:00:00	Success	2021-06-29 00:00:00	2021-06-30 00:00:00
NIMC69AC690	425	2021-12-09 00:00:00	Success	2021-12-09 00:00:00	2021-12-10 00:00:00
MPON10IM799	972	2021-11-24 00:00:00	Success	2021-11-24 00:00:00	2021-11-25 00:00:00
AOCO38NC466	915	2021-04-19 00:00:00	Success	2021-04-19 00:00:00	2021-04-20 00:00:00
PPMI38OP255	173	2021-06-23 00:00:00	Success	2021-06-23 00:00:00	2021-06-24 00:00:00
AIOP55NC262	57	2022-04-29 00:00:00	Success	2022-04-29 00:00:00	2022-04-30 00:00:00
OACO22AM378	921	2021-06-03 00:00:00	Success	2021-06-03 00:00:00	2021-06-04 00:00:00
OPAP39PA948	512	2022-11-10 00:00:00	Success	2022-11-10 00:00:00	2022-11-11 00:00:00
CNAI72NA384	353	2021-10-18 00:00:00	Success	2021-10-18 00:00:00	2021-10-19 00:00:00
OAPI88PI356	873	2022-10-04 00:00:00	Success	2022-10-04 00:00:00	2022-10-05 00:00:00
NNNC99AM638	195	2022-08-02 00:00:00	Success	2022-08-02 00:00:00	2022-08-03 00:00:00
ANIM79IC941	587	2021-09-15 00:00:00	Success	2021-09-15 00:00:00	2021-09-16 00:00:00
AIPM98PA153	130	2021-05-11 00:00:00	Success	2021-05-11 00:00:00	2021-05-12 00:00:00
APIA13OA053	148	2021-05-09 00:00:00	Success	2021-05-09 00:00:00	2021-05-10 00:00:00
IAIC09AP270	627	2021-01-19 00:00:00	Success	2021-01-19 00:00:00	2021-01-20 00:00:00
ANAP15PM799	830	2022-07-05 00:00:00	Success	2022-07-05 00:00:00	2022-07-06 00:00:00
PAOC53PN688	195	2022-06-16 00:00:00	Success	2022-06-16 00:00:00	2022-06-17 00:00:00
OIOI32MP908	279	2021-01-23 00:00:00	Success	2021-01-23 00:00:00	2021-01-24 00:00:00
MIMA34AN682	249	2021-12-17 00:00:00	Canceled	2021-12-17 00:00:00	2021-12-17 00:00:00
PAOC88IO676	373	2021-12-07 00:00:00	Success	2021-12-07 00:00:00	2021-12-08 00:00:00
NINI19AC099	240	2021-06-07 00:00:00	Canceled	2021-06-07 00:00:00	2021-06-07 00:00:00
PPOA99NO002	194	2021-11-15 00:00:00	Success	2021-11-15 00:00:00	2021-11-16 00:00:00
AACN83AO563	584	2021-06-21 00:00:00	Success	2021-06-21 00:00:00	2021-06-22 00:00:00
NMAP19AN791	351	2021-08-31 00:00:00	Success	2021-08-31 00:00:00	2021-09-01 00:00:00
NOMI03AP007	601	2022-12-26 00:00:00	Success	2022-12-26 00:00:00	2022-12-27 00:00:00
COMC90AA647	57	2022-03-23 00:00:00	Success	2022-03-23 00:00:00	2022-03-24 00:00:00
NCOA25AO528	147	2021-06-21 00:00:00	Success	2021-06-21 00:00:00	2021-06-22 00:00:00
IMIO06MN816	472	2021-08-10 00:00:00	Success	2021-08-10 00:00:00	2021-08-11 00:00:00
IOMI98NA353	741	2021-08-18 00:00:00	Success	2021-08-18 00:00:00	2021-08-19 00:00:00
PAMO24IA520	251	2021-06-29 00:00:00	Success	2021-06-29 00:00:00	2021-06-30 00:00:00
MMIN67AO501	843	2021-01-13 00:00:00	Success	2021-01-13 00:00:00	2021-01-14 00:00:00
ONCN30IM800	959	2022-02-07 00:00:00	Success	2022-02-07 00:00:00	2022-02-08 00:00:00
NOOA19IN647	274	2021-10-11 00:00:00	Success	2021-10-11 00:00:00	2021-10-12 00:00:00
PAAA12CC507	467	2021-07-04 00:00:00	Success	2021-07-04 00:00:00	2021-07-05 00:00:00
OAPI73NO454	379	2021-04-20 00:00:00	Success	2021-04-20 00:00:00	2021-04-21 00:00:00
OIAO51NA078	100	2022-09-11 00:00:00	Success	2022-09-11 00:00:00	2022-09-12 00:00:00
CNOA25II651	152	2022-04-10 00:00:00	Success	2022-04-10 00:00:00	2022-04-11 00:00:00
AANA06OI203	58	2021-04-27 00:00:00	Success	2021-04-27 00:00:00	2021-04-28 00:00:00
CNIP71NA469	869	2021-09-22 00:00:00	Success	2021-09-22 00:00:00	2021-09-23 00:00:00
POAO76MA213	655	2021-05-11 00:00:00	Success	2021-05-11 00:00:00	2021-05-12 00:00:00
PMAO12MA259	577	2021-06-16 00:00:00	Canceled	2021-06-16 00:00:00	2021-06-16 00:00:00
MAIA38NN545	874	2022-12-10 00:00:00	Success	2022-12-10 00:00:00	2022-12-11 00:00:00
AMMA68CO150	341	2022-04-27 00:00:00	Success	2022-04-27 00:00:00	2022-04-28 00:00:00
PMAM47PA712	487	2022-02-26 00:00:00	Success	2022-02-26 00:00:00	2022-02-27 00:00:00
MNOA28OI825	252	2022-10-05 00:00:00	Success	2022-10-05 00:00:00	2022-10-06 00:00:00
PIPI22OP627	231	2021-10-09 00:00:00	Success	2021-10-09 00:00:00	2021-10-10 00:00:00
OACC57AP958	713	2022-11-01 00:00:00	Success	2022-11-01 00:00:00	2022-11-02 00:00:00
AMIN13IC279	541	2021-11-17 00:00:00	Success	2021-11-17 00:00:00	2021-11-18 00:00:00
NAIO49IO830	334	2021-08-25 00:00:00	Success	2021-08-25 00:00:00	2021-08-26 00:00:00
ANMC84PN129	249	2021-01-01 00:00:00	Success	2021-01-01 00:00:00	2021-01-02 00:00:00
MOIO90AA471	55	2021-05-13 00:00:00	Success	2021-05-13 00:00:00	2021-05-14 00:00:00
OOOO68CA089	538	2022-01-14 00:00:00	Success	2022-01-14 00:00:00	2022-01-15 00:00:00
CMAI45ON647	211	2022-02-16 00:00:00	Success	2022-02-16 00:00:00	2022-02-17 00:00:00
OCCM14AI521	519	2022-05-28 00:00:00	Success	2022-05-28 00:00:00	2022-05-29 00:00:00
OMMI99MN032	814	2022-05-16 00:00:00	Canceled	2022-05-16 00:00:00	2022-05-16 00:00:00
MCCA82OO191	34	2021-12-20 00:00:00	Canceled	2021-12-20 00:00:00	2021-12-20 00:00:00
ICAC00OA459	619	2021-06-29 00:00:00	Canceled	2021-06-29 00:00:00	2021-06-29 00:00:00
AANA12IC317	671	2021-10-13 00:00:00	Success	2021-10-13 00:00:00	2021-10-14 00:00:00
MNCN58OA459	625	2021-10-20 00:00:00	Canceled	2021-10-20 00:00:00	2021-10-20 00:00:00
NANI29IP197	452	2021-12-12 00:00:00	Success	2021-12-12 00:00:00	2021-12-13 00:00:00
NCNC73CP427	625	2021-04-18 00:00:00	Success	2021-04-18 00:00:00	2021-04-19 00:00:00
AOIA36CO047	23	2022-09-12 00:00:00	Success	2022-09-12 00:00:00	2022-09-13 00:00:00
OAPC62IO954	863	2022-01-01 00:00:00	Success	2022-01-01 00:00:00	2022-01-02 00:00:00
ACIA68OP693	154	2021-06-26 00:00:00	Canceled	2021-06-26 00:00:00	2021-06-26 00:00:00
PICC22OM254	86	2021-05-09 00:00:00	Success	2021-05-09 00:00:00	2021-05-10 00:00:00
ICCM58NO572	780	2021-08-08 00:00:00	Success	2021-08-08 00:00:00	2021-08-09 00:00:00
OCAA15NA963	763	2021-07-08 00:00:00	Success	2021-07-08 00:00:00	2021-07-09 00:00:00
AMCA81OP636	941	2022-12-07 00:00:00	Success	2022-12-07 00:00:00	2022-12-08 00:00:00
CAMM02CA565	615	2022-01-23 00:00:00	Success	2022-01-23 00:00:00	2022-01-24 00:00:00
COIC71PA250	342	2022-10-19 00:00:00	Success	2022-10-19 00:00:00	2022-10-20 00:00:00
OAAP03NA440	399	2022-10-26 00:00:00	Success	2022-10-26 00:00:00	2022-10-27 00:00:00
MMPP04CA374	541	2021-08-23 00:00:00	Success	2021-08-23 00:00:00	2021-08-24 00:00:00
MAAA08IA945	519	2021-01-21 00:00:00	Success	2021-01-21 00:00:00	2021-01-22 00:00:00
ANIA33CO885	704	2022-08-09 00:00:00	Success	2022-08-09 00:00:00	2022-08-10 00:00:00
AOOA25MN383	977	2021-12-19 00:00:00	Success	2021-12-19 00:00:00	2021-12-20 00:00:00
CAII50MN024	755	2021-07-29 00:00:00	Success	2021-07-29 00:00:00	2021-07-30 00:00:00
OPAM94PA077	704	2022-01-25 00:00:00	Success	2022-01-25 00:00:00	2022-01-26 00:00:00
AOPI32OA172	521	2022-08-20 00:00:00	Success	2022-08-20 00:00:00	2022-08-21 00:00:00
MPAM55AN316	804	2021-07-26 00:00:00	Canceled	2021-07-26 00:00:00	2021-07-26 00:00:00
ACAO29IO121	275	2022-02-06 00:00:00	Success	2022-02-06 00:00:00	2022-02-07 00:00:00
CAPA60OM398	569	2022-07-16 00:00:00	Success	2022-07-16 00:00:00	2022-07-17 00:00:00
AACO70PI342	917	2022-09-23 00:00:00	Success	2022-09-23 00:00:00	2022-09-24 00:00:00
AOPA85CI446	556	2022-03-19 00:00:00	Success	2022-03-19 00:00:00	2022-03-20 00:00:00
PNNA38NA242	517	2022-01-11 00:00:00	Success	2022-01-11 00:00:00	2022-01-12 00:00:00
MAAC52OP341	523	2021-02-24 00:00:00	Success	2021-02-24 00:00:00	2021-02-25 00:00:00
CCPA94IP108	175	2022-03-12 00:00:00	Success	2022-03-12 00:00:00	2022-03-13 00:00:00
AMAI13OA534	20	2021-07-26 00:00:00	Success	2021-07-26 00:00:00	2021-07-27 00:00:00
IIMN16AN220	215	2021-10-11 00:00:00	Success	2021-10-11 00:00:00	2021-10-12 00:00:00
PCMI31CA899	390	2022-10-12 00:00:00	Success	2022-10-12 00:00:00	2022-10-13 00:00:00
CIAO00PA980	161	2022-01-07 00:00:00	Success	2022-01-07 00:00:00	2022-01-08 00:00:00
INOI47MA747	662	2022-12-05 00:00:00	Success	2022-12-05 00:00:00	2022-12-06 00:00:00
IANP54CC008	411	2022-08-18 00:00:00	Success	2022-08-18 00:00:00	2022-08-19 00:00:00
MNOC99MI447	794	2022-08-05 00:00:00	Success	2022-08-05 00:00:00	2022-08-06 00:00:00
OOAA73MO102	363	2022-10-28 00:00:00	Success	2022-10-28 00:00:00	2022-10-29 00:00:00
CPIP45PN493	969	2022-01-25 00:00:00	Success	2022-01-25 00:00:00	2022-01-26 00:00:00
ANNP53ON660	645	2022-11-27 00:00:00	Success	2022-11-27 00:00:00	2022-11-28 00:00:00
OPAO33CI957	121	2022-12-08 00:00:00	Canceled	2022-12-08 00:00:00	2022-12-08 00:00:00
MMNO68NC435	858	2022-06-20 00:00:00	Success	2022-06-20 00:00:00	2022-06-21 00:00:00
MPAC80NN449	454	2021-11-02 00:00:00	Success	2021-11-02 00:00:00	2021-11-03 00:00:00
CAMC82AC167	221	2021-03-08 00:00:00	Success	2021-03-08 00:00:00	2021-03-09 00:00:00
NNCC95NO341	322	2021-02-11 00:00:00	Success	2021-02-11 00:00:00	2021-02-12 00:00:00
IMNA92CI523	958	2021-03-02 00:00:00	Success	2021-03-02 00:00:00	2021-03-03 00:00:00
AIAP00PO667	510	2021-04-28 00:00:00	Success	2021-04-28 00:00:00	2021-04-29 00:00:00
ACAA52AA708	257	2021-06-18 00:00:00	Success	2021-06-18 00:00:00	2021-06-19 00:00:00
INPA61IP460	750	2021-02-05 00:00:00	Success	2021-02-05 00:00:00	2021-02-06 00:00:00
AMAI28CO393	271	2022-09-20 00:00:00	Success	2022-09-20 00:00:00	2022-09-21 00:00:00
AOCA18AO742	609	2021-08-23 00:00:00	Success	2021-08-23 00:00:00	2021-08-24 00:00:00
APOP64AM478	802	2021-12-30 00:00:00	Success	2021-12-30 00:00:00	2021-12-31 00:00:00
NOAN53IO324	333	2022-05-12 00:00:00	Success	2022-05-12 00:00:00	2022-05-13 00:00:00
NPOA52OA663	273	2021-07-22 00:00:00	Success	2021-07-22 00:00:00	2021-07-23 00:00:00
APCN68CN588	768	2021-08-26 00:00:00	Success	2021-08-26 00:00:00	2021-08-27 00:00:00
MNII91PN842	595	2021-07-11 00:00:00	Success	2021-07-11 00:00:00	2021-07-12 00:00:00
NOMP37CO140	112	2022-12-09 00:00:00	Success	2022-12-09 00:00:00	2022-12-10 00:00:00
IOIO16CI960	704	2021-07-24 00:00:00	Success	2021-07-24 00:00:00	2021-07-25 00:00:00
OIPA29CI676	566	2021-11-25 00:00:00	Success	2021-11-25 00:00:00	2021-11-26 00:00:00
ACIA47MP097	127	2022-11-10 00:00:00	Success	2022-11-10 00:00:00	2022-11-11 00:00:00
PAAN19IA818	284	2021-09-18 00:00:00	Success	2021-09-18 00:00:00	2021-09-19 00:00:00
PIMM37NI430	375	2022-10-11 00:00:00	Success	2022-10-11 00:00:00	2022-10-12 00:00:00
PACC06AA147	20	2021-08-07 00:00:00	Success	2021-08-07 00:00:00	2021-08-08 00:00:00
ICMI63CI757	400	2021-03-19 00:00:00	Success	2021-03-19 00:00:00	2021-03-20 00:00:00
MIIM37AM744	464	2022-01-01 00:00:00	Success	2022-01-01 00:00:00	2022-01-02 00:00:00
CACP44NP473	429	2021-01-19 00:00:00	Success	2021-01-19 00:00:00	2021-01-20 00:00:00
CNNI82CN741	469	2022-09-14 00:00:00	Success	2022-09-14 00:00:00	2022-09-15 00:00:00
IOPO20CA241	60	2021-03-21 00:00:00	Success	2021-03-21 00:00:00	2021-03-22 00:00:00
ANNA22CI667	395	2021-04-30 00:00:00	Success	2021-04-30 00:00:00	2021-05-01 00:00:00
PNPI22NC669	560	2021-12-24 00:00:00	Success	2021-12-24 00:00:00	2021-12-25 00:00:00
ANOA49AI603	144	2021-07-27 00:00:00	Success	2021-07-27 00:00:00	2021-07-28 00:00:00
CAMN30MA261	673	2021-02-13 00:00:00	Success	2021-02-13 00:00:00	2021-02-14 00:00:00
AAMA29CO416	724	2021-08-16 00:00:00	Success	2021-08-16 00:00:00	2021-08-17 00:00:00
AMAA16AA563	761	2021-05-05 00:00:00	Success	2021-05-05 00:00:00	2021-05-06 00:00:00
IANA94AA348	437	2022-03-30 00:00:00	Success	2022-03-30 00:00:00	2022-03-31 00:00:00
OCAO76OO959	678	2021-10-10 00:00:00	Success	2021-10-10 00:00:00	2021-10-11 00:00:00
MNAI21IO686	763	2021-08-01 00:00:00	Success	2021-08-01 00:00:00	2021-08-02 00:00:00
IOIN03CA202	515	2022-09-10 00:00:00	Success	2022-09-10 00:00:00	2022-09-11 00:00:00
IMCN59AA546	203	2022-10-08 00:00:00	Success	2022-10-08 00:00:00	2022-10-09 00:00:00
AIPM47CP440	636	2021-06-28 00:00:00	Canceled	2021-06-28 00:00:00	2021-06-28 00:00:00
CMPO17NA869	867	2021-02-28 00:00:00	Success	2021-02-28 00:00:00	2021-03-01 00:00:00
IMCP67AP287	710	2021-04-30 00:00:00	Success	2021-04-30 00:00:00	2021-05-01 00:00:00
NIOC61PP092	69	2021-07-25 00:00:00	Success	2021-07-25 00:00:00	2021-07-26 00:00:00
ONOO13PI716	457	2021-11-18 00:00:00	Success	2021-11-18 00:00:00	2021-11-19 00:00:00
AAIP41OA667	837	2022-06-24 00:00:00	Success	2022-06-24 00:00:00	2022-06-25 00:00:00
CAPA21NP882	537	2021-12-13 00:00:00	Success	2021-12-13 00:00:00	2021-12-14 00:00:00
NICN02IP886	501	2021-03-15 00:00:00	Success	2021-03-15 00:00:00	2021-03-16 00:00:00
PCAP03OA082	258	2021-12-14 00:00:00	Success	2021-12-14 00:00:00	2021-12-15 00:00:00
IAIN81ON837	691	2022-10-31 00:00:00	Canceled	2022-10-31 00:00:00	2022-10-31 00:00:00
AMAO47MN537	427	2021-01-02 00:00:00	Success	2021-01-02 00:00:00	2021-01-03 00:00:00
MNPI98IM019	154	2022-12-20 00:00:00	Success	2022-12-20 00:00:00	2022-12-21 00:00:00
APPM29ON379	335	2021-12-14 00:00:00	Success	2021-12-14 00:00:00	2021-12-15 00:00:00
AONP53NM019	61	2022-05-28 00:00:00	Success	2022-05-28 00:00:00	2022-05-29 00:00:00
OCNN95AM377	958	2021-07-23 00:00:00	Success	2021-07-23 00:00:00	2021-07-24 00:00:00
AOCC95PO355	144	2022-10-26 00:00:00	Success	2022-10-26 00:00:00	2022-10-27 00:00:00
AAOP95AM516	821	2021-12-15 00:00:00	Success	2021-12-15 00:00:00	2021-12-16 00:00:00
IPCM27NI557	263	2022-03-01 00:00:00	Success	2022-03-01 00:00:00	2022-03-02 00:00:00
IINA69CA714	626	2021-04-20 00:00:00	Canceled	2021-04-20 00:00:00	2021-04-20 00:00:00
AMCC51AA677	554	2021-06-29 00:00:00	Success	2021-06-29 00:00:00	2021-06-30 00:00:00
OCAI74CM231	700	2022-03-31 00:00:00	Success	2022-03-31 00:00:00	2022-04-01 00:00:00
PPNM27NP543	500	2021-06-23 00:00:00	Success	2021-06-23 00:00:00	2021-06-24 00:00:00
AOIA76OM589	255	2022-09-16 00:00:00	Success	2022-09-16 00:00:00	2022-09-17 00:00:00
PNPA31MP377	74	2022-10-20 00:00:00	Success	2022-10-20 00:00:00	2022-10-21 00:00:00
MICA50MP037	974	2021-03-11 00:00:00	Success	2021-03-11 00:00:00	2021-03-12 00:00:00
NAAN04AI520	129	2021-12-06 00:00:00	Success	2021-12-06 00:00:00	2021-12-07 00:00:00
CCNN74NA591	991	2021-12-10 00:00:00	Success	2021-12-10 00:00:00	2021-12-11 00:00:00
POCA79IP191	275	2021-11-05 00:00:00	Success	2021-11-05 00:00:00	2021-11-06 00:00:00
MINA58NN914	114	2022-07-06 00:00:00	Success	2022-07-06 00:00:00	2022-07-07 00:00:00
ACIC68AO866	601	2022-05-03 00:00:00	Success	2022-05-03 00:00:00	2022-05-04 00:00:00
NMIA04CA762	59	2022-09-23 00:00:00	Success	2022-09-23 00:00:00	2022-09-24 00:00:00
NNCP32NI783	553	2021-10-09 00:00:00	Success	2021-10-09 00:00:00	2021-10-10 00:00:00
NIIO74CM222	512	2022-10-30 00:00:00	Success	2022-10-30 00:00:00	2022-10-31 00:00:00
CMOA61II113	162	2021-05-05 00:00:00	Success	2021-05-05 00:00:00	2021-05-06 00:00:00
OAAN33CI669	82	2022-10-06 00:00:00	Success	2022-10-06 00:00:00	2022-10-07 00:00:00
NNCO51AN178	885	2021-02-05 00:00:00	Canceled	2021-02-05 00:00:00	2021-02-05 00:00:00
PNOM47CN306	191	2022-11-29 00:00:00	Success	2022-11-29 00:00:00	2022-11-30 00:00:00
PAAO54AO440	279	2021-12-06 00:00:00	Success	2021-12-06 00:00:00	2021-12-07 00:00:00
PIAP44CA204	160	2022-01-13 00:00:00	Success	2022-01-13 00:00:00	2022-01-14 00:00:00
AAIO34PI934	456	2022-01-17 00:00:00	Success	2022-01-17 00:00:00	2022-01-18 00:00:00
CMIP88NA589	565	2022-10-10 00:00:00	Success	2022-10-10 00:00:00	2022-10-11 00:00:00
IPOI55CA161	464	2021-01-15 00:00:00	Success	2021-01-15 00:00:00	2021-01-16 00:00:00
NANC31PA286	418	2022-06-15 00:00:00	Success	2022-06-15 00:00:00	2022-06-16 00:00:00
NAMP23CI212	231	2021-08-25 00:00:00	Success	2021-08-25 00:00:00	2021-08-26 00:00:00
OMCM79AC353	905	2021-12-02 00:00:00	Success	2021-12-02 00:00:00	2021-12-03 00:00:00
OMCP32AM407	836	2021-06-22 00:00:00	Success	2021-06-22 00:00:00	2021-06-23 00:00:00
AOOP20CA601	237	2021-08-13 00:00:00	Success	2021-08-13 00:00:00	2021-08-14 00:00:00
MNCM89IC807	116	2021-01-01 00:00:00	Success	2021-01-01 00:00:00	2021-01-02 00:00:00
AAOI49CI264	200	2021-11-16 00:00:00	Success	2021-11-16 00:00:00	2021-11-17 00:00:00
OMMP82MP563	424	2021-05-11 00:00:00	Success	2021-05-11 00:00:00	2021-05-12 00:00:00
INIA14CI242	150	2022-06-19 00:00:00	Success	2022-06-19 00:00:00	2022-06-20 00:00:00
NIAA24AI565	963	2022-11-11 00:00:00	Success	2022-11-11 00:00:00	2022-11-12 00:00:00
OANI48OP574	155	2021-03-15 00:00:00	Success	2021-03-15 00:00:00	2021-03-16 00:00:00
PINI84CC225	387	2021-06-10 00:00:00	Success	2021-06-10 00:00:00	2021-06-11 00:00:00
CMNO69CI547	424	2022-05-08 00:00:00	Success	2022-05-08 00:00:00	2022-05-09 00:00:00
AANP00PA225	257	2021-09-14 00:00:00	Success	2021-09-14 00:00:00	2021-09-15 00:00:00
AOAO10PM553	508	2022-03-19 00:00:00	Success	2022-03-19 00:00:00	2022-03-20 00:00:00
COPA59AC328	465	2021-02-25 00:00:00	Success	2021-02-25 00:00:00	2021-02-26 00:00:00
PPCA56MP749	114	2021-02-13 00:00:00	Success	2021-02-13 00:00:00	2021-02-14 00:00:00
OMAA69CA525	43	2022-03-28 00:00:00	Success	2022-03-28 00:00:00	2022-03-29 00:00:00
OIPA33CO707	914	2021-12-01 00:00:00	Success	2021-12-01 00:00:00	2021-12-02 00:00:00
ACNC73OP088	454	2022-07-26 00:00:00	Canceled	2022-07-26 00:00:00	2022-07-26 00:00:00
NNPA33NA073	884	2022-12-10 00:00:00	Success	2022-12-10 00:00:00	2022-12-11 00:00:00
IONM47AA760	788	2022-08-03 00:00:00	Success	2022-08-03 00:00:00	2022-08-04 00:00:00
AIIN33NA060	864	2022-09-18 00:00:00	Success	2022-09-18 00:00:00	2022-09-19 00:00:00
CMAI85NO786	213	2021-09-24 00:00:00	Canceled	2021-09-24 00:00:00	2021-09-24 00:00:00
PMIC36OC462	348	2022-07-19 00:00:00	Success	2022-07-19 00:00:00	2022-07-20 00:00:00
ONAC00PM416	989	2022-12-31 00:00:00	Success	2022-12-31 00:00:00	2023-01-01 00:00:00
IOOA09PM311	208	2022-01-11 00:00:00	Success	2022-01-11 00:00:00	2022-01-12 00:00:00
OOCP27CM230	474	2022-06-03 00:00:00	Success	2022-06-03 00:00:00	2022-06-04 00:00:00
MAIA97ON803	789	2021-11-13 00:00:00	Success	2021-11-13 00:00:00	2021-11-14 00:00:00
AINN46MP083	122	2022-01-07 00:00:00	Success	2022-01-07 00:00:00	2022-01-08 00:00:00
NAAA96PA305	964	2021-01-02 00:00:00	Success	2021-01-02 00:00:00	2021-01-03 00:00:00
AAMA73AP965	362	2022-11-05 00:00:00	Success	2022-11-05 00:00:00	2022-11-06 00:00:00
AAAO61OP563	39	2022-03-11 00:00:00	Success	2022-03-11 00:00:00	2022-03-12 00:00:00
PCOC60NA273	727	2021-11-07 00:00:00	Success	2021-11-07 00:00:00	2021-11-08 00:00:00
NIAA20AP944	999	2021-09-26 00:00:00	Success	2021-09-26 00:00:00	2021-09-27 00:00:00
OINC15AC693	320	2022-12-20 00:00:00	Success	2022-12-20 00:00:00	2022-12-21 00:00:00
COCN21NP868	941	2021-01-10 00:00:00	Success	2021-01-10 00:00:00	2021-01-11 00:00:00
CPOA07AA907	452	2022-08-16 00:00:00	Success	2022-08-16 00:00:00	2022-08-17 00:00:00
MAMN79CP738	998	2022-01-17 00:00:00	Success	2022-01-17 00:00:00	2022-01-18 00:00:00
CAAC99AM151	880	2021-11-27 00:00:00	Success	2021-11-27 00:00:00	2021-11-28 00:00:00
CMCA26IP030	452	2022-08-31 00:00:00	Success	2022-08-31 00:00:00	2022-09-01 00:00:00
AMMN05AP739	786	2021-06-29 00:00:00	Success	2021-06-29 00:00:00	2021-06-30 00:00:00
IMAM35NP392	130	2021-05-22 00:00:00	Success	2021-05-22 00:00:00	2021-05-23 00:00:00
NACA19IM351	840	2021-11-21 00:00:00	Success	2021-11-21 00:00:00	2021-11-22 00:00:00
MAAI61NI596	648	2022-01-12 00:00:00	Success	2022-01-12 00:00:00	2022-01-13 00:00:00
IMNI07OA932	550	2021-02-06 00:00:00	Success	2021-02-06 00:00:00	2021-02-07 00:00:00
IIAA47AM818	479	2021-12-26 00:00:00	Success	2021-12-26 00:00:00	2021-12-27 00:00:00
ICOC39CA105	780	2022-02-20 00:00:00	Success	2022-02-20 00:00:00	2022-02-21 00:00:00
MINM16AM416	799	2021-05-25 00:00:00	Success	2021-05-25 00:00:00	2021-05-26 00:00:00
MOCM30NP399	769	2021-01-07 00:00:00	Success	2021-01-07 00:00:00	2021-01-08 00:00:00
MCAM07NI365	503	2022-03-25 00:00:00	Success	2022-03-25 00:00:00	2022-03-26 00:00:00
PICA89NP201	638	2022-07-28 00:00:00	Success	2022-07-28 00:00:00	2022-07-29 00:00:00
IIPP04OI559	323	2021-02-12 00:00:00	Success	2021-02-12 00:00:00	2021-02-13 00:00:00
IPPM29MA429	59	2021-11-11 00:00:00	Canceled	2021-11-11 00:00:00	2021-11-11 00:00:00
POAP94AA158	982	2021-10-17 00:00:00	Success	2021-10-17 00:00:00	2021-10-18 00:00:00
AMII92MO051	583	2022-01-28 00:00:00	Success	2022-01-28 00:00:00	2022-01-29 00:00:00
CACO65PO613	635	2022-12-14 00:00:00	Success	2022-12-14 00:00:00	2022-12-15 00:00:00
IANC06MA528	953	2021-05-15 00:00:00	Success	2021-05-15 00:00:00	2021-05-16 00:00:00
IAPI13PM894	190	2021-04-04 00:00:00	Success	2021-04-04 00:00:00	2021-04-05 00:00:00
PAMC92PA424	625	2021-06-09 00:00:00	Success	2021-06-09 00:00:00	2021-06-10 00:00:00
NMAA50PN291	789	2022-08-26 00:00:00	Success	2022-08-26 00:00:00	2022-08-27 00:00:00
CCAO54OO225	27	2022-01-02 00:00:00	Success	2022-01-02 00:00:00	2022-01-03 00:00:00
MOCM76NI909	588	2021-02-19 00:00:00	Success	2021-02-19 00:00:00	2021-02-20 00:00:00
AIIN78NN907	383	2022-03-09 00:00:00	Success	2022-03-09 00:00:00	2022-03-10 00:00:00
NPPN83NC891	920	2021-04-04 00:00:00	Success	2021-04-04 00:00:00	2021-04-05 00:00:00
MPAC06IA292	476	2022-11-28 00:00:00	Canceled	2022-11-28 00:00:00	2022-11-28 00:00:00
MNOC95IA500	83	2021-10-18 00:00:00	Success	2021-10-18 00:00:00	2021-10-19 00:00:00
NOII68OO204	26	2022-05-29 00:00:00	Success	2022-05-29 00:00:00	2022-05-30 00:00:00
MICC97NI116	349	2021-03-10 00:00:00	Canceled	2021-03-10 00:00:00	2021-03-10 00:00:00
AACP77AC250	371	2022-02-23 00:00:00	Success	2022-02-23 00:00:00	2022-02-24 00:00:00
MAOI86CA351	724	2021-03-08 00:00:00	Success	2021-03-08 00:00:00	2021-03-09 00:00:00
CANP49AM465	780	2022-01-18 00:00:00	Canceled	2022-01-18 00:00:00	2022-01-18 00:00:00
CIIN71MA273	184	2022-07-13 00:00:00	Success	2022-07-13 00:00:00	2022-07-14 00:00:00
MCOM31AO664	21	2022-10-22 00:00:00	Success	2022-10-22 00:00:00	2022-10-23 00:00:00
PAMN72MA968	883	2021-07-21 00:00:00	Success	2021-07-21 00:00:00	2021-07-22 00:00:00
INCA19PM526	105	2021-10-13 00:00:00	Success	2021-10-13 00:00:00	2021-10-14 00:00:00
IONA75PN485	329	2021-07-28 00:00:00	Success	2021-07-28 00:00:00	2021-07-29 00:00:00
CPPM61IM391	723	2022-05-22 00:00:00	Success	2022-05-22 00:00:00	2022-05-23 00:00:00
MCNI44MM309	316	2022-02-22 00:00:00	Success	2022-02-22 00:00:00	2022-02-23 00:00:00
OPCO30CM973	165	2021-08-13 00:00:00	Success	2021-08-13 00:00:00	2021-08-14 00:00:00
IIOA20OI253	349	2021-12-16 00:00:00	Success	2021-12-16 00:00:00	2021-12-17 00:00:00
PONA26AP083	664	2022-07-12 00:00:00	Success	2022-07-12 00:00:00	2022-07-13 00:00:00
PINI36II653	574	2022-07-16 00:00:00	Success	2022-07-16 00:00:00	2022-07-17 00:00:00
AAPP19AN194	494	2021-03-02 00:00:00	Success	2021-03-02 00:00:00	2021-03-03 00:00:00
PAAA29IC843	867	2022-04-20 00:00:00	Success	2022-04-20 00:00:00	2022-04-21 00:00:00
IAOO30PP903	402	2022-09-22 00:00:00	Success	2022-09-22 00:00:00	2022-09-23 00:00:00
NIMA82OA664	660	2022-01-06 00:00:00	Success	2022-01-06 00:00:00	2022-01-07 00:00:00
IMCO42IP168	371	2022-02-15 00:00:00	Success	2022-02-15 00:00:00	2022-02-16 00:00:00
NNPC58IO750	793	2021-03-03 00:00:00	Success	2021-03-03 00:00:00	2021-03-04 00:00:00
CCAC79AA580	988	2021-06-25 00:00:00	Success	2021-06-25 00:00:00	2021-06-26 00:00:00
OAIA90PO644	357	2022-09-02 00:00:00	Success	2022-09-02 00:00:00	2022-09-03 00:00:00
MIAC36AA596	460	2022-07-14 00:00:00	Success	2022-07-14 00:00:00	2022-07-15 00:00:00
AIIM14NO584	948	2022-10-31 00:00:00	Success	2022-10-31 00:00:00	2022-11-01 00:00:00
OIPI97AP918	902	2022-08-16 00:00:00	Success	2022-08-16 00:00:00	2022-08-17 00:00:00
OAMA60NA397	2	2022-12-23 00:00:00	Canceled	2022-12-23 00:00:00	2022-12-23 00:00:00
NAAP10MA445	54	2021-06-05 00:00:00	Success	2021-06-05 00:00:00	2021-06-06 00:00:00
CAOM46AA078	823	2021-06-28 00:00:00	Canceled	2021-06-28 00:00:00	2021-06-28 00:00:00
COIC13NI287	402	2021-07-29 00:00:00	Success	2021-07-29 00:00:00	2021-07-30 00:00:00
AMNA51CA703	434	2022-02-06 00:00:00	Success	2022-02-06 00:00:00	2022-02-07 00:00:00
MMAC02CC299	760	2022-02-03 00:00:00	Success	2022-02-03 00:00:00	2022-02-04 00:00:00
AOAP09AM727	119	2022-11-16 00:00:00	Success	2022-11-16 00:00:00	2022-11-17 00:00:00
AOOO98MM856	482	2021-09-12 00:00:00	Success	2021-09-12 00:00:00	2021-09-13 00:00:00
IION38CA762	217	2022-01-14 00:00:00	Success	2022-01-14 00:00:00	2022-01-15 00:00:00
NOCO41II376	728	2021-12-11 00:00:00	Success	2021-12-11 00:00:00	2021-12-12 00:00:00
ICMA25AN058	947	2021-04-03 00:00:00	Success	2021-04-03 00:00:00	2021-04-04 00:00:00
AAMO30NA843	437	2022-04-19 00:00:00	Success	2022-04-19 00:00:00	2022-04-20 00:00:00
AACA97NA367	779	2021-04-06 00:00:00	Success	2021-04-06 00:00:00	2021-04-07 00:00:00
AAAM07NN991	454	2022-07-31 00:00:00	Success	2022-07-31 00:00:00	2022-08-01 00:00:00
AIAI27IA833	380	2022-01-17 00:00:00	Canceled	2022-01-17 00:00:00	2022-01-17 00:00:00
CCCC95MA396	536	2022-12-10 00:00:00	Success	2022-12-10 00:00:00	2022-12-11 00:00:00
CANA63MP740	374	2021-09-08 00:00:00	Success	2021-09-08 00:00:00	2021-09-09 00:00:00
AAMP13CO060	472	2021-08-05 00:00:00	Success	2021-08-05 00:00:00	2021-08-06 00:00:00
PAAP17IA250	420	2021-09-24 00:00:00	Success	2021-09-24 00:00:00	2021-09-25 00:00:00
NAPP36PM708	151	2021-07-02 00:00:00	Success	2021-07-02 00:00:00	2021-07-03 00:00:00
PONO84AP707	435	2022-01-11 00:00:00	Success	2022-01-11 00:00:00	2022-01-12 00:00:00
IANA12AA070	149	2021-04-10 00:00:00	Success	2021-04-10 00:00:00	2021-04-11 00:00:00
CIOA69PO987	117	2021-12-13 00:00:00	Success	2021-12-13 00:00:00	2021-12-14 00:00:00
NACO19AO374	410	2022-06-15 00:00:00	Success	2022-06-15 00:00:00	2022-06-16 00:00:00
NPOI68MO294	325	2021-01-25 00:00:00	Success	2021-01-25 00:00:00	2021-01-26 00:00:00
IOPA60AI619	336	2021-06-04 00:00:00	Success	2021-06-04 00:00:00	2021-06-05 00:00:00
MAAA62AC900	645	2022-03-13 00:00:00	Success	2022-03-13 00:00:00	2022-03-14 00:00:00
OAAI22PP602	210	2021-11-09 00:00:00	Success	2021-11-09 00:00:00	2021-11-10 00:00:00
OOMO29PN149	171	2021-11-15 00:00:00	Success	2021-11-15 00:00:00	2021-11-16 00:00:00
MMIA09AM186	148	2021-10-27 00:00:00	Success	2021-10-27 00:00:00	2021-10-28 00:00:00
OANA35AI314	848	2021-04-24 00:00:00	Canceled	2021-04-24 00:00:00	2021-04-24 00:00:00
AMAN62CC720	178	2021-10-12 00:00:00	Success	2021-10-12 00:00:00	2021-10-13 00:00:00
ACNC64AA943	311	2022-08-22 00:00:00	Success	2022-08-22 00:00:00	2022-08-23 00:00:00
OMCN88PI333	103	2021-04-16 00:00:00	Success	2021-04-16 00:00:00	2021-04-17 00:00:00
AIIA36AA266	557	2022-02-19 00:00:00	Success	2022-02-19 00:00:00	2022-02-20 00:00:00
ACAN02NA849	127	2021-05-13 00:00:00	Success	2021-05-13 00:00:00	2021-05-14 00:00:00
APMC20NA667	650	2022-04-06 00:00:00	Success	2022-04-06 00:00:00	2022-04-07 00:00:00
AOAA96OA558	239	2022-08-18 00:00:00	Canceled	2022-08-18 00:00:00	2022-08-18 00:00:00
OPCN80MP605	640	2021-01-31 00:00:00	Success	2021-01-31 00:00:00	2021-02-01 00:00:00
NIAO78MI198	937	2021-06-26 00:00:00	Canceled	2021-06-26 00:00:00	2021-06-26 00:00:00
PNAA19CN110	545	2022-10-17 00:00:00	Canceled	2022-10-17 00:00:00	2022-10-17 00:00:00
ANIC35NI361	860	2021-12-10 00:00:00	Success	2021-12-10 00:00:00	2021-12-11 00:00:00
IPAA38PM015	856	2022-01-05 00:00:00	Success	2022-01-05 00:00:00	2022-01-06 00:00:00
IANP60AO848	610	2022-09-28 00:00:00	Canceled	2022-09-28 00:00:00	2022-09-28 00:00:00
OCCA34PN087	682	2022-06-11 00:00:00	Success	2022-06-11 00:00:00	2022-06-12 00:00:00
MPIO76NA387	204	2022-12-30 00:00:00	Success	2022-12-30 00:00:00	2022-12-31 00:00:00
CANN94AN834	166	2021-03-17 00:00:00	Success	2021-03-17 00:00:00	2021-03-18 00:00:00
APMM60IO836	687	2022-05-22 00:00:00	Success	2022-05-22 00:00:00	2022-05-23 00:00:00
NOOA72PP371	279	2022-06-11 00:00:00	Success	2022-06-11 00:00:00	2022-06-12 00:00:00
MMAO73MO813	429	2022-11-23 00:00:00	Success	2022-11-23 00:00:00	2022-11-24 00:00:00
APCM59ON293	864	2021-11-07 00:00:00	Success	2021-11-07 00:00:00	2021-11-08 00:00:00
NINO57NM251	157	2022-06-09 00:00:00	Success	2022-06-09 00:00:00	2022-06-10 00:00:00
PAMA72PM376	931	2022-09-10 00:00:00	Success	2022-09-10 00:00:00	2022-09-11 00:00:00
PMNA04AN030	217	2021-04-07 00:00:00	Success	2021-04-07 00:00:00	2021-04-08 00:00:00
PAAN97AM975	394	2021-10-06 00:00:00	Success	2021-10-06 00:00:00	2021-10-07 00:00:00
CPCA85NC726	478	2021-08-02 00:00:00	Success	2021-08-02 00:00:00	2021-08-03 00:00:00
OCMP69AP412	592	2021-09-25 00:00:00	Success	2021-09-25 00:00:00	2021-09-26 00:00:00
INPP69OP690	773	2022-12-03 00:00:00	Success	2022-12-03 00:00:00	2022-12-04 00:00:00
AAPC45PA513	856	2022-03-24 00:00:00	Success	2022-03-24 00:00:00	2022-03-25 00:00:00
OANI13AN627	378	2021-09-08 00:00:00	Canceled	2021-09-08 00:00:00	2021-09-08 00:00:00
NMNM47MO025	403	2021-09-18 00:00:00	Success	2021-09-18 00:00:00	2021-09-19 00:00:00
AMMN80IA693	107	2021-09-11 00:00:00	Success	2021-09-11 00:00:00	2021-09-12 00:00:00
PNNA27NP004	287	2022-12-05 00:00:00	Success	2022-12-05 00:00:00	2022-12-06 00:00:00
CAIA31MA818	784	2021-02-17 00:00:00	Success	2021-02-17 00:00:00	2021-02-18 00:00:00
PIMC13AA065	282	2021-02-23 00:00:00	Success	2021-02-23 00:00:00	2021-02-24 00:00:00
IOIP77MP703	590	2022-09-28 00:00:00	Success	2022-09-28 00:00:00	2022-09-29 00:00:00
AIOO52MA455	151	2022-07-03 00:00:00	Success	2022-07-03 00:00:00	2022-07-04 00:00:00
MPAA39PI241	655	2022-09-21 00:00:00	Success	2022-09-21 00:00:00	2022-09-22 00:00:00
AINA98IA399	22	2022-05-24 00:00:00	Success	2022-05-24 00:00:00	2022-05-25 00:00:00
AMON95AP107	253	2021-08-24 00:00:00	Success	2021-08-24 00:00:00	2021-08-25 00:00:00
CIAO04CN367	891	2021-03-24 00:00:00	Success	2021-03-24 00:00:00	2021-03-25 00:00:00
PACM65ON511	623	2022-12-25 00:00:00	Success	2022-12-25 00:00:00	2022-12-26 00:00:00
AANP52IC668	294	2021-05-02 00:00:00	Success	2021-05-02 00:00:00	2021-05-03 00:00:00
AAOP15CA367	965	2022-03-05 00:00:00	Canceled	2022-03-05 00:00:00	2022-03-05 00:00:00
PAPA71PC666	153	2021-06-12 00:00:00	Success	2021-06-12 00:00:00	2021-06-13 00:00:00
AACA66AI853	108	2022-02-18 00:00:00	Success	2022-02-18 00:00:00	2022-02-19 00:00:00
PCMO54CM783	647	2022-01-19 00:00:00	Success	2022-01-19 00:00:00	2022-01-20 00:00:00
AANP95PO388	187	2022-06-04 00:00:00	Success	2022-06-04 00:00:00	2022-06-05 00:00:00
IAAN98AA671	136	2021-10-12 00:00:00	Success	2021-10-12 00:00:00	2021-10-13 00:00:00
PPPA12OP401	672	2022-12-22 00:00:00	Success	2022-12-22 00:00:00	2022-12-23 00:00:00
MACI85IN528	44	2021-11-30 00:00:00	Success	2021-11-30 00:00:00	2021-12-01 00:00:00
NPMI23AC049	10	2021-07-03 00:00:00	Success	2021-07-03 00:00:00	2021-07-04 00:00:00
MMPA33IC917	260	2022-08-20 00:00:00	Success	2022-08-20 00:00:00	2022-08-21 00:00:00
IMOM66AN703	102	2021-12-25 00:00:00	Canceled	2021-12-25 00:00:00	2021-12-25 00:00:00
PMOP68NM130	896	2022-05-11 00:00:00	Success	2022-05-11 00:00:00	2022-05-12 00:00:00
AAOC03AO741	202	2022-07-03 00:00:00	Success	2022-07-03 00:00:00	2022-07-04 00:00:00
CPCI10MC952	264	2021-05-29 00:00:00	Success	2021-05-29 00:00:00	2021-05-30 00:00:00
PPPA67PM824	309	2022-04-20 00:00:00	Success	2022-04-20 00:00:00	2022-04-21 00:00:00
CPNC17II765	933	2022-08-02 00:00:00	Success	2022-08-02 00:00:00	2022-08-03 00:00:00
PAMA18MN123	445	2022-04-30 00:00:00	Success	2022-04-30 00:00:00	2022-05-01 00:00:00
MPAN98AO752	36	2021-08-31 00:00:00	Success	2021-08-31 00:00:00	2021-09-01 00:00:00
INAO90CP531	964	2021-08-26 00:00:00	Success	2021-08-26 00:00:00	2021-08-27 00:00:00
APIO20OI992	651	2021-03-05 00:00:00	Success	2021-03-05 00:00:00	2021-03-06 00:00:00
NOAN45MN886	609	2022-09-30 00:00:00	Success	2022-09-30 00:00:00	2022-10-01 00:00:00
ACOA03AI195	554	2022-12-04 00:00:00	Success	2022-12-04 00:00:00	2022-12-05 00:00:00
NIPN63PO613	680	2022-07-01 00:00:00	Success	2022-07-01 00:00:00	2022-07-02 00:00:00
CCCI56OP232	543	2022-08-12 00:00:00	Success	2022-08-12 00:00:00	2022-08-13 00:00:00
NMAM26OA191	995	2022-11-23 00:00:00	Success	2022-11-23 00:00:00	2022-11-24 00:00:00
CIPO34IP632	257	2022-02-24 00:00:00	Success	2022-02-24 00:00:00	2022-02-25 00:00:00
NMNA74PA758	599	2021-12-05 00:00:00	Success	2021-12-05 00:00:00	2021-12-06 00:00:00
PCOA03CA916	96	2022-12-21 00:00:00	Success	2022-12-21 00:00:00	2022-12-22 00:00:00
CCCM89OC649	528	2022-08-08 00:00:00	Success	2022-08-08 00:00:00	2022-08-09 00:00:00
MCPA97CM274	796	2021-03-28 00:00:00	Success	2021-03-28 00:00:00	2021-03-29 00:00:00
PNAO83OP167	321	2022-07-14 00:00:00	Success	2022-07-14 00:00:00	2022-07-15 00:00:00
AAMC41MA324	808	2021-07-26 00:00:00	Success	2021-07-26 00:00:00	2021-07-27 00:00:00
CPPI93AN663	522	2022-11-21 00:00:00	Success	2022-11-21 00:00:00	2022-11-22 00:00:00
AMPI13IC529	973	2021-04-22 00:00:00	Success	2021-04-22 00:00:00	2021-04-23 00:00:00
ICIM16AM844	656	2022-02-18 00:00:00	Success	2022-02-18 00:00:00	2022-02-19 00:00:00
CNAA75MO718	876	2021-11-18 00:00:00	Success	2021-11-18 00:00:00	2021-11-19 00:00:00
MAAI15MA636	885	2021-09-26 00:00:00	Success	2021-09-26 00:00:00	2021-09-27 00:00:00
NNCI63MI748	177	2022-03-27 00:00:00	Success	2022-03-27 00:00:00	2022-03-28 00:00:00
POAA42AP121	870	2021-12-31 00:00:00	Success	2021-12-31 00:00:00	2022-01-01 00:00:00
APOM28AM128	289	2021-05-22 00:00:00	Success	2021-05-22 00:00:00	2021-05-23 00:00:00
MMIP92AI994	778	2021-11-21 00:00:00	Success	2021-11-21 00:00:00	2021-11-22 00:00:00
OMCM65ON047	776	2022-09-21 00:00:00	Success	2022-09-21 00:00:00	2022-09-22 00:00:00
IPAO88II165	109	2022-06-02 00:00:00	Success	2022-06-02 00:00:00	2022-06-03 00:00:00
IAAA00PN450	3	2022-06-12 00:00:00	Success	2022-06-12 00:00:00	2022-06-13 00:00:00
PNII51MO034	18	2022-02-16 00:00:00	Success	2022-02-16 00:00:00	2022-02-17 00:00:00
OAMA80AC896	848	2021-04-23 00:00:00	Success	2021-04-23 00:00:00	2021-04-24 00:00:00
PIPA86IO818	552	2022-03-05 00:00:00	Success	2022-03-05 00:00:00	2022-03-06 00:00:00
AANA30NI109	454	2022-08-05 00:00:00	Success	2022-08-05 00:00:00	2022-08-06 00:00:00
ICPP75PI748	994	2021-05-27 00:00:00	Success	2021-05-27 00:00:00	2021-05-28 00:00:00
INAI93NI790	310	2021-07-12 00:00:00	Success	2021-07-12 00:00:00	2021-07-13 00:00:00
AAOC10OC209	371	2021-01-08 00:00:00	Success	2021-01-08 00:00:00	2021-01-09 00:00:00
POIC49AO203	309	2021-04-04 00:00:00	Success	2021-04-04 00:00:00	2021-04-05 00:00:00
IAOA10OA060	733	2021-04-06 00:00:00	Success	2021-04-06 00:00:00	2021-04-07 00:00:00
ACMP75NA528	67	2022-09-24 00:00:00	Success	2022-09-24 00:00:00	2022-09-25 00:00:00
MACA64OC385	123	2022-10-19 00:00:00	Canceled	2022-10-19 00:00:00	2022-10-19 00:00:00
CPIC89PA079	222	2022-05-01 00:00:00	Success	2022-05-01 00:00:00	2022-05-02 00:00:00
OONA59MA424	817	2022-04-14 00:00:00	Success	2022-04-14 00:00:00	2022-04-15 00:00:00
MIAI82II104	495	2022-07-26 00:00:00	Canceled	2022-07-26 00:00:00	2022-07-26 00:00:00
PNPI93ON578	237	2021-10-03 00:00:00	Success	2021-10-03 00:00:00	2021-10-04 00:00:00
CAOI10IO062	733	2022-02-04 00:00:00	Success	2022-02-04 00:00:00	2022-02-05 00:00:00
AACC62OO154	776	2021-04-30 00:00:00	Canceled	2021-04-30 00:00:00	2021-04-30 00:00:00
NMAC56AM322	599	2022-06-19 00:00:00	Success	2022-06-19 00:00:00	2022-06-20 00:00:00
AAAM80AC798	531	2021-03-26 00:00:00	Success	2021-03-26 00:00:00	2021-03-27 00:00:00
IIAC92IP908	896	2022-04-27 00:00:00	Canceled	2022-04-27 00:00:00	2022-04-27 00:00:00
NAIO67AA436	237	2022-01-30 00:00:00	Success	2022-01-30 00:00:00	2022-01-31 00:00:00
IIAA87NP744	297	2022-12-08 00:00:00	Success	2022-12-08 00:00:00	2022-12-09 00:00:00
CCAM11NN233	308	2022-07-10 00:00:00	Success	2022-07-10 00:00:00	2022-07-11 00:00:00
MOII00MA710	733	2021-01-05 00:00:00	Success	2021-01-05 00:00:00	2021-01-06 00:00:00
OMOC45CN000	301	2021-03-29 00:00:00	Success	2021-03-29 00:00:00	2021-03-30 00:00:00
ICOP36PN998	148	2022-08-27 00:00:00	Canceled	2022-08-27 00:00:00	2022-08-27 00:00:00
NCMA24OO498	967	2021-12-09 00:00:00	Success	2021-12-09 00:00:00	2021-12-10 00:00:00
CPCA89AM728	375	2022-08-07 00:00:00	Success	2022-08-07 00:00:00	2022-08-08 00:00:00
IPMA98NM030	152	2021-12-09 00:00:00	Success	2021-12-09 00:00:00	2021-12-10 00:00:00
AMAI66CA484	206	2021-07-23 00:00:00	Success	2021-07-23 00:00:00	2021-07-24 00:00:00
MAPC99IM251	496	2021-04-15 00:00:00	Success	2021-04-15 00:00:00	2021-04-16 00:00:00
CIPC39NC705	413	2021-09-01 00:00:00	Success	2021-09-01 00:00:00	2021-09-02 00:00:00
ACAN21NO150	986	2021-05-26 00:00:00	Success	2021-05-26 00:00:00	2021-05-27 00:00:00
ACCA92CI733	994	2021-04-19 00:00:00	Success	2021-04-19 00:00:00	2021-04-20 00:00:00
CNIC83NC613	46	2022-08-02 00:00:00	Success	2022-08-02 00:00:00	2022-08-03 00:00:00
OPCM84PI865	922	2021-06-25 00:00:00	Success	2021-06-25 00:00:00	2021-06-26 00:00:00
OMMP59AP409	760	2021-06-05 00:00:00	Success	2021-06-05 00:00:00	2021-06-06 00:00:00
NAAP82MA536	230	2021-06-26 00:00:00	Success	2021-06-26 00:00:00	2021-06-27 00:00:00
POIN88CO021	223	2021-02-13 00:00:00	Canceled	2021-02-13 00:00:00	2021-02-13 00:00:00
IOAA28AO395	836	2022-11-26 00:00:00	Success	2022-11-26 00:00:00	2022-11-27 00:00:00
PNAP10MC737	301	2022-02-27 00:00:00	Success	2022-02-27 00:00:00	2022-02-28 00:00:00
AMAO59CA809	999	2022-03-21 00:00:00	Success	2022-03-21 00:00:00	2022-03-22 00:00:00
PNMP92MO379	875	2022-08-16 00:00:00	Success	2022-08-16 00:00:00	2022-08-17 00:00:00
ANMO98IP230	245	2022-12-16 00:00:00	Success	2022-12-16 00:00:00	2022-12-17 00:00:00
OPCC99IN290	630	2021-10-28 00:00:00	Success	2021-10-28 00:00:00	2021-10-29 00:00:00
CMAP03CN269	341	2022-09-22 00:00:00	Success	2022-09-22 00:00:00	2022-09-23 00:00:00
ACAA67OI570	291	2022-10-09 00:00:00	Success	2022-10-09 00:00:00	2022-10-10 00:00:00
PCNP02OA031	758	2022-04-08 00:00:00	Success	2022-04-08 00:00:00	2022-04-09 00:00:00
AIMA61PO536	390	2022-06-19 00:00:00	Success	2022-06-19 00:00:00	2022-06-20 00:00:00
PIAA27MA715	295	2022-11-05 00:00:00	Success	2022-11-05 00:00:00	2022-11-06 00:00:00
ANAP07CA494	17	2022-08-22 00:00:00	Success	2022-08-22 00:00:00	2022-08-23 00:00:00
CCNI95IA930	603	2021-07-30 00:00:00	Success	2021-07-30 00:00:00	2021-07-31 00:00:00
ACNM21OA616	54	2022-07-24 00:00:00	Canceled	2022-07-24 00:00:00	2022-07-24 00:00:00
MAPC87PC335	36	2021-04-30 00:00:00	Success	2021-04-30 00:00:00	2021-05-01 00:00:00
CNOM80OM280	602	2021-03-24 00:00:00	Success	2021-03-24 00:00:00	2021-03-25 00:00:00
IPPN50AA543	695	2021-04-27 00:00:00	Success	2021-04-27 00:00:00	2021-04-28 00:00:00
AAMN26CC873	521	2022-11-25 00:00:00	Success	2022-11-25 00:00:00	2022-11-26 00:00:00
PAOC73NP295	502	2021-06-12 00:00:00	Success	2021-06-12 00:00:00	2021-06-13 00:00:00
PAAO05IN851	929	2021-11-16 00:00:00	Canceled	2021-11-16 00:00:00	2021-11-16 00:00:00
APMC03OI768	755	2021-09-18 00:00:00	Success	2021-09-18 00:00:00	2021-09-19 00:00:00
MCCP53AI249	72	2021-12-23 00:00:00	Canceled	2021-12-23 00:00:00	2021-12-23 00:00:00
POPM06PI837	660	2021-08-29 00:00:00	Success	2021-08-29 00:00:00	2021-08-30 00:00:00
PANO46OP504	45	2021-01-18 00:00:00	Success	2021-01-18 00:00:00	2021-01-19 00:00:00
PMAO90NP658	681	2021-11-02 00:00:00	Success	2021-11-02 00:00:00	2021-11-03 00:00:00
AINN44PC602	316	2022-06-12 00:00:00	Success	2022-06-12 00:00:00	2022-06-13 00:00:00
MPCO78AO776	223	2021-11-22 00:00:00	Success	2021-11-22 00:00:00	2021-11-23 00:00:00
MAON31OC437	986	2022-09-09 00:00:00	Success	2022-09-09 00:00:00	2022-09-10 00:00:00
PNNA22OA856	266	2021-05-14 00:00:00	Success	2021-05-14 00:00:00	2021-05-15 00:00:00
CAPP84PC741	758	2021-02-28 00:00:00	Success	2021-02-28 00:00:00	2021-03-01 00:00:00
IIIN74MA072	405	2021-03-06 00:00:00	Success	2021-03-06 00:00:00	2021-03-07 00:00:00
MIIN89OA237	298	2021-04-07 00:00:00	Canceled	2021-04-07 00:00:00	2021-04-07 00:00:00
OAAN57NA741	566	2021-01-28 00:00:00	Success	2021-01-28 00:00:00	2021-01-29 00:00:00
OMPA92CM610	31	2021-06-05 00:00:00	Success	2021-06-05 00:00:00	2021-06-06 00:00:00
ANPC91PI104	386	2021-09-23 00:00:00	Success	2021-09-23 00:00:00	2021-09-24 00:00:00
CIAO12NP851	899	2021-02-27 00:00:00	Canceled	2021-02-27 00:00:00	2021-02-27 00:00:00
NAPC36OA312	607	2021-12-25 00:00:00	Canceled	2021-12-25 00:00:00	2021-12-25 00:00:00
OOCO86AA698	339	2021-05-21 00:00:00	Success	2021-05-21 00:00:00	2021-05-22 00:00:00
IOCN43OM583	670	2022-05-31 00:00:00	Success	2022-05-31 00:00:00	2022-06-01 00:00:00
NPPP66MO749	48	2022-12-23 00:00:00	Success	2022-12-23 00:00:00	2022-12-24 00:00:00
PAAA29AA944	977	2021-07-15 00:00:00	Canceled	2021-07-15 00:00:00	2021-07-15 00:00:00
NNMP64NI174	515	2022-12-26 00:00:00	Success	2022-12-26 00:00:00	2022-12-27 00:00:00
MOIC06PI413	292	2021-01-28 00:00:00	Success	2021-01-28 00:00:00	2021-01-29 00:00:00
AICM10PI160	760	2022-12-02 00:00:00	Success	2022-12-02 00:00:00	2022-12-03 00:00:00
IAMO55IP130	663	2021-08-22 00:00:00	Success	2021-08-22 00:00:00	2021-08-23 00:00:00
PPIC53AO625	92	2022-03-12 00:00:00	Success	2022-03-12 00:00:00	2022-03-13 00:00:00
INMA85AI537	927	2021-12-17 00:00:00	Success	2021-12-17 00:00:00	2021-12-18 00:00:00
CONN83PI934	972	2021-04-13 00:00:00	Success	2021-04-13 00:00:00	2021-04-14 00:00:00
ANMC28OA004	283	2022-05-28 00:00:00	Success	2022-05-28 00:00:00	2022-05-29 00:00:00
CMNN69IA436	342	2022-01-30 00:00:00	Success	2022-01-30 00:00:00	2022-01-31 00:00:00
ONNI82NA070	833	2021-11-05 00:00:00	Success	2021-11-05 00:00:00	2021-11-06 00:00:00
AACP34AA378	207	2021-09-19 00:00:00	Success	2021-09-19 00:00:00	2021-09-20 00:00:00
AMPN15PN006	479	2021-07-29 00:00:00	Success	2021-07-29 00:00:00	2021-07-30 00:00:00
COAN17IA806	459	2021-11-27 00:00:00	Success	2021-11-27 00:00:00	2021-11-28 00:00:00
AAAP73CA982	938	2021-10-20 00:00:00	Success	2021-10-20 00:00:00	2021-10-21 00:00:00
MCAI39AO208	208	2021-09-15 00:00:00	Success	2021-09-15 00:00:00	2021-09-16 00:00:00
AIIA72AC054	491	2021-02-11 00:00:00	Success	2021-02-11 00:00:00	2021-02-12 00:00:00
MONI02CN749	276	2021-01-17 00:00:00	Success	2021-01-17 00:00:00	2021-01-18 00:00:00
INAM58AC598	763	2021-01-24 00:00:00	Success	2021-01-24 00:00:00	2021-01-25 00:00:00
AAIA08MI133	806	2022-09-18 00:00:00	Success	2022-09-18 00:00:00	2022-09-19 00:00:00
ANAA44CC674	728	2022-05-26 00:00:00	Success	2022-05-26 00:00:00	2022-05-27 00:00:00
CNAA76ON346	258	2022-09-29 00:00:00	Canceled	2022-09-29 00:00:00	2022-09-29 00:00:00
CNAA87CA329	466	2022-10-26 00:00:00	Canceled	2022-10-26 00:00:00	2022-10-26 00:00:00
IAOC27NN988	438	2022-04-11 00:00:00	Canceled	2022-04-11 00:00:00	2022-04-11 00:00:00
NCCI50NC073	64	2021-02-19 00:00:00	Success	2021-02-19 00:00:00	2021-02-20 00:00:00
MAPA28IN803	586	2021-08-05 00:00:00	Success	2021-08-05 00:00:00	2021-08-06 00:00:00
OCPI95AC383	427	2021-11-15 00:00:00	Canceled	2021-11-15 00:00:00	2021-11-15 00:00:00
APAC91IO592	919	2022-01-12 00:00:00	Success	2022-01-12 00:00:00	2022-01-13 00:00:00
CAAC19IO329	977	2021-01-02 00:00:00	Success	2021-01-02 00:00:00	2021-01-03 00:00:00
IPIA01CC712	84	2021-08-04 00:00:00	Success	2021-08-04 00:00:00	2021-08-05 00:00:00
ACNA54MA642	619	2021-06-09 00:00:00	Success	2021-06-09 00:00:00	2021-06-10 00:00:00
CIOO49AA881	30	2021-09-05 00:00:00	Success	2021-09-05 00:00:00	2021-09-06 00:00:00
AINP62NN491	442	2022-07-24 00:00:00	Success	2022-07-24 00:00:00	2022-07-25 00:00:00
MMAC31IO429	714	2022-01-13 00:00:00	Success	2022-01-13 00:00:00	2022-01-14 00:00:00
MOPA57MO547	6	2021-02-15 00:00:00	Success	2021-02-15 00:00:00	2021-02-16 00:00:00
NANM67IP105	217	2022-06-19 00:00:00	Success	2022-06-19 00:00:00	2022-06-20 00:00:00
OCAP43CM319	927	2022-03-26 00:00:00	Success	2022-03-26 00:00:00	2022-03-27 00:00:00
AMPM78IN378	190	2022-12-16 00:00:00	Success	2022-12-16 00:00:00	2022-12-17 00:00:00
APNN12PP169	206	2022-11-11 00:00:00	Success	2022-11-11 00:00:00	2022-11-12 00:00:00
PIOO43OM138	85	2022-05-07 00:00:00	Success	2022-05-07 00:00:00	2022-05-08 00:00:00
OAPA60MA512	988	2021-09-21 00:00:00	Success	2021-09-21 00:00:00	2021-09-22 00:00:00
OAAP24AC841	827	2022-02-05 00:00:00	Success	2022-02-05 00:00:00	2022-02-06 00:00:00
AMOI58IA082	228	2022-03-05 00:00:00	Success	2022-03-05 00:00:00	2022-03-06 00:00:00
POPO53IA002	138	2021-05-08 00:00:00	Success	2021-05-08 00:00:00	2021-05-09 00:00:00
OPOA60OM525	686	2022-05-23 00:00:00	Success	2022-05-23 00:00:00	2022-05-24 00:00:00
CNIA51CI308	471	2022-08-27 00:00:00	Success	2022-08-27 00:00:00	2022-08-28 00:00:00
NCAA03OI363	318	2021-04-06 00:00:00	Success	2021-04-06 00:00:00	2021-04-07 00:00:00
PONC62MO929	11	2022-05-19 00:00:00	Success	2022-05-19 00:00:00	2022-05-20 00:00:00
AOMP24NP849	805	2022-11-05 00:00:00	Success	2022-11-05 00:00:00	2022-11-06 00:00:00
CICM47II812	240	2022-07-12 00:00:00	Success	2022-07-12 00:00:00	2022-07-13 00:00:00
CMMA41OA442	115	2022-12-11 00:00:00	Success	2022-12-11 00:00:00	2022-12-12 00:00:00
NPAC39OC587	718	2021-09-12 00:00:00	Success	2021-09-12 00:00:00	2021-09-13 00:00:00
AIOP06NC883	114	2022-02-09 00:00:00	Success	2022-02-09 00:00:00	2022-02-10 00:00:00
AICN84OA165	509	2021-10-25 00:00:00	Success	2021-10-25 00:00:00	2021-10-26 00:00:00
MIAM47NC525	213	2021-04-07 00:00:00	Success	2021-04-07 00:00:00	2021-04-08 00:00:00
MANA11OM393	724	2021-05-12 00:00:00	Success	2021-05-12 00:00:00	2021-05-13 00:00:00
NOIC38IA201	869	2022-01-04 00:00:00	Success	2022-01-04 00:00:00	2022-01-05 00:00:00
CCAO87MA465	528	2022-05-09 00:00:00	Success	2022-05-09 00:00:00	2022-05-10 00:00:00
MNAN89CN428	861	2021-09-13 00:00:00	Success	2021-09-13 00:00:00	2021-09-14 00:00:00
IPAN91PA255	420	2021-06-03 00:00:00	Success	2021-06-03 00:00:00	2021-06-04 00:00:00
ANCN14AC337	438	2021-04-29 00:00:00	Success	2021-04-29 00:00:00	2021-04-30 00:00:00
IANI61AI979	896	2022-02-21 00:00:00	Success	2022-02-21 00:00:00	2022-02-22 00:00:00
INNI63AO211	498	2021-11-07 00:00:00	Success	2021-11-07 00:00:00	2021-11-08 00:00:00
OAOA54IN281	148	2022-12-01 00:00:00	Success	2022-12-01 00:00:00	2022-12-02 00:00:00
IOAP27CA709	910	2021-04-26 00:00:00	Success	2021-04-26 00:00:00	2021-04-27 00:00:00
NCPO43NI626	784	2021-10-21 00:00:00	Success	2021-10-21 00:00:00	2021-10-22 00:00:00
IPAI50CO351	922	2021-01-11 00:00:00	Success	2021-01-11 00:00:00	2021-01-12 00:00:00
AMPA68NA593	524	2021-02-27 00:00:00	Success	2021-02-27 00:00:00	2021-02-28 00:00:00
AAAO32OA347	897	2022-12-08 00:00:00	Success	2022-12-08 00:00:00	2022-12-09 00:00:00
CIMC67AP664	538	2021-05-22 00:00:00	Success	2021-05-22 00:00:00	2021-05-23 00:00:00
AIAN56IA130	652	2022-06-26 00:00:00	Success	2022-06-26 00:00:00	2022-06-27 00:00:00
IIAC98PA691	136	2021-09-26 00:00:00	Success	2021-09-26 00:00:00	2021-09-27 00:00:00
COAI00AM667	706	2022-03-05 00:00:00	Success	2022-03-05 00:00:00	2022-03-06 00:00:00
MPMA37MP383	439	2022-09-02 00:00:00	Success	2022-09-02 00:00:00	2022-09-03 00:00:00
NAON41PA309	866	2022-04-21 00:00:00	Success	2022-04-21 00:00:00	2022-04-22 00:00:00
MIOI29AA444	900	2022-09-19 00:00:00	Success	2022-09-19 00:00:00	2022-09-20 00:00:00
CMCM81MC064	31	2022-01-01 00:00:00	Success	2022-01-01 00:00:00	2022-01-02 00:00:00
AMPO31AN853	908	2021-05-02 00:00:00	Success	2021-05-02 00:00:00	2021-05-03 00:00:00
AOPP04AP119	708	2022-02-25 00:00:00	Success	2022-02-25 00:00:00	2022-02-26 00:00:00
OOMM34NN204	74	2022-02-22 00:00:00	Success	2022-02-22 00:00:00	2022-02-23 00:00:00
AOPA80II895	831	2022-08-05 00:00:00	Success	2022-08-05 00:00:00	2022-08-06 00:00:00
NIAC19MM103	753	2021-07-23 00:00:00	Success	2021-07-23 00:00:00	2021-07-24 00:00:00
MPAN95AP710	911	2022-03-18 00:00:00	Success	2022-03-18 00:00:00	2022-03-19 00:00:00
OAII73NM675	247	2022-07-01 00:00:00	Success	2022-07-01 00:00:00	2022-07-02 00:00:00
INAI25MM183	811	2021-01-09 00:00:00	Canceled	2021-01-09 00:00:00	2021-01-09 00:00:00
COAA45NI130	98	2021-04-23 00:00:00	Success	2021-04-23 00:00:00	2021-04-24 00:00:00
OIAN78AC126	542	2022-04-07 00:00:00	Success	2022-04-07 00:00:00	2022-04-08 00:00:00
INON78AO782	416	2022-11-29 00:00:00	Success	2022-11-29 00:00:00	2022-11-30 00:00:00
NMOA33NC406	957	2021-01-06 00:00:00	Success	2021-01-06 00:00:00	2021-01-07 00:00:00
AONO33NA546	107	2022-02-21 00:00:00	Success	2022-02-21 00:00:00	2022-02-22 00:00:00
PAAA35AP850	785	2022-07-21 00:00:00	Success	2022-07-21 00:00:00	2022-07-22 00:00:00
NPCM54CP981	710	2021-03-19 00:00:00	Success	2021-03-19 00:00:00	2021-03-20 00:00:00
OANC36PO385	921	2022-08-21 00:00:00	Success	2022-08-21 00:00:00	2022-08-22 00:00:00
ANMC24CP072	326	2021-12-14 00:00:00	Success	2021-12-14 00:00:00	2021-12-15 00:00:00
IOON21IP819	139	2022-11-11 00:00:00	Success	2022-11-11 00:00:00	2022-11-12 00:00:00
CNOC03OM959	800	2021-08-14 00:00:00	Success	2021-08-14 00:00:00	2021-08-15 00:00:00
AMCO89ON854	360	2022-07-10 00:00:00	Success	2022-07-10 00:00:00	2022-07-11 00:00:00
AAPO00NC642	449	2022-05-27 00:00:00	Success	2022-05-27 00:00:00	2022-05-28 00:00:00
NONC70IC960	918	2021-07-31 00:00:00	Success	2021-07-31 00:00:00	2021-08-01 00:00:00
OACC72PN249	482	2022-05-23 00:00:00	Canceled	2022-05-23 00:00:00	2022-05-23 00:00:00
OCAC11IC388	474	2022-03-26 00:00:00	Success	2022-03-26 00:00:00	2022-03-27 00:00:00
OPOO45NP777	232	2022-06-01 00:00:00	Canceled	2022-06-01 00:00:00	2022-06-01 00:00:00
OACP32AO062	684	2021-10-02 00:00:00	Success	2021-10-02 00:00:00	2021-10-03 00:00:00
MNMP20MO754	965	2021-10-26 00:00:00	Success	2021-10-26 00:00:00	2021-10-27 00:00:00
CMOC86MM565	227	2021-08-01 00:00:00	Success	2021-08-01 00:00:00	2021-08-02 00:00:00
ACMA79IO253	586	2021-08-16 00:00:00	Success	2021-08-16 00:00:00	2021-08-17 00:00:00
OOCM35PC618	933	2021-09-12 00:00:00	Canceled	2021-09-12 00:00:00	2021-09-12 00:00:00
ICOO13CP077	68	2021-05-22 00:00:00	Success	2021-05-22 00:00:00	2021-05-23 00:00:00
ACNP16NP275	368	2022-09-29 00:00:00	Success	2022-09-29 00:00:00	2022-09-30 00:00:00
NMAN21NA645	16	2022-05-22 00:00:00	Success	2022-05-22 00:00:00	2022-05-23 00:00:00
PMMA83OA909	449	2021-02-12 00:00:00	Success	2021-02-12 00:00:00	2021-02-13 00:00:00
ACPM13NA982	596	2022-01-09 00:00:00	Success	2022-01-09 00:00:00	2022-01-10 00:00:00
NAOA29II043	819	2022-01-20 00:00:00	Success	2022-01-20 00:00:00	2022-01-21 00:00:00
AOMO30AP592	842	2022-11-14 00:00:00	Success	2022-11-14 00:00:00	2022-11-15 00:00:00
NAAP48IN274	858	2022-01-06 00:00:00	Success	2022-01-06 00:00:00	2022-01-07 00:00:00
ANCP28CM901	785	2021-09-16 00:00:00	Success	2021-09-16 00:00:00	2021-09-17 00:00:00
NCIA67MC264	747	2022-07-29 00:00:00	Success	2022-07-29 00:00:00	2022-07-30 00:00:00
PIAI51IO130	46	2022-08-25 00:00:00	Canceled	2022-08-25 00:00:00	2022-08-25 00:00:00
AAMA13AA292	764	2021-04-06 00:00:00	Canceled	2021-04-06 00:00:00	2021-04-06 00:00:00
MPPM54MA498	681	2021-08-12 00:00:00	Success	2021-08-12 00:00:00	2021-08-13 00:00:00
MAAO88CA611	225	2021-01-11 00:00:00	Success	2021-01-11 00:00:00	2021-01-12 00:00:00
AANP13MO848	76	2022-02-12 00:00:00	Success	2022-02-12 00:00:00	2022-02-13 00:00:00
CAMA67PP955	728	2022-09-02 00:00:00	Success	2022-09-02 00:00:00	2022-09-03 00:00:00
OAAA67AN267	858	2021-06-04 00:00:00	Success	2021-06-04 00:00:00	2021-06-05 00:00:00
OCCI59AA060	225	2021-10-23 00:00:00	Success	2021-10-23 00:00:00	2021-10-24 00:00:00
PICO10AA142	561	2021-06-01 00:00:00	Success	2021-06-01 00:00:00	2021-06-02 00:00:00
OPIM02PA754	775	2021-06-12 00:00:00	Canceled	2021-06-12 00:00:00	2021-06-12 00:00:00
OACN93CN178	756	2022-04-03 00:00:00	Success	2022-04-03 00:00:00	2022-04-04 00:00:00
IOOA74MN810	174	2022-08-24 00:00:00	Success	2022-08-24 00:00:00	2022-08-25 00:00:00
ACAC76IA504	80	2021-12-09 00:00:00	Success	2021-12-09 00:00:00	2021-12-10 00:00:00
CNCA98IN094	673	2021-09-17 00:00:00	Success	2021-09-17 00:00:00	2021-09-18 00:00:00
CPAC79OA808	685	2022-05-06 00:00:00	Success	2022-05-06 00:00:00	2022-05-07 00:00:00
PNAA20MA862	240	2021-02-22 00:00:00	Success	2021-02-22 00:00:00	2021-02-23 00:00:00
OAIP84CA671	950	2021-11-10 00:00:00	Success	2021-11-10 00:00:00	2021-11-11 00:00:00
MOAC18AI350	238	2022-08-31 00:00:00	Success	2022-08-31 00:00:00	2022-09-01 00:00:00
PMIA31IA399	647	2021-01-22 00:00:00	Success	2021-01-22 00:00:00	2021-01-23 00:00:00
MOIP28MM581	930	2022-02-24 00:00:00	Success	2022-02-24 00:00:00	2022-02-25 00:00:00
AINN58NM977	316	2021-05-05 00:00:00	Success	2021-05-05 00:00:00	2021-05-06 00:00:00
AOAO21CI322	509	2021-05-17 00:00:00	Success	2021-05-17 00:00:00	2021-05-18 00:00:00
AAMO00AP398	169	2021-05-28 00:00:00	Success	2021-05-28 00:00:00	2021-05-29 00:00:00
AIMA70AN124	94	2022-11-23 00:00:00	Success	2022-11-23 00:00:00	2022-11-24 00:00:00
ACIA91NA276	586	2021-01-31 00:00:00	Success	2021-01-31 00:00:00	2021-02-01 00:00:00
IAIA88OO360	343	2021-01-25 00:00:00	Success	2021-01-25 00:00:00	2021-01-26 00:00:00
ANOC75PC437	140	2021-12-29 00:00:00	Canceled	2021-12-29 00:00:00	2021-12-29 00:00:00
PPIM31AP541	866	2022-07-31 00:00:00	Success	2022-07-31 00:00:00	2022-08-01 00:00:00
OCCA84AI191	152	2022-03-24 00:00:00	Success	2022-03-24 00:00:00	2022-03-25 00:00:00
NCIN60OC864	442	2022-09-22 00:00:00	Canceled	2022-09-22 00:00:00	2022-09-22 00:00:00
CCNN65IP373	13	2022-09-07 00:00:00	Success	2022-09-07 00:00:00	2022-09-08 00:00:00
CMAA38AP552	272	2021-02-09 00:00:00	Success	2021-02-09 00:00:00	2021-02-10 00:00:00
IAAM03NO224	321	2021-06-21 00:00:00	Success	2021-06-21 00:00:00	2021-06-22 00:00:00
INPI61AO811	631	2021-02-21 00:00:00	Canceled	2021-02-21 00:00:00	2021-02-21 00:00:00
IAMI63CO748	824	2022-03-02 00:00:00	Success	2022-03-02 00:00:00	2022-03-03 00:00:00
MPAA57CN399	242	2022-11-16 00:00:00	Success	2022-11-16 00:00:00	2022-11-17 00:00:00
OPIA60MI193	860	2022-04-20 00:00:00	Success	2022-04-20 00:00:00	2022-04-21 00:00:00
AAMN16ON430	451	2021-09-14 00:00:00	Success	2021-09-14 00:00:00	2021-09-15 00:00:00
CCAA77IN011	279	2022-12-12 00:00:00	Success	2022-12-12 00:00:00	2022-12-13 00:00:00
INMN32AA268	290	2021-03-12 00:00:00	Success	2021-03-12 00:00:00	2021-03-13 00:00:00
INAA28AA991	185	2021-04-25 00:00:00	Success	2021-04-25 00:00:00	2021-04-26 00:00:00
OOMP67NN045	316	2021-03-20 00:00:00	Success	2021-03-20 00:00:00	2021-03-21 00:00:00
IONA09NI934	400	2022-04-05 00:00:00	Success	2022-04-05 00:00:00	2022-04-06 00:00:00
ANCN19PC462	552	2021-09-27 00:00:00	Success	2021-09-27 00:00:00	2021-09-28 00:00:00
AOAN70NI861	456	2021-06-24 00:00:00	Success	2021-06-24 00:00:00	2021-06-25 00:00:00
COON02OM272	580	2022-01-19 00:00:00	Success	2022-01-19 00:00:00	2022-01-20 00:00:00
CAIA74MA106	27	2021-05-16 00:00:00	Success	2021-05-16 00:00:00	2021-05-17 00:00:00
IMOI33OM683	869	2021-07-21 00:00:00	Success	2021-07-21 00:00:00	2021-07-22 00:00:00
CPAC14IA979	38	2021-08-25 00:00:00	Success	2021-08-25 00:00:00	2021-08-26 00:00:00
CAPC34AC786	762	2021-09-07 00:00:00	Success	2021-09-07 00:00:00	2021-09-08 00:00:00
IMAN86MA661	641	2021-01-24 00:00:00	Success	2021-01-24 00:00:00	2021-01-25 00:00:00
NNAA79PN596	677	2021-01-01 00:00:00	Success	2021-01-01 00:00:00	2021-01-02 00:00:00
PCPA51NA649	626	2021-02-14 00:00:00	Success	2021-02-14 00:00:00	2021-02-15 00:00:00
OCNN93PC521	495	2021-04-25 00:00:00	Success	2021-04-25 00:00:00	2021-04-26 00:00:00
PAAO51NP808	896	2022-12-15 00:00:00	Success	2022-12-15 00:00:00	2022-12-16 00:00:00
IAMI55NM007	32	2021-12-13 00:00:00	Success	2021-12-13 00:00:00	2021-12-14 00:00:00
IPAO78OI378	462	2021-06-14 00:00:00	Success	2021-06-14 00:00:00	2021-06-15 00:00:00
IIMN44CP969	570	2022-07-01 00:00:00	Success	2022-07-01 00:00:00	2022-07-02 00:00:00
PMAA23NP735	133	2022-11-30 00:00:00	Canceled	2022-11-30 00:00:00	2022-11-30 00:00:00
NIMA80II116	507	2021-04-10 00:00:00	Success	2021-04-10 00:00:00	2021-04-11 00:00:00
AMNA40NM292	272	2021-12-06 00:00:00	Success	2021-12-06 00:00:00	2021-12-07 00:00:00
MPMM09II242	205	2021-05-29 00:00:00	Success	2021-05-29 00:00:00	2021-05-30 00:00:00
IICN53AO356	992	2021-08-13 00:00:00	Success	2021-08-13 00:00:00	2021-08-14 00:00:00
CCCP43PA930	745	2021-04-25 00:00:00	Success	2021-04-25 00:00:00	2021-04-26 00:00:00
ANAM66PI616	206	2022-09-11 00:00:00	Success	2022-09-11 00:00:00	2022-09-12 00:00:00
ICIP43CO476	276	2021-11-07 00:00:00	Success	2021-11-07 00:00:00	2021-11-08 00:00:00
PONN42CN970	980	2022-09-17 00:00:00	Success	2022-09-17 00:00:00	2022-09-18 00:00:00
NIMA13PP812	996	2021-10-24 00:00:00	Success	2021-10-24 00:00:00	2021-10-25 00:00:00
AACI33NN688	36	2021-04-28 00:00:00	Success	2021-04-28 00:00:00	2021-04-29 00:00:00
POAC58IA127	522	2022-05-05 00:00:00	Success	2022-05-05 00:00:00	2022-05-06 00:00:00
AOAI51OA563	871	2021-09-04 00:00:00	Success	2021-09-04 00:00:00	2021-09-05 00:00:00
AAII26CI171	371	2021-04-16 00:00:00	Success	2021-04-16 00:00:00	2021-04-17 00:00:00
AAAP39MA989	107	2022-09-02 00:00:00	Success	2022-09-02 00:00:00	2022-09-03 00:00:00
PNIC90AC495	115	2021-04-16 00:00:00	Success	2021-04-16 00:00:00	2021-04-17 00:00:00
PCIM04IA608	573	2022-07-24 00:00:00	Success	2022-07-24 00:00:00	2022-07-25 00:00:00
AIAA40PM979	568	2022-01-20 00:00:00	Success	2022-01-20 00:00:00	2022-01-21 00:00:00
ACPA73NO535	816	2022-12-07 00:00:00	Success	2022-12-07 00:00:00	2022-12-08 00:00:00
POOP48AA571	490	2021-11-21 00:00:00	Success	2021-11-21 00:00:00	2021-11-22 00:00:00
AAAN21AP374	599	2022-05-19 00:00:00	Success	2022-05-19 00:00:00	2022-05-20 00:00:00
NOAP32MM923	336	2022-06-18 00:00:00	Canceled	2022-06-18 00:00:00	2022-06-18 00:00:00
CMAC97PA028	226	2021-07-15 00:00:00	Success	2021-07-15 00:00:00	2021-07-16 00:00:00
OPMI98MO606	535	2021-07-24 00:00:00	Success	2021-07-24 00:00:00	2021-07-25 00:00:00
AOOA57AM790	694	2021-03-02 00:00:00	Canceled	2021-03-02 00:00:00	2021-03-02 00:00:00
OMAN02CI741	370	2022-10-04 00:00:00	Success	2022-10-04 00:00:00	2022-10-05 00:00:00
IAAN47MO552	892	2021-05-12 00:00:00	Success	2021-05-12 00:00:00	2021-05-13 00:00:00
OAOA40IA027	210	2022-01-16 00:00:00	Success	2022-01-16 00:00:00	2022-01-17 00:00:00
AAAO55CN827	958	2022-02-23 00:00:00	Success	2022-02-23 00:00:00	2022-02-24 00:00:00
AMIA41IO812	395	2022-04-22 00:00:00	Success	2022-04-22 00:00:00	2022-04-23 00:00:00
PMAI83NC355	238	2022-09-29 00:00:00	Success	2022-09-29 00:00:00	2022-09-30 00:00:00
OAAM68II751	216	2021-08-24 00:00:00	Success	2021-08-24 00:00:00	2021-08-25 00:00:00
MIAI78ON016	492	2021-09-09 00:00:00	Success	2021-09-09 00:00:00	2021-09-10 00:00:00
PPOM76NO629	452	2021-08-07 00:00:00	Success	2021-08-07 00:00:00	2021-08-08 00:00:00
PCPA49NM495	193	2022-08-17 00:00:00	Success	2022-08-17 00:00:00	2022-08-18 00:00:00
MPMA54AA620	616	2021-07-08 00:00:00	Success	2021-07-08 00:00:00	2021-07-09 00:00:00
ICAC08NA726	3	2022-11-30 00:00:00	Success	2022-11-30 00:00:00	2022-12-01 00:00:00
NMAO06PN604	423	2022-03-12 00:00:00	Success	2022-03-12 00:00:00	2022-03-13 00:00:00
AIAP16AA098	416	2021-05-09 00:00:00	Success	2021-05-09 00:00:00	2021-05-10 00:00:00
IMAA61AA925	354	2022-01-21 00:00:00	Success	2022-01-21 00:00:00	2022-01-22 00:00:00
NAIP34PN051	82	2022-06-18 00:00:00	Success	2022-06-18 00:00:00	2022-06-19 00:00:00
PANA91CP158	949	2022-09-04 00:00:00	Success	2022-09-04 00:00:00	2022-09-05 00:00:00
NMAN87PI235	927	2022-02-16 00:00:00	Success	2022-02-16 00:00:00	2022-02-17 00:00:00
MNMA91NA929	747	2021-10-26 00:00:00	Success	2021-10-26 00:00:00	2021-10-27 00:00:00
AONN45NI425	254	2021-12-29 00:00:00	Success	2021-12-29 00:00:00	2021-12-30 00:00:00
NNAO69CM629	808	2022-05-02 00:00:00	Success	2022-05-02 00:00:00	2022-05-03 00:00:00
NOAI95NM024	906	2022-06-06 00:00:00	Success	2022-06-06 00:00:00	2022-06-07 00:00:00
IPCA54IN003	747	2021-09-18 00:00:00	Success	2021-09-18 00:00:00	2021-09-19 00:00:00
OOMI16CN325	750	2022-10-30 00:00:00	Success	2022-10-30 00:00:00	2022-10-31 00:00:00
AOMN42AI111	29	2021-01-31 00:00:00	Success	2021-01-31 00:00:00	2021-02-01 00:00:00
OAAA26AA377	603	2022-10-09 00:00:00	Success	2022-10-09 00:00:00	2022-10-10 00:00:00
CCAI16AM280	362	2022-03-08 00:00:00	Success	2022-03-08 00:00:00	2022-03-09 00:00:00
AAPC62AO332	56	2022-02-15 00:00:00	Canceled	2022-02-15 00:00:00	2022-02-15 00:00:00
NMAO92AN877	719	2022-02-24 00:00:00	Success	2022-02-24 00:00:00	2022-02-25 00:00:00
OPIM85PP728	523	2022-07-12 00:00:00	Success	2022-07-12 00:00:00	2022-07-13 00:00:00
PANO03MC709	562	2021-01-06 00:00:00	Success	2021-01-06 00:00:00	2021-01-07 00:00:00
ONNI68OA339	844	2021-02-19 00:00:00	Success	2021-02-19 00:00:00	2021-02-20 00:00:00
AAIN56MI630	405	2021-11-01 00:00:00	Success	2021-11-01 00:00:00	2021-11-02 00:00:00
CPPC74AN566	805	2022-10-02 00:00:00	Success	2022-10-02 00:00:00	2022-10-03 00:00:00
CCCA80CO209	888	2021-05-21 00:00:00	Success	2021-05-21 00:00:00	2021-05-22 00:00:00
NAON81MN204	756	2022-05-12 00:00:00	Canceled	2022-05-12 00:00:00	2022-05-12 00:00:00
PNPC54AM226	414	2021-10-23 00:00:00	Success	2021-10-23 00:00:00	2021-10-24 00:00:00
NOCA46NO783	644	2022-06-21 00:00:00	Canceled	2022-06-21 00:00:00	2022-06-21 00:00:00
NCMP81AO908	293	2022-09-26 00:00:00	Canceled	2022-09-26 00:00:00	2022-09-26 00:00:00
OAPA59PP421	551	2022-10-03 00:00:00	Success	2022-10-03 00:00:00	2022-10-04 00:00:00
NCNM12NC707	37	2021-12-20 00:00:00	Success	2021-12-20 00:00:00	2021-12-21 00:00:00
ACIM62MN409	650	2021-06-12 00:00:00	Success	2021-06-12 00:00:00	2021-06-13 00:00:00
PACN90NM183	894	2022-07-18 00:00:00	Success	2022-07-18 00:00:00	2022-07-19 00:00:00
PMCO78CO417	24	2021-03-24 00:00:00	Success	2021-03-24 00:00:00	2021-03-25 00:00:00
OANP54CA404	138	2021-05-27 00:00:00	Success	2021-05-27 00:00:00	2021-05-28 00:00:00
MACA18AM861	253	2021-12-21 00:00:00	Success	2021-12-21 00:00:00	2021-12-22 00:00:00
PPIO54AN625	438	2022-03-09 00:00:00	Success	2022-03-09 00:00:00	2022-03-10 00:00:00
INPN16CN863	79	2022-02-13 00:00:00	Success	2022-02-13 00:00:00	2022-02-14 00:00:00
OANC29AA171	551	2021-02-09 00:00:00	Success	2021-02-09 00:00:00	2021-02-10 00:00:00
AINM06IC708	627	2021-02-09 00:00:00	Success	2021-02-09 00:00:00	2021-02-10 00:00:00
NAAM59PC929	316	2021-07-14 00:00:00	Success	2021-07-14 00:00:00	2021-07-15 00:00:00
OAAA33NI055	300	2021-09-15 00:00:00	Success	2021-09-15 00:00:00	2021-09-16 00:00:00
MAAA10MO667	52	2022-03-07 00:00:00	Success	2022-03-07 00:00:00	2022-03-08 00:00:00
PAOP81CN931	110	2021-04-07 00:00:00	Success	2021-04-07 00:00:00	2021-04-08 00:00:00
AACM23IP231	995	2021-07-14 00:00:00	Success	2021-07-14 00:00:00	2021-07-15 00:00:00
ANMN30CM892	506	2021-10-02 00:00:00	Success	2021-10-02 00:00:00	2021-10-03 00:00:00
CPPI70IP320	316	2021-05-03 00:00:00	Success	2021-05-03 00:00:00	2021-05-04 00:00:00
MAIM96IN362	341	2022-02-10 00:00:00	Success	2022-02-10 00:00:00	2022-02-11 00:00:00
AINA21PA645	119	2021-02-27 00:00:00	Success	2021-02-27 00:00:00	2021-02-28 00:00:00
ANCI23NN770	578	2021-01-25 00:00:00	Success	2021-01-25 00:00:00	2021-01-26 00:00:00
APAP96IA266	787	2021-04-09 00:00:00	Canceled	2021-04-09 00:00:00	2021-04-09 00:00:00
MAPI88NO125	334	2021-04-30 00:00:00	Success	2021-04-30 00:00:00	2021-05-01 00:00:00
APNN19AP635	622	2022-08-12 00:00:00	Success	2022-08-12 00:00:00	2022-08-13 00:00:00
PONP08MO139	374	2022-02-18 00:00:00	Success	2022-02-18 00:00:00	2022-02-19 00:00:00
NAMC08AI414	608	2022-04-07 00:00:00	Success	2022-04-07 00:00:00	2022-04-08 00:00:00
ACIA12NO692	609	2021-10-18 00:00:00	Success	2021-10-18 00:00:00	2021-10-19 00:00:00
CMPO23IP608	520	2022-07-11 00:00:00	Success	2022-07-11 00:00:00	2022-07-12 00:00:00
PNMN03NN968	607	2021-01-13 00:00:00	Success	2021-01-13 00:00:00	2021-01-14 00:00:00
APNA16CO080	672	2021-08-07 00:00:00	Success	2021-08-07 00:00:00	2021-08-08 00:00:00
CONC56AO163	806	2021-06-18 00:00:00	Success	2021-06-18 00:00:00	2021-06-19 00:00:00
APAN19CP347	553	2021-02-25 00:00:00	Success	2021-02-25 00:00:00	2021-02-26 00:00:00
AANA27AC090	542	2022-12-27 00:00:00	Success	2022-12-27 00:00:00	2022-12-28 00:00:00
CCPN20MO608	407	2022-04-12 00:00:00	Success	2022-04-12 00:00:00	2022-04-13 00:00:00
MIIA15MM596	11	2022-06-14 00:00:00	Success	2022-06-14 00:00:00	2022-06-15 00:00:00
CONP85IC278	231	2022-10-13 00:00:00	Success	2022-10-13 00:00:00	2022-10-14 00:00:00
MNOM52MO225	518	2022-07-20 00:00:00	Success	2022-07-20 00:00:00	2022-07-21 00:00:00
CAMC16AA801	567	2022-12-20 00:00:00	Canceled	2022-12-20 00:00:00	2022-12-20 00:00:00
CCIA97PN012	761	2021-06-15 00:00:00	Success	2021-06-15 00:00:00	2021-06-16 00:00:00
ACAN97AC770	390	2021-05-29 00:00:00	Success	2021-05-29 00:00:00	2021-05-30 00:00:00
CAAI01AP797	375	2022-03-30 00:00:00	Success	2022-03-30 00:00:00	2022-03-31 00:00:00
CAIA61PI288	734	2021-10-24 00:00:00	Success	2021-10-24 00:00:00	2021-10-25 00:00:00
IMAA55OP822	150	2021-12-05 00:00:00	Success	2021-12-05 00:00:00	2021-12-06 00:00:00
AACN38OO198	997	2022-12-02 00:00:00	Success	2022-12-02 00:00:00	2022-12-03 00:00:00
PAMO04CM511	241	2021-02-13 00:00:00	Success	2021-02-13 00:00:00	2021-02-14 00:00:00
AOAN65IA348	436	2021-07-07 00:00:00	Success	2021-07-07 00:00:00	2021-07-08 00:00:00
NIAP55AA813	496	2022-04-26 00:00:00	Success	2022-04-26 00:00:00	2022-04-27 00:00:00
NAAN82NA553	104	2021-04-11 00:00:00	Success	2021-04-11 00:00:00	2021-04-12 00:00:00
ACAP28II916	690	2022-11-21 00:00:00	Success	2022-11-21 00:00:00	2022-11-22 00:00:00
IMCA38CM036	38	2021-11-17 00:00:00	Canceled	2021-11-17 00:00:00	2021-11-17 00:00:00
CNAI63AN627	262	2021-07-30 00:00:00	Success	2021-07-30 00:00:00	2021-07-31 00:00:00
AACN29AA636	130	2021-11-06 00:00:00	Success	2021-11-06 00:00:00	2021-11-07 00:00:00
PMCC78CO611	556	2022-02-04 00:00:00	Success	2022-02-04 00:00:00	2022-02-05 00:00:00
NICM57AA041	62	2022-08-11 00:00:00	Success	2022-08-11 00:00:00	2022-08-12 00:00:00
MCPA60PP002	180	2021-03-11 00:00:00	Success	2021-03-11 00:00:00	2021-03-12 00:00:00
IANO19IO719	502	2022-08-05 00:00:00	Canceled	2022-08-05 00:00:00	2022-08-05 00:00:00
MNNN59AA631	508	2022-11-13 00:00:00	Success	2022-11-13 00:00:00	2022-11-14 00:00:00
IINP01MI766	136	2022-10-13 00:00:00	Canceled	2022-10-13 00:00:00	2022-10-13 00:00:00
PAOM85MA933	49	2022-11-28 00:00:00	Success	2022-11-28 00:00:00	2022-11-29 00:00:00
CONA86OM901	336	2021-10-23 00:00:00	Success	2021-10-23 00:00:00	2021-10-24 00:00:00
COIN66IN322	406	2022-08-24 00:00:00	Success	2022-08-24 00:00:00	2022-08-25 00:00:00
MAOI99IA780	931	2022-07-28 00:00:00	Success	2022-07-28 00:00:00	2022-07-29 00:00:00
INAP57MP433	686	2021-05-17 00:00:00	Success	2021-05-17 00:00:00	2021-05-18 00:00:00
ACPM37CC948	965	2022-01-30 00:00:00	Success	2022-01-30 00:00:00	2022-01-31 00:00:00
AAAA62PA275	577	2021-02-24 00:00:00	Success	2021-02-24 00:00:00	2021-02-25 00:00:00
ANAA24IM900	914	2021-04-08 00:00:00	Success	2021-04-08 00:00:00	2021-04-09 00:00:00
AIAP80CI159	742	2022-10-13 00:00:00	Success	2022-10-13 00:00:00	2022-10-14 00:00:00
PMAP21AA426	555	2022-08-10 00:00:00	Success	2022-08-10 00:00:00	2022-08-11 00:00:00
OACN87CC958	5	2021-01-21 00:00:00	Success	2021-01-21 00:00:00	2021-01-22 00:00:00
IAAA10CM953	749	2022-04-11 00:00:00	Success	2022-04-11 00:00:00	2022-04-12 00:00:00
NIAM41PO183	351	2021-01-09 00:00:00	Success	2021-01-09 00:00:00	2021-01-10 00:00:00
PAIC75IC232	283	2021-07-22 00:00:00	Success	2021-07-22 00:00:00	2021-07-23 00:00:00
IPAI82NA725	83	2022-02-08 00:00:00	Success	2022-02-08 00:00:00	2022-02-09 00:00:00
AIOA37PA954	271	2021-12-04 00:00:00	Success	2021-12-04 00:00:00	2021-12-05 00:00:00
MANC63CA752	967	2022-06-01 00:00:00	Success	2022-06-01 00:00:00	2022-06-02 00:00:00
IACO67CO294	960	2022-08-19 00:00:00	Success	2022-08-19 00:00:00	2022-08-20 00:00:00
MCNP77PP404	436	2021-03-05 00:00:00	Success	2021-03-05 00:00:00	2021-03-06 00:00:00
AIOC29AM238	147	2022-04-21 00:00:00	Success	2022-04-21 00:00:00	2022-04-22 00:00:00
MAAP70ON980	680	2022-07-08 00:00:00	Success	2022-07-08 00:00:00	2022-07-09 00:00:00
AAMO19OA842	242	2022-01-01 00:00:00	Success	2022-01-01 00:00:00	2022-01-02 00:00:00
CIAO11AN662	598	2022-11-29 00:00:00	Canceled	2022-11-29 00:00:00	2022-11-29 00:00:00
AAMM18PP999	260	2022-06-12 00:00:00	Success	2022-06-12 00:00:00	2022-06-13 00:00:00
AOAC96MM111	785	2022-10-11 00:00:00	Success	2022-10-11 00:00:00	2022-10-12 00:00:00
AMOO74NC332	940	2021-09-20 00:00:00	Success	2021-09-20 00:00:00	2021-09-21 00:00:00
AIAA65MM219	401	2021-09-12 00:00:00	Success	2021-09-12 00:00:00	2021-09-13 00:00:00
MMPN27CP146	487	2021-05-18 00:00:00	Success	2021-05-18 00:00:00	2021-05-19 00:00:00
AIPA83IP522	945	2021-09-12 00:00:00	Success	2021-09-12 00:00:00	2021-09-13 00:00:00
NNCN17OP693	612	2021-03-29 00:00:00	Success	2021-03-29 00:00:00	2021-03-30 00:00:00
CAMA71CM967	196	2022-03-31 00:00:00	Success	2022-03-31 00:00:00	2022-04-01 00:00:00
ANAO63AM580	970	2021-03-22 00:00:00	Success	2021-03-22 00:00:00	2021-03-23 00:00:00
IMAM34AC899	885	2022-01-29 00:00:00	Success	2022-01-29 00:00:00	2022-01-30 00:00:00
APOC24PP586	686	2021-10-08 00:00:00	Success	2021-10-08 00:00:00	2021-10-09 00:00:00
PAIA49MA715	481	2022-09-01 00:00:00	Success	2022-09-01 00:00:00	2022-09-02 00:00:00
OONI68OI748	525	2021-08-10 00:00:00	Canceled	2021-08-10 00:00:00	2021-08-10 00:00:00
MPOI84AA348	542	2021-06-17 00:00:00	Success	2021-06-17 00:00:00	2021-06-18 00:00:00
OPOA60MA880	766	2022-03-02 00:00:00	Success	2022-03-02 00:00:00	2022-03-03 00:00:00
IANO84PP952	289	2022-08-14 00:00:00	Success	2022-08-14 00:00:00	2022-08-15 00:00:00
MAIP03NA343	654	2021-03-08 00:00:00	Canceled	2021-03-08 00:00:00	2021-03-08 00:00:00
IACA14AP471	676	2022-07-05 00:00:00	Success	2022-07-05 00:00:00	2022-07-06 00:00:00
IACO32CP736	807	2021-08-04 00:00:00	Success	2021-08-04 00:00:00	2021-08-05 00:00:00
MNNO31AA318	697	2022-05-07 00:00:00	Success	2022-05-07 00:00:00	2022-05-08 00:00:00
MCNI95CC254	625	2021-04-17 00:00:00	Success	2021-04-17 00:00:00	2021-04-18 00:00:00
MNCP57AA123	668	2022-02-23 00:00:00	Success	2022-02-23 00:00:00	2022-02-24 00:00:00
AOII93OP571	345	2021-11-19 00:00:00	Success	2021-11-19 00:00:00	2021-11-20 00:00:00
IIAO23AA096	806	2022-04-19 00:00:00	Success	2022-04-19 00:00:00	2022-04-20 00:00:00
PNIM28NA777	568	2022-09-16 00:00:00	Success	2022-09-16 00:00:00	2022-09-17 00:00:00
IOCN45AA539	857	2021-05-07 00:00:00	Success	2021-05-07 00:00:00	2021-05-08 00:00:00
CNMP93AM907	739	2021-01-24 00:00:00	Success	2021-01-24 00:00:00	2021-01-25 00:00:00
AOOA45NI543	927	2021-10-15 00:00:00	Canceled	2021-10-15 00:00:00	2021-10-15 00:00:00
AOCP16PO076	745	2021-06-04 00:00:00	Canceled	2021-06-04 00:00:00	2021-06-04 00:00:00
IAIC14OO035	566	2022-01-27 00:00:00	Success	2022-01-27 00:00:00	2022-01-28 00:00:00
AOPO78CM500	920	2022-09-21 00:00:00	Success	2022-09-21 00:00:00	2022-09-22 00:00:00
IPPA86NM395	766	2022-05-16 00:00:00	Success	2022-05-16 00:00:00	2022-05-17 00:00:00
NCCA16CA898	618	2021-01-27 00:00:00	Success	2021-01-27 00:00:00	2021-01-28 00:00:00
AMAA69PA835	98	2021-07-05 00:00:00	Success	2021-07-05 00:00:00	2021-07-06 00:00:00
ACNP61OM167	589	2022-07-02 00:00:00	Success	2022-07-02 00:00:00	2022-07-03 00:00:00
MPOM79ON493	372	2021-09-11 00:00:00	Success	2021-09-11 00:00:00	2021-09-12 00:00:00
OOAI87MP503	231	2021-07-21 00:00:00	Success	2021-07-21 00:00:00	2021-07-22 00:00:00
ICCI20AO677	537	2021-01-22 00:00:00	Success	2021-01-22 00:00:00	2021-01-23 00:00:00
ACII85OO612	379	2021-02-06 00:00:00	Canceled	2021-02-06 00:00:00	2021-02-06 00:00:00
AAAN57AM079	719	2022-07-28 00:00:00	Success	2022-07-28 00:00:00	2022-07-29 00:00:00
OPCA75NI101	930	2021-02-15 00:00:00	Success	2021-02-15 00:00:00	2021-02-16 00:00:00
NAIP94NN411	955	2022-10-19 00:00:00	Canceled	2022-10-19 00:00:00	2022-10-19 00:00:00
IAAC50IP095	241	2021-04-27 00:00:00	Success	2021-04-27 00:00:00	2021-04-28 00:00:00
CNMA53CP990	243	2022-04-04 00:00:00	Success	2022-04-04 00:00:00	2022-04-05 00:00:00
OPPM95PN917	872	2022-02-24 00:00:00	Success	2022-02-24 00:00:00	2022-02-25 00:00:00
ACAM27MC988	718	2022-07-25 00:00:00	Success	2022-07-25 00:00:00	2022-07-26 00:00:00
OCIA52AN377	79	2021-08-27 00:00:00	Success	2021-08-27 00:00:00	2021-08-28 00:00:00
AAAC33AC550	54	2022-05-07 00:00:00	Success	2022-05-07 00:00:00	2022-05-08 00:00:00
NAPA02CA761	319	2022-01-18 00:00:00	Success	2022-01-18 00:00:00	2022-01-19 00:00:00
MINC80MP538	182	2022-12-01 00:00:00	Success	2022-12-01 00:00:00	2022-12-02 00:00:00
IANA51MO842	965	2022-01-08 00:00:00	Success	2022-01-08 00:00:00	2022-01-09 00:00:00
MAIA46CA344	925	2021-01-19 00:00:00	Success	2021-01-19 00:00:00	2021-01-20 00:00:00
AOMP38AN575	72	2022-05-23 00:00:00	Success	2022-05-23 00:00:00	2022-05-24 00:00:00
AIPC08OP605	843	2021-04-07 00:00:00	Success	2021-04-07 00:00:00	2021-04-08 00:00:00
AONM70AP350	336	2022-05-02 00:00:00	Success	2022-05-02 00:00:00	2022-05-03 00:00:00
IAAC74AP049	893	2021-08-21 00:00:00	Success	2021-08-21 00:00:00	2021-08-22 00:00:00
MPOA89OA259	190	2021-06-29 00:00:00	Success	2021-06-29 00:00:00	2021-06-30 00:00:00
AOAA67PC576	25	2022-02-18 00:00:00	Success	2022-02-18 00:00:00	2022-02-19 00:00:00
NCIM55CN918	971	2022-11-04 00:00:00	Success	2022-11-04 00:00:00	2022-11-05 00:00:00
CNPA64NN698	75	2022-07-01 00:00:00	Success	2022-07-01 00:00:00	2022-07-02 00:00:00
NIOM05CI520	420	2022-08-25 00:00:00	Success	2022-08-25 00:00:00	2022-08-26 00:00:00
MNAM83MP057	336	2022-11-15 00:00:00	Success	2022-11-15 00:00:00	2022-11-16 00:00:00
NACA00AM695	998	2022-06-27 00:00:00	Success	2022-06-27 00:00:00	2022-06-28 00:00:00
OACC69MP219	161	2021-06-30 00:00:00	Success	2021-06-30 00:00:00	2021-07-01 00:00:00
NIOC15OI480	261	2022-05-10 00:00:00	Success	2022-05-10 00:00:00	2022-05-11 00:00:00
CNPI61II530	291	2021-03-06 00:00:00	Success	2021-03-06 00:00:00	2021-03-07 00:00:00
NMON44AI133	969	2021-08-08 00:00:00	Success	2021-08-08 00:00:00	2021-08-09 00:00:00
PAAN65NP052	562	2021-05-04 00:00:00	Success	2021-05-04 00:00:00	2021-05-05 00:00:00
IOPC07MI962	664	2022-07-08 00:00:00	Success	2022-07-08 00:00:00	2022-07-09 00:00:00
CCPM72IO435	971	2022-01-31 00:00:00	Success	2022-01-31 00:00:00	2022-02-01 00:00:00
APMA15IA664	548	2022-04-06 00:00:00	Success	2022-04-06 00:00:00	2022-04-07 00:00:00
CMAC30AI709	958	2022-08-24 00:00:00	Success	2022-08-24 00:00:00	2022-08-25 00:00:00
MIIM02AO014	455	2021-11-30 00:00:00	Success	2021-11-30 00:00:00	2021-12-01 00:00:00
NCPC73OI003	1000	2022-06-18 00:00:00	Success	2022-06-18 00:00:00	2022-06-19 00:00:00
MCPC47MN462	88	2021-07-09 00:00:00	Success	2021-07-09 00:00:00	2021-07-10 00:00:00
CNOA52IM277	525	2021-02-04 00:00:00	Success	2021-02-04 00:00:00	2021-02-05 00:00:00
IPAM12OM601	386	2021-12-15 00:00:00	Success	2021-12-15 00:00:00	2021-12-16 00:00:00
ONII51AA650	837	2022-07-10 00:00:00	Success	2022-07-10 00:00:00	2022-07-11 00:00:00
ONOC29MN847	425	2022-12-12 00:00:00	Success	2022-12-12 00:00:00	2022-12-13 00:00:00
PONN53OA629	694	2022-12-10 00:00:00	Success	2022-12-10 00:00:00	2022-12-11 00:00:00
MAAN19ON504	808	2021-07-06 00:00:00	Success	2021-07-06 00:00:00	2021-07-07 00:00:00
CPMP65NO170	201	2022-06-09 00:00:00	Success	2022-06-09 00:00:00	2022-06-10 00:00:00
PIPA10PN160	903	2022-08-23 00:00:00	Success	2022-08-23 00:00:00	2022-08-24 00:00:00
ICMM98IA803	349	2022-02-22 00:00:00	Success	2022-02-22 00:00:00	2022-02-23 00:00:00
AINP60IN980	83	2022-02-16 00:00:00	Success	2022-02-16 00:00:00	2022-02-17 00:00:00
MCIO35CA385	154	2021-03-11 00:00:00	Success	2021-03-11 00:00:00	2021-03-12 00:00:00
NPIC10NO480	230	2021-04-17 00:00:00	Canceled	2021-04-17 00:00:00	2021-04-17 00:00:00
CANP44ON966	448	2022-07-03 00:00:00	Success	2022-07-03 00:00:00	2022-07-04 00:00:00
MCOC13CN851	789	2022-03-10 00:00:00	Success	2022-03-10 00:00:00	2022-03-11 00:00:00
MIIO36PP245	995	2022-06-14 00:00:00	Success	2022-06-14 00:00:00	2022-06-15 00:00:00
IACN75IM616	403	2022-04-23 00:00:00	Success	2022-04-23 00:00:00	2022-04-24 00:00:00
NNCI09CA913	722	2021-04-30 00:00:00	Success	2021-04-30 00:00:00	2021-05-01 00:00:00
ACOC47OC916	504	2021-12-13 00:00:00	Success	2021-12-13 00:00:00	2021-12-14 00:00:00
OAII42OM996	253	2021-06-14 00:00:00	Success	2021-06-14 00:00:00	2021-06-15 00:00:00
IMPP39OP007	484	2022-06-09 00:00:00	Canceled	2022-06-09 00:00:00	2022-06-09 00:00:00
CACA78CC067	446	2022-03-20 00:00:00	Success	2022-03-20 00:00:00	2022-03-21 00:00:00
AAAA62MA342	987	2021-07-27 00:00:00	Success	2021-07-27 00:00:00	2021-07-28 00:00:00
INIA75OA672	342	2021-06-03 00:00:00	Success	2021-06-03 00:00:00	2021-06-04 00:00:00
PIAN74MN243	767	2022-05-22 00:00:00	Canceled	2022-05-22 00:00:00	2022-05-22 00:00:00
ICPP93NN107	273	2022-07-03 00:00:00	Success	2022-07-03 00:00:00	2022-07-04 00:00:00
AMPI26AI676	708	2022-06-18 00:00:00	Success	2022-06-18 00:00:00	2022-06-19 00:00:00
APNI56AO035	688	2022-09-10 00:00:00	Success	2022-09-10 00:00:00	2022-09-11 00:00:00
CPPA18NP849	506	2021-10-12 00:00:00	Success	2021-10-12 00:00:00	2021-10-13 00:00:00
AAAA60AA825	828	2021-04-02 00:00:00	Success	2021-04-02 00:00:00	2021-04-03 00:00:00
CONM21PC177	440	2022-09-26 00:00:00	Success	2022-09-26 00:00:00	2022-09-27 00:00:00
NAMO18NA976	878	2022-02-03 00:00:00	Success	2022-02-03 00:00:00	2022-02-04 00:00:00
POOA73PI815	79	2022-05-29 00:00:00	Success	2022-05-29 00:00:00	2022-05-30 00:00:00
IAAP63MC340	1	2021-01-14 00:00:00	Success	2021-01-14 00:00:00	2021-01-15 00:00:00
PAII72NA767	899	2021-08-12 00:00:00	Success	2021-08-12 00:00:00	2021-08-13 00:00:00
NCAN95IA600	632	2021-02-05 00:00:00	Success	2021-02-05 00:00:00	2021-02-06 00:00:00
AACM54PA214	615	2021-09-02 00:00:00	Success	2021-09-02 00:00:00	2021-09-03 00:00:00
AAIO45MI964	716	2021-10-13 00:00:00	Success	2021-10-13 00:00:00	2021-10-14 00:00:00
ACOA49CA128	924	2021-09-22 00:00:00	Success	2021-09-22 00:00:00	2021-09-23 00:00:00
AMMA02MO582	600	2022-12-07 00:00:00	Success	2022-12-07 00:00:00	2022-12-08 00:00:00
ANAN90IO042	637	2021-01-23 00:00:00	Success	2021-01-23 00:00:00	2021-01-24 00:00:00
APIP68MN291	296	2022-03-07 00:00:00	Success	2022-03-07 00:00:00	2022-03-08 00:00:00
PNNC37IN892	130	2021-02-25 00:00:00	Success	2021-02-25 00:00:00	2021-02-26 00:00:00
NIIN45IO289	414	2022-05-23 00:00:00	Success	2022-05-23 00:00:00	2022-05-24 00:00:00
ICPI99IC837	813	2021-11-04 00:00:00	Success	2021-11-04 00:00:00	2021-11-05 00:00:00
OCPI73IP320	738	2021-09-12 00:00:00	Success	2021-09-12 00:00:00	2021-09-13 00:00:00
MOIO79IO183	885	2021-04-08 00:00:00	Success	2021-04-08 00:00:00	2021-04-09 00:00:00
IAOP49OO190	892	2021-04-17 00:00:00	Success	2021-04-17 00:00:00	2021-04-18 00:00:00
PAIC42OC351	32	2022-09-12 00:00:00	Canceled	2022-09-12 00:00:00	2022-09-12 00:00:00
OCCC60PA845	171	2022-05-01 00:00:00	Success	2022-05-01 00:00:00	2022-05-02 00:00:00
ANAC12CN309	201	2022-04-08 00:00:00	Success	2022-04-08 00:00:00	2022-04-09 00:00:00
PCPP02MA307	669	2021-03-01 00:00:00	Success	2021-03-01 00:00:00	2021-03-02 00:00:00
AOPM57OO937	183	2022-09-13 00:00:00	Success	2022-09-13 00:00:00	2022-09-14 00:00:00
CAPO39CO848	654	2021-07-22 00:00:00	Canceled	2021-07-22 00:00:00	2021-07-22 00:00:00
NPAN77IC461	492	2022-09-11 00:00:00	Success	2022-09-11 00:00:00	2022-09-12 00:00:00
PAAA97IN357	530	2021-11-13 00:00:00	Success	2021-11-13 00:00:00	2021-11-14 00:00:00
CMAO11NA836	995	2022-12-03 00:00:00	Success	2022-12-03 00:00:00	2022-12-04 00:00:00
OOAO15MA764	923	2022-02-24 00:00:00	Success	2022-02-24 00:00:00	2022-02-25 00:00:00
MPNO53MA018	264	2022-10-27 00:00:00	Success	2022-10-27 00:00:00	2022-10-28 00:00:00
ICCA26PA446	565	2022-11-21 00:00:00	Success	2022-11-21 00:00:00	2022-11-22 00:00:00
OOCO99CN016	41	2021-04-06 00:00:00	Success	2021-04-06 00:00:00	2021-04-07 00:00:00
MMAA59MN171	324	2021-02-05 00:00:00	Success	2021-02-05 00:00:00	2021-02-06 00:00:00
AMCA83IP860	368	2022-02-08 00:00:00	Success	2022-02-08 00:00:00	2022-02-09 00:00:00
PNCC22NC876	126	2021-12-10 00:00:00	Success	2021-12-10 00:00:00	2021-12-11 00:00:00
CIPN86AN200	903	2022-09-21 00:00:00	Canceled	2022-09-21 00:00:00	2022-09-21 00:00:00
ACAO60MO080	428	2021-11-24 00:00:00	Success	2021-11-24 00:00:00	2021-11-25 00:00:00
POCP92CA950	376	2022-05-15 00:00:00	Success	2022-05-15 00:00:00	2022-05-16 00:00:00
CPMO90NP025	314	2022-10-26 00:00:00	Success	2022-10-26 00:00:00	2022-10-27 00:00:00
POAP27IN761	942	2021-07-29 00:00:00	Success	2021-07-29 00:00:00	2021-07-30 00:00:00
NAIO11IN274	111	2021-03-19 00:00:00	Success	2021-03-19 00:00:00	2021-03-20 00:00:00
MIPP86AN952	416	2022-12-17 00:00:00	Success	2022-12-17 00:00:00	2022-12-18 00:00:00
NOPM05OO598	683	2022-11-27 00:00:00	Success	2022-11-27 00:00:00	2022-11-28 00:00:00
MNIA76OM154	925	2022-09-28 00:00:00	Success	2022-09-28 00:00:00	2022-09-29 00:00:00
ANOA72AO379	281	2022-03-21 00:00:00	Success	2022-03-21 00:00:00	2022-03-22 00:00:00
IMCA46AA762	69	2021-08-12 00:00:00	Success	2021-08-12 00:00:00	2021-08-13 00:00:00
CAIN67CO563	591	2022-03-31 00:00:00	Success	2022-03-31 00:00:00	2022-04-01 00:00:00
NAAN91IA048	10	2022-01-08 00:00:00	Success	2022-01-08 00:00:00	2022-01-09 00:00:00
OAMP33AA556	400	2021-03-16 00:00:00	Success	2021-03-16 00:00:00	2021-03-17 00:00:00
AACC23PM727	53	2021-08-17 00:00:00	Success	2021-08-17 00:00:00	2021-08-18 00:00:00
PAAC79AA513	649	2022-07-15 00:00:00	Success	2022-07-15 00:00:00	2022-07-16 00:00:00
NANI75AO647	53	2022-12-16 00:00:00	Success	2022-12-16 00:00:00	2022-12-17 00:00:00
OAOM52AO054	413	2021-11-30 00:00:00	Success	2021-11-30 00:00:00	2021-12-01 00:00:00
OIAA31MC224	388	2021-07-18 00:00:00	Success	2021-07-18 00:00:00	2021-07-19 00:00:00
MMIA00IO947	870	2022-04-09 00:00:00	Success	2022-04-09 00:00:00	2022-04-10 00:00:00
PNCP64OO071	665	2022-04-21 00:00:00	Canceled	2022-04-21 00:00:00	2022-04-21 00:00:00
PNIN60AI917	603	2022-12-10 00:00:00	Success	2022-12-10 00:00:00	2022-12-11 00:00:00
CMMI73CM809	792	2021-07-24 00:00:00	Success	2021-07-24 00:00:00	2021-07-25 00:00:00
MPII65CO707	761	2022-05-24 00:00:00	Success	2022-05-24 00:00:00	2022-05-25 00:00:00
OCAI48AI857	540	2021-08-27 00:00:00	Success	2021-08-27 00:00:00	2021-08-28 00:00:00
CAIO70AN784	518	2022-07-26 00:00:00	Success	2022-07-26 00:00:00	2022-07-27 00:00:00
COAN18PN127	337	2021-11-29 00:00:00	Success	2021-11-29 00:00:00	2021-11-30 00:00:00
AIIA82AM795	481	2022-10-27 00:00:00	Success	2022-10-27 00:00:00	2022-10-28 00:00:00
CCCP76IO123	678	2022-02-08 00:00:00	Success	2022-02-08 00:00:00	2022-02-09 00:00:00
MACI36CP463	455	2022-04-15 00:00:00	Canceled	2022-04-15 00:00:00	2022-04-15 00:00:00
PNAN02MP197	923	2021-07-07 00:00:00	Canceled	2021-07-07 00:00:00	2021-07-07 00:00:00
AIAN62IA923	926	2021-06-22 00:00:00	Success	2021-06-22 00:00:00	2021-06-23 00:00:00
MACP51IN778	253	2022-02-24 00:00:00	Success	2022-02-24 00:00:00	2022-02-25 00:00:00
APMM54OP955	181	2022-09-23 00:00:00	Success	2022-09-23 00:00:00	2022-09-24 00:00:00
NMII48NI651	722	2021-06-24 00:00:00	Success	2021-06-24 00:00:00	2021-06-25 00:00:00
COOC58NA784	151	2022-09-27 00:00:00	Success	2022-09-27 00:00:00	2022-09-28 00:00:00
NMNA61OM567	1	2021-02-06 00:00:00	Success	2021-02-06 00:00:00	2021-02-07 00:00:00
AANA44AN436	639	2021-04-24 00:00:00	Success	2021-04-24 00:00:00	2021-04-25 00:00:00
IAAC58MO380	529	2022-10-10 00:00:00	Success	2022-10-10 00:00:00	2022-10-11 00:00:00
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (product_id, name, subcategory_id, price, stock, created_at, updated_at) FROM stdin;
B07JW9H4J1	Wayona Nylon Braided USB to Lightning Fast Charging and Data Sync Cable Compatible for iPhone 13, 12,11, X, 8, 7, 6, 5, iPad Air, Pro, Mini (3 FT Pack of 1, Grey)	1	1099.00	218	2021-01-01 00:00:00	2021-01-01 00:00:00
B098NS6PVG	Ambrane Unbreakable 60W / 3A Fast Charging 1.5m Braided Type C Cable for Smartphones, Tablets, Laptops & other Type C devices, PD Technology, 480Mbps Data Sync, Quick Charge 3.0 (RCT15A, Black)	1	349.00	242	2021-01-01 00:00:00	2021-01-01 00:00:00
B096MSW6CT	Sounce Fast Phone Charging Cable & Data Sync USB Cable Compatible for iPhone 13, 12,11, X, 8, 7, 6, 5, iPad Air, Pro, Mini & iOS Devices	1	1899.00	137	2021-01-01 00:00:00	2021-01-01 00:00:00
B08HDJ86NZ	boAt Deuce USB 300 2 in 1 Type-C & Micro USB Stress Resistant, Tangle-Free, Sturdy Cable with 3A Fast Charging & 480mbps Data Transmission, 10000+ Bends Lifespan and Extended 1.5m Length(Martian Red)	1	699.00	107	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CF3B7N1	Portronics Konnect L 1.2M Fast Charging 3A 8 Pin USB Cable with Charge & Sync Function for iPhone, iPad (Grey)	1	399.00	241	2021-01-01 00:00:00	2021-01-01 00:00:00
B08Y1TFSP6	pTron Solero TB301 3A Type-C Data and Fast Charging Cable, Made in India, 480Mbps Data Sync, Strong and Durable 1.5-Meter Nylon Braided USB Cable for Type-C Devices for Charging Adapter (Black)	1	1000.00	206	2021-01-01 00:00:00	2021-01-01 00:00:00
B08WRWPM22	boAt Micro USB 55 Tangle-free, Sturdy Micro USB Cable with 3A Fast Charging & 480mbps Data Transmission (Black)	1	499.00	98	2021-01-01 00:00:00	2021-01-01 00:00:00
B08DDRGWTJ	MI Usb Type-C Cable Smartphone (Black)	1	299.00	113	2021-01-01 00:00:00	2021-01-01 00:00:00
B008IFXQFU	TP-Link USB WiFi Adapter for PC(TL-WN725N), N150 Wireless Network Adapter for Desktop - Nano Size WiFi Dongle Compatible with Windows 11/10/7/8/8.1/XP/ Mac OS 10.9-10.15 Linux Kernel 2.6.18-4.4.3	2	999.00	298	2021-01-01 00:00:00	2021-01-01 00:00:00
B082LZGK39	Ambrane Unbreakable 60W / 3A Fast Charging 1.5m Braided Micro USB Cable for Smartphones, Tablets, Laptops & Other Micro USB Devices, 480Mbps Data Sync, Quick Charge 3.0 (RCM15, Black)	1	299.00	253	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CF3D7QR	Portronics Konnect L POR-1081 Fast Charging 3A Type-C Cable 1.2Meter with Charge & Sync Function for All Type-C Devices (Grey)	1	339.00	123	2021-01-01 00:00:00	2021-01-01 00:00:00
B0789LZTCJ	boAt Rugged v3 Extra Tough Unbreakable Braided Micro USB Cable 1.5 Meter (Black)	1	799.00	81	2021-01-01 00:00:00	2021-01-01 00:00:00
B07KSMBL2H	AmazonBasics Flexible Premium HDMI Cable (Black, 4K@60Hz, 18Gbps), 3-Foot	3	700.00	57	2021-01-01 00:00:00	2021-01-01 00:00:00
B085DTN6R2	Portronics Konnect CL 20W POR-1067 Type-C to 8 Pin USB 1.2M Cable with Power Delivery & 3A Quick Charge Support, Nylon Braided for All Type-C and 8 Pin Devices, Green	1	899.00	256	2021-01-01 00:00:00	2021-01-01 00:00:00
B09KLVMZ3B	Portronics Konnect L 1.2M POR-1401 Fast Charging 3A 8 Pin USB Cable with Charge & Sync Function (White)	1	399.00	124	2021-01-01 00:00:00	2021-01-01 00:00:00
B083342NKJ	MI Braided USB Type-C Cable for Charging Adapter (Red)	1	399.00	198	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B6F7LX4C	MI 80 cm (32 inches) 5A Series HD Ready Smart Android LED TV L32M7-5AIN (Black)	4	24999.00	204	2021-01-01 00:00:00	2021-01-01 00:00:00
B082LSVT4B	Ambrane Unbreakable 60W / 3A Fast Charging 1.5m Braided Type C to Type C Cable for Smartphones, Tablets, Laptops & Other Type C Devices, PD Technology, 480Mbps Data Sync (RCTT15, Black)	1	399.00	133	2021-01-01 00:00:00	2021-01-01 00:00:00
B08WRBG3XW	boAt Type C A325 Tangle-free, Sturdy Type C Cable with 3A Rapid Charging & 480mbps Data Transmission(Black)	1	499.00	284	2021-01-01 00:00:00	2021-01-01 00:00:00
B08DPLCM6T	LG 80 cm (32 inches) HD Ready Smart LED TV 32LM563BPTC (Dark Iron Gray)	4	21990.00	261	2021-01-01 00:00:00	2021-01-01 00:00:00
B09C6HXFC1	Duracell USB Lightning Apple Certified (Mfi) Braided Sync & Charge Cable For Iphone, Ipad And Ipod. Fast Charging Lightning Cable, 3.9 Feet (1.2M) - Black	1	1799.00	145	2021-01-01 00:00:00	2021-01-01 00:00:00
B085194JFL	tizum HDMI to VGA Adapter Cable 1080P for Projector, Computer, Laptop, TV, Projectors & TV	3	499.00	213	2021-01-01 00:00:00	2021-01-01 00:00:00
B09F6S8BT6	Samsung 80 cm (32 Inches) Wondertainment Series HD Ready LED Smart TV UA32T4340BKXXL (Glossy Black)	4	22900.00	292	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NHVCHS9	Flix Micro Usb Cable For Smartphone (Black)	1	199.00	150	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B1YVCJ2Y	Acer 80 cm (32 inches) I Series HD Ready Android Smart LED TV AR32AR2841HDFL (Black)	4	19990.00	191	2021-01-01 00:00:00	2021-01-01 00:00:00
B01M4GGIVU	Tizum High Speed HDMI Cable with Ethernet | Supports 3D 4K | for All HDMI Devices Laptop Computer Gaming Console TV Set Top Box (1.5 Meter/ 5 Feet)	3	699.00	253	2021-01-01 00:00:00	2021-01-01 00:00:00
B08B42LWKN	OnePlus 80 cm (32 inches) Y Series HD Ready LED Smart Android TV 32Y1 (Black)	4	19999.00	261	2021-01-01 00:00:00	2021-01-01 00:00:00
B094JNXNPV	Ambrane Unbreakable 3 in 1 Fast Charging Braided Multipurpose Cable for Speaker with 2.1 A Speed - 1.25 meter, Black	1	399.00	140	2021-01-01 00:00:00	2021-01-01 00:00:00
B09W5XR9RT	Duracell USB C To Lightning Apple Certified (Mfi) Braided Sync & Charge Cable For Iphone, Ipad And Ipod. Fast Charging Lightning Cable, 3.9 Feet (1.2M) - Black	1	1999.00	264	2021-01-01 00:00:00	2021-01-01 00:00:00
B077Z65HSD	boAt A400 USB Type-C to USB-A 2.0 Male Data Cable, 2 Meter (Black)	1	999.00	166	2021-01-01 00:00:00	2021-01-01 00:00:00
B00NH11PEY	AmazonBasics USB 2.0 - A-Male to A-Female Extension Cable for Personal Computer, Printer (Black, 9.8 Feet/3 Meters)	1	750.00	61	2021-01-01 00:00:00	2021-01-01 00:00:00
B09CMM3VGK	Ambrane 60W / 3A Type C Fast Charging Unbreakable 1.5m L Shaped Braided Cable, PD Technology, 480Mbps Data Transfer for Smartphones, Tablet, Laptops & other type c devices (ABLC10, Black)	1	499.00	93	2021-01-01 00:00:00	2021-01-01 00:00:00
B08QSC1XY8	Zoul USB C 60W Fast Charging 3A 6ft/2M Long Type C Nylon Braided Data Cable Quick Charger Cable QC 3.0 for Samsung Galaxy M31S M30 S10 S9 S20 Plus, Note 10 9 8, A20e A40 A50 A70 (2M, Grey)	1	1099.00	64	2021-01-01 00:00:00	2021-01-01 00:00:00
B008FWZGSG	Samsung Original Type C to C Cable - 3.28 Feet (1 Meter), White	1	599.00	148	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4HJNPV4	pTron Solero T351 3.5Amps Fast Charging Type-C to Type-C PD Data & Charging USB Cable, Made in India, 480Mbps Data Sync, Durable 1 Meter Long Cable for Type-C Smartphones, Tablets & Laptops (Black)	1	999.00	215	2021-01-01 00:00:00	2021-01-01 00:00:00
B08Y1SJVV5	pTron Solero MB301 3A Micro USB Data & Charging Cable, Made in India, 480Mbps Data Sync, Strong & Durable 1.5-Meter Nylon Braided USB Cable for Micro USB Devices - (Black)	1	666.66	177	2021-01-01 00:00:00	2021-01-01 00:00:00
B07XLCFSSN	Amazonbasics Nylon Braided Usb-C To Lightning Cable, Fast Charging Mfi Certified Smartphone, Iphone Charger (6-Foot, Dark Grey)	1	1900.00	59	2021-01-01 00:00:00	2021-01-01 00:00:00
B09RZS1NQT	Sounce 65W OnePlus Dash Warp Charge Cable, 6.5A Type-C to USB C PD Data Sync Fast Charging Cable Compatible with One Plus 8T/ 9/ 9R/ 9 pro/ 9RT/ 10R/ Nord & for All Type C Devices – Red, 1 Meter	1	999.00	253	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3MMYHYW	OnePlus 126 cm (50 inches) Y Series 4K Ultra HD Smart Android LED TV 50Y1S Pro (Black)	4	45999.00	232	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YDFKJF8	Nokia 105 Plus Single SIM, Keypad Mobile Phone with Wireless FM Radio, Memory Card Slot and MP3 Player | Charcoal	24	1699.00	118	2021-01-01 00:00:00	2021-01-01 00:00:00
B09C6HWG18	Duracell Type C To Type C 5A (100W) Braided Sync & Fast Charging Cable, 3.9 Feet (1.2M). USB C to C Cable, Supports PD & QC 3.0 Charging, 5 GBPS Data Transmission – Black	1	1999.00	171	2021-01-01 00:00:00	2021-01-01 00:00:00
B00NH11KIK	AmazonBasics USB 2.0 Cable - A-Male to B-Male - for Personal Computer, Printer- 6 Feet (1.8 Meters), Black	1	695.00	140	2021-01-01 00:00:00	2021-01-01 00:00:00
B09JPC82QC	Mi 108 cm (43 inches) Full HD Android LED TV 4C | L43M6-INC (Black)	4	34999.00	117	2021-01-01 00:00:00	2021-01-01 00:00:00
B07JW1Y6XV	Wayona Nylon Braided 3A Lightning to USB A Syncing and Fast Charging Data Cable for iPhone, Ipad (3 FT Pack of 1, Black)	1	1099.00	137	2021-01-01 00:00:00	2021-01-01 00:00:00
B07KRCW6LZ	TP-Link Nano AC600 USB Wi-Fi Adapter(Archer T2U Nano)- 2.4G/5G Dual Band Wireless Network Adapter for PC Desktop Laptop, Mini Travel Size, Supports Windows 11,10, 8.1, 8, 7, XP/Mac OS 10.9-10.15	2	1599.00	289	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NJN8L25	FLiX (Beetel USB to Micro USB PVC Data Sync & 2A Fast Charging Cable, Made in India, 480Mbps Data Sync, Solid Cable, 1 Meter Long USB Cable for Micro USB Devices (White)(XCD-M11)	1	199.00	53	2021-01-01 00:00:00	2021-01-01 00:00:00
B07XJYYH7L	Wecool Nylon Braided Multifunction Fast Charging Cable For Android Smartphone, Ios And Type C Usb Devices, 3 In 1 Charging Cable, 3A, (3 Feet) (Black)	1	999.00	73	2021-01-01 00:00:00	2021-01-01 00:00:00
B002PD61Y4	D-Link DWA-131 300 Mbps Wireless Nano USB Adapter (Black)	2	1208.00	52	2021-01-01 00:00:00	2021-01-01 00:00:00
B014I8SSD0	Amazon Basics High-Speed HDMI Cable, 6 Feet - Supports Ethernet, 3D, 4K video,Black	3	475.00	66	2021-01-01 00:00:00	2021-01-01 00:00:00
B09L8DSSFH	7SEVEN® Compatible for Samsung Smart 4K Ultra HD TV Monitor Remote Control Replacement of Original Samsung TV Remote for LED OLED UHD QLED and Suitable for 6 7 8 Series Samsung TV with Hot Keys BN59-01259E	5	999.00	101	2021-01-01 00:00:00	2021-01-01 00:00:00
B07232M876	Amazonbasics Micro Usb Fast Charging Cable For Android Smartphone,Personal Computer,Printer With Gold Plated Connectors (6 Feet, Black)	1	395.00	250	2021-01-01 00:00:00	2021-01-01 00:00:00
B07P681N66	TP-Link AC600 600 Mbps WiFi Wireless Network USB Adapter for Desktop PC with 2.4GHz/5GHz High Gain Dual Band 5dBi Antenna Wi-Fi, Supports Windows 11/10/8.1/8/7/XP, Mac OS 10.15 and earlier (Archer T2U Plus)	2	2199.00	266	2021-01-01 00:00:00	2021-01-01 00:00:00
B0711PVX6Z	AmazonBasics Micro USB Fast Charging Cable for Android Phones with Gold Plated Connectors (3 Feet, Black)	1	500.00	264	2021-01-01 00:00:00	2021-01-01 00:00:00
B082T6V3DT	AmazonBasics New Release Nylon USB-A to Lightning Cable Cord, Fast Charging MFi Certified Charger for Apple iPhone, iPad (6-Ft, Rose Gold)	1	2100.00	273	2021-01-01 00:00:00	2021-01-01 00:00:00
B07MKFNHKG	VW 80 cm (32 inches) Frameless Series HD Ready LED TV VW32A (Black)	6	12999.00	197	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BFWGBX61	Ambrane Unbreakable 3A Fast Charging Braided Type C Cable    1.5 Meter (RCT15, Blue) Supports QC 2.0/3.0 Charging	1	349.00	181	2021-01-01 00:00:00	2021-01-01 00:00:00
B01N90RZ4M	Tata Sky Universal Remote	5	499.00	53	2021-01-01 00:00:00	2021-01-01 00:00:00
B0088TKTY2	TP-LINK WiFi Dongle 300 Mbps Mini Wireless Network USB Wi-Fi Adapter for PC Desktop Laptop(Supports Windows 11/10/8.1/8/7/XP, Mac OS 10.9-10.15 and Linux, WPS, Soft AP Mode, USB 2.0) (TL-WN823N),Black	2	1399.00	106	2021-01-01 00:00:00	2021-01-01 00:00:00
B09Q5SWVBJ	OnePlus 80 cm (32 inches) Y Series HD Ready Smart Android LED TV 32 Y1S (Black)	4	21999.00	63	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4DT8MKT	Wecool Unbreakable 3 in 1 Charging Cable with 3A Speed, Fast Charging Multi Purpose Cable 1.25 Mtr Long, Type C cable, Micro Usb Cable and Cable for iPhone, White	1	1499.00	150	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CDKQ8T6	Portronics Konnect L 1.2Mtr, Fast Charging 3A Micro USB Cable with Charge & Sync Function (Grey)	1	349.00	104	2021-01-01 00:00:00	2021-01-01 00:00:00
B07B275VN9	Airtel DigitalTV DTH Television, Setup Box Remote Compatible for SD and HD Recording (Black)	5	799.00	231	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B15CPR37	Samsung 108 cm (43 inches) Crystal 4K Neo Series Ultra HD Smart LED TV UA43AUE65AKXXL (Black)	4	47900.00	293	2021-01-01 00:00:00	2021-01-01 00:00:00
B0994GFWBH	Lapster 1.5 mtr USB 2.0 Type A Male to USB A Male Cable for computer and laptop	1	999.00	218	2021-01-01 00:00:00	2021-01-01 00:00:00
B01GGKZ0V6	AmazonBasics USB Type-C to USB Type-C 2.0 Cable - 3 Feet Laptop (0.9 Meters) - White	1	845.00	111	2021-01-01 00:00:00	2021-01-01 00:00:00
B09F9YQQ7B	Redmi 80 cm (32 inches) Android 11 Series HD Ready Smart LED TV | L32M6-RA/L32M7-RA (Black)	4	24999.00	283	2021-01-01 00:00:00	2021-01-01 00:00:00
B014I8SX4Y	Amazon Basics High-Speed HDMI Cable, 6 Feet (2-Pack),Black	3	1400.00	284	2021-01-01 00:00:00	2021-01-01 00:00:00
B09Q8HMKZX	Portronics Konnect L 20W PD Quick Charge Type-C to 8-Pin USB Mobile Charging Cable, 1.2M, Tangle Resistant, Fast Data Sync(Grey)	1	699.00	116	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B9XN9S3W	Acer 80 cm (32 inches) N Series HD Ready TV AR32NSV53HD (Black)	6	14990.00	65	2021-01-01 00:00:00	2021-01-01 00:00:00
B07966M8XH	Model-P4 6 Way Swivel Tilt Wall Mount 32-55-inch Full Motion Cantilever for LED,LCD and Plasma TV's	7	2999.00	121	2021-01-01 00:00:00	2021-01-01 00:00:00
B01GGKYKQM	Amazon Basics USB Type-C to USB-A 2.0 Male Fast Charging Cable for Laptop - 3 Feet (0.9 Meters), Black	1	700.00	118	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B86CDHL1	oraimo 65W Type C to C Fast Charging Cable USB C to USB C Cable High Speed Syncing, Nylon Braided 1M length with LED Indicator Compatible For Laptop, Macbook, Samsung Galaxy S22 S20 S10 S20Fe S21 S21 Ultra A70 A51 A71 A50S M31 M51 M31S M53 5G	1	899.00	68	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B5ZF3NRK	CEDO 65W OnePlus Dash Warp Charge Cable, USB A to Type C Data Sync Fast Charging Cable Compatible with One Plus 3 /3T /5 /5T /6 /6T /7 /7T /7 pro & for All Type C Devices - 1 Meter, Red	1	599.00	217	2021-01-01 00:00:00	2021-01-01 00:00:00
B09RFC46VP	Redmi 108 cm (43 inches) 4K Ultra HD Android Smart LED TV X43 | L43R7-7AIN (Black)	4	42999.00	99	2021-01-01 00:00:00	2021-01-01 00:00:00
B08R69VDHT	Pinnaclz Original Combo of 2 Micro USB Fast Charging Cable, USB Charging Cable for Data Transfer Perfect for Android Smart Phones White 1.2 Meter Made in India (Pack of 2)	1	499.00	239	2021-01-01 00:00:00	2021-01-01 00:00:00
B09RWZRCP1	boAt Type C A750 Stress Resistant, Tangle-free, Sturdy Flat Cable with 6.5A Fast Charging & 480Mbps Data Transmission, 10000+ Bends Lifespan and Extended 1.5m Length(Rebellious Black)	1	999.00	285	2021-01-01 00:00:00	2021-01-01 00:00:00
B09CMP1SC8	Ambrane 2 in 1 Type-C & Micro USB Cable with 60W / 3A Fast Charging, 480 mbps High Data, PD Technology & Quick Charge 3.0, Compatible with All Type-C & Micro USB Devices (ABDC-10, Black)	1	499.00	188	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YLXYP7Y	Ambrane 60W / 3A Fast Charging Output Cable with Type-C to USB for Mobile, Neckband, True Wireless Earphone Charging, 480mbps Data Sync Speed, 1m Length (ACT - AZ10, Black)	1	399.00	165	2021-01-01 00:00:00	2021-01-01 00:00:00
B09ZPM4C2C	TCL 80 cm (32 inches) HD Ready Certified Android Smart LED TV 32S5205 (Black)	4	30990.00	60	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B2DJDCPX	SWAPKART Fast Charging Cable and Data Sync USB Cable Compatible for iPhone 6/6S/7/7+/8/8+/10/11, 12, 13 Pro max iPad Air/Mini, iPod and iOS Devices (White)	1	499.00	116	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BCZCQTJX	Firestick Remote	5	3999.00	177	2021-01-01 00:00:00	2021-01-01 00:00:00
B07LGT55SJ	Wayona Usb Nylon Braided Data Sync And Charging Cable For Iphone, Ipad Tablet (Red, Black)	1	1099.00	69	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NKZXMWJ	Flix (Beetel) Usb To Type C Pvc Data Sync And 2A 480Mbps Data Sync, Tough Fast Charging Long Cable For Usb Type C Devices, Charging Adapter (White, 1 Meter) - Xcd-C12	1	249.00	269	2021-01-01 00:00:00	2021-01-01 00:00:00
B08QX1CC14	SKYWALL 81.28 cm (32 inches) HD Ready Smart LED TV 32SWELS-PRO (Black)	4	19125.00	171	2021-01-01 00:00:00	2021-01-01 00:00:00
B0974H97TJ	boAt A 350 Type C Cable for Smartphone, Charging Adapter (1.5m, Carbon Black)	1	799.00	256	2021-01-01 00:00:00	2021-01-01 00:00:00
B07GVGTSLN	Wayona Usb Type C Fast Charger Cable Fast Charging Usb C Cable/Cord Compatible For Samsung Galaxy S10E S10 S9 S8 Plus S10+,Note 10 Note 9 Note 8,S20,M31S,M40,Realme X3,Pixel 2 Xl (3 Ft Pack Of 1,Grey)	1	1299.00	70	2021-01-01 00:00:00	2021-01-01 00:00:00
B09VCHLSJF	OnePlus 108 cm (43 inches) Y Series 4K Ultra HD Smart Android LED TV 43Y1S Pro (Black)	4	39999.00	249	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B1YZX72F	Acer 127 cm (50 inches) I Series 4K Ultra HD Android Smart LED TV AR50AR2851UDFL (Black)	4	40990.00	230	2021-01-01 00:00:00	2021-01-01 00:00:00
B092BJMT8Q	Samsung 108 cm (43 inches) Crystal 4K Series Ultra HD Smart LED TV UA43AUE60AKLXL (Black)	4	52900.00	282	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BMXMLSMM	Lapster 65W compatible for OnePlus Dash Warp Charge Cable , type c to c cable fast charging Data Sync Cable Compatible with One Plus 10R / 9RT/ 9 pro/ 9R/ 8T/ 9/ Nord & for All Type C Devices – Red, 1 Meter	1	999.00	195	2021-01-01 00:00:00	2021-01-01 00:00:00
B07JH1C41D	Wayona Nylon Braided (2 Pack) Lightning Fast Usb Data Cable Fast Charger Cord For Iphone, Ipad Tablet (3 Ft Pack Of 2, Grey)	1	1999.00	97	2021-01-01 00:00:00	2021-01-01 00:00:00
B0141EZMAI	Gizga Essentials USB WiFi Adapter for PC, 150 Mbps Wireless Network Adapter for Desktop - Nano Size WiFi Dongle Compatible with Windows, Mac OS & Linux Kernel | WPA/WPA2 Encryption Standards| Black	2	800.00	154	2021-01-01 00:00:00	2021-01-01 00:00:00
B09Q5P2MT3	OnePlus 108 cm (43 inches) Y Series Full HD Smart Android LED TV 43 Y1S (Black)	4	31999.00	239	2021-01-01 00:00:00	2021-01-01 00:00:00
B08HDH26JX	boAt Deuce USB 300 2 in 1 Type-C & Micro USB Stress Resistant, Sturdy Cable with 3A Fast Charging & 480mbps Data Transmission, 10000+ Bends Lifespan and Extended 1.5m Length(Mercurial Black)	1	699.00	193	2021-01-01 00:00:00	2021-01-01 00:00:00
B09VT6JKRP	Lapster USB 3.0 A to Micro B SuperSpeed for hard disk cable - short cable	1	999.00	134	2021-01-01 00:00:00	2021-01-01 00:00:00
B09T3KB6JZ	TCL 100 cm (40 inches) Full HD Certified Android R Smart LED TV 40S6505 (Black)	4	40990.00	282	2021-01-01 00:00:00	2021-01-01 00:00:00
B093QCY6YJ	ZEBRONICS ZEB-USB150WF1 WiFi USB Mini Adapter Supports 150 Mbps Wireless Data, Comes with Advanced Security WPA/WPA2 encryption Standards	2	349.00	214	2021-01-01 00:00:00	2021-01-01 00:00:00
B093ZNQZ2Y	LOHAYA Remote Compatible for Mi Smart LED TV 4A Remote Control (32"/43") [ Compatible for Mi Tv Remote Control ] [ Compatible for Mi Smart LED Tv Remote Control ]	5	799.00	88	2021-01-01 00:00:00	2021-01-01 00:00:00
B08LKS3LSP	Gilary Multi Charging Cable, 3 in 1 Nylon Braided Fast Charging Cable for iPhone Micro USB Type C Mobile Phone | Colour May Vary |	1	999.00	278	2021-01-01 00:00:00	2021-01-01 00:00:00
B00V4BGDKU	TP-Link UE300 USB 3.0 to RJ45 Gigabit Ethernet Network Adapter - Plug and Play	2	1899.00	221	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CHKQ8D4	Wayona Type C to Lightning MFI Certified 20W Fast charging Nylon Braided USB C Cable for iPhone 14, 14 Pro, 14 Pro Max, 14 Plus, 13, 13 Pro, 13 Pro Max, 13 Mini, 12, 12 Pro, 11, 11 Pro Max iPhone 12 Mini, X, 8 (2M, Grey)	1	1499.00	263	2021-01-01 00:00:00	2021-01-01 00:00:00
B09BW334ML	Dealfreez Case Compatible with Fire TV Stick 3rd Gen 2021 Full Wrap Silicone Remote Cover Anti-Lost with Loop (D-Black)	5	1499.00	145	2021-01-01 00:00:00	2021-01-01 00:00:00
B082T6GVLJ	Amazon Basics New Release Nylon USB-A to Lightning Cable Cord, Fast Charging MFi Certified Charger for Apple iPhone, iPad (3-Ft, Rose Gold)	1	1809.00	84	2021-01-01 00:00:00	2021-01-01 00:00:00
B07DL1KC3H	Isoelite Remote Compatible for Samsung LED/LCD Remote Control Works with All Samsung LED/LCD TV Model No :- BN59-607A (Please Match The Image with Your Old Remote)	5	899.00	155	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B6F98KJJ	MI 100 cm (40 inches) 5A Series Full HD Smart Android LED TV with 24W Dolby Audio & Metal Bezel-Less Frame (Black) (2022 Model)	4	29999.00	268	2021-01-01 00:00:00	2021-01-01 00:00:00
B07JNVF678	Wayona Nylon Braided USB Data Sync and Fast Charging 3A Short Power Bank Cable For iPhones, iPad Air, iPad mini, iPod Nano and iPod Touch (Grey)	1	999.00	99	2021-01-01 00:00:00	2021-01-01 00:00:00
B09QGZFBPM	Wayona Type C To Type C Long Fast Charging Cable Type C Charger Cord Compatible With Samsung S22 S20 S20 Fe 2022 S22 Ultra S21 Ultra A70 A51 A53 A33 A73 M51 M31 M33 M53 (Grey, 2M, 65W, 6Ft)	1	999.00	251	2021-01-01 00:00:00	2021-01-01 00:00:00
B07JGDB5M1	Wayona Nylon Braided 2M / 6Ft Fast Charge Usb To Lightning Data Sync And Charging Cable For Iphone, Ipad Tablet (6 Ft Pack Of 1, Grey)	1	1299.00	79	2021-01-01 00:00:00	2021-01-01 00:00:00
B0981XSZJ7	CROSSVOLT Compatible Dash/Warp Data Sync Fast Charging Cable Supported for All C Type Devices (Cable)	1	999.00	289	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B9XLX8VR	VU 139 cm (55 inches) The GloLED Series 4K Smart LED Google TV 55GloLED (Grey)	4	65000.00	90	2021-01-01 00:00:00	2021-01-01 00:00:00
B08Y5KXR6Z	PTron Solero T241 2.4A Type-C Data & Charging USB Cable, Made in India, 480Mbps Data Sync, Durable 1-Meter Long USB Cable for Type-C USB Devices for Charging Adapter (Black)	1	800.00	229	2021-01-01 00:00:00	2021-01-01 00:00:00
B09F6VHQXB	Croma 80 cm (32 Inches) HD Ready LED TV (CREL7369, Black) (2021 Model)	6	20000.00	292	2021-01-01 00:00:00	2021-01-01 00:00:00
B0974G5Q2Y	boAt Laptop, Smartphone Type-c A400 Male Data Cable (Carbon Black)	1	999.00	293	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YL9SN9B	LG 80 cm (32 inches) HD Ready Smart LED TV 32LQ576BPSA (Ceramic Black)	4	23990.00	256	2021-01-01 00:00:00	2021-01-01 00:00:00
B09RX1FK54	boAt Type C A750 Stress Resistant, Tangle-free, Sturdy Flat Cable with 6.5A Fast Charging & 480Mbps Data Transmission, 10000+ Bends Lifespan and Extended 1.5m Length(Radiant Red)	1	999.00	220	2021-01-01 00:00:00	2021-01-01 00:00:00
B09TT6BFDX	Cotbolt Silicone Protective Case Cover for LG an MR21GA Magic Remote Shockproof for LG Smart TV Remote 2021 Protective Skin Waterproof Anti Lost (Black) (Remote Not Included)	5	1999.00	184	2021-01-01 00:00:00	2021-01-01 00:00:00
B09KH58JZR	Portronics Konnect L POR-1403 Fast Charging 3A Type-C Cable 1.2 Meter with Charge & Sync Function for All Type-C Devices (White)	1	399.00	212	2021-01-01 00:00:00	2021-01-01 00:00:00
B09DDCQFMT	Electvision Remote Control Compatible with Amazon Fire tv Stick (Pairing Manual Will be Back Side Remote Control)(P)	5	1999.00	211	2021-01-01 00:00:00	2021-01-01 00:00:00
B08RP2L2NL	King Shine Multi Retractable 3.0A Fast Charger Cord, Multiple Charging Cable 4Ft/1.2m 3-in-1 USB Charge Cord Compatible with Phone/Type C/Micro USB for All Android and iOS Smartphones (Random Colour)	1	999.00	278	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4G2MWSB	Lapster 5 pin mini usb cable, usb b cable,camera cable usb2.0 for External HDDS/Card Readers/Camera etc.	1	999.00	65	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B21C4BMX	Portronics Konnect Spydr 31 3-in-1 Multi Functional Cable with 3.0A Output, Tangle Resistant, 1.2M Length, Nylon Braided(Zebra)	1	899.00	110	2021-01-01 00:00:00	2021-01-01 00:00:00
B084MZXJNK	Belkin Apple Certified Lightning To Type C Cable, Tough Unbreakable Braided Fast Charging For Iphone, Ipad, Air Pods, 3.3 Feet (1 Meters)    White	1	1999.00	182	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BHZCNC4P	Remote Control Compatible for Amazon Fire Tv Stick Remote Control [ 3rd Gen ](Not Compatible for Fire TV Edition Smart TV) from basesailor	5	3999.00	289	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B16KD737	VW 80 cm (32 inches) Playwall Frameless Series HD Ready Android Smart LED TV VW3251 (Black)	4	15999.00	174	2021-01-01 00:00:00	2021-01-01 00:00:00
B099K9ZX65	Hisense 108 cm (43 inches) 4K Ultra HD Smart Certified Android LED TV 43A6GE (Black)	4	44990.00	72	2021-01-01 00:00:00	2021-01-01 00:00:00
B08Y55LPBF	Redmi 126 cm (50 inches) 4K Ultra HD Android Smart LED TV X50 | L50M6-RA (Black)	4	44999.00	171	2021-01-01 00:00:00	2021-01-01 00:00:00
B015OW3M1W	AmazonBasics 6-Feet DisplayPort (not USB port) to HDMI Cable Black	3	1700.00	102	2021-01-01 00:00:00	2021-01-01 00:00:00
B01D5H8ZI8	AmazonBasics 3 Feet High Speed HDMI Male to Female 2.0 Extension Cable	3	595.00	153	2021-01-01 00:00:00	2021-01-01 00:00:00
B09X1M3DHX	iFFALCON 80 cm (32 inches) HD Ready Smart LED TV 32F53 (Black)	4	27990.00	132	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MM6P76N	7SEVEN® Compatible Lg Smart Tv Remote Suitable for Any LG LED OLED LCD UHD Plasma Android Television and AKB75095303 replacement of Original Lg Tv Remote Control	5	599.00	281	2021-01-01 00:00:00	2021-01-01 00:00:00
B01D5H8LDM	AmazonBasics 3.5mm to 2-Male RCA Adapter Cable For Tablet, Smartphone (Black, 15 feet)	8	1200.00	207	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B1YY6JJL	Acer 109 cm (43 inches) I Series 4K Ultra HD Android Smart LED TV AR43AR2851UDFL (Black)	4	34990.00	217	2021-01-01 00:00:00	2021-01-01 00:00:00
B09QGZM8QB	Wayona Usb Type C 65W 6Ft/2M Long Fast Charging Cable Compatible For Samsung S22 S20 Fe S21 Ultra A33 A53 A01 A73 A70 A51 M33 M53 M51 M31(2M, Black)	1	999.00	114	2021-01-01 00:00:00	2021-01-01 00:00:00
B08L4SBJRY	Saifsmart Outlet Wall Mount Hanger Holder for Dot 3rd Gen, Compact Bracket Case Plug and Built-in Cable Management for Kitchen Bathroom, Bedroom (Black)	9	1299.00	76	2021-01-01 00:00:00	2021-01-01 00:00:00
B09X79PP8F	MI 2-in-1 USB Type C Cable (Micro USB to Type C) 30cm for Smartphone, Headphone, Laptop (White)	1	299.00	287	2021-01-01 00:00:00	2021-01-01 00:00:00
B082T6GVG9	AmazonBasics New Release ABS USB-A to Lightning Cable Cord, Fast Charging MFi Certified Charger for Apple iPhone, iPad Tablet (3-Ft, White)	1	1500.00	91	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3XY5YT4	LG 108 cm (43 inches) 4K Ultra HD Smart LED TV 43UQ7500PSF (Ceramic Black)	4	49990.00	109	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4HKH19N	pTron Solero 331 3.4Amps Multifunction Fast Charging Cable, 3-in-1 USB Cable Micro USB/Type-C/iOS, Made in India, Durable & Strong & Tangle-free 118cm in Length (Black)	1	931.00	199	2021-01-01 00:00:00	2021-01-01 00:00:00
B08TGG316Z	10k 8k 4k HDMI Cable, Certified 48Gbps 1ms Ultra High Speed HDMI 2.1 Cable 4k 120Hz 144Hz 2k 165Hz 8k 60Hz Dynamic HDR ARC eARC DTS:X Compatible for Mac Gaming PC Soundbar TV Monitor Laptop PS5 4 Xbox	3	2399.00	299	2021-01-01 00:00:00	2021-01-01 00:00:00
B071VMP1Z4	LRIPL Compatible Sony Bravia LCD/led Remote Works with Almost All Sony led/LCD tv's	5	399.00	275	2021-01-01 00:00:00	2021-01-01 00:00:00
B071SDRGWL	boAt Type-c A400 Type-c to USB A Cable for All Type C Phones (Lg nexus 5x), 1Mtr(Black)	1	699.00	185	2021-01-01 00:00:00	2021-01-01 00:00:00
B08PSQRW2T	Zoul Type C to Type C Fast Charging Cable 65W 2M/6ft USB C Nylon Braided Cord Compatible with MacBook Oneplus 9 9R Samsung Galaxy S21 Ultra S20+ (2M, Black)	1	1099.00	265	2021-01-01 00:00:00	2021-01-01 00:00:00
B0859M539M	TP-LINK AC1300 Archer T3U Plus High Gain USB 3.0 Wi-Fi Dongle, Wireless Dual Band MU-MIMO WiFi Adapter with High Gain Antenna, Supports Windows 11/10/8.1/8/7/XP/MacOS	2	2999.00	183	2021-01-01 00:00:00	2021-01-01 00:00:00
B08RX8G496	LRIPL Mi Remote Control with Netflix & Prime Video Button Compatible for Mi 4X LED Android Smart TV 4A Remote Control (32"/43") with Voice Command (Pairing Required)	5	1099.00	236	2021-01-01 00:00:00	2021-01-01 00:00:00
B002SZEOLG	TP-Link Nano USB WiFi Dongle 150Mbps High Gain Wireless Network Wi-Fi Adapter for PC Desktop and Laptops, Supports Windows 10/8.1/8/7/XP, Linux, Mac OS X (TL-WN722N)	2	1339.00	271	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CS3BT4L	Kodak 80 cm (32 inches) HD Ready Certified Android LED TV 32HDX7XPRO (Black)	4	12999.00	131	2021-01-01 00:00:00	2021-01-01 00:00:00
B00RFWNJMC	Airtel DigitalTV DTH Remote SD/HD/HD Recording Compatible for Television (Shining Black )	5	499.00	220	2021-01-01 00:00:00	2021-01-01 00:00:00
B082T6GXS5	AmazonBasics New Release Nylon USB-A to Lightning Cable Cord, MFi Certified Charger for Apple iPhone, iPad, Silver, 6-Ft	1	2100.00	120	2021-01-01 00:00:00	2021-01-01 00:00:00
B09CMQRQM6	Ambrane Fast 100W Output Cable with Type-C to Type-C for Mobile, Laptop, Macbook & Table Charging, 480mbps Data Sync Speed, Braided Cable, 1.5m Length (ABCC-100, Black-Grey)	1	899.00	172	2021-01-01 00:00:00	2021-01-01 00:00:00
B005LJQMCK	BlueRigger Digital Optical Audio Toslink Cable (3.3 Feet / 1 Meter) With 8 Channel (7.1) Audio Support (for Home Theatre, Xbox, Playstation etc.)	10	599.00	108	2021-01-01 00:00:00	2021-01-01 00:00:00
B09C6H53KH	Duracell Type-C To Micro 1.2M braided Sync & Charge Cable, USB C to Micro Fast Charge Compatible for fast data transmission (Black)	1	699.00	82	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BB3CBFBM	VU 138 cm (55 inches) Premium Series 4K Ultra HD Smart IPS LED TV 55UT (Black)	4	65000.00	245	2021-01-01 00:00:00	2021-01-01 00:00:00
B08QSDKFGQ	Zoul USB Type C Fast Charging 3A Nylon Braided Data Cable Quick Charger Cable QC 3.0 for Samsung Galaxy M31s M30 S10 S9 S20 Plus, Note 10 9 8, A20e A40 A50 A70 (1M, Grey)	1	1099.00	243	2021-01-01 00:00:00	2021-01-01 00:00:00
B08PV1X771	Samsung 80 cm (32 inches) Wondertainment Series HD Ready LED Smart TV UA32TE40AAKBXL (Titan Gray)	4	20900.00	259	2021-01-01 00:00:00	2021-01-01 00:00:00
B07YTNKVJQ	MI Xiaomi USB Type C HYperCharge Cable 6A 100cm Sturdy and Durable Black Supports 120W HyperCharging	1	1299.00	160	2021-01-01 00:00:00	2021-01-01 00:00:00
B0117H7GZ6	GENERIC Ultra-Mini Bluetooth CSR 4.0 USB Dongle Adapter for Windows Computer ( Black:Golden)	2	399.00	212	2021-01-01 00:00:00	2021-01-01 00:00:00
B09XJ1LM7R	7SEVEN® Compatible for Tata Sky Remote Original Set Top HD Box and Suitable for SD Tata Play setup Box Remote Control	5	799.00	267	2021-01-01 00:00:00	2021-01-01 00:00:00
B084N133Y7	Belkin Apple Certified Lightning To Type C Cable, Fast Charging For Iphone, Ipad, Air Pods, 3.3 Feet (1 Meters)    White	1	1999.00	101	2021-01-01 00:00:00	2021-01-01 00:00:00
B088Z1YWBC	EGate i9 Pro-Max 1080p Native Full HD Projector 4k Support | 3600 L (330 ANSI ) | 150" (381 cm) Large Screen | VGA, AV, HDMI, SD Card, USB, Audio Out | (E03i31 / E04i32) Black	11	15990.00	133	2021-01-01 00:00:00	2021-01-01 00:00:00
B07VSG5SXZ	ZEBRONICS HAA2021 HDMI version 2.1 cable with 8K @ 60Hz, 4K @ 120Hz, eARC & CEC support, 3D compatible, 2 meters length, 48Gbps max and Gold-plated connectors	3	1499.00	234	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WDK3ZS2	iQOO Z6 Pro 5G by vivo (Legion Sky, 8GB RAM, 128GB Storage) | Snapdragon 778G 5G | 66W FlashCharge | 1300 nits Peak Brightness | HDR10+	22	29990.00	125	2021-01-01 00:00:00	2021-01-01 00:00:00
B08RWCZ6SY	7SEVEN® Compatible for Sony Bravia LCD LED UHD OLED QLED 4K Ultra HD TV remote control with YouTube and NETFLIX Hotkeys. Universal Replacement for Original Sony Smart Android tv Remote Control	5	899.00	179	2021-01-01 00:00:00	2021-01-01 00:00:00
B07KSB1MLX	AmazonBasics Digital Optical Coax to Analog RCA Audio Converter Adapter with Fiber Cable	10	1600.00	149	2021-01-01 00:00:00	2021-01-01 00:00:00
B081FG1QYX	Wayona Type C Cable Nylon Braided USB C QC 3.0 Fast Charging Short Power Bank Cable for Samsung Galaxy S10e/S10+/S10/S9/S9+/Note 9/S8/Note 8, LG G7 G5 G6, Moto G6 G7 (0.25M, Black)	1	999.00	273	2021-01-01 00:00:00	2021-01-01 00:00:00
B08R69WBN7	Pinnaclz Original Combo of 2 USB Type C Fast Charging Cable, USB C Data Cable for Charging and Data Transfer Smart Phones White 1.2 Meter Made in India (Pack of 2)	1	499.00	259	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3RHX6B6	Ambrane BCL-15 Lightning Cable for Smartphone (1.5m Black)	1	399.00	299	2021-01-01 00:00:00	2021-01-01 00:00:00
B084N18QZY	Belkin USB C to USB-C Fast Charging Type C Cable, 60W PD, 3.3 feet (1 meter) for Laptop, Personal Computer, Tablet, Smartphone - Black, USB-IF Certified	1	849.00	241	2021-01-01 00:00:00	2021-01-01 00:00:00
B081NHWT6Z	LOHAYA Television Remote Compatible with Samsung Smart LED/LCD/HD TV Remote Control [ Compatible for All Samsung Tv Remote Control ]	5	1199.00	58	2021-01-01 00:00:00	2021-01-01 00:00:00
B07JPJJZ2H	Wayona Nylon Braided Lightning USB Data Sync & 3A Charging Cable for iPhones, iPad Air, iPad Mini, iPod Nano and iPod Touch (3 FT Pack of 1, Grey)	1	1299.00	219	2021-01-01 00:00:00	2021-01-01 00:00:00
B09JKNF147	Electvision Remote Control Compatible with Kodak/Thomson Smart led tv (Without Voice) Before Placing Order for verification Contact Our coustmer Care 7738090464	5	1999.00	292	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B9959XF3	Acer 80 cm (32 inches) S Series HD Ready Android Smart LED TV AR32AR2841HDSB (Black)	4	22990.00	278	2021-01-01 00:00:00	2021-01-01 00:00:00
B09PNR6F8Q	realme 10W Fast Charging Micro-USB Cable (Braided, Black)	1	399.00	120	2021-01-01 00:00:00	2021-01-01 00:00:00
B07M69276N	TP-Link AC1300 USB WiFi Adapter (Archer T3U) - 2.4G/5G Dual Band Mini Wireless Network Adapter for PC Desktop, MU-MIMO Wi-Fi Dongle, USB 3.0, Supports Windows 11,10, 8.1, 8, 7, XP/Mac OS 10.15 and earlier	2	2499.00	104	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B1YZ9CB8	Acer 139 cm (55 inches) I Series 4K Ultra HD Android Smart LED TV AR55AR2851UDFL (Black)	4	47990.00	103	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YLYB9PB	Ambrane 60W / 3A Fast Charging Output Cable with Micro to USB for Mobile, Neckband, True Wireless Earphone Charging, 480mbps Data Sync Speed, 1m Length (ACM - AZ1, Black)	1	399.00	150	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CTNJ985	Wayona USB Type C 65W Fast Charging 2M/6Ft Long Flash Charge Cable 3A QC 3.0 Data Cable Compatible with Samsung Galaxy S21 S10 S9 S8, iQOO Z3, Vivo, Note 10 9 8, A20e A40 A50 A70, Moto G7 G8 (2M, Grey)	1	999.00	116	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BP7XLX48	Syncwire LTG to USB Cable for Fast Charging Compatible with Phone 5/ 5C/ 5S/ 6/ 6S/ 7/8/ X/XR/XS Max/ 11/12/ 13 Series and Pad Air/Mini, Pod & Other Devices (1.1 Meter, White)	1	1999.00	162	2021-01-01 00:00:00	2021-01-01 00:00:00
B09LHXNZLR	Skadioo WiFi Adapter for pc | Car Accessories, WiFi Dongle for pc | USB WiFi Adapter for pc | Wi-Fi Receiver 2.4GHz, 802.11b/g/n UNano Size WiFi Dongle Compatible Adapter,WiFi dongle for pc	2	499.00	145	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3N8VG24	FLiX (Beetel USB to Type C PVC Data Sync & 15W(3A) TPE Fast Charging Cable, Made in India, 480Mbps Data Sync, 1 Meter Long cable for all Andriod & all Type C Devices (Black)(XCD - FPC02)	1	299.00	78	2021-01-01 00:00:00	2021-01-01 00:00:00
B08PSVBB2X	Zoul USB C to USB C Fast Charging Cable 65W Type C to Type C Nylon Braided Cord Compatible with Macbook Oneplus 9 10R Samsung Galaxy S22 S21 Ultra Z Flip3 Macbook Air/Pro M1 Google Pixel 11'' iPad Pro 2020/2018 (2M, Grey)	1	1099.00	192	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3MQXNFB	FLiX (Beetel Flow USB to Micro USB PVC Data Sync & 12W(2.4A) Fast Charging Cable,Made in India,480Mbps Data Sync,Solid Cable,1 Meter Long cable for all Andriod & Micro USB Devices (Black)(XCD-FPM01)	1	199.00	298	2021-01-01 00:00:00	2021-01-01 00:00:00
B08XMSKKMM	7SEVEN® Bluetooth Voice Command Remote for Xiaomi Redmi Mi Smart TV with Netflix & Prime Video Hot Keys XMRM-00A	5	1999.00	110	2021-01-01 00:00:00	2021-01-01 00:00:00
B09L8DT7D6	Sony TV - Remote Compatible for Sony LED Remote Control Works with Sony LED TV by Trend Trail Speed tech & Remote hi Remote & REO India only	5	499.00	292	2021-01-01 00:00:00	2021-01-01 00:00:00
B00GE55L22	Storite USB 3.0 Cable A to Micro B high Speed Upto 5 Gbps Data Transfer Cable for Portable External Hard Drive - (20cm), Black	1	699.00	82	2021-01-01 00:00:00	2021-01-01 00:00:00
B0162K34H2	boAt LTG 500 Apple MFI Certified for iPhone, iPad and iPod 2Mtr Data Cable(Space Grey)	1	999.00	54	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B8SRZ5SV	AmazonBasics USB C to Lightning Aluminum with Nylon Braided MFi Certified Charging Cable (Grey, 1.2 meter)	1	1999.00	230	2021-01-01 00:00:00	2021-01-01 00:00:00
B07CWNJLPC	AmazonBasics Double Braided Nylon USB Type-C to Type-C 2.0 Cable Smartphone (Dark Grey, 3 feet)	1	1200.00	109	2021-01-01 00:00:00	2021-01-01 00:00:00
B00NH12R1O	Amazon Basics USB 3.0 Cable - A Male to Micro B - 6 Feet (1.8 Meters), Black	1	485.00	126	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B8SSC5D9	AmazonBasics USB C to Lightning Aluminum with Nylon Braided MFi Certified Charging Cable (Grey, 1.8 meter)	1	1999.00	188	2021-01-01 00:00:00	2021-01-01 00:00:00
B08WKG2MWT	Wayona Usb C 65W Fast Charging Cable Compatible For Tablets Samsung S22 S20 S10 S20Fe S21 S21 Ultra A70 A51 A71 A50S M31 M51 M31S M53 5G (1M, Black)	1	1099.00	204	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B466C3G4	Karbonn 80 cm (32 inches) Millenium Bezel-Less Series HD Ready Smart LED TV KJW32SKHD (Phantom Black)	4	18990.00	77	2021-01-01 00:00:00	2021-01-01 00:00:00
B005LJQMZC	BlueRigger Digital Optical Audio Toslink Cable (6 Feet / 1.8 Meter) With 8 Channel (7.1) Audio Support (for Home Theatre, Xbox, Playstation etc.)	10	1999.00	181	2021-01-01 00:00:00	2021-01-01 00:00:00
B07MDRGHWQ	VW 60 cm (24 inches) Premium Series HD Ready LED TV VW24A (Black)	6	11000.00	289	2021-01-01 00:00:00	2021-01-01 00:00:00
B07DC4RZPY	Amazon Basics USB A to Lightning MFi Certified Charging Cable (White, 1.2 meter)	1	1999.00	253	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B15GSPQW	Samsung 138 cm (55 inches) Crystal 4K Neo Series Ultra HD Smart LED TV UA55AUE65AKXXL (Black)	4	70900.00	144	2021-01-01 00:00:00	2021-01-01 00:00:00
B08GJNM9N7	LOHAYA Television Remote Compatible for VU LED LCD HD Tv Remote Control Model No :- EN2B27V	5	1199.00	300	2021-01-01 00:00:00	2021-01-01 00:00:00
B09C6FML9B	Duracell Micro USB 3A Braided Sync & Fast Charging Cable, 3.9 Feet (1.2M). Supports QC 2.0/3.0 Charging, High Speed Data Transmission - Black	1	599.00	286	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B65MJ45G	Zebronics CU3100V Fast charging Type C cable with QC 18W support, 3A max capacity, 1 meter braided cable, Data transfer and Superior durability (Braided Black + White)	1	549.00	232	2021-01-01 00:00:00	2021-01-01 00:00:00
B08P9RYPLR	FLiX (Beetel) USB to iPhone Lightning Textured Pattern Data Sync & 2A Fast Charging Cable, Made in India, 480Mbps Data Sync, Tough Cable, 1 Meter Long USB Cable for Apple Devices (Black)(XCD-L102)	1	249.00	193	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B6F8HHR6	MI 108 cm (43 inches) 5A Series Full HD Smart Android LED TV L43M7-EAIN (Black)	4	35999.00	144	2021-01-01 00:00:00	2021-01-01 00:00:00
B084MZXJN6	Belkin Apple Certified Lightning to USB Charge and Sync Cable for iPhone, iPad, Air Pods, 39.6 inch (100cm) – Black	1	1699.00	73	2021-01-01 00:00:00	2021-01-01 00:00:00
B08XMG618K	Time Office Scanner Replacement Cable for Startek FM220U (Type C) Ivory	1	499.00	104	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BCKWZ884	Caldipree Silicone Case Cover Compatible for 2022 Samsung Smart TV Remote QLED TV BN68-13897A TM2280E (2022-BLACK)	5	2999.00	63	2021-01-01 00:00:00	2021-01-01 00:00:00
B00GGGOYEK	Storite USB 2.0 A to Mini 5 pin B Cable for External HDDS/Camera/Card Readers 35cm	1	699.00	118	2021-01-01 00:00:00	2021-01-01 00:00:00
B07ZR4S1G4	Universal Remote Control for All Sony TV for All LCD LED and Bravia TVs Remote	5	699.00	234	2021-01-01 00:00:00	2021-01-01 00:00:00
B09C635BMM	Cotbolt Silicone Case Cover Compatible for Samsung BN59-01312A QLED 8K 4K Smart TV Remote Shockproof Protective Remote Cover (Black)	5	999.00	161	2021-01-01 00:00:00	2021-01-01 00:00:00
B00GG59HU2	BlueRigger High Speed HDMI Cable with Ethernet - Supports 3D, 4K 60Hz and Audio Return - Latest Version (3 Feet / 0.9 Meter)	3	599.00	194	2021-01-01 00:00:00	2021-01-01 00:00:00
B00RGLI0ZS	Amkette 30 Pin to USB Charging & Data Sync Cable for iPhone 3G/3GS/4/4s/iPad 1/2/3, iPod Nano 5th/6th Gen and iPod Touch 3rd/4th Gen -1.5m (Black)	1	599.00	167	2021-01-01 00:00:00	2021-01-01 00:00:00
B09ZPJT8B2	TCL 80 cm (32 inches) HD Ready Certified Android Smart LED TV 32S615 (Black)	4	31990.00	247	2021-01-01 00:00:00	2021-01-01 00:00:00
B07HZ2QCGR	POPIO Type C Dash Charging USB Data Cable for OnePlus Devices	1	599.00	59	2021-01-01 00:00:00	2021-01-01 00:00:00
B095244Q22	MYVN LTG to USB for Fast Charging & Data Sync USB Cable Compatible for iPhone 5/5s/6/6S/7/7+/8/8+/10/11, iPad Air/Mini, iPod and iOS Devices (1 M)	1	999.00	176	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CKW1KH9	Tata Sky Universal Remote Compatible for SD/HD	5	599.00	224	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BLV1GNLN	WZATCO Pixel | Portable LED Projector | Native 720p with Full HD 1080P Support | 2000 Lumens (200 ANSI) | 176" Large Screen | Projector for Home and Outdoor | Compatible with TV Stick, PC, PS4	11	9990.00	223	2021-01-01 00:00:00	2021-01-01 00:00:00
B08RHPDNVV	7SEVEN® Compatible Tata Sky Remote Control Replacement of Original dth SD HD tata Play Set top Box Remote - IR Learning Universal Remote for Any Brand TV - Pairing Must	5	599.00	193	2021-01-01 00:00:00	2021-01-01 00:00:00
B00NH13Q8W	AmazonBasics USB 2.0 Extension Cable for Personal Computer, Printer, 2-Pack - A-Male to A-Female - 3.3 Feet (1 Meter, Black)	1	800.00	178	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B8SSZ76F	Amazon Basics USB C to Lightning TPE MFi Certified Charging Cable (White, 1.2 meter)	1	1999.00	265	2021-01-01 00:00:00	2021-01-01 00:00:00
B0841KQR1Z	Crypo™ Universal Remote Compatible with Tata Sky Universal HD & SD Set top Box (Also Works with All TV)	5	999.00	158	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B467CCB9	Karbonn 80 cm (32 Inches) Millennium Series HD Ready LED TV KJW32NSHDF (Phantom Black) with Bezel-Less Design	6	16990.00	174	2021-01-01 00:00:00	2021-01-01 00:00:00
B095JQVC7N	OnePlus 138.7 cm (55 inches) U Series 4K LED Smart Android TV 55U1S (Black)	4	59999.00	123	2021-01-01 00:00:00	2021-01-01 00:00:00
B08PPHFXG3	Posh 1.5 Meter High Speed Gold Plated HDMI Male to Female Extension Cable (Black)	3	999.00	58	2021-01-01 00:00:00	2021-01-01 00:00:00
B06XR9PR5X	Amazon Basics HDMI Coupler,Black	12	600.00	225	2021-01-01 00:00:00	2021-01-01 00:00:00
B09JSW16QD	boAt LTG 550v3 Lightning Apple MFi Certified Cable with Spaceship Grade Aluminium Housing,Stress Resistance, Rapid 2.4A Charging & 480mbps Data Sync, 1m Length & 10000+ Bends Lifespan(Mercurial Black)	1	1490.00	67	2021-01-01 00:00:00	2021-01-01 00:00:00
B07JH1CBGW	Wayona Nylon Braided Usb Syncing And Charging Cable Sync And Charging Cable For Iphone, Ipad (3 Ft, Black) - Pack Of 2	1	1999.00	265	2021-01-01 00:00:00	2021-01-01 00:00:00
B09127FZCK	Astigo Compatible Remote for Airtel Digital Set Top Box (Pairing Required with TV Remote)	5	899.00	226	2021-01-01 00:00:00	2021-01-01 00:00:00
B083GQGT3Z	Caprigo Heavy Duty TV Wall Mount Stand for 12 to 27 inches LED/LCD/Monitor Screen's, Full Motion Rotatable Universal TV & Monitor Wall Mount Bracket with Swivel & Tilt Adjustments (Single Arm - M416)	7	799.00	209	2021-01-01 00:00:00	2021-01-01 00:00:00
B09Q8WQ5QJ	Portronics Konnect L 60W PD Type C to Type C Mobile Charging Cable, 1.2M, Fast Data Sync, Tangle Resistant, TPE+Nylon Braided(Grey)	1	499.00	171	2021-01-01 00:00:00	2021-01-01 00:00:00
B07YZG8PPY	TATA SKY HD Connection with 1 month basic package and free installation	13	2299.00	82	2021-01-01 00:00:00	2021-01-01 00:00:00
B09H39KTTB	Remote Compatible for Samsung LED/LCD Remote Control Works with Samsung LED/LCD TV by Trend Trail	5	499.00	249	2021-01-01 00:00:00	2021-01-01 00:00:00
B08DCVRW98	SoniVision SA-D10 SA-D100 SA-D40 Home Theater Systems Remote Compatible with Sony RM-ANU156	5	499.00	52	2021-01-01 00:00:00	2021-01-01 00:00:00
B0718ZN31Q	Rts™ High Speed 3D Full HD 1080p Support (10 Meters) HDMI Male to HDMI Male Cable TV Lead 1.4V for All Hdmi Devices- Black (10M - 30 FEET)	3	4999.00	164	2021-01-01 00:00:00	2021-01-01 00:00:00
B0162LYSFS	boAt LTG 500 Apple MFI Certified for iPhone, iPad and iPod 2Mtr Data Cable(Metallic Silver)	1	1749.00	114	2021-01-01 00:00:00	2021-01-01 00:00:00
B07PFJ5VQD	Agaro Blaze USBA to micro +Type C 2in1 Braided 1.2M Cable	1	595.00	118	2021-01-01 00:00:00	2021-01-01 00:00:00
B01J8S6X2I	AmazonBasics 6 Feet DisplayPort to DisplayPort Cable - (Not HDMI Cable) (Gold)	14	1100.00	209	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MJ77786	MI 108 cm (43 inches) 5X Series 4K Ultra HD LED Smart Android TV L43M6-ES (Grey)	4	49999.00	194	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NNGHG22	Sansui 140cm (55 inches) 4K Ultra HD Certified Android LED TV with Dolby Audio & Dolby Vision JSW55ASUHD (Mystique Black)	4	56790.00	203	2021-01-01 00:00:00	2021-01-01 00:00:00
B07V5YF4ND	LOHAYA LCD/LED Remote Compatible for Sony Bravia Smart LCD LED UHD OLED QLED 4K Ultra HD TV Remote Control with YouTube & Netflix Function [ Compatible for Sony Tv Remote Control ]	5	1199.00	272	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B65P827P	Zebronics CU3100V Fast charging Type C cable with QC 18W support, 3A max capacity, 1 meter braided cable, Data transfer and Superior durability (Braided Black )	1	549.00	121	2021-01-01 00:00:00	2021-01-01 00:00:00
B084MZYBTV	Belkin USB C to USB-C Fast Charging Type C Cable, 60W PD, 3.3 feet (1 meter) for Laptop, Personal Computer, Tablet, Smartphone - White, USB-IF Certified	1	849.00	108	2021-01-01 00:00:00	2021-01-01 00:00:00
B097ZQTDVZ	7SEVEN® TCL Remote Control Smart TV RC802V Remote Compatible for TCL TV Remote Original 55EP680 40A325 49S6500 55P8S 55P8 50P8 65P8 40S6500 43S6500FS 49S6800FS 49S6800 49S6510FS(Without Voice Function/Google Assistant and Non-Bluetooth remote)	5	899.00	136	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B5F3YZY4	Wayona 3in1 Nylon Braided 66W USB Fast Charging Cable with Type C, Lightening and Micro USB Port, Compatible with iPhone, iPad, Samsung Galaxy, OnePlus, Mi, Oppo, Vivo, iQOO, Xiaomi (1M, Black)	1	1099.00	268	2021-01-01 00:00:00	2021-01-01 00:00:00
B09G5TSGXV	Hi-Mobiler iPhone Charger Lightning Cable,2 Pack Apple MFi Certified USB iPhone Fast Chargering Cord,Data Sync Transfer for 13/12/11 Pro Max Xs X XR 8 7 6 5 5s iPad iPod More Model Cell Phone Cables	1	799.00	172	2021-01-01 00:00:00	2021-01-01 00:00:00
B006LW0WDQ	Amazon Basics 16-Gauge Speaker Wire - 50 Feet	15	795.00	155	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YLX91QR	Ambrane 60W / 3A Fast Charging Output Cable with Type-C to USB for Mobile, Neckband, True Wireless Earphone Charging, 480mbps Data Sync Speed, 1m Length (ACT - AZ10, White)	1	399.00	96	2021-01-01 00:00:00	2021-01-01 00:00:00
B081FJWN52	Wayona Usb Type C To Usb Nylon Braided Quick Charger Fast Charging Short Cable For Smartphone (Samsung Galaxy S21/S20/S10/S9/S9+/Note 9/S8/Note 8, Lg G7 G5 G6, Moto G6 G7) (0.25M,Grey)	1	999.00	207	2021-01-01 00:00:00	2021-01-01 00:00:00
B0758F7KK7	Caprigo Heavy Duty TV Wall Mount Bracket for 14 to 32 Inch LED/HD/Smart TV’s, Universal Fixed TV Wall Mount Stand (M452)	7	999.00	185	2021-01-01 00:00:00	2021-01-01 00:00:00
B09L835C3V	Smashtronics® - Case for Firetv Remote, Fire Stick Remote Cover Case, Silicone Cover for TV Firestick 4K/TV 2nd Gen(3rd Gen) Remote Control - Light Weight/Anti Slip/Shockproof (Black)	5	399.00	295	2021-01-01 00:00:00	2021-01-01 00:00:00
B098TV3L96	Electvision Remote Control for led Smart tv Compatible with VU Smart Led (Without Voice)	5	1999.00	101	2021-01-01 00:00:00	2021-01-01 00:00:00
B08NCKT9FG	Boat A 350 Type C Cable 1.5m(Jet Black)	1	798.00	261	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4T6MR8N	pTron Solero M241 2.4A Micro USB Data & Charging Cable, Made in India, 480Mbps Data Sync, Durable 1-Meter Long USB Cable for Micro USB Devices (White)	1	800.00	230	2021-01-01 00:00:00	2021-01-01 00:00:00
B01GGKZ4NU	AmazonBasics USB Type-C to USB Type-C 2.0 Cable for Charging Adapter, Smartphone - 9 Feet (2.7 Meters) - White	1	995.00	147	2021-01-01 00:00:00	2021-01-01 00:00:00
B09BW2GP18	Croma 3A Fast charge 1m Type-C to All Type-C Phones sync and charge cable, Made in India, 480Mbps Data transfer rate, Tested Durability with 8000+ bends (12 months warranty) - CRCMA0106sTC10, Black	1	1000.00	223	2021-01-01 00:00:00	2021-01-01 00:00:00
B09WN3SRC7	Sony Bravia 164 cm (65 inches) 4K Ultra HD Smart LED Google TV KD-65X74K (Black)	4	139900.00	195	2021-01-01 00:00:00	2021-01-01 00:00:00
B09B125CFJ	7SEVEN® Compatible for Mi tv Remote Control Original Suitable with Smart Android 4K LED Non Voice Command Xiaomi Redmi Remote of 4A Model 32 43 55 65 inches	5	799.00	270	2021-01-01 00:00:00	2021-01-01 00:00:00
B09RQRZW2X	7SEVEN® Compatible Vu Smart Tv Remote Control Suitable for Original 4K Android LED Ultra HD UHD Vu Tv Remote with Non Voice Feature without google assistant	5	899.00	299	2021-01-01 00:00:00	2021-01-01 00:00:00
B07924P3C5	Storite High Speed Micro USB 3.0 Cable A to Micro B for External & Desktop Hard Drives 45cm	1	799.00	109	2021-01-01 00:00:00	2021-01-01 00:00:00
B08N1WL9XW	FLiX (Beetel) 3in1 (Type C|Micro|Iphone Lightening) Textured Pattern 3A Fast Charging Cable with QC & PD Support for Type C,Micro USB & Lightning Iphone Cable,Made in India,1.5 Meter Long Cable(T101)	1	599.00	277	2021-01-01 00:00:00	2021-01-01 00:00:00
B07VVXJ2P5	SVM Products Unbreakable Set Top Box Stand with Dual Remote Holder (Black)	7	399.00	161	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BC8BQ432	VU 164 cm (65 inches) The GloLED Series 4K Smart LED Google TV 65GloLED (Grey)	4	85000.00	136	2021-01-01 00:00:00	2021-01-01 00:00:00
B06XFTHCNY	CableCreation RCA to 3.5mm Male Audio Cable, 3.5mm to 2RCA Cable Male RCA Cable,Y Splitter Stereo Jack Cable for Home Theater,Subwoofer, Receiver, Speakers and More (3Feet/0.9Meter,Black)	8	758.00	204	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CT62BM1	Wayona USB Type C Fast Charging Cable Charger Cord 3A QC 3.0 Data Cable Compatible with Samsung Galaxy S10e S10 S9 S8 S20 Plus, Note 10 9 8, M51 A40 A50 A70, Moto G7 G8 (1M, Grey)	1	999.00	165	2021-01-01 00:00:00	2021-01-01 00:00:00
B07CRL2GY6	boAt Rugged V3 Braided Micro USB Cable (Pearl White)	1	799.00	229	2021-01-01 00:00:00	2021-01-01 00:00:00
B07DWFX9YS	Amazon Basics USB A to Lightning PVC Molded Nylon MFi Certified Charging Cable (Black, 1.2 meter)	1	1999.00	60	2021-01-01 00:00:00	2021-01-01 00:00:00
B01D5H90L4	AmazonBasics - High-Speed Male to Female HDMI Extension Cable - 6 Feet	3	700.00	120	2021-01-01 00:00:00	2021-01-01 00:00:00
B07F1P8KNV	Wayona Nylon Braided Usb Type C 3Ft 1M 3A Fast Charger Cable For Samsung Galaxy S9 S8 (Wc3Cb1, Black)	1	1099.00	124	2021-01-01 00:00:00	2021-01-01 00:00:00
B084N1BM9L	Belkin Apple Certified Lightning to USB Charge and Sync Tough Braided Cable for iPhone, iPad, Air Pods, 3.3 feet (1 meters) – Black	1	1999.00	265	2021-01-01 00:00:00	2021-01-01 00:00:00
B09F6D21BY	7SEVEN Compatible LG TV Remote Suitable for LG Non Magic Smart tv Remote Control (Mouse & Voice Non-Support) MR20GA Prime Video and Netflix Hotkeys	5	1999.00	85	2021-01-01 00:00:00	2021-01-01 00:00:00
B09LQQYNZQ	Realme Smart TV Stick 4K	16	4699.00	266	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BC9BW512	Acer 100 cm (40 inches) P Series Full HD Android Smart LED TV AR40AR2841FDFL (Black)	4	24990.00	128	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B61HYR92	Lapster usb 2.0 mantra cable, mantra mfs 100 data cable (black)	1	999.00	97	2021-01-01 00:00:00	2021-01-01 00:00:00
B075ZTJ9XR	AmazonBasics High-Speed Braided HDMI Cable - 3 Feet - Supports Ethernet, 3D, 4K and Audio Return (Black)	3	650.00	242	2021-01-01 00:00:00	2021-01-01 00:00:00
B0978V2CP6	Cubetek 3 in 1 LCD Display V5.0 Bluetooth Transmitter Receiver, Bypass Audio Adapter with Aux, Optical, Dual Link Support for TV, Home Stereo, PC, Headphones, Speakers, Model: CB-BT27	17	3100.00	290	2021-01-01 00:00:00	2021-01-01 00:00:00
B09LRZYBH1	KRISONS Thunder Speaker, Multimedia Home Theatre, Floor Standing Speaker, LED Display with Bluetooth, FM, USB, Micro SD Card, AUX Connectivity	18	3999.00	84	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B997FBZT	Acer 139 cm (55 inches) H Series 4K Ultra HD Android Smart LED TV AR55AR2851UDPRO (Black)	4	49990.00	146	2021-01-01 00:00:00	2021-01-01 00:00:00
B098LCVYPW	Dealfreez Case Compatible for Fire TV Stick 4K All Alexa Voice Remote Shockproof Silicone Anti-Lost Cover with Loop (C-Black)	5	999.00	111	2021-01-01 00:00:00	2021-01-01 00:00:00
B09HV71RL1	Wayona Type C to Lightning MFI Certified 20W Fast charging Nylon Braided USB C Cable for iPhone 14 Pro, 14 Pro Max, 14, 14 Plus, 13, 13 Pro, 13 Pro Max, 13 Mini, 12, 12 Pro, 11, 11 Pro Max, iPhone 12 Mini (2M, Black)	1	1499.00	78	2021-01-01 00:00:00	2021-01-01 00:00:00
B08PZ6HZLT	VW 80 cm (32 inches) HD Ready Android Smart LED TV VW32PRO (Black)	4	18999.00	253	2021-01-01 00:00:00	2021-01-01 00:00:00
B075TJHWVC	Airtel Digital TV HD Set Top Box with 1 Month Basic Pack with Recording + Free Standard Installation	13	2299.00	279	2021-01-01 00:00:00	2021-01-01 00:00:00
B09LV13JFB	LOHAYA Voice Assistant Remote Compatible for Airtel Xstream Set-Top Box Remote Control with Netflix Function (Black) (Non - Voice)	5	999.00	98	2021-01-01 00:00:00	2021-01-01 00:00:00
B092BL5DCX	Samsung 138 cm (55 inches) Crystal 4K Series Ultra HD Smart LED TV UA55AUE60AKLXL (Black)	4	69900.00	104	2021-01-01 00:00:00	2021-01-01 00:00:00
B09VH568H7	Amazon Brand - Solimo 3A Fast Charging Tough Type C USB Data Cable  – 1 Meter	1	299.00	235	2021-01-01 00:00:00	2021-01-01 00:00:00
B09HQSV46W	Mi 100 cm (40 inches) Horizon Edition Full HD Android LED TV 4A | L40M6-EI (Black)	4	29999.00	56	2021-01-01 00:00:00	2021-01-01 00:00:00
B08TZD7FQN	Astigo Compatible Remote Control for Mi Smart LED 4A (43"/32")	5	599.00	54	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B21XL94T	Toshiba 108 cm (43 inches) V Series Full HD Smart Android LED TV 43V35KP (Silver)	4	34990.00	98	2021-01-01 00:00:00	2021-01-01 00:00:00
B09PTT8DZF	Lenovo USB A to Type-C Tangle-free  Aramid fiber braided 1.2m cable with 4A Fast charging & 480 MBPS data transmission, certified 10000+ bend lifespan, Metallic Grey	1	670.00	134	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B94JPY2N	Amazon Brand - Solimo 65W Fast Charging Braided Type C to C Data Cable | Suitable For All Supported Mobile Phones (1 Meter, Black)	1	999.00	128	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3XXSB1K	LG 139 cm (55 inches) 4K Ultra HD Smart LED TV 55UQ7500PSF (Ceramic Black)	4	79990.00	50	2021-01-01 00:00:00	2021-01-01 00:00:00
B08RZ12GKR	Tata Sky Digital TV HD Setup Box Remote	5	499.00	283	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4T8RSJ1	pTron Solero T241 2.4A Type-C Data & Charging USB Cable, Made in India, 480Mbps Data Sync, Durable 1-Meter Long USB Cable for Smartphone, Type-C USB Devices (White)	1	800.00	292	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B7B9V9QP	VU 108 cm (43 inches) Premium Series Full HD Smart LED TV 43GA (Black)	4	35000.00	127	2021-01-01 00:00:00	2021-01-01 00:00:00
B08XXVXP3J	Storite Super Speed USB 3.0 Male to Male Cable for Hard Drive Enclosures, Laptop Cooling Pad, DVD Players(60cm,Black)	1	999.00	131	2021-01-01 00:00:00	2021-01-01 00:00:00
B06XGWRKYT	Kodak 80 cm (32 Inches) HD Ready LED TV Kodak 32HDX900S (Black)	6	15999.00	121	2021-01-01 00:00:00	2021-01-01 00:00:00
B07CWDX49D	AmazonBasics Double Braided Nylon USB Type-C to Type-C 2.0 Cable, Charging Adapter, Smartphone 6 feet, Dark Grey	1	1600.00	154	2021-01-01 00:00:00	2021-01-01 00:00:00
B09TY4MSH3	Firestick Remote	5	2499.00	111	2021-01-01 00:00:00	2021-01-01 00:00:00
B07RY2X9MP	AmazonBasics 10.2 Gbps High-Speed 4K HDMI Cable with Braided Cord (10-Foot, Dark Grey)	3	1500.00	91	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B2C5MJN6	Hisense 126 cm (50 inches) Bezelless Series 4K Ultra HD Smart LED Google TV 50A6H (Black)	4	54990.00	204	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BBMGLQDW	Tuarso 8K HDMI 2.1 Cable 48Gbps , 1.5 Meter High-Speed Braided HDMI Cable ( 8K@60HZ、4K@120HZ、2K@240HZ ) HDMI 2.1 Cable Compatible with Monitors , Television , Laptops , Projectors , Game Consoles and more with HDMI Ports Device	3	1999.00	169	2021-01-01 00:00:00	2021-01-01 00:00:00
B01LONQBDG	AmazonBasics USB Type-C to Micro-B 2.0 Cable - 6 Inches (15.2 Centimeters) - White	1	899.00	231	2021-01-01 00:00:00	2021-01-01 00:00:00
B08XXF5V6G	Kodak 139 cm (55 inches) 4K Ultra HD Smart LED TV 55CA0909 (Black)	4	50999.00	293	2021-01-01 00:00:00	2021-01-01 00:00:00
B09HK9JH4F	Smashtronics® - Case for Firetv Remote, Fire Stick Remote Cover Case, Silicone Cover for TV Firestick 4K/TV 2nd Gen(3rd Gen) Remote Control - Light Weight/Anti Slip/Shockproof (Black)	5	399.00	145	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MMD1FDN	7SEVEN® Suitable Sony Tv Remote Original Bravia for Smart Android Television Compatible for Any Model of LCD LED OLED UHD 4K Universal Sony Remote Control	5	699.00	88	2021-01-01 00:00:00	2021-01-01 00:00:00
B09HN7LD5L	PROLEGEND® PL-T002 Universal TV Stand Table Top for Most 22 to 65 inch LCD Flat Screen TV, VESA up to 800 by 400mm	7	4500.00	153	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BNDD9TN6	WANBO X1 Pro (Upgraded) | Native 1080P Full HD | Android 9 | Projector for Home | LED Cinema | 350ANSI | 3900 lumens | WiFi Bluetooth | HDMI ARC | Dolby DTS | 4D Keystone Correction (Global Version)	11	28900.00	236	2021-01-01 00:00:00	2021-01-01 00:00:00
B0941392C8	Lava Charging Adapter Elements D3 2A Fast Charging Speed Usb Type C Data Cable, White	1	449.00	235	2021-01-01 00:00:00	2021-01-01 00:00:00
B01M5967SY	TIZUM High Speed HDMI Cable Aura -Gold Plated-High Speed Data 10.2Gbps, 3D, 4K, HD 1080P (10 Ft/ 3 M)	3	999.00	59	2021-01-01 00:00:00	2021-01-01 00:00:00
B016MDK4F4	Technotech High Speed HDMI Cable 5 Meter V1.4 - Supports Full HD 1080p (Color May Vary)	3	499.00	154	2021-01-01 00:00:00	2021-01-01 00:00:00
B08G43CCLC	NK STAR 950 Mbps USB WiFi Adapter Wireless Network Receiver Dongle for Desktop Laptop, (Support- Windows XP/7/8/10 & MAC OS) NOt Support to DVR and HDTV	2	999.00	80	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B61GCHC1	LS LAPSTER Quality Assured USB 2.0 morpho cable, morpho device cable for Mso 1300 E3/E2/E Biometric Finger Print Scanner morpho USB cable (Black)	1	999.00	125	2021-01-01 00:00:00	2021-01-01 00:00:00
B07RX14W1Q	Amazon Basics 10.2 Gbps High-Speed 4K HDMI Cable with Braided Cord, 1.8 Meter, Dark Grey	3	900.00	103	2021-01-01 00:00:00	2021-01-01 00:00:00
B09PLD9TCD	Kodak 126 cm (50 inches) Bezel-Less Design Series 4K Ultra HD Smart Android LED TV 50UHDX7XPROBL (Black)	4	42999.00	203	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B8ZKWGKD	ZORBES® Wall Adapter Holder for Alexa Echo Dot 4th Generation,A Space-Saving Solution with Cord Management for Your Smart Home Speakers -White (Holder Only)	7	1052.00	197	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NNJ9WYM	Sansui 80cm (32 inches) HD Ready Smart LED TV JSY32SKHD (BLACK) With Bezel-less Design	4	19990.00	292	2021-01-01 00:00:00	2021-01-01 00:00:00
B08H5L8V1L	Synqe USB Type C Fast Charging Cable 2M Charger Cord Data Cable Compatible with Samsung Galaxy M51,Galaxy M31S, S10e S10 S9 S20 Plus, Note10 9 8,M40 A50 A70, Redmi Note 9, Moto G7, Poco F1 (2M, Grey)	1	1099.00	155	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B8CXTTG3	MI 80 cm (32 inches) HD Ready Smart Android LED TV 5A Pro | L32M7-EAIN (Black)	4	25999.00	188	2021-01-01 00:00:00	2021-01-01 00:00:00
B09HCH3JZG	Bestor ® 8K Hdmi 2.1 Cable 48Gbps 9.80Ft/Ultra High Speed Hdmi Braided Cord For Roku Tv/Ps5/Hdtv/Blu-Ray Projector, Laptop, Television, Personal Computer, Xbox, Ps4, Ps5, Ps4 Pro (1 M, Grey)	3	1899.00	294	2021-01-01 00:00:00	2021-01-01 00:00:00
B097JVLW3L	Irusu Play VR Plus Virtual Reality Headset with Headphones for Gaming (Black)	19	3500.00	222	2021-01-01 00:00:00	2021-01-01 00:00:00
B09SB6SJB4	Amazon Brand - Solimo Fast Charging Braided Type C Data Cable Seam, Suitable For All Supported Mobile Phones (1 Meter, Black)	1	599.00	120	2021-01-01 00:00:00	2021-01-01 00:00:00
B08NW8GHCJ	Synqe USB C to USB C 60W Nylon Braided Fast Charging Type C to Type C Cable Compatible with Samsung Galaxy Note 20/Ultra, S20 S22 S21 S20 FE A73 A53 A33 (2M, Black)	1	999.00	68	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YHLPQYT	Shopoflux Silicone Remote Cover for Mi Smart TV and Mi TV Stick/MI Box S / 3S / MI 4X / 4A Smart LED TV (Black)	5	600.00	215	2021-01-01 00:00:00	2021-01-01 00:00:00
B08G1RW2Q3	EYNK Extra Long Micro USB Fast Charging USB Cable | Micro USB Data Cable | Quick Fast Charging Cable | Charger Sync Cable | High Speed Transfer Android Smartphones V8 Cable (2.4 Amp, 3m,) (White)	1	799.00	174	2021-01-01 00:00:00	2021-01-01 00:00:00
B08YXJJW8H	LUNAGARIYA®, Protective Case Compatible with JIO Settop Box Remote Control,PU Leather Cover Holder (Before Placing Order,Please Compare The Dimensions of The Product with Your Remote)	5	399.00	190	2021-01-01 00:00:00	2021-01-01 00:00:00
B09P8M18QM	7SEVEN® Compatible with Fire Tv Stick Remote with Voice Command Feature Suitable for Second Generation Amazon Fire Tv Stick Remote Only - Pairing Must	5	2999.00	185	2021-01-01 00:00:00	2021-01-01 00:00:00
B08BG4M4N7	PRUSHTI COVER AND BAGS, Protective Case for Airtel Xstream settop Box Remote Remote Control Pouch Cover Holder PU Leather Cover Holder(only Cover for Selling Purpose)	5	499.00	109	2021-01-01 00:00:00	2021-01-01 00:00:00
B07VJ9ZTXS	Aine HDMI Male to VGA Female Video Converter Adapter Cable (Black)	3	599.00	116	2021-01-01 00:00:00	2021-01-01 00:00:00
B084872DQY	Mi 80 cm (32 inches) HD Ready Android Smart LED TV 4A PRO | L32M5-AL (Black)	4	14999.00	86	2021-01-01 00:00:00	2021-01-01 00:00:00
B00GGGOYEU	Storite USB 2.0 A to Mini 5 pin B Cable for External HDDS/Camera/Card Readers (150cm - 1.5M)	1	699.00	181	2021-01-01 00:00:00	2021-01-01 00:00:00
B08FD2VSD9	TCL 108 cm (43 inches) 4K Ultra HD Certified Android Smart LED TV 43P615 (Black)	4	51990.00	218	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BQRJ3C47	REDTECH USB-C to Lightning Cable 3.3FT, [Apple MFi Certified] Lightning to Type C Fast Charging Cord Compatible with iPhone 14/13/13 pro/Max/12/11/X/XS/XR/8, Supports Power Delivery - White	1	999.00	164	2021-01-01 00:00:00	2021-01-01 00:00:00
B095JPKPH3	OnePlus 163.8 cm (65 inches) U Series 4K LED Smart Android TV 65U1S (Black)	4	69999.00	89	2021-01-01 00:00:00	2021-01-01 00:00:00
B087JWLZ2K	AmazonBasics 108 cm (43 inches) 4K Ultra HD Smart LED Fire TV AB43U20PS (Black)	4	50000.00	76	2021-01-01 00:00:00	2021-01-01 00:00:00
B09DSXK8JX	Kodak 80 cm (32 inches) HD Ready Certified Android Smart LED TV 32HDX7XPROBL (Black)	4	19499.00	172	2021-01-01 00:00:00	2021-01-01 00:00:00
B08V9C4B1J	Synqe Type C to Type C Short Fast Charging 60W Cable Compatible with Samsung Galaxy Z Fold3 5G, Z Flip3 5G, S22 5G, S22 Ultra, S21, S20, S20FE, A52, A73, A53 (0.25M, Black)	1	999.00	145	2021-01-01 00:00:00	2021-01-01 00:00:00
B08PKBMJKS	Airtel DigitalTV HD Setup Box Remote	5	499.00	148	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B8VQ7KDS	Airtel Digital TV HD Set Top Box with FTA Pack | Unlimited Entertainment + Recording Feature + Free Standard Installation (6 Months Pack)	13	2499.00	298	2021-01-01 00:00:00	2021-01-01 00:00:00
B086JTMRYL	ESR USB C to Lightning Cable, 10 ft (3 m), MFi-Certified, Braided Nylon Power Delivery Fast Charging for iPhone 14/14 Plus/14 Pro/14 Pro Max, iPhone 13/12/11/X/8 Series, Use with Type-C Chargers, Black	1	1899.00	155	2021-01-01 00:00:00	2021-01-01 00:00:00
B09RWQ7YR6	MI 138.8 cm (55 inches) 5X Series 4K Ultra HD LED Smart Android TV L55M6-ES (Grey)	4	69999.00	267	2021-01-01 00:00:00	2021-01-01 00:00:00
B00OFM6PEO	Storite USB Extension Cable USB 3.0 Male to Female Extension Cable High Speed 5GBps Extension Cable Data Transfer for Keyboard, Mouse, Flash Drive, Hard Drive, Printer and More- 1.5M - Blue	1	799.00	275	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BF57RN3K	Fire-Boltt Ninja Call Pro Plus 1.83" Smart Watch with Bluetooth Calling, AI Voice Assistance, 100 Sports Modes IP67 Rating, 240*280 Pixel High Resolution	20	19999.00	279	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3RRWSF6	Fire-Boltt Phoenix Smart Watch with Bluetooth Calling 1.3",120+ Sports Modes, 240*240 PX High Res with SpO2, Heart Rate Monitoring & IP67 Rating	20	9999.00	300	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B5B6PQCT	boAt Wave Call Smart Watch, Smart Talk with Advanced Dedicated Bluetooth Calling Chip, 1.69” HD Display with 550 NITS & 70% Color Gamut, 150+ Watch Faces, Multi-Sport Modes,HR,SpO2, IP68(Active Black)	20	7990.00	230	2021-01-01 00:00:00	2021-01-01 00:00:00
B08HV83HL3	MI Power Bank 3i 20000mAh Lithium Polymer 18W Fast Power Delivery Charging | Input- Type C | Micro USB| Triple Output | Sandstone Black	21	2199.00	177	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BBN4DZBD	Redmi A1 (Light Blue, 2GB RAM, 32GB Storage) | Segment Best AI Dual Cam | 5000mAh Battery | Leather Texture Design | Android 12	22	8999.00	163	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3CPQ5PF	OnePlus Nord 2T 5G (Jade Fog, 8GB RAM, 128GB Storage)	22	28999.00	236	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3CQBRB4	OnePlus Nord 2T 5G (Gray Shadow, 8GB RAM, 128GB Storage)	22	28999.00	90	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BBN56J5H	Redmi A1 (Black, 2GB RAM, 32GB Storage) | Segment Best AI Dual Cam | 5000mAh Battery | Leather Texture Design | Android 12	22	8999.00	78	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BBN3WF7V	Redmi A1 (Light Green, 2GB RAM 32GB ROM) | Segment Best AI Dual Cam | 5000mAh Battery | Leather Texture Design | Android 12	22	8999.00	289	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BDRVFDKP	SanDisk Ultra® microSDXC™ UHS-I Card, 64GB, 140MB/s R, 10 Y Warranty, for Smartphones	23	1000.00	106	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B5LVS732	Noise Pulse Go Buzz Smart Watch Bluetooth Calling with 1.69" Display, 550 NITS, 150+ Cloud Watch Face, SPo2, Heart Rate Tracking, 100 Sports Mode with Auto Detection, Longer Battery (Jet Black)	20	4999.00	86	2021-01-01 00:00:00	2021-01-01 00:00:00
B09V2Q4QVQ	Nokia 105 Single SIM, Keypad Mobile Phone with Wireless FM Radio | Charcoal	24	1599.00	188	2021-01-01 00:00:00	2021-01-01 00:00:00
B09V12K8NT	boAt Wave Lite Smartwatch with 1.69" HD Display, Sleek Metal Body, HR & SpO2 Level Monitor, 140+ Watch Faces, Activity Tracker, Multiple Sports Modes, IP68 & 7 Days Battery Life(Active Black)	20	6990.00	68	2021-01-01 00:00:00	2021-01-01 00:00:00
B01DEWVZ2C	JBL C100SI Wired In Ear Headphones with Mic, JBL Pure Bass Sound, One Button Multi-function Remote, Angled Buds for Comfort fit (Black)	25	999.00	79	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BMGB3CH9	Samsung Galaxy M04 Dark Blue, 4GB RAM, 64GB Storage | Upto 8GB RAM with RAM Plus | MediaTek Helio P35 | 5000 mAh Battery	22	11999.00	280	2021-01-01 00:00:00	2021-01-01 00:00:00
B08D77XZX5	PTron Tangentbeat in-Ear Bluetooth 5.0 Wireless Headphones with Mic, Enhanced Bass, 10mm Drivers, Clear Calls, Snug-Fit, Fast Charging, Magnetic Buds, Voice Assistant & IPX4 Wireless Neckband (Black)	25	2499.00	205	2021-01-01 00:00:00	2021-01-01 00:00:00
B09XB8GFBQ	Redmi 10A (Charcoal Black, 4GB RAM, 64GB Storage) | 2 Ghz Octa Core Helio G25 | 5000 mAh Battery | Finger Print Sensor | Upto 5GB RAM with RAM Booster	22	11999.00	126	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WG8PDCW	pTron Bullet Pro 36W PD Quick Charger, 3 Port Fast Car Charger Adapter - Compatible with All Smartphones & Tablets (Black)	26	1299.00	181	2021-01-01 00:00:00	2021-01-01 00:00:00
B07GPXXNNG	boAt Bassheads 100 in Ear Wired Earphones with Mic(Taffy Pink)	25	999.00	111	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BDYVC5TD	SanDisk Ultra® microSDXC™ UHS-I Card, 128GB, 140MB/s R, 10 Y Warranty, for Smartphones	23	1800.00	190	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BMGB2TPR	Samsung Galaxy M04 Light Green, 4GB RAM, 64GB Storage | Upto 8GB RAM with RAM Plus | MediaTek Helio P35 | 5000 mAh Battery	22	11999.00	198	2021-01-01 00:00:00	2021-01-01 00:00:00
B08MC57J31	MI 10000mAh Lithium Ion, Lithium Polymer Power Bank Pocket Pro with 22.5 Watt Fast Charging, Dual Input Ports(Micro-USB and Type C), Triple Output Ports, (Black)	21	2499.00	117	2021-01-01 00:00:00	2021-01-01 00:00:00
B08HVL8QN3	Mi 10000mAH Li-Polymer, Micro-USB and Type C Input Port, Power Bank 3i with 18W Fast Charging (Midnight Black)	21	2199.00	69	2021-01-01 00:00:00	2021-01-01 00:00:00
B0746JGVDS	ELV Car Mount Adjustable Car Phone Holder Universal Long Arm, Windshield for Smartphones - Black	27	999.00	228	2021-01-01 00:00:00	2021-01-01 00:00:00
B08VFF6JQ8	Samsung 25W USB Travel Adapter for Cellular Phones - White	28	1699.00	278	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NVPSCQT	Noise ColorFit Pulse Grand Smart Watch with 1.69"(4.29cm) HD Display, 60 Sports Modes, 150 Watch Faces, Fast Charge, Spo2, Stress, Sleep, Heart Rate Monitoring & IP68 Waterproof (Jet Black)	20	3999.00	91	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YV4RG4D	Fire-Boltt Ninja 3 Smartwatch Full Touch 1.69 & 60 Sports Modes with IP68, Sp02 Tracking, Over 100 Cloud based watch faces - Black	20	7999.00	277	2021-01-01 00:00:00	2021-01-01 00:00:00
B09TWHTBKQ	Samsung Galaxy M33 5G (Mystique Green, 8GB, 128GB Storage) | 6000mAh Battery | Upto 16GB RAM with RAM Plus | Travel Adapter to be Purchased Separately	22	25999.00	295	2021-01-01 00:00:00	2021-01-01 00:00:00
B08L5HMJVW	SanDisk Ultra microSD UHS-I Card 32GB, 120MB/s R	23	700.00	73	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4F2XCK3	Samsung Galaxy M13 (Aqua Green, 6GB, 128GB Storage) | 6000mAh Battery | Upto 12GB RAM with RAM Plus	22	17999.00	212	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BF54972T	Fire-Boltt Ninja Call Pro Plus 1.83" Smart Watch with Bluetooth Calling, AI Voice Assistance, 100 Sports Modes IP67 Rating, 240*280 Pixel High Resolution	20	19999.00	107	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YV4MW2T	Fire-Boltt India's No 1 Smartwatch Brand Talk 2 Bluetooth Calling Smartwatch with Dual Button, Hands On Voice Assistance, 60 Sports Modes, in Built Mic & Speaker with IP68 Rating	20	9999.00	94	2021-01-01 00:00:00	2021-01-01 00:00:00
B09TWH8YHM	Samsung Galaxy M33 5G (Emerald Brown, 6GB, 128GB Storage) | 6000mAh Battery | Upto 12GB RAM with RAM Plus | Travel Adapter to be Purchased Separately	22	24999.00	146	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WGMMQGP	iQOO vivo Z6 5G (Chromatic Blue, 6GB RAM, 128GB Storage) | Snapdragon 695-6nm Processor | 120Hz FHD+ Display | 5000mAh Battery	22	20999.00	242	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BF563HB4	Fire-Boltt Ninja Call Pro Plus 1.83" Smart Watch with Bluetooth Calling, AI Voice Assistance, 100 Sports Modes IP67 Rating, 240*280 Pixel High Resolution	20	19999.00	135	2021-01-01 00:00:00	2021-01-01 00:00:00
B09GFPVD9Y	Redmi 9 Activ (Carbon Black, 4GB RAM, 64GB Storage) | Octa-core Helio G35 | 5000 mAh Battery	22	10999.00	70	2021-01-01 00:00:00	2021-01-01 00:00:00
B09GFLXVH9	Redmi 9A Sport (Coral Green, 2GB RAM, 32GB Storage) | 2GHz Octa-core Helio G25 Processor | 5000 mAh Battery	22	8499.00	231	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BF4YBLPX	Fire-Boltt Ninja Call Pro Plus 1.83" Smart Watch with Bluetooth Calling, AI Voice Assistance, 100 Sports Modes IP67 Rating, 240*280 Pixel High Resolution	20	19999.00	218	2021-01-01 00:00:00	2021-01-01 00:00:00
B09XB7DPW1	Redmi 10A (Sea Blue, 4GB RAM, 64GB Storage) | 2 Ghz Octa Core Helio G25 | 5000 mAh Battery | Finger Print Sensor | Upto 5GB RAM with RAM Booster	22	11999.00	170	2021-01-01 00:00:00	2021-01-01 00:00:00
B07PFJ5W31	AGARO Blaze USB 3.0 to USB Type C OTG Adapter	29	495.00	188	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3N7LR6K	Fire-Boltt Visionary 1.78" AMOLED Bluetooth Calling Smartwatch with 368*448 Pixel Resolution 100+ Sports Mode, TWS Connection, Voice Assistance, SPO2 & Heart Rate Monitoring	20	16999.00	112	2021-01-01 00:00:00	2021-01-01 00:00:00
B09ZQK9X8G	Noise ColorFit Pro 4 Advanced Bluetooth Calling Smart Watch with 1.72" TruView Display, Fully-Functional Digital Crown, 311 PPI, 60Hz Refresh Rate, 500 NITS Brightness (Charcoal Black)	20	5999.00	127	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WJV6P1R	iQOO Z6 Lite 5G by vivo (Stellar Green, 6GB RAM, 128GB Storage) | World's First Snapdragon 4 Gen 1 | 120Hz Refresh Rate | 5000mAh Battery | Travel Adapter to be Purchased Separately	22	18999.00	161	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BF54LXW6	Fire-Boltt Ninja Call Pro Plus 1.83" Smart Watch with Bluetooth Calling, AI Voice Assistance, 100 Sports Modes IP67 Rating, 240*280 Pixel High Resolution	20	19999.00	86	2021-01-01 00:00:00	2021-01-01 00:00:00
B09XB7SRQ5	Redmi 10A (Slate Grey, 4GB RAM, 64GB Storage) | 2 Ghz Octa Core Helio G25 | 5000 mAh Battery | Finger Print Sensor | Upto 5GB RAM with RAM Booster	22	11999.00	83	2021-01-01 00:00:00	2021-01-01 00:00:00
B09FFK1PQG	Duracell 38W Fast Car Charger Adapter with Dual Output. Quick Charge, Type C PD 20W & Qualcomm Certified 3.0 Compatible for iPhone, All Smartphones, Tablets & More (Copper & Black)	26	1699.00	81	2021-01-01 00:00:00	2021-01-01 00:00:00
B09RMQYHLH	realme narzo 50 (Speed Blue, 4GB RAM+64GB Storage) Helio G96 Processor | 50MP AI Triple Camera | 120Hz Ultra Smooth Display	22	15999.00	118	2021-01-01 00:00:00	2021-01-01 00:00:00
B08ZN4B121	WeCool Bluetooth Extendable Selfie Sticks with Wireless Remote and Tripod Stand, 3-in-1 Multifunctional Selfie Stick with Tripod Stand Compatible with iPhone/OnePlus/Samsung/Oppo/Vivo and All Phones	30	1599.00	61	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3RSDSZ3	Fire-Boltt Phoenix Smart Watch with Bluetooth Calling 1.3",120+ Sports Modes, 240*240 PX High Res with SpO2, Heart Rate Monitoring & IP67 Rating	20	9999.00	144	2021-01-01 00:00:00	2021-01-01 00:00:00
B08VB34KJ1	OPPO A74 5G (Fantastic Purple,6GB RAM,128GB Storage) with No Cost EMI/Additional Exchange Offers	22	20990.00	255	2021-01-01 00:00:00	2021-01-01 00:00:00
B09T39K9YL	Redmi Note 11 Pro + 5G (Stealth Black, 6GB RAM, 128GB Storage) | 67W Turbo Charge | 120Hz Super AMOLED Display | Additional Exchange Offers | Charger Included	22	24999.00	122	2021-01-01 00:00:00	2021-01-01 00:00:00
B08VF8V79P	Samsung Original 25W USB Travel Lightning Adapter for Cellular Phones, Black	28	1699.00	152	2021-01-01 00:00:00	2021-01-01 00:00:00
B08G28Z33M	realme Buds Classic Wired in Ear Earphones with Mic (Black)	25	699.00	165	2021-01-01 00:00:00	2021-01-01 00:00:00
B09PNKXSKF	Noise ColorFit Pulse Grand Smart Watch with 1.69" HD Display, 60 Sports Modes, 150 Watch Faces, Spo2 Monitoring, Call Notification, Quick Replies to Text & Calls (Rose Pink)	20	3990.00	235	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B5DDJNH4	boAt Wave Call Smart Watch, Smart Talk with Advanced Dedicated Bluetooth Calling Chip, 1.69” HD Display with 550 NITS & 70% Color Gamut, 150+ Watch Faces, Multi-Sport Modes, HR, SpO2, IP68(Mauve)	20	7990.00	188	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WDKLDRX	iQOO Neo 6 5G (Dark Nova, 8GB RAM, 128GB Storage) | Snapdragon® 870 5G | 80W FlashCharge	22	34999.00	277	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MQSCJQ1	boAt Xtend Smartwatch with Alexa Built-in, 1.69” HD Display, Multiple Watch Faces, Stress Monitor, Heart & SpO2 Monitoring, 14 Sports Modes, Sleep Monitor, 5 ATM & 7 Days Battery(Charcoal Black)	20	7990.00	105	2021-01-01 00:00:00	2021-01-01 00:00:00
B094YFFSMY	Tygot Bluetooth Extendable Selfie Sticks with Wireless Remote and Tripod Stand, 3-in-1 Multifunctional Selfie Stick with Tripod Stand Compatible with iPhone/OnePlus/Samsung/Oppo/Vivo and All Phones	31	1999.00	148	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MT84WV5	Samsung EVO Plus 128GB microSDXC UHS-I U3 130MB/s Full HD & 4K UHD Memory Card with Adapter (MB-MC128KA), Blue	23	3999.00	168	2021-01-01 00:00:00	2021-01-01 00:00:00
B08VS3YLRK	Portronics Adapto 20 Type C 20W Fast PD/Type C Adapter Charger with Fast Charging for iPhone 12/12 Pro/12 Mini/12 Pro Max/11/XS/XR/X/8/Plus, iPad Pro/Air/Mini, Galaxy 10/9/8 (Adapter Only) White	28	1499.00	117	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4F3QNDM	Samsung Galaxy M13 5G (Aqua Green, 6GB, 128GB Storage) | 5000mAh Battery | Upto 12GB RAM with RAM Plus	22	19499.00	99	2021-01-01 00:00:00	2021-01-01 00:00:00
B07GQD4K6L	boAt Bassheads 100 in Ear Wired Earphones with Mic(Furious Red)	25	999.00	62	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WDKLRM4	iQOO Z6 44W by vivo (Lumina Blue, 4GB RAM, 128GB Storage) | 6.44" FHD+ AMOLED Display | 50% Charge in just 27 mins | in-Display Fingerprint Scanning	22	19999.00	238	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BP18W8TM	Fire-Boltt Gladiator 1.96" Biggest Display Smart Watch with Bluetooth Calling, Voice Assistant &123 Sports Modes, 8 Unique UI Interactions, SpO2, 24/7 Heart Rate Tracking	20	9999.00	215	2021-01-01 00:00:00	2021-01-01 00:00:00
B07GXHC691	STRIFF PS2_01 Multi Angle Mobile/Tablet Tabletop Stand. Phone Holder for iPhone, Android, Samsung, OnePlus, Xiaomi. Portable, Foldable Cell Phone Stand. Perfect for Bed, Office, Home & Desktop (Black)	32	499.00	111	2021-01-01 00:00:00	2021-01-01 00:00:00
B08FN6WGDQ	Samsung Galaxy Buds Live Bluetooth Truly Wireless in Ear Earbuds with Mic, Upto 21 Hours Playtime, Mystic Black	25	15990.00	283	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3D39RKV	OnePlus Nord 2T 5G (Jade Fog, 12GB RAM, 256GB Storage)	22	33999.00	125	2021-01-01 00:00:00	2021-01-01 00:00:00
B085HY1DGR	Sounce Spiral Charger Cable Protector Data Cable Saver Charging Cord Protective Cable Cover Headphone MacBook Laptop Earphone Cell Phone Set of 3 (Cable Protector (12 Units))	33	999.00	144	2021-01-01 00:00:00	2021-01-01 00:00:00
B08D75R3Z1	PTron Boom Ultima 4D Dual Driver, in-Ear Gaming Wired Headphones with in-line Mic, Volume Control & Passive Noise Cancelling Boom 3 Earphones - (Dark Blue)	25	1900.00	296	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4F2TTTS	Samsung Galaxy M13 (Aqua Green, 4GB, 64GB Storage) | 6000mAh Battery | Upto 8GB RAM with RAM Plus	22	14999.00	228	2021-01-01 00:00:00	2021-01-01 00:00:00
B09WRMNJ9G	OnePlus 10R 5G (Forest Green, 8GB RAM, 128GB Storage, 80W SuperVOOC)	22	38999.00	221	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B14MR9L1	Samsung Galaxy M33 5G (Emerald Brown, 6GB, 128GB Storage) | 6000mAh Battery | Upto 12GB RAM with RAM Plus | Travel Adapter to be Purchased Separately	22	24999.00	268	2021-01-01 00:00:00	2021-01-01 00:00:00
B09ZPL5VYM	Ambrane Mobile Holding Stand, 180° Perfect View, Height Adjustment, Wide Compatibility, Multipurpose, Anti-Skid Design (Twistand, Black)	32	499.00	188	2021-01-01 00:00:00	2021-01-01 00:00:00
B0993BB11X	Ambrane 10000mAh Slim Power Bank, 20W Fast Charging, Dual Output, Type C PD (Input & Output), Quick Charge, Li-Polymer, Multi-Layer Protection for iPhone, Anrdoid & Other Devices (Stylo 10K, Black)	21	1599.00	213	2021-01-01 00:00:00	2021-01-01 00:00:00
B09V2PZDX8	Nokia 105 Single SIM, Keypad Mobile Phone with Wireless FM Radio | Blue	24	1599.00	106	2021-01-01 00:00:00	2021-01-01 00:00:00
B085W8CFLH	PTron Tangent Lite Bluetooth 5.0 Earphones with Mic, Hi-Fi Stereo Sound Neckband, 8Hrs Playtime, Lightweight Snug-fit in-Ear Headphones, IPX4 Water Resistant, Fast Charge & Voice Assistant (Black)	25	1800.00	237	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MT6XSFW	Samsung EVO Plus 64GB microSDXC UHS-I U1 130MB/s Full HD & 4K UHD Memory Card with Adapter (MB-MC64KA), Blue	23	1899.00	91	2021-01-01 00:00:00	2021-01-01 00:00:00
B07RD611Z8	Ambrane 20000mAh Power Bank with 20W Fast Charging, Triple Output, Power Delivery, Type C Input, Made in India, Multi-Layer Protection, Li-Polymer + Type C Cable (Stylo-20k, Black)	21	2499.00	232	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4F52B5X	Samsung Galaxy M13 (Midnight Blue, 4GB, 64GB Storage) | 6000mAh Battery | Upto 8GB RAM with RAM Plus	22	14999.00	133	2021-01-01 00:00:00	2021-01-01 00:00:00
B096VF5YYF	boAt Xtend Smartwatch with Alexa Built-in, 1.69” HD Display, Multiple Watch Faces, Stress Monitor, Heart & SpO2 Monitoring, 14 Sports Modes, Sleep Monitor, 5 ATM & 7 Days Battery(Pitch Black)	20	7990.00	170	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B5D39BCD	boAt Wave Call Smart Watch, Smart Talk with Advanced Dedicated Bluetooth Calling Chip, 1.69” HD Display with 550 NITS & 70% Color Gamut, 150+ Watch Faces, Multi-Sport Modes, HR, SpO2, IP68(Deep Blue)	20	7990.00	174	2021-01-01 00:00:00	2021-01-01 00:00:00
B09XBJ1CTN	MI Xiaomi 22.5W Fast USB Type C Charger Combo for Tablets - White	28	999.00	170	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4F5L738	Samsung Galaxy M13 5G (Aqua Green, 6GB, 128GB Storage) | 5000mAh Battery | Upto 12GB RAM with RAM Plus	22	19499.00	219	2021-01-01 00:00:00	2021-01-01 00:00:00
B08MTCKDYN	Gizga Essentials Spiral Cable Protector Cord Saver for Mac Charger, iPhone Charger, Wire Protector, Lightweight Durable Flexible Wire Winder for Charging Cables, Data Cables, Earphones, Pack of 10	34	299.00	59	2021-01-01 00:00:00	2021-01-01 00:00:00
B09QS8V5N8	Redmi Note 11 (Space Black, 4GB RAM, 64GB Storage)|90Hz FHD+ AMOLED Display | Qualcomm® Snapdragon™ 680-6nm | 33W Charger Included	22	17999.00	183	2021-01-01 00:00:00	2021-01-01 00:00:00
B09T2WRLJJ	Redmi Note 11 Pro + 5G (Phantom White, 8GB RAM, 128GB Storage) | 67W Turbo Charge | 120Hz Super AMOLED Display | Additional Exchange Offers | Charger Included	22	26999.00	263	2021-01-01 00:00:00	2021-01-01 00:00:00
B089WB69Y1	USB Charger, Oraimo Elite Dual Port 5V/2.4A Wall Charger, USB Wall Charger Adapter for iPhone 11/Xs/XS Max/XR/X/8/7/6/Plus, iPad Pro/Air 2/Mini 3/Mini 4, Samsung S4/S5, and More	28	649.00	213	2021-01-01 00:00:00	2021-01-01 00:00:00
B0116MIKKC	Goldmedal Curve Plus 202042 Plastic Spice 3-Pin 240V Universal Travel Adaptor (White)	28	171.00	138	2021-01-01 00:00:00	2021-01-01 00:00:00
B09P858DK8	WeCool C1 Car Mobile Holder with One Click Technology,360° Rotational, Strong Suction Cup,Compatible with 4 to 6 Inch Devices, Wildshield and Dashboard Mobile Holder for Car, and Use	27	1999.00	50	2021-01-01 00:00:00	2021-01-01 00:00:00
B07DJLFMPS	HP 32GB Class 10 MicroSD Memory Card (U1 TF Card 32GB)	23	1600.00	60	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WHQWXL7	iQOO Z6 44W by vivo (Lumina Blue, 6GB RAM, 128GB Storage) | 6.44" FHD+ AMOLED Display | 50% Charge in just 27 mins | in-Display Fingerprint Scanning	22	20999.00	203	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WDK3ZS6	iQOO Z6 Lite 5G by vivo (Mystic Night, 6GB RAM, 128GB Storage) | World's First Snapdragon 4 Gen 1 | 120Hz Refresh Rate | 5000mAh Battery | Travel Adapter to be Purchased Separately	22	18999.00	133	2021-01-01 00:00:00	2021-01-01 00:00:00
B09T2S8X9C	Redmi Note 11 Pro + 5G (Stealth Black, 8GB RAM, 256GB Storage) | 67W Turbo Charge | 120Hz Super AMOLED Display | Additional Exchange Offers | Charger Included	22	28999.00	125	2021-01-01 00:00:00	2021-01-01 00:00:00
B07S9S86BF	boAt Bassheads 242 in Ear Wired Earphones with Mic(Active Black)	25	1490.00	112	2021-01-01 00:00:00	2021-01-01 00:00:00
B07N8RQ6W7	Portronics MODESK POR-122 Universal Mobile Tabletop Holder (Black)	32	699.00	50	2021-01-01 00:00:00	2021-01-01 00:00:00
B09FKDH6FS	realme narzo 50i (Mint Green, 2GB RAM+32GB Storage) Octa Core Processor | 6.5" inch Large Display	22	7999.00	154	2021-01-01 00:00:00	2021-01-01 00:00:00
B08HVJCW95	MI 10000mAh 3i Lithium Polymer Power Bank Dual Input(Micro-USB and Type C) and Output Ports 18W Fast Charging (Metallic Blue)	21	2199.00	300	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YDFDVNS	Nokia 105 Plus Single SIM, Keypad Mobile Phone with Wireless FM Radio, Memory Card Slot and MP3 Player | Red	24	1699.00	78	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WGPKTS4	iQOO Z6 44W by vivo (Raven Black, 4GB RAM, 128GB Storage) | 6.44" FHD+ AMOLED Display | 50% Charge in just 27 mins | in-Display Fingerprint Scanning	22	19999.00	245	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MZCQYHZ	Ambrane 10000mAh Slim Power Bank, 20W Fast Charging, Dual Output, Type C PD (Input & Output), Quick Charge, Li-Polymer, Multi-Layer Protection for iPhone, Anrdoid & Other Devices (Stylo 10K, Green)	21	1599.00	181	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4F2ZWL3	Samsung Galaxy M13 (Stardust Brown, 6GB, 128GB Storage) | 6000mAh Battery | Upto 12GB RAM with RAM Plus	22	17999.00	152	2021-01-01 00:00:00	2021-01-01 00:00:00
B08VB2CMR3	OPPO A74 5G (Fluid Black, 6GB RAM, 128GB Storage) with No Cost EMI/Additional Exchange Offers	22	20990.00	224	2021-01-01 00:00:00	2021-01-01 00:00:00
B095RTJH1M	Spigen EZ Fit Tempered Glass Screen Protector Guard for iPhone 14/13/13 Pro - 2 Pack	35	2899.00	67	2021-01-01 00:00:00	2021-01-01 00:00:00
B097R25DP7	Noise ColorFit Pulse Smartwatch with 3.56 cm (1.4") Full Touch HD Display, SpO2, Heart Rate, Sleep Monitors & 10-Day Battery - Jet Black	20	4999.00	287	2021-01-01 00:00:00	2021-01-01 00:00:00
B08RZ5K9YH	MI 33W SonicCharge 2.0 USB Charger for Cellular Phones - White	28	1999.00	120	2021-01-01 00:00:00	2021-01-01 00:00:00
B08444S68L	OPPO A31 (Mystery Black, 6GB RAM, 128GB Storage) with No Cost EMI/Additional Exchange Offers	22	15990.00	223	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WHQBZLS	iQOO vivo Z6 5G (Chromatic Blue, 8GB RAM, 128GB Storage) | Snapdragon 695-6nm Processor | 120Hz FHD+ Display | 5000mAh Battery	22	21990.00	208	2021-01-01 00:00:00	2021-01-01 00:00:00
B09JS562TP	Motorola a10 Dual Sim keypad Mobile with 1750 mAh Battery, Expandable Storage Upto 32GB, Wireless FM with Recording - Rose Gold	24	1630.00	64	2021-01-01 00:00:00	2021-01-01 00:00:00
B09V17S2BG	boAt Wave Lite Smartwatch with 1.69" HD Display, Heart Rate & SpO2 Level Monitor, Multiple Watch Faces, Activity Tracker, Multiple Sports Modes & IP68 (Deep Blue)	20	6990.00	75	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B5CGTBKV	boAt Wave Call Smart Watch, Smart Talk with Advanced Dedicated Bluetooth Calling Chip, 1.69” HD Display with 550 NITS & 70% Color Gamut, 150+ Watch Faces, Multi-Sport Modes,HR,SpO2(Caribbean Green)	20	7990.00	207	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B23LW7NV	Spigen EZ Fit Tempered Glass Screen Protector for iPhone 14 Pro Max - 2 Pack (Sensor Protection)	35	2899.00	277	2021-01-01 00:00:00	2021-01-01 00:00:00
B09KGV7WSV	KINGONE Upgraded Stylus Pen, iPad Pencil, Ultra High Precision & Sensitivity, Palm Rejection, Prevents False ON/Off Touch, Power Display, Tilt Sensitivity, Magnetic Adsorption for iPad 2018 and Later	36	5999.00	201	2021-01-01 00:00:00	2021-01-01 00:00:00
B0971DWFDT	Portronics CarPower Mini Car Charger with Dual Output, Fast Charging (Type C PD 18W + QC 3.0A) Compatible with All Smartphones(Black)	26	699.00	222	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BNV7JM5Y	boAt Newly Launched Wave Electra with 1.81" HD Display, Smart Calling with Ultra-Seamless BT Calling Chip,20 Built-In Watch Faces,100 + Sports Modes,Menu Personalization,In-Built Games(Charcoal Black)	20	7990.00	140	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B53QFZPY	PTron Newly Launched Force X10 Bluetooth Calling Smartwatch with 1.7" Full Touch Color Display, Real Heart Rate Monitor, SpO2, Watch Faces, 5 Days Runtime, Fitness Trackers & IP68 Waterproof (Pink)	20	5999.00	223	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WJWRNVK	iQOO vivo Z6 5G (Dynamo Black, 6GB RAM, 128GB Storage) | Snapdragon 695-6nm Processor | 120Hz FHD+ Display | 5000mAh Battery	22	20990.00	187	2021-01-01 00:00:00	2021-01-01 00:00:00
B01F25X6RQ	Samsung Ehs64 Ehs64Avfwecinu Hands-Free Wired In Ear Earphones With Mic With Remote Note (White)	25	499.00	285	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B244R4KB	Spigen EZ Fit Tempered Glass Screen Protector for iPhone 14 Pro - 2 Pack (Sensor Protection)	35	2899.00	120	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BMGG6NKT	Samsung Galaxy M04 Dark Blue, 4GB RAM, 128GB Storage | Upto 8GB RAM with RAM Plus | MediaTek Helio P35 | 5000 mAh Battery	22	13499.00	76	2021-01-01 00:00:00	2021-01-01 00:00:00
B092JHPL72	SWAPKART Flexible Mobile Tabletop Stand, Metal Built, Heavy Duty Foldable Lazy Bracket Clip Mount Multi Angle Clamp for All Smartphones (Pack of 1), Multi Color	37	999.00	130	2021-01-01 00:00:00	2021-01-01 00:00:00
B09GFM8CGS	Redmi 9A Sport (Carbon Black, 2GB RAM, 32GB Storage) | 2GHz Octa-core Helio G25 Processor | 5000 mAh Battery	22	7999.00	264	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3MWYCHQ	Fire-Boltt Ring 3 Smart Watch 1.8 Biggest Display with Advanced Bluetooth Calling Chip, Voice Assistance,118 Sports Modes, in Built Calculator & Games, SpO2, Heart Rate Monitoring	20	9999.00	67	2021-01-01 00:00:00	2021-01-01 00:00:00
B09J2MM5C6	Amozo Ultra Hybrid Camera and Drop Protection Back Cover Case for iPhone 13 (TPU + Polycarbonate | Crystal Transparent)	38	1499.00	248	2021-01-01 00:00:00	2021-01-01 00:00:00
B07Q4QV1DL	ELV Aluminum Adjustable Mobile Phone Foldable Tabletop Stand Dock Mount for All Smartphones, Tabs, Kindle, iPad (Black)	32	1499.00	146	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B56YRBNT	Tecno Spark 9 (Sky Mirror, 6GB RAM,128GB Storage) | 11GB Expandable RAM | Helio G37 Gaming Processor	22	13499.00	235	2021-01-01 00:00:00	2021-01-01 00:00:00
B01DF26V7A	JBL C100SI Wired In Ear Headphones with Mic, JBL Pure Bass Sound, One Button Multi-function Remote, Premium Metallic Finish, Angled Buds for Comfort fit (Red)	25	1299.00	86	2021-01-01 00:00:00	2021-01-01 00:00:00
B08K4PSZ3V	Tukzer Capacitive Stylus Pen for Touch Screens Devices, Fine Point, Lightweight Metal Body with Magnetism Cover Cap for Smartphones/Tablets/iPad/iPad Pro/iPhone (Grey)	36	999.00	125	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4F1YC3J	Samsung Galaxy M13 5G (Aqua Green, 6GB, 128GB Storage) | 5000mAh Battery | Upto 12GB RAM with RAM Plus	22	19499.00	292	2021-01-01 00:00:00	2021-01-01 00:00:00
B08K4RDQ71	Tukzer Capacitive Stylus Pen for Touch Screens Devices, Fine Point, Lightweight Metal Body with Magnetism Cover Cap for Smartphones/Tablets/iPad/iPad Pro/iPhone (White)	36	999.00	242	2021-01-01 00:00:00	2021-01-01 00:00:00
B085CZ3SR1	Mi 10W Wall Charger for Mobile Phones with Micro USB Cable (Black)	28	599.00	97	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YV3K34W	Fire-Boltt India's No 1 Smartwatch Brand Talk 2 Bluetooth Calling Smartwatch with Dual Button, Hands On Voice Assistance, 60 Sports Modes, in Built Mic & Speaker with IP68 Rating	20	9999.00	296	2021-01-01 00:00:00	2021-01-01 00:00:00
B09Z6WH2N1	STRIFF 12 Pieces Highly Flexible Silicone Micro USB Protector, Mouse Cable Protector, Suit for All Cell Phones, Computers and Chargers (White)	34	499.00	184	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NL4DJ2Z	FLiX (Beetel) USB to Type C PVC Data Sync & 2A Smartphone Fast Charging Cable, Made in India, 480Mbps Data Sync, Tough Cable, 1 Meter Long USB Cable for USB Type C Devices Black XCD-C12	1	249.00	267	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BGSV43WY	Noise ColorFit Pro 4 Alpha Bluetooth Calling Smart Watch with 1.78 AMOLED Display, Tru Sync, 60hz Refresh Rate, instacharge, Gesture Control, Functional 360 Digital Crown (Jet Black)	20	7999.00	122	2021-01-01 00:00:00	2021-01-01 00:00:00
B0926V9CTV	Elv Mobile Phone Mount Tabletop Holder for Phones and Tablets - Black	32	599.00	112	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WGPKMP5	iQOO Z6 44W by vivo (Raven Black, 6GB RAM, 128GB Storage) | 6.44" FHD+ AMOLED Display | 50% Charge in just 27 mins | in-Display Fingerprint Scanning	22	20999.00	145	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BBFJ9M3X	Redmi 11 Prime 5G (Meadow Green, 4GB RAM 64GB ROM) | Prime Design | MTK Dimensity 700 | 50 MP Dual Cam | 5000mAh | 7 Band 5G	22	15999.00	296	2021-01-01 00:00:00	2021-01-01 00:00:00
B09PLFJ7ZW	Noise Pulse Buzz 1.69" Bluetooth Calling Smart Watch with Call Function, 150 Watch Faces, 60 Sports Modes, Spo2 & Heart Rate Monitoring, Calling Smart Watch for Men & Women - Rose Pink	20	4999.00	264	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B53NXFFR	PTron Newly Launched Force X10 Bluetooth Calling Smartwatch with 1.7" Full Touch Display, Real Heart Rate Monitor, SpO2, Watch Faces, 5 Days Runtime, Health/Fitness Trackers & IP68 Waterproof (Black)	20	5999.00	266	2021-01-01 00:00:00	2021-01-01 00:00:00
B07GNC2592	Portronics CLAMP X Car-Vent Mobile Holder 360 Degree Rotational(Black)	27	999.00	186	2021-01-01 00:00:00	2021-01-01 00:00:00
B09TP5KBN7	pTron Volta Dual Port 12W Smart USB Charger Adapter, Multi-Layer Protection, Made in India, BIS Certified, Fast Charging Power Adaptor Without Cable for All iOS & Android Devices (Black)	28	1099.00	113	2021-01-01 00:00:00	2021-01-01 00:00:00
B0949SBKMP	boAt Flash Edition Smart Watch with Activity Tracker, Multiple Sports Modes, 1.3" Screen, 170+ Watch Faces, Sleep Monitor, Gesture, Camera & Music Control, IP68 & 7 Days Battery Life(Lightning Black)	20	6990.00	121	2021-01-01 00:00:00	2021-01-01 00:00:00
B09V175NP7	boAt Wave Lite Smartwatch with 1.69 Inches(4.29cm) HD Display, Heart Rate & SpO2 Level Monitor, Multiple Watch Faces, Activity Tracker, Multiple Sports Modes & IP68 (Scarlet Red)	20	6990.00	297	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WHSJXLF	iQOO Z6 Pro 5G by vivo (Phantom Dusk, 8GB RAM, 128GB Storage) | Snapdragon 778G 5G | 66W FlashCharge | 1300 nits Peak Brightness | HDR10+	22	29990.00	177	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BD3T6Z1D	Samsung Galaxy M32 Prime Edition (Light Blue, 4GB RAM, 64GB)	22	13499.00	186	2021-01-01 00:00:00	2021-01-01 00:00:00
B09LHYZ3GJ	Redmi Note 11T 5G (Matte Black, 6GB RAM, 128GB ROM)| Dimensity 810 5G | 33W Pro Fast Charging | Charger Included | Additional Exchange Offers|Get 2 Months of YouTube Premium Free!	22	20999.00	55	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WFPMGQQ	iQOO Z6 Pro 5G by vivo (Legion Sky, 6GB RAM, 128GB Storage) | Snapdragon 778G 5G | 66W FlashCharge | 1300 nits Peak Brightness | HDR10+	22	27990.00	131	2021-01-01 00:00:00	2021-01-01 00:00:00
B09QS9X9L8	Redmi Note 11 (Horizon Blue, 6GB RAM, 64GB Storage)|90Hz FHD+ AMOLED Display | Qualcomm® Snapdragon™ 680-6nm | 33W Charger Included	22	18999.00	162	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B6BLTGTT	Noise Pulse 2 Max Advanced Bluetooth Calling Smart Watch with 1.85'' TFT and 550 Nits Brightness, Smart DND, 10 Days Battery, 100 Sports Mode, Smartwatch for Men and Women - (Jet Black)	20	5999.00	161	2021-01-01 00:00:00	2021-01-01 00:00:00
B084DTMYWK	Myvn 30W Warp/20W Dash Charging Usb Type C Charger Cable Compatible For Cellular Phones Oneplus 8T 8 8Pro 7 Pro / 7T / 7T Pro Nord And Oneplus 3 / 3T / 5 / 5T / 6 / 6T / 7	28	999.00	98	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B53QLB9H	PTron Newly Launched Force X10 Bluetooth Calling Smartwatch with 1.7" Full Touch Color Display, Real Heart Rate Monitor, SpO2, Watch Faces, 5 Days Runtime, Fitness Trackers & IP68 Waterproof (Blue)	20	5999.00	294	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BDYW3RN3	SanDisk Ultra® microSDXC™ UHS-I Card, 256GB, 150MB/s R, 10 Y Warranty, for Smartphones	23	3500.00	172	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3RS9DNF	Fire-Boltt Phoenix Smart Watch with Bluetooth Calling 1.3",120+ Sports Modes, 240*240 PX High Res with SpO2, Heart Rate Monitoring & IP67 Rating	20	9999.00	105	2021-01-01 00:00:00	2021-01-01 00:00:00
B09QS9X16F	Redmi Note 11 (Space Black, 6GB RAM, 64GB Storage) | 90Hz FHD+ AMOLED Display | Qualcomm® Snapdragon™ 680-6nm | 33W Charger Included	22	18999.00	177	2021-01-01 00:00:00	2021-01-01 00:00:00
B08HV25BBQ	Noise ColorFit Pro 2 Full Touch Control Smart Watch with 35g Weight & Upgraded LCD Display (Deep Wine)	20	4999.00	122	2021-01-01 00:00:00	2021-01-01 00:00:00
B09LJ116B5	Redmi Note 11T 5G (Aquamarine Blue, 6GB RAM, 128GB ROM)| Dimensity 810 5G | 33W Pro Fast Charging | Charger Included | Additional Exchange Offers| Get 2 Months of YouTube Premium Free!	22	20999.00	72	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BMVWKZ8G	Newly Launched Boult Dive+ with 1.85" HD Display, Bluetooth Calling Smartwatch, 500 Nits Brightness, 7 Days Battery Life, 150+ Watch Faces, 100+ Sport Modes, IP68 Waterproof Smart Watch (Jet Black)	20	8499.00	240	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BD92GDQH	OnePlus Nord Watch with 1.78” AMOLED Display, 60 Hz Refresh Rate, 105 Fitness Modes, 10 Days Battery, SPO2, Heart Rate, Stress Monitor, Women Health Tracker & Multiple Watch Face [Midnight Black]	20	6999.00	246	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B5GF6DQD	Noise Agile 2 Buzz Bluetooth Calling Smart Watch with 1.28" TFT Display,Dual Button,in-Built Mic & Speaker,AI Voice Assistant, Health Suite,in-Built Games, 100 Watch Faces-(Jet Black)	20	5999.00	226	2021-01-01 00:00:00	2021-01-01 00:00:00
B09JS94MBV	Motorola a10 Dual Sim keypad Mobile with 1750 mAh Battery, Expandable Storage Upto 32GB, Wireless FM with Recording - Dark Blue	24	1630.00	51	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YV463SW	Fire-Boltt Ninja 3 Smartwatch Full Touch 1.69 " & 60 Sports Modes with IP68, Sp02 Tracking, Over 100 Cloud based watch faces ( Silver )	20	9999.00	69	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NL4DCXK	Flix (Beetel) Bolt 2.4 12W Dual USB Smart Charger, Made in India, Bis Certified, Fast Charging Power Adaptor with 1 Meter USB to Type C Cable for Cellular Phones (White)(Xwc-64D)	28	599.00	133	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B8CHJLWJ	Kyosei Advanced Tempered Glass Compatible with Google Pixel 6a with Military-Grade Anti-Explosion Edge-to-Edge Coverage Screen Protector Guard	35	1199.00	188	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B8ZWNR5T	STRIFF 12 Pieces Highly Flexible Silicone Micro USB Protector, Mouse Cable Protector, Suit for All Cell Phones, Computers and Chargers (Black)	34	499.00	234	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BBFJLP21	Redmi 11 Prime 5G (Thunder Black, 4GB RAM, 64GB Storage) | Prime Design | MTK Dimensity 700 | 50 MP Dual Cam | 5000mAh | 7 Band 5G	22	15999.00	91	2021-01-01 00:00:00	2021-01-01 00:00:00
B01F262EUU	Samsung Original EHS64 Wired in Ear Earphones with Mic, Black	25	999.00	255	2021-01-01 00:00:00	2021-01-01 00:00:00
B09VZBGL1N	STRIFF Multi Angle Tablet/Mobile Stand. Holder for iPhone, Android, Samsung, OnePlus, Xiaomi. Portable,Foldable Stand.Perfect for Bed,Office, Home,Gift and Desktop (Black)	32	499.00	53	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BNVBJW2S	boAt Newly Launched Wave Electra with 1.81" HD Display, Smart Calling Ultra-Seamless BT Calling Chip, 20 Built-in Watch Faces, 100 + Sports Modes, Menu Personalization, in-Built Games(Cherry Blossom)	20	7990.00	213	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B2DJ5RVQ	WeCool B1 Mobile Holder for Bikes or Bike Mobile Holder for Maps and GPS Navigation, one Click Locking, Firm Gripping, Anti Shake and Stable Cradle Clamp with 360° Rotation Bicycle Phone Mount	39	1999.00	191	2021-01-01 00:00:00	2021-01-01 00:00:00
B096TWZRJC	Sounce 360 Adjustable Mobile Phone Holder, Universal Phone Holder Clip Lazy Bracket Flexible Gooseneck Clamp Long Arms Mount for Mobile Tabletop Stand for Bedroom, Office, Bathroom, White	37	1899.00	229	2021-01-01 00:00:00	2021-01-01 00:00:00
B09GP6FBZT	OpenTech® Military-Grade Tempered Glass Screen Protector Compatible for iPhone 13/13 Pro / 14 with Edge to Edge Coverage and Easy Installation kit (6.1 Inches)	35	999.00	96	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3DV7S9B	EN LIGNE Adjustable Cell Phone Stand, Foldable Portable Phone Stand Phone Holder for Desk, Desktop Tablet Stand Compatible with Mobile Phone/iPad/Tablet (Black)	32	499.00	167	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MKP344P	Tecno Spark 8T (Turquoise Cyan, 4GB RAM,64GB Storage) | 50MP AI Camera | 7GB Expandable RAM	22	12999.00	80	2021-01-01 00:00:00	2021-01-01 00:00:00
B08JW1GVS7	URBN 20000 mAh Lithium_Polymer 22.5W Super Fast Charging Ultra Compact Power Bank with Quick Charge & Power Delivery, Type C Input/Output, Made in India, Type C Cable Included (Camo)	21	3999.00	190	2021-01-01 00:00:00	2021-01-01 00:00:00
B09LHZSMRR	Redmi Note 11T 5G (Stardust White, 6GB RAM, 128GB ROM)| Dimensity 810 5G | 33W Pro Fast Charging | Charger Included | Additional Exchange Offers|Get 2 Months of YouTube Premium Free!	22	20999.00	216	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B5V47VK4	OnePlus 10T 5G (Moonstone Black, 8GB RAM, 128GB Storage)	22	49999.00	212	2021-01-01 00:00:00	2021-01-01 00:00:00
B08H21B6V7	Nokia 150 (2020) (Cyan)	24	2999.00	239	2021-01-01 00:00:00	2021-01-01 00:00:00
B09BNXQ6BR	Noise ColorFit Ultra SE Smart Watch with 1.75"(4.3cm) HD Display, Aluminium Alloy Body, 60 Sports Modes, Spo2, Lightweight, Stock Market Info, Calls & SMS Reply (Vintage Brown)	20	6499.00	90	2021-01-01 00:00:00	2021-01-01 00:00:00
B01FSYQ2A4	boAt Rockerz 400 Bluetooth On Ear Headphones With Mic With Upto 8 Hours Playback & Soft Padded Ear Cushions(Grey/Green)	40	2990.00	210	2021-01-01 00:00:00	2021-01-01 00:00:00
B08L5FM4JC	SanDisk Ultra microSD UHS-I Card 64GB, 120MB/s R	23	2400.00	281	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B54Y2SNX	iPhone Original 20W C Type Fast PD Charger Compatible with I-Phone13/13 mini/13pro/13 pro Max I-Phone 12/12 Pro/12mini/12 Pro Max, I-Phone11/11 Pro/11 Pro Max 2020 (Only Adapter)	28	3990.00	263	2021-01-01 00:00:00	2021-01-01 00:00:00
B08BQ947H3	LIRAMARK Webcam Cover Slide, Ultra Thin Laptop Camera Cover Slide Blocker for Computer MacBook Pro iMac PC Tablet (Pack of 3)	41	149.00	95	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B7DHSKS7	Nokia 8210 4G Volte keypad Phone with Dual SIM, Big Display, inbuilt MP3 Player & Wireless FM Radio | Blue	24	5299.00	300	2021-01-01 00:00:00	2021-01-01 00:00:00
B09SJ1FTYV	Sounce Protective Case Cover Compatible Boat Xtend Overall Protective Case TPU HD Clear Ultra-Thin Cover with Unbreakable Screen Guard	38	1899.00	93	2021-01-01 00:00:00	2021-01-01 00:00:00
B09XJ5LD6L	Samsung Galaxy M53 5G (Deep Ocean Blue, 6GB, 128GB Storage) | 108MP | sAmoled+ 120Hz | 12GB RAM with RAM Plus | Travel Adapter to be Purchased Separately	22	32999.00	71	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WHS7MZ1	iQOO 9 SE 5G (Sunset Sierra, 8GB RAM, 128GB Storage) | Qualcomm Snapdragon 888 | 66W Flash Charge	22	39990.00	111	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BBVKRP7B	SHREENOVA ID116 Plus Bluetooth Fitness Smart Watch for Men Women and Kids Activity Tracker (Black)	20	1999.00	53	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NY7W8YD	POCO C31 (Shadow Gray, 64 GB) (4 GB RAM)	22	11999.00	261	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BMM7R92G	Noise_Colorfit Smart Watch Charger 2 Pin USB Fast Charger Magnetic Charging Cable Adapter (Smart Watch Charger 2 pin)	20	999.00	111	2021-01-01 00:00:00	2021-01-01 00:00:00
B08M66K48D	POPIO Tempered Glass Screen Protector Compatible for iPhone 12 / iPhone 12 Pro with Case Friendly Edge to Edge Coverage and Easy Installation kit, Pack of 1	35	599.00	61	2021-01-01 00:00:00	2021-01-01 00:00:00
B09RFB2SJQ	10WeRun Id-116 Bluetooth Smartwatch Wireless Fitness Band for Boys, Girls, Men, Women & Kids | Sports Gym Watch for All Smart Phones I Heart Rate and spo2 Monitor	20	1899.00	153	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B82YGCF6	Tokdis MX-1 Pro Bluetooth Calling Smartwatch - 1.69” LCD Display, Multiple Watch Faces, Sleep Monitor, Heart & SpO2 Monitoring, Multiple Sports Modes, Water Resistant	20	3499.00	294	2021-01-01 00:00:00	2021-01-01 00:00:00
B08HF4W2CT	URBN 20000 mAh lithium_polymer Power Bank with 12 Watt Fast Charging, Camo	21	3499.00	123	2021-01-01 00:00:00	2021-01-01 00:00:00
B08BCKN299	Sounce Gold Plated 3.5 mm Headphone Splitter for Computer 2 Male to 1 Female 3.5mm Headphone Mic Audio Y Splitter Cable Smartphone Headset to PC Adapter – (Black,20cm)	12	999.00	62	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B2X35B1K	Noise ColorFit Ultra 2 Buzz 1.78" AMOLED Bluetooth Calling Watch with 368*448px Always On Display, Premium Metallic Finish, 100+ Watch Faces, 100+ Sports Modes, Health Suite (Jet Black)	20	6999.00	154	2021-01-01 00:00:00	2021-01-01 00:00:00
B09QS9CWLV	Redmi Note 11 (Horizon Blue, 6GB RAM, 64GB Storage)|90Hz FHD+ AMOLED Display | Qualcomm® Snapdragon™ 680-6nm | 33W Charger Included	22	18999.00	127	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B1NX6JTN	Spigen Ultra Hybrid Back Cover Case Compatible with iPhone 14 Pro max (TPU + Poly Carbonate | Crystal Clear)	38	2599.00	163	2021-01-01 00:00:00	2021-01-01 00:00:00
B078G6ZF5Z	Oraimo 18W USB & Type-C Dual Output Super Fast Charger Wall Adapter PE2.0&Quick Charge 3.0 & Power Delivery 3.0 Compatible for iPhone 13/13 Mini/13 Pro Max/12/12 Pro Max, iPad Mini/Pro, Pixel, Galaxy, Airpods Pro	28	1199.00	68	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BBW521YC	LAPSTER 12pcs Spiral Cable Protectors for Charger, Wires, Data Charger Cable Protector for Computers, Cell Phones etc.(Grey)	42	999.00	299	2021-01-01 00:00:00	2021-01-01 00:00:00
B09HSKYMB3	MI REDMI 9i Sport (Carbon Black, 64 GB) (4 GB RAM)	22	9999.00	268	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YV42QHZ	Fire-Boltt Ninja 3 Smartwatch Full Touch 1.69 " & 60 Sports Modes with IP68, Sp02 Tracking, Over 100 Cloud based watch faces ( Green )	20	7999.00	58	2021-01-01 00:00:00	2021-01-01 00:00:00
B09BF8JBWX	Lava A1 Josh 21(Blue Silver) -Dual Sim,Call Blink Notification,Military Grade Certified with 4 Day Battery Backup, Keypad Mobile	24	1249.00	162	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B5YBGCKD	POPIO Tempered Glass Compatible for iPhone 13 / iPhone 13 Pro/iPhone 14 (Transparent) Edge to Edge Full Screen Coverage with Installation Kit, Pack of 2	35	599.00	73	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MY4W73Q	Amozo Ultra Hybrid Camera and Drop Protection Back Cover Case for iPhone 13 (Polycarbonate| Back Transparent - Sides Black)	38	1799.00	284	2021-01-01 00:00:00	2021-01-01 00:00:00
B09T37CKQ5	FLiX Usb Charger,Flix (Beetel) Bolt 2.4 Dual Poart,5V/2.4A/12W Usb Wall Charger Fast Charging,Adapter For Android/Iphone 11/Xs/Xs Max/Xr/X/8/7/6/Plus,Ipad Pro/Air 2/Mini 3/4,Samsung S4/S5 & More-Black	28	599.00	226	2021-01-01 00:00:00	2021-01-01 00:00:00
B09GFPN6TP	Redmi 9A Sport (Coral Green, 3GB RAM, 32GB Storage) | 2GHz Octa-core Helio G25 Processor | 5000 mAh Battery	22	9499.00	241	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B298D54H	Prolet Classic Bumper Case Cover for Samsung Galaxy Watch 4 44mm TPU Plated Full Screen Protector (Black)	20	999.00	90	2021-01-01 00:00:00	2021-01-01 00:00:00
B08VB57558	Samsung Galaxy S20 FE 5G (Cloud Navy, 8GB RAM, 128GB Storage) with No Cost EMI & Additional Exchange Offers	22	74999.00	246	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B9BXKBC7	WeCool S5 Long Selfie Stick, with Large Reinforced Tripod Stand up to 61 Inch / 156 Cms, Ultra Long Multi Function Bluetooth Selfie Stick with 1/4 Screw Compatible with Gopro, Camera, and Ring Light	31	3999.00	113	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NY6TRXG	POCO C31 (Royal Blue, 64 GB) (4 GB RAM)	22	11999.00	274	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NVPJ3P4	Noise ColorFit Pulse Grand Smart Watch with 1.69"(4.29cm) HD Display, 60 Sports Modes, 150 Watch Faces, Fast Charge, Spo2, Stress, Sleep, Heart Rate Monitoring & IP68 Waterproof (Electric Blue)	20	3999.00	86	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3NDPCS9	Fire-Boltt Visionary 1.78" AMOLED Bluetooth Calling Smartwatch with 368*448 Pixel Resolution 100+ Sports Mode, TWS Connection, Voice Assistance, SPO2 & Heart Rate Monitoring	20	17999.00	287	2021-01-01 00:00:00	2021-01-01 00:00:00
B09VGKFM7Y	Amazon Basics 2 Amp USB Wall Charger & Micro USB Cable (White)	28	499.00	106	2021-01-01 00:00:00	2021-01-01 00:00:00
B07QCWY5XV	Mobilife Bluetooth Extendable Selfie Stick with Tripod Stand and Wireless Remote,3-in-1 Multifunctional Selfie Stick Tripod for iPhone Samsung Mi Realme Oppo Vivo Google More,Black	31	1399.00	267	2021-01-01 00:00:00	2021-01-01 00:00:00
B098QXR9X2	Ambrane 27000mAh Power Bank, 20W Fast Charging, Triple Output, Type C PD (Input & Output), Quick Charge, Li-Polymer, Multi-Layer Protection for iPhone, Smartphones & Other Devices (Stylo Pro, Black)	21	2999.00	290	2021-01-01 00:00:00	2021-01-01 00:00:00
B07H1S7XW8	STRIFF Wall Mount Phone Holder Wall Mount with Adhesive Strips, Charging Holder Compatible with iPhone, Smartphone and Mini Tablet (Pack of 1) (White)	43	499.00	191	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BNXFDTZ2	Fire-Boltt Tank 1.85" Bluetooth Calling Smart Watch, 123 Sports Mode, 8 UI Interactions, Built in Speaker & Mic, 7 Days Battery & Fire-Boltt Health Suite	20	11999.00	101	2021-01-01 00:00:00	2021-01-01 00:00:00
B088ZFJY82	Elv Aluminium Adjustable Mobile Phone Foldable Holder Tabletop Stand Dock Mount for All Smartphones, Tabs, Kindle, iPad (Moonlight Silver)	32	1499.00	98	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4F4QZ1H	Samsung Galaxy M13 5G (Stardust Brown, 6GB, 128GB Storage) | 5000mAh Battery | Upto 12GB RAM with RAM Plus	22	19499.00	278	2021-01-01 00:00:00	2021-01-01 00:00:00
B09BCNQ9R2	DYAZO USB 3.0 Type C Female to USB A Male Connector/Converter/Adapter Compatible for Samsung Galaxy Note s 20 10 Plus Ultra,Google Pixel 4 5 3 2 & Other Type-c Devices	29	499.00	51	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B9BD2YL4	KINGONE Wireless Charging Pencil (2nd Generation) for iPad with Magnetic and Tilt Sensitive, Palm Rejection, Compatible with Apple iPad Pro 11 inch 1/2/3/4, iPad Pro 12.9 Inch 3/4/5/6, iPad Air 4/5, mini6	36	6999.00	295	2021-01-01 00:00:00	2021-01-01 00:00:00
B071Z8M4KX	boAt BassHeads 100 in-Ear Wired Headphones with Mic (Black)	25	999.00	79	2021-01-01 00:00:00	2021-01-01 00:00:00
B09N3ZNHTY	boAt Airdopes 141 Bluetooth Truly Wireless in Ear Earbuds with mic, 42H Playtime, Beast Mode(Low Latency Upto 80ms) for Gaming, ENx Tech, ASAP Charge, IWP, IPX4 Water Resistance (Bold Black)	25	4490.00	296	2021-01-01 00:00:00	2021-01-01 00:00:00
B005FYNT3G	SanDisk Cruzer Blade 32GB USB Flash Drive	44	650.00	237	2021-01-01 00:00:00	2021-01-01 00:00:00
B01J0XWYKQ	Logitech B170 Wireless Mouse, 2.4 GHz with USB Nano Receiver, Optical Tracking, 12-Months Battery Life, Ambidextrous, PC/Mac/Laptop - Black	45	895.00	269	2021-01-01 00:00:00	2021-01-01 00:00:00
B09CTRPSJR	Storio Kids Toys LCD Writing Tablet 8.5Inch E-Note Pad Best Birthday Gift for Girls Boys, Multicolor (SC1667)	46	237.00	142	2021-01-01 00:00:00	2021-01-01 00:00:00
B08JQN8DGZ	boAt Airdopes 121v2 in-Ear True Wireless Earbuds with Upto 14 Hours Playback, 8MM Drivers, Battery Indicators, Lightweight Earbuds & Multifunction Controls (Active Black, with Mic)	25	2990.00	242	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B72BSW7K	SKE Bed Study Table Portable Wood Multifunction Laptop-Table Lapdesk for Children Bed Foldabe Table Work with Tablet Slot & Cup Holder Brown Black	47	699.00	233	2021-01-01 00:00:00	2021-01-01 00:00:00
B08TV2P1N8	boAt Rockerz 255 Pro+ in-Ear Bluetooth Neckband with Upto 40 Hours Playback, ASAP  Charge, IPX7, Dual Pairing, BT v5.0, with Mic (Active Black)	25	3990.00	75	2021-01-01 00:00:00	2021-01-01 00:00:00
B07XCM6T4N	STRIFF Adjustable Laptop Tabletop Stand Patented Riser Ventilated Portable Foldable Compatible with MacBook Notebook Tablet Tray Desk Table Book with Free Phone Stand (Black)	48	1499.00	132	2021-01-01 00:00:00	2021-01-01 00:00:00
B07T5DKR5D	ZEBRONICS Zeb-Bro in Ear Wired Earphones with Mic, 3.5mm Audio Jack, 10mm Drivers, Phone/Tablet Compatible(Black)	25	399.00	78	2021-01-01 00:00:00	2021-01-01 00:00:00
B07PR1CL3S	boAt Rockerz 450 Bluetooth On Ear Headphones with Mic, Upto 15 Hours Playback, 40MM Drivers, Padded Ear Cushions, Integrated Controls and Dual Modes(Luscious Black)	40	3990.00	208	2021-01-01 00:00:00	2021-01-01 00:00:00
B07JQKQ91F	JBL C50HI, Wired in Ear Headphones with Mic, One Button Multi-Function Remote, Lightweight & Comfortable fit (Black)	25	999.00	142	2021-01-01 00:00:00	2021-01-01 00:00:00
B08W56G1K9	LAPSTER Spiral Charger Spiral Charger Cable Protectors for Wires Data Cable Saver Charging Cord Protective Cable Cover Set of 3 (12 Pieces)	33	999.00	105	2021-01-01 00:00:00	2021-01-01 00:00:00
B01L8ZNWN2	HP v236w USB 2.0 64GB Pen Drive, Metal	44	1500.00	248	2021-01-01 00:00:00	2021-01-01 00:00:00
B009VCGPSY	HP X1000 Wired USB Mouse with 3 Handy Buttons, Fast-Moving Scroll Wheel and Optical Sensor works on most Surfaces (H2C21AA, Black/Grey)	45	649.00	245	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B296NTFV	Portronics Toad 23 Wireless Optical Mouse with 2.4GHz, USB Nano Dongle, Optical Orientation, Click Wheel, Adjustable DPI(Black)	45	599.00	240	2021-01-01 00:00:00	2021-01-01 00:00:00
B07TCN5VR9	Boult Audio BassBuds X1 in-Ear Wired Earphones with 10mm Extra Bass Driver and HD Sound with mic(Black)	25	999.00	64	2021-01-01 00:00:00	2021-01-01 00:00:00
B00ZYLMQH0	Dell KB216 Wired Multimedia USB Keyboard with Super Quite Plunger Keys with Spill-Resistant – Black	49	1799.00	211	2021-01-01 00:00:00	2021-01-01 00:00:00
B01HJI0FS2	Dell MS116 1000Dpi USB Wired Optical Mouse, Led Tracking, Scrolling Wheel, Plug and Play.	45	650.00	230	2021-01-01 00:00:00	2021-01-01 00:00:00
B076B8G5D8	Boya ByM1 Auxiliary Omnidirectional Lavalier Condenser Microphone with 20ft Audio Cable (Black)	50	1995.00	210	2021-01-01 00:00:00	2021-01-01 00:00:00
B014SZO90Y	Duracell Ultra Alkaline AA Battery, 8 Pcs	51	315.00	98	2021-01-01 00:00:00	2021-01-01 00:00:00
B07KCMR8D6	Classmate Octane Neon- Blue Gel Pens(Pack of 5)|Smooth Writing Pen|Attractive body colour for Boys & Girls|Waterproof ink for smudge free writing|Preferred by Students for Exam|Study at home essential	52	50.00	210	2021-01-01 00:00:00	2021-01-01 00:00:00
B00N1U9AJS	3M Scotch Double Sided Heavy Duty Tape(1m holds 4.5Kgs) for indoor hanging applications (Photo frames, Mirrors, Key Holders, Car Interiors, Extension Boards, Wall decoration, etc)(L: 3m, W: 24mm)	53	165.00	54	2021-01-01 00:00:00	2021-01-01 00:00:00
B07KY3FNQP	boAt Bassheads 152 in Ear Wired Earphones with Mic(Active Black)	25	1290.00	297	2021-01-01 00:00:00	2021-01-01 00:00:00
B07QZ3CZ48	boAt BassHeads 122 Wired Earphones with Heavy Bass, Integrated Controls and Mic (Gun Metal)	25	1290.00	200	2021-01-01 00:00:00	2021-01-01 00:00:00
B09T3H12GV	Dell USB Wireless Keyboard and Mouse Set- KM3322W, Anti-Fade & Spill-Resistant Keys, up to 36 Month Battery Life, 3Y Advance Exchange Warranty, Black	54	2498.00	287	2021-01-01 00:00:00	2021-01-01 00:00:00
B08ZJDWTJ1	Seagate Expansion 1TB External HDD - USB 3.0 for Windows and Mac with 3 yr Data Recovery Services, Portable Hard Drive (STKM1000400)	55	4999.00	112	2021-01-01 00:00:00	2021-01-01 00:00:00
B08FTFXNNB	HP w100 480P 30 FPS Digital Webcam with Built-in Mic, Plug and Play Setup, Wide-Angle View for Video Calling on Skype, Zoom, Microsoft Teams and Other Apps (Black)	56	1999.00	209	2021-01-01 00:00:00	2021-01-01 00:00:00
B08YDFX7Y1	ZEBRONICS Zeb-Dash Plus 2.4GHz High Precision Wireless Mouse with up to 1600 DPI, Power Saving Mode, Nano Receiver and Plug & Play Usage - USB	45	449.00	210	2021-01-01 00:00:00	2021-01-01 00:00:00
B087FXHB6J	Zebronics Zeb-Companion 107 USB Wireless Keyboard and Mouse Set with Nano Receiver (Black)	54	999.00	52	2021-01-01 00:00:00	2021-01-01 00:00:00
B07N42JB4S	SYVO WT 3130 Aluminum Tripod (133CM), Universal Lightweight Tripod with Mobile Phone Holder Mount & Carry Bag for All Smart Phones, Gopro, Cameras - Brown	57	3990.00	252	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B31BYXQQ	Boult Audio Airbass Z20 True Wireless, 40H Battery Life, Zen ENC Mic, Type-C Lightning Boult Fast Charging (10Mins=100Mins), BoomX Tech Bass, ENC, IPX5 in Ear Earbuds with mic (Green)	25	5499.00	293	2021-01-01 00:00:00	2021-01-01 00:00:00
B07SLMR1K6	SanDisk Ultra Flair 64GB USB 3.0 Pen Drive, Multicolor	44	1350.00	142	2021-01-01 00:00:00	2021-01-01 00:00:00
B092X94QNQ	boAt Rockerz 330 in-Ear Bluetooth Neckband with Upto 30 Hours Playtime, ASAP  Charge, Signature Sound, Dual Pairing & IPX5 with Mic (Active Black)	25	3990.00	170	2021-01-01 00:00:00	2021-01-01 00:00:00
B0846D5CBP	Casio FX-991ES Plus-2nd Edition Scientific Calculator, Black	58	1295.00	131	2021-01-01 00:00:00	2021-01-01 00:00:00
B00KXULGJQ	TP-Link AC750 Wifi Range Extender | Up to 750Mbps | Dual Band WiFi Extender, Repeater, Wifi Signal Booster, Access Point| Easy Set-Up | Extends Wifi to Smart Home & Alexa Devices (RE200)	59	5499.00	120	2021-01-01 00:00:00	2021-01-01 00:00:00
B08H9Z3XQW	boAt Bassheads 242 in Ear Wired Earphones with Mic(Blue)	25	1490.00	60	2021-01-01 00:00:00	2021-01-01 00:00:00
B08LPJZSSW	DIGITEK® (DTR 260 GT) Gorilla Tripod/Mini 33 cm (13 Inch) Tripod for Mobile Phone with Phone Mount & Remote, Flexible Gorilla Stand for DSLR & Action Cameras	60	995.00	97	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CYPB15D	HP 805 Black Original Ink Cartridge	61	761.00	69	2021-01-01 00:00:00	2021-01-01 00:00:00
B00MFPCY5C	GIZGA essentials Universal Silicone Keyboard Protector Skin for 15.6-inches Laptop (5 x 6 x 3 inches)	62	299.00	94	2021-01-01 00:00:00	2021-01-01 00:00:00
B07JJFSG2B	SanDisk Ultra 128 GB USB 3.0 Pen Drive (Black)	44	2500.00	181	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NR6G588	Boult Audio ZCharge Bluetooth Wireless in Ear Earphones with Mic, 40H Playtime and Super Fast Charging, Environmental Noise Cancellation for Pro+ Calling and IPX5 Water Resistant (Black)	25	4999.00	250	2021-01-01 00:00:00	2021-01-01 00:00:00
B07JPX9CR7	Dell WM118 Wireless Mouse, 2.4 Ghz with USB Nano Receiver, Optical Tracking, 12-Months Battery Life, Ambidextrous, Pc/Mac/Laptop - Black.	45	1299.00	230	2021-01-01 00:00:00	2021-01-01 00:00:00
B08D11DZ2W	Boult Audio AirBass PowerBuds with Inbuilt Powerbank, 120H Total Playtime, IPX7 Fully Waterproof, Lightning Boult Type-C Fast Charging, Low Latency Gaming, TWS Earbuds with Pro+ Calling Mic (Black)	25	8999.00	245	2021-01-01 00:00:00	2021-01-01 00:00:00
B07Q7561HD	Eveready 1015 Carbon Zinc AA Battery - 10 Pieces	51	180.00	187	2021-01-01 00:00:00	2021-01-01 00:00:00
B0819HZPXL	Zebronics Zeb-Transformer-M Optical USB Gaming Mouse with LED Effect(Black)	63	549.00	243	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LXTFMRS	PIDILITE Fevicryl Acrylic Colours Sunflower Kit (10 Colors x 15 ml) DIY Paint, Rich Pigment, Non-Craking Paint for Canvas, Wood, Leather, Earthenware, Metal, Diwali Gifts for Diwali	64	225.00	84	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B9LDCX89	STRIFF Mpad Mouse Mat 230X190X3mm Gaming Mouse Pad, Non-Slip Rubber Base, Waterproof Surface, Premium-Textured, Compatible with Laser and Optical Mice(Universe Black)	65	999.00	276	2021-01-01 00:00:00	2021-01-01 00:00:00
B0765B3TH7	Gizga Essentials Hard Drive Case Shell, 6.35cm/2.5-inch, Portable Storage Organizer Bag for Earphone USB Cable Power Bank Mobile Charger Digital Gadget Hard Disk, Water Resistance Material, Black	66	599.00	81	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B1F6GQPS	Boult Audio FXCharge with ENC, 32H Playtime, 5min=7H Type C Fast Charging, Zen ENC, 14.2 mm BoomX Rich Bass, IPX5, Bluetooth Wireless in Ear Earphones Neckband with mic (Black)	25	4499.00	64	2021-01-01 00:00:00	2021-01-01 00:00:00
B07LG59NPV	Boult Audio Probass Curve Bluetooth Wireless in Ear Earphones with Mic with Ipx5 Water Resistant, 12H Battery Life & Extra Bass (Black)	25	4499.00	203	2021-01-01 00:00:00	2021-01-01 00:00:00
B00AXHBBXU	Casio FX-82MS 2nd Gen Non-Programmable Scientific Calculator, 240 Functions and 2-line Display, Black	58	550.00	288	2021-01-01 00:00:00	2021-01-01 00:00:00
B08MCD9JFY	Tygot 10 Inches Big LED Ring Light for Camera, Phone tiktok YouTube Video Shooting and Makeup, 10" inch Ring Light with 7 Feet Long Foldable and Lightweight Tripod Stand	67	1999.00	291	2021-01-01 00:00:00	2021-01-01 00:00:00
B083RCTXLL	HP X200 Wireless Mouse with 2.4 GHz Wireless connectivity, Adjustable DPI up to 1600, ambidextrous Design, and 18-Month Long Battery Life. 3-Years Warranty (6VY95AA)	45	1199.00	169	2021-01-01 00:00:00	2021-01-01 00:00:00
B08HLZ28QC	Oakter Mini UPS for 12V WiFi Router Broadband Modem | Backup Upto 4 Hours | WiFi Router UPS Power Backup During Power Cuts | UPS for 12V Router Broadband Modem | Current Surge & Deep Discharge Protection	68	3490.00	69	2021-01-01 00:00:00	2021-01-01 00:00:00
B07GVR9TG7	TP-Link Archer AC1200 Archer C6 Wi-Fi Speed Up to 867 Mbps/5 GHz + 400 Mbps/2.4 GHz, 5 Gigabit Ports, 4 External Antennas, MU-MIMO, Dual Band, WiFi Coverage with Access Point Mode, Black	69	4999.00	150	2021-01-01 00:00:00	2021-01-01 00:00:00
B0856HY85J	boAt Rockerz 550 Over Ear Bluetooth Headphones with Upto 20 Hours Playback, 50MM Drivers, Soft Padded Ear Cushions and Physical Noise Isolation, Without Mic (Black)	70	4999.00	270	2021-01-01 00:00:00	2021-01-01 00:00:00
B07CD2BN46	Xiaomi Mi Wired in Ear Earphones with Mic Basic with Ultra Deep Bass & Aluminum Alloy Sound Chamber (Black)	25	599.00	286	2021-01-01 00:00:00	2021-01-01 00:00:00
B07PLHTTB4	Zodo 8. 5 inch LCD E-Writer Electronic Writing Pad/Tablet Drawing Board (Paperless Memo Digital Tablet)	46	499.00	300	2021-01-01 00:00:00	2021-01-01 00:00:00
B077T3BG5L	Zebronics ZEB-KM2100 Multimedia USB Keyboard Comes with 114 Keys Including 12 Dedicated Multimedia Keys & with Rupee Key	49	399.00	144	2021-01-01 00:00:00	2021-01-01 00:00:00
B079Y6JZC8	ZEBRONICS Zeb-Comfort Wired USB Mouse, 3-Button, 1000 DPI Optical Sensor, Plug & Play, for Windows/Mac, Black	45	299.00	78	2021-01-01 00:00:00	2021-01-01 00:00:00
B0856HNMR7	boAt Rockerz 370 On Ear Bluetooth Headphones with Upto 12 Hours Playtime, Cozy Padded Earcups and Bluetooth v5.0, with Mic (Buoyant Black)	40	2499.00	189	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B12K5BPM	ZEBRONICS Zeb-Astra 20 Wireless BT v5.0 Portable Speaker with 10W RMS Output, TWS, 10H Backup Approx, Built in Rechargeable Battery FM Radio, AUX, mSD, USB, Call Function and Dual 52mm Drivers Multi	71	2299.00	269	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LVMTA2A	Panasonic CR-2032/5BE Lithium Coin Battery - Pack of 5	72	250.00	68	2021-01-01 00:00:00	2021-01-01 00:00:00
B07TR5HSR9	MemeHo® Smart Standard Multi-Purpose Laptop Table with Dock Stand/Study Table/Bed Table/Foldable and Portable/Ergonomic & Rounded Edges/Non-Slip Legs/Engineered Wood with Cup Holder (Black)	47	1499.00	270	2021-01-01 00:00:00	2021-01-01 00:00:00
B0819ZZK5K	SanDisk Ultra Dual Drive Go USB Type C Pendrive for Mobile (Black, 128 GB, 5Y - SDDDC3-128G-I35)	44	2800.00	263	2021-01-01 00:00:00	2021-01-01 00:00:00
B08QJJCY2Q	Tizum Mouse Pad/ Computer Mouse Mat with Anti-Slip Rubber Base | Smooth Mouse Control | Spill-Resistant Surface for Laptop, Notebook, MacBook, Gaming, Laser/ Optical Mouse, 9.4”x 7.9”, Multicolored	65	299.00	154	2021-01-01 00:00:00	2021-01-01 00:00:00
B07L5L4GTB	Epson 003 65 ml for EcoTank L1110/L3100/L3101/L3110/L3115/L3116/L3150/L3151/L3152/L3156/L5190 Black Ink Bottle	61	404.00	297	2021-01-01 00:00:00	2021-01-01 00:00:00
B07L8KNP5F	ZEBRONICS Zeb-Thunder Bluetooth Wireless Over Ear Headphone FM, mSD, 9 hrs Playback with Mic (Black)	40	1399.00	272	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CF4SCNP	Quantum QHM-7406 Full-Sized Keyboard with (₹) Rupee Symbol, Hotkeys and 3-pieces LED function for Desktop/Laptop/Smart TV Spill-Resistant Wired USB Keyboard with 10 million keystrokes lifespan (Black)	49	599.00	184	2021-01-01 00:00:00	2021-01-01 00:00:00
B09XX51X2G	STRIFF Laptop Tabletop Stand, Fold-Up, Adjustable, Ventilated, Portable Holder for Desk, Aluminum Foldable Laptop Ergonomic Compatibility with up to 15.6-inch Laptop, All Mac, Tab, and Mobile (Silver)	47	999.00	108	2021-01-01 00:00:00	2021-01-01 00:00:00
B01M72LILF	Logitech M221 Wireless Mouse, Silent Buttons, 2.4 GHz with USB Mini Receiver, 1000 DPI Optical Tracking, 18-Month Battery Life, Ambidextrous PC / Mac / Laptop - Charcoal Grey	45	1295.00	198	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LZLQ624	Classmate Soft Cover 6 Subject Spiral Binding Notebook, Single Line, 300 Pages	73	160.00	63	2021-01-01 00:00:00	2021-01-01 00:00:00
B09GB5B4BK	HP 150 Wireless USB Mouse with Ergonomic and ambidextrous Design, 1600 DPI Optical Tracking, 2.4 GHz Wireless connectivity, Dual-Function Scroll Wheel and 12 Month Long Battery Life. 3-Years Warranty.	45	899.00	86	2021-01-01 00:00:00	2021-01-01 00:00:00
B015ZXUDD0	Duracell Rechargeable AA 1300mAh Batteries, 4Pcs	74	599.00	62	2021-01-01 00:00:00	2021-01-01 00:00:00
B09PL79D2X	boAt Airdopes 181 in-Ear True Wireless Earbuds with ENx  Tech, Beast  Mode(Low Latency Upto 60ms) for Gaming, with Mic, ASAP  Charge, 20H Playtime, Bluetooth v5.2, IPX4 & IWP (Cool Grey)	25	2990.00	55	2021-01-01 00:00:00	2021-01-01 00:00:00
B098K3H92Z	TP-Link USB Bluetooth Adapter for PC, 5.0 Bluetooth Dongle Receiver (UB500) Supports Windows 11/10/8.1/7 for Desktop, Laptop, Mouse, Keyboard, Printers, Headsets, Speakers, PS4/ Xbox Controllers	75	899.00	190	2021-01-01 00:00:00	2021-01-01 00:00:00
B084PJSSQ1	SanDisk Ultra Dual Drive Luxe USB Type C Flash Drive (Silver, 128 GB, 5Y - SDDDC4-128G-I35)	44	3000.00	241	2021-01-01 00:00:00	2021-01-01 00:00:00
B097C564GC	rts [2 Pack] Mini USB C Type C Adapter Plug, Type C Female to USB A Male Charger Charging Cable Adapter Converter compatible for iPhone, Samsung S20 ultra/S21/S10/S8/S9/MacBook Pro iPad Silver	76	4999.00	156	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CYNJ5KY	HP 682 Black Original Ink Cartridge	61	861.00	230	2021-01-01 00:00:00	2021-01-01 00:00:00
B00Y4ORQ46	Logitech H111 Wired On Ear Headphones With Mic Black	40	795.00	222	2021-01-01 00:00:00	2021-01-01 00:00:00
B074CWD7MS	Digitek DTR 550 LW (67 Inch) Tripod For DSLR, Camera |Operating Height: 5.57 Feet | Maximum Load Capacity up to 4.5kg | Portable Lightweight Aluminum Tripod with 360 Degree Ball Head | Carry Bag Included (Black) (DTR 550LW)	77	2495.00	283	2021-01-01 00:00:00	2021-01-01 00:00:00
B00A0VCJPI	TP-Link TL-WA850RE Single_Band 300Mbps RJ45 Wireless Range Extender, Broadband/Wi-Fi Extender, Wi-Fi Booster/Hotspot with 1 Ethernet Port, Plug and Play, Built-in Access Point Mode, White	59	2499.00	165	2021-01-01 00:00:00	2021-01-01 00:00:00
B00UGZWM2I	COI Note Pad/Memo Book with Sticky Notes & Clip Holder with Pen for Gifting	78	800.00	104	2021-01-01 00:00:00	2021-01-01 00:00:00
B00R1P3B4O	Fujifilm Instax Mini Single Pack 10 Sheets Instant Film for Fuji Instant Cameras	79	549.00	153	2021-01-01 00:00:00	2021-01-01 00:00:00
B09DG9VNWB	Samsung Galaxy Watch4 Bluetooth(4.4 cm, Black, Compatible with Android only)	20	29999.00	298	2021-01-01 00:00:00	2021-01-01 00:00:00
B09Y5MP7C4	Noise Buds Vs104 Bluetooth Truly Wireless in Ear Earbuds with Mic, 30-Hours of Playtime, Instacharge, 13Mm Driver and Hyper Sync (Charcoal Black)	25	3499.00	192	2021-01-01 00:00:00	2021-01-01 00:00:00
B01DJJVFPC	Duracell Ultra Alkaline AAA Battery, 8 Pcs	51	315.00	108	2021-01-01 00:00:00	2021-01-01 00:00:00
B07DFYJRQV	JBL C200SI, Premium in Ear Wired Earphones with Mic, Signature Sound, One Button Multi-Function Remote, Angled Earbuds for Comfort fit (Blue)	25	1499.00	292	2021-01-01 00:00:00	2021-01-01 00:00:00
B08L879JSN	Acer EK220Q 21.5 Inch (54.61 cm) Full HD (1920x1080) VA Panel LCD Monitor with LED Back Light I 250 Nits I HDMI, VGA Ports I Eye Care Features Like Bluelight Shield, Flickerless & Comfy View (Black)	80	13750.00	103	2021-01-01 00:00:00	2021-01-01 00:00:00
B08TDJNM3G	E-COSMOS 5V 1.2W Portable Flexible USB LED Light (Colors May Vary, Small) - Set of 2 Pieces	81	59.00	299	2021-01-01 00:00:00	2021-01-01 00:00:00
B06XSK3XL6	boAt Dual Port Rapid Car Charger (Qualcomm Certified) with Quick Charge 3.0 + Free Micro USB Cable - (Black)	26	999.00	230	2021-01-01 00:00:00	2021-01-01 00:00:00
B07YNTJ8ZM	Zebronics ZEB-COUNTY 3W Wireless Bluetooth Portable Speaker With Supporting Carry Handle, USB, SD Card, AUX, FM & Call Function. (Green)	71	999.00	162	2021-01-01 00:00:00	2021-01-01 00:00:00
B07KR5P3YD	Zebronics Wired Keyboard and Mouse Combo with 104 Keys and a USB Mouse with 1200 DPI - JUDWAA 750	54	699.00	244	2021-01-01 00:00:00	2021-01-01 00:00:00
B08FB2LNSZ	JBL Tune 215BT, 16 Hrs Playtime with Quick Charge, in Ear Bluetooth Wireless Earphones with Mic, 12.5mm Premium Earbuds with Pure Bass, BT 5.0, Dual Pairing, Type C & Voice Assistant Support (Black)	25	2999.00	254	2021-01-01 00:00:00	2021-01-01 00:00:00
B01IBRHE3E	Gizga Essentials Professional 3-in-1 Cleaning Kit for Camera, Lens, Binocular, Laptop, TV, Monitor, Smartphone, Tablet (Includes: Cleaning Liquid 100ml, Plush Microfiber Cloth, Dust Removal Brush)	82	499.00	102	2021-01-01 00:00:00	2021-01-01 00:00:00
B01N6LU1VF	SanDisk Ultra Dual 64 GB USB 3.0 OTG Pen Drive (Black)	44	1400.00	278	2021-01-01 00:00:00	2021-01-01 00:00:00
B07XLML2YS	TP-Link Tapo 360° 2MP 1080p Full HD Pan/Tilt Home Security Wi-Fi Smart Camera| Alexa Enabled| 2-Way Audio| Night Vision| Motion Detection| Sound and Light Alarm| Indoor CCTV (Tapo C200) White	83	3299.00	102	2021-01-01 00:00:00	2021-01-01 00:00:00
B086WMSCN3	boAt Airdopes 171 in Ear Bluetooth True Wireless Earbuds with Upto 13 Hours Battery, IPX4, Bluetooth v5.0, Dual Tone Finish with Mic (Mysterious Blue)	25	5999.00	282	2021-01-01 00:00:00	2021-01-01 00:00:00
B003B00484	Duracell Plus AAA Rechargeable Batteries (750 mAh) Pack of 4	74	499.00	56	2021-01-01 00:00:00	2021-01-01 00:00:00
B003L62T7W	Logitech B100 Wired USB Mouse, 3 yr Warranty, 800 DPI Optical Tracking, Ambidextrous PC/Mac/Laptop - Black	45	375.00	187	2021-01-01 00:00:00	2021-01-01 00:00:00
B09P18XVW6	Noise Pulse Buzz 1.69" Bluetooth Calling Smart Watch with Call Function, 150 Watch Faces, 60 Sports Modes, Spo2 & Heart Rate Monitoring, Calling Smart Watch for Men & Women - Jet Black	20	4999.00	158	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LZLPYHW	Classmate 2100117 Soft Cover 6 Subject Spiral Binding Notebook, Single Line, 300 Pages	73	160.00	153	2021-01-01 00:00:00	2021-01-01 00:00:00
B00NNQMYNE	AirCase Rugged Hard Drive Case for 2.5-inch Western Digital, Seagate, Toshiba, Portable Storage Shell for Gadget Hard Disk USB Cable Power Bank Mobile Charger Earphone, Waterproof (Black)	66	499.00	83	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B217Z5VK	Noise Buds VS402 Truly Wireless in Ear Earbuds, 35-Hours of Playtime, Instacharge, Quad Mic with ENC, Hyper Sync, Low Latency, 10mm Driver, Bluetooth v5.3 and Breathing LED Lights (Neon Black)	25	3999.00	298	2021-01-01 00:00:00	2021-01-01 00:00:00
B07B88KQZ8	JBL Go 2, Wireless Portable Bluetooth Speaker with Mic, JBL Signature Sound, Vibrant Color Options with IPX7 Waterproof & AUX (Blue)	71	2999.00	74	2021-01-01 00:00:00	2021-01-01 00:00:00
B07Z3K96FR	Robustrion Tempered Glass Screen Protector for iPad 10.2 inch 9th Gen Generation 2021 8th Gen 2020 7th Gen 2019	35	1499.00	114	2021-01-01 00:00:00	2021-01-01 00:00:00
B0756CLQWL	Redgear Pro Wireless Gamepad with 2.4GHz Wireless Technology, Integrated Dual Intensity Motor, Illuminated Keys for PC(Compatible with Windows 7/8/8.1/10 only)	84	3999.00	142	2021-01-01 00:00:00	2021-01-01 00:00:00
B004IO5BMQ	Logitech M235 Wireless Mouse, 1000 DPI Optical Tracking, 12 Month Life Battery, Compatible with Windows, Mac, Chromebook/PC/Laptop	45	995.00	118	2021-01-01 00:00:00	2021-01-01 00:00:00
B01HGCLUH6	TP-link N300 WiFi Wireless Router TL-WR845N | 300Mbps Wi-Fi Speed | Three 5dBi high gain Antennas | IPv6 Compatible | AP/RE/WISP Mode | Parental Control | Guest Network	69	1699.00	167	2021-01-01 00:00:00	2021-01-01 00:00:00
B01N4EV2TL	Logitech MK240 Nano Wireless USB Keyboard and Mouse Set, 12 Function Keys 2.4GHz Wireless, 1000DPI, Spill-Resistant Design, PC/Mac, Black/Chartreuse Yellow	54	1995.00	56	2021-01-01 00:00:00	2021-01-01 00:00:00
B08MZQBFLN	Callas Multipurpose Foldable Laptop Table with Cup Holder | Drawer | Mac Holder | Table Holder Study Table, Breakfast Table, Foldable and Portable/Ergonomic & Rounded Edges/Non-Slip Legs (WA-27-Black)	47	4999.00	259	2021-01-01 00:00:00	2021-01-01 00:00:00
B0752LL57V	Casio MJ-12D 150 Steps Check and Correct Desktop Calculator	85	440.00	300	2021-01-01 00:00:00	2021-01-01 00:00:00
B09Z28BQZT	Amazon Basics Multipurpose Foldable Laptop Table with Cup Holder, Brown	47	3999.00	172	2021-01-01 00:00:00	2021-01-01 00:00:00
B094DQWV9B	Kanget [2 Pack] Type C Female to USB A Male Charger | Charging Cable Adapter Converter compatible for iPhone 14, 13, 12,11 Pro Max/Mini/XR/XS/X/SE, Samsung S20 ultra/S21/S10/S8/S9/MacBook Pro iPad (Grey)	76	399.00	236	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BBMPH39N	Amazon Basics Magic Slate 8.5-inch LCD Writing Tablet with Stylus Pen, for Drawing, Playing, Noting by Kids & Adults, Black	46	999.00	107	2021-01-01 00:00:00	2021-01-01 00:00:00
B097JQ1J5G	Zebronics ZEB-90HB USB Hub, 4 Ports, Pocket Sized, Plug & Play, for Laptop & Computers	86	499.00	151	2021-01-01 00:00:00	2021-01-01 00:00:00
B07YY1BY5B	Noise ColorFit Pro 2 Full Touch Control Smart Watch with 35g Weight & Upgraded LCD Display,IP68 Waterproof,Heart Rate Monitor,Sleep & Step Tracker,Call & Message Alerts & Long Battery Life (Jet Black)	20	4999.00	217	2021-01-01 00:00:00	2021-01-01 00:00:00
B08VRMK55F	Zebronics Zeb Buds C2 in Ear Type C Wired Earphones with Mic, Braided 1.2 Metre Cable, Metallic Design, 10mm Drivers, in Line Mic & Volume Controller (Blue)	25	699.00	227	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CHZ3ZQ7	Redgear A-15 Wired Gaming Mouse with Upto 6400 DPI, RGB & Driver Customization for PC(Black)	63	799.00	250	2021-01-01 00:00:00	2021-01-01 00:00:00
B08SCCG9D4	JBL Commercial CSLM20B Auxiliary Omnidirectional Lavalier Microphone with Battery for Content Creation, Voiceover/Dubbing, Recording (Black,Small)	87	2000.00	101	2021-01-01 00:00:00	2021-01-01 00:00:00
B0972BQ2RS	Fire-Boltt India's No 1 Smartwatch Brand Ring Bluetooth Calling with SpO2 & 1.7” Metal Body with Blood Oxygen Monitoring, Continuous Heart Rate, Full Touch & Multiple Watch Faces	20	9999.00	263	2021-01-01 00:00:00	2021-01-01 00:00:00
B00ZRBWPA0	Eveready Red 1012 AAA Batteries - Pack of 10	51	180.00	195	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B2DD66GS	SanDisk Extreme microSD UHS I Card 128GB for 4K Video on Smartphones,Action Cams 190MB/s Read,90MB/s Write	23	2900.00	126	2021-01-01 00:00:00	2021-01-01 00:00:00
B09M869Z5V	Portronics MPORT 31C 4-in-1 USB Hub (Type C to 4 USB-A Ports) with Fast Data Transfer	86	999.00	198	2021-01-01 00:00:00	2021-01-01 00:00:00
B07W6VWZ8C	Infinity (JBL Fuze Pint, Wireless Ultra Portable Mini Speaker with Mic, Deep Bass, Dual Equalizer, Bluetooth 5.0 with Voice Assistant Support for Mobiles (Black)	88	1999.00	79	2021-01-01 00:00:00	2021-01-01 00:00:00
B07Z1X6VFC	AirCase Protective Laptop Bag Sleeve fits Upto 13.3" Laptop/ MacBook, Wrinkle Free, Padded, Waterproof Light Neoprene case Cover Pouch, for Men & Women, Black- 6 Months Warranty	89	999.00	112	2021-01-01 00:00:00	2021-01-01 00:00:00
B07YL54NVJ	Brand Conquer 6 in 1 with OTG, SD Card Reader, USB Type C, USB 3.0 and Micro USB, for Memory Card | Portable Card Reader | Compatible with TF, SD, Micro SD, SDHC, SDXC, MMC, RS-MMC, Micro SDXC	90	999.00	240	2021-01-01 00:00:00	2021-01-01 00:00:00
B0759QMF85	TP-Link AC750 Dual Band Wireless Cable Router, 4 10/100 LAN + 10/100 WAN Ports, Support Guest Network and Parental Control, 750Mbps Speed Wi-Fi, 3 Antennas (Archer C20) Blue, 2.4 GHz	69	2399.00	240	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LM4X0KU	Parker Quink Ink Bottle, Blue	91	100.00	246	2021-01-01 00:00:00	2021-01-01 00:00:00
B08PFSZ7FH	STRIFF Laptop Stand Adjustable Laptop Computer Stand Multi-Angle Stand Phone Stand Portable Foldable Laptop Riser Notebook Holder Stand Compatible for 9 to 15.6” Laptops Black(Black)	48	1499.00	147	2021-01-01 00:00:00	2021-01-01 00:00:00
B012MQS060	Logitech MK215 Wireless Keyboard and Mouse Combo for Windows, 2.4 GHz Wireless, Compact Design, 2-Year Battery Life(Keyboard),5 Month Battery Life(Mouse) PC/Laptop- Black	54	1795.00	248	2021-01-01 00:00:00	2021-01-01 00:00:00
B01MF8MB65	boAt Bassheads 225 in Ear Wired Earphones with Mic(Blue)	25	999.00	241	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LHZWD0C	Luxor 5 Subject Single Ruled Notebook - A4, 70 GSM, 300 pages	92	315.00	154	2021-01-01 00:00:00	2021-01-01 00:00:00
B08QDPB1SL	Duracell Chhota Power AA Battery Set of 10 Pcs	51	220.00	79	2021-01-01 00:00:00	2021-01-01 00:00:00
B07BRKK9JQ	Zebronics Zeb-Transformer Gaming Keyboard and Mouse Combo (USB, Braided Cable)	54	1599.00	234	2021-01-01 00:00:00	2021-01-01 00:00:00
B01EZ0X3L8	SanDisk Ultra 64 GB USB Pen Drives (SDDDC2-064G-I35, Black, Silver)	44	1650.00	224	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LM4W1N2	Parker Classic Gold Gold Trim Ball Pen	93	600.00	173	2021-01-01 00:00:00	2021-01-01 00:00:00
B08YD264ZS	Tarkan Portable Folding Laptop Desk for Bed, Lapdesk with Handle, Drawer, Cup & Mobile/Tablet Holder for Study, Eating, Work (Black)	47	2499.00	153	2021-01-01 00:00:00	2021-01-01 00:00:00
B00GZLB57U	Quantum RJ45 Ethernet Patch Cable/LAN Router Cable with Heavy Duty Gold Plated Connectors Supports Hi-Speed Gigabit Upto 1000Mbps, Waterproof and Durable,1-Year Warranty-32.8 Feet (10 Meters)(White)	94	699.00	207	2021-01-01 00:00:00	2021-01-01 00:00:00
B07V82W5CN	HP USB Wireless Spill Resistance Keyboard and Mouse Set with 10m Working Range 2.4G Wireless Technology / 3 Years Warranty (4SC12PA), Black	54	2198.00	238	2021-01-01 00:00:00	2021-01-01 00:00:00
B08HD7JQHX	HUMBLE Dynamic Lapel Collar Mic Voice Recording Filter Microphone for Singing Youtube SmartPhones, Black	87	499.00	129	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B31FR4Y2	Boult Audio Omega with 30dB ANC+ ENC, 32H Playtime, 45ms Latency Gaming Mode, Quad Mic Zen ENC, 3 Equalizer Modes, ANC, Type-C Fast Charging, IPX5 True Wireless in Ear Bluetooth Earbuds (Black)	25	9999.00	173	2021-01-01 00:00:00	2021-01-01 00:00:00
B09Y14JLP3	STRIFF UPH2W Multi Angle Tablet/Mobile Stand. Holder for iPhone, Android, Samsung, OnePlus, Xiaomi. Portable,Foldable Stand.Perfect for Bed,Office, Home,Gift and Desktop (White)	32	499.00	189	2021-01-01 00:00:00	2021-01-01 00:00:00
B09ZHCJDP1	Amazon Basics Wireless Mouse | 2.4 GHz Connection, 1600 DPI | Type - C Adapter | Upto 12 Months of Battery Life | Ambidextrous Design | Suitable for PC/Mac/Laptop	45	1000.00	74	2021-01-01 00:00:00	2021-01-01 00:00:00
B08C4Z69LN	Crucial RAM 8GB DDR4 3200MHz CL22 (or 2933MHz or 2666MHz) Laptop Memory CT8G4SFRA32A	95	3500.00	282	2021-01-01 00:00:00	2021-01-01 00:00:00
B016XVRKZM	APC Back-UPS BX600C-IN 600VA / 360W, 230V, UPS System, an Ideal Power Backup & Protection for Home Office, Desktop PC & Home Electronics	96	4100.00	276	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LHZW3XY	Luxor 5 Subject Single Ruled Notebook - A5 Size, 70 GSM, 300 Pages	92	180.00	190	2021-01-01 00:00:00	2021-01-01 00:00:00
B098JYT4SY	Zebronics Zeb-Jaguar Wireless Mouse, 2.4GHz with USB Nano Receiver, High Precision Optical Tracking, 4 Buttons, Plug & Play, Ambidextrous, for PC/Mac/Laptop (Black+Grey)	45	1190.00	196	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CFCK6CW	Boult Audio Truebuds with 30H Playtime, IPX7 Waterproof, Lightning Boult™ Type C Fast Charging (10 Min=100Mins), BoomX™ Tech Rich Bass, Pro+ Calling HD Mic, Touch Controls in Ear Earbuds TWS (Grey)	25	7999.00	252	2021-01-01 00:00:00	2021-01-01 00:00:00
B09P564ZTJ	Wembley LCD Writing Pad/Tab | Writing, Drawing, Reusable, Portable Pad with Colorful Letters | 9 Inch Graphic Tablet (Assorted)	46	1599.00	166	2021-01-01 00:00:00	2021-01-01 00:00:00
B07MSLTW8Z	Gizga Essentials Multi-Purpose Portable & Foldable Wooden Desk for Bed Tray, Laptop Table, Study Table (Black)	47	1999.00	294	2021-01-01 00:00:00	2021-01-01 00:00:00
B09N6TTHT6	E-COSMOS Plug in LED Night Light Mini USB LED Light Flexible USB LED Ambient Light Mini USB LED Light, LED Portable car Bulb, Indoor, Outdoor, Reading, Sleep (4 pcs)	81	99.00	249	2021-01-01 00:00:00	2021-01-01 00:00:00
B098R25TGC	Noise Buds VS201 V2 in-Ear Truly Wireless Earbuds with Dual Equalizer | with Mic | Total 14-Hour Playtime | Full Touch Control | IPX5 Water Resistance and Bluetooth v5.1 (Olive Green)	25	2999.00	300	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B2PQL5N3	Lapster Gel Mouse pad with Wrist Rest , Gaming Mouse Pad with Lycra Cloth Nonslip for Laptop , Computer, , Home & Office (Black)	65	999.00	72	2021-01-01 00:00:00	2021-01-01 00:00:00
B07DKZCZ89	Gizga Essentials Earphone Carrying Case, Multi-Purpose Pocket Storage Travel Organizer for Earphones, Headset, Pen Drives, SD Cards, Shock-Proof Ballistic Nylon, Soft Fabric, Mesh Pocket, Green	97	499.00	166	2021-01-01 00:00:00	2021-01-01 00:00:00
B08GYG6T12	SanDisk Ultra SDHC UHS-I Card 32GB 120MB/s R for DSLR Cameras, for Full HD Recording, 10Y Warranty	98	800.00	164	2021-01-01 00:00:00	2021-01-01 00:00:00
B09BN2NPBD	DIGITEK® (DRL-14C) Professional (31cm) Dual Temperature LED Ring Light with Tripod Stand & Mini Tripod for YouTube, Photo-Shoot, Video Shoot, Live Stream, Makeup, Vlogging & More	99	3495.00	172	2021-01-01 00:00:00	2021-01-01 00:00:00
B00J4YG0PC	Classmate Long Notebook - 140 Pages, Single Line, 297mm x 210mm (Pack of 12)	92	720.00	101	2021-01-01 00:00:00	2021-01-01 00:00:00
B073BRXPZX	Lenovo 300 Wired Plug & Play USB Mouse, High Resolution 1600 DPI Optical Sensor, 3-Button Design with clickable Scroll Wheel, Ambidextrous, Ergonomic Mouse for Comfortable All-Day Grip (GX30M39704)	45	590.00	255	2021-01-01 00:00:00	2021-01-01 00:00:00
B08LHTJTBB	Dyazo 6 Angles Adjustable Aluminum Ergonomic Foldable Portable Tabletop Laptop/Desktop Riser Stand Holder Compatible for MacBook, HP, Dell, Lenovo & All Other Notebook (Silver)	48	1999.00	102	2021-01-01 00:00:00	2021-01-01 00:00:00
B07VTFN6HM	Western Digital WD 2TB My Passport Portable Hard Disk Drive, USB 3.0 with  Automatic Backup, 256 Bit AES Hardware Encryption,Password Protection,Compatible with Windows and Mac, External HDD-Black	55	7350.00	254	2021-01-01 00:00:00	2021-01-01 00:00:00
B008QS9J6Y	Logitech C270 Digital HD Webcam with Widescreen HD Video Calling, HD Light Correction, Noise-Reducing Mic, for Skype, FaceTime, Hangouts, WebEx, PC/Mac/Laptop/MacBook/Tablet - (Black, HD 720p/30fps)	100	2595.00	249	2021-01-01 00:00:00	2021-01-01 00:00:00
B09M8888DM	Portronics MPORT 31 4 Ports USB Hub (USB A to 4 USB-A Ports 4 in 1 Connector USB HUB(Grey)	86	799.00	217	2021-01-01 00:00:00	2021-01-01 00:00:00
B07Z1YVP72	AirCase Protective Laptop Bag Sleeve fits Upto 15.6" Laptop/ MacBook, Wrinkle Free, Padded, Waterproof Light Neoprene case Cover Pouch, for Men & Women, Black- 6 Months Warranty	89	999.00	232	2021-01-01 00:00:00	2021-01-01 00:00:00
B082FTPRSK	Zinq Five Fan Cooling Pad and Laptop Stand with Dual Height Adjustment and Dual USB Port Extension (Black)	101	1999.00	185	2021-01-01 00:00:00	2021-01-01 00:00:00
B09RF2QXGX	Gizga Essentials Webcam Cover, Privacy Protector Webcam Cover Slide, Compatible with Laptop, Desktop, PC, Smartphone, Protect Your Privacy and Security, Strong Adhesive, Set of 3, Black	41	299.00	188	2021-01-01 00:00:00	2021-01-01 00:00:00
B01KK0HU3Y	HP Z3700 Wireless Optical Mouse with USB Receiver and 2.4GHz Wireless Connection/ 1200DPI / 16 Months Long Battery Life /Ambidextrous and Slim Design (Modern Gold)	45	1499.00	253	2021-01-01 00:00:00	2021-01-01 00:00:00
B07JF9B592	MAONO AU-400 Lavalier Auxiliary Omnidirectional Microphone (Black)	50	699.00	171	2021-01-01 00:00:00	2021-01-01 00:00:00
B086394NY5	TABLE MAGIC Multipurpose Laptop Table Mat Finish Top Work at Home Study Table (TM Regular- Black) (Alloy Steel)	102	2490.00	133	2021-01-01 00:00:00	2021-01-01 00:00:00
B017PDR9N0	GIZGA Essentials Portable Tabletop Tablet Stand Mobile Holder, Desktop Stand, Cradle, Dock for iPad, Smartphone, Kindle, E-Reader, Fully Foldable, Adjustable Angle, Anti-Slip Pads, Black	32	499.00	165	2021-01-01 00:00:00	2021-01-01 00:00:00
B07NC12T2R	boAt Stone 650 10W Bluetooth Speaker with Upto 7 Hours Playback, IPX5 and Integrated Controls (Blue)	71	4990.00	82	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WKBD37W	ESnipe Mart Worldwide Travel Adapter with Build in Dual USB Charger Ports with 125V 6A, 250V Protected Electrical Plug for Laptops, Cameras (White)	103	999.00	238	2021-01-01 00:00:00	2021-01-01 00:00:00
B08JMC1988	boAt Stone 180 5W Bluetooth Speaker with Upto 10 Hours Playback, 1.75" Driver, IPX7 & TWS Feature(Black)	88	2490.00	191	2021-01-01 00:00:00	2021-01-01 00:00:00
B09GFN8WZL	Portronics Ruffpad 8.5M Multicolor LCD Writing Pad with Screen 21.5cm (8.5-inch) for Drawing, Playing, Handwriting Gifts for Kids & Adults, India's first notepad to save and share your child's first creatives via Ruffpad app on your Smartphone(Black)	46	999.00	235	2021-01-01 00:00:00	2021-01-01 00:00:00
B095X38CJS	BRUSTRO Copytinta Coloured Craft Paper A4 Size 80 GSM Mixed Bright Colour 40 Sheets Pack (10 cols X 4 Sheets) Double Side Color for Office Printing, Art and Craft.	104	99.00	227	2021-01-01 00:00:00	2021-01-01 00:00:00
B07ZKD8T1Q	Cuzor 12V Mini ups for WiFi Router | Power Backup up to 4 Hours | Replaceable Battery | Ups for Wi-Fi Router and Modem | Ups for Router up to 2A | ups for uninterrupted wi-fi	69	2999.00	246	2021-01-01 00:00:00	2021-01-01 00:00:00
B07G3YNLJB	Crucial BX500 240GB 3D NAND SATA 6.35 cm (2.5-inch) SSD (CT240BX500SSD1)	105	3100.00	221	2021-01-01 00:00:00	2021-01-01 00:00:00
B00P93X2H6	Classmate Pulse Spiral Notebook - 240 mm x 180 mm, Soft Cover, 200 Pages, Unruled	92	75.00	290	2021-01-01 00:00:00	2021-01-01 00:00:00
B0798PJPCL	Portronics My buddy plus Adjustable Laptop cooling Table (Brown)	47	2699.00	177	2021-01-01 00:00:00	2021-01-01 00:00:00
B09GFWJDY1	ZEBRONICS Zeb-Evolve Wireless in Ear Neckband Earphone with Supporting Bluetooth v5.0, Voice Assistant, Rapid Charge, Call Function & Magnetic Earpiece, with mic (Metallic Blue)	25	1499.00	65	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MZ6WZ6V	INOVERA World Map Extended Anti Slip Rubber Gaming Stitched Mouse Pad Desk Mat for Computer Laptop (Black, 900L x 400B x 2H mm)	65	999.00	159	2021-01-01 00:00:00	2021-01-01 00:00:00
B094QZLJQ6	Seagate One Touch 2TB External HDD with Password Protection – Black, for Windows and Mac, with 3 yr Data Recovery Services, and 4 Months Adobe CC Photography (STKY2000400)	55	7999.00	230	2021-01-01 00:00:00	2021-01-01 00:00:00
B07L3NDN24	ZEBRONICS Zeb-Fame 5watts 2.0 Multi Media Speakers with AUX, USB and Volume Control (Black)	106	799.00	145	2021-01-01 00:00:00	2021-01-01 00:00:00
B08WD18LJZ	TVARA LCD Writing Tablet 8.5 Inch E-Note Pad LCD Writing Tablet, Kids Drawing Pad 8.5 Inch Doodle Board, Toddler Boy and Girl Learning Gift for 3 4 5 6 Years Old, Black	46	600.00	254	2021-01-01 00:00:00	2021-01-01 00:00:00
B06XDKWLJH	Western Digital WD 1.5TB Elements Portable Hard Disk Drive, USB 3.0, Compatible with PC, PS4 and Xbox, External HDD (WDBU6Y0015BBK-WESN)	55	5734.00	155	2021-01-01 00:00:00	2021-01-01 00:00:00
B01J1CFO5I	Redgear MP35 Speed-Type Gaming Mousepad (Black/Red)	84	550.00	114	2021-01-01 00:00:00	2021-01-01 00:00:00
B07J2NGB69	Lenovo 400 Wireless Mouse, 1200DPI Optical Sensor, 2.4GHz Wireless Nano USB, 3-Button (Left,Right,Scroll) Upto 8M Left/Right & 100K Scroll clicks & 1yr Battery, Ambidextrous, Ergonomic GY50R91293	45	1390.00	115	2021-01-01 00:00:00	2021-01-01 00:00:00
B00MUTWLW4	Logitech K480 Wireless Multi-Device Keyboard for Windows, macOS, iPadOS, Android or Chrome OS, Bluetooth, Compact, Compatible with PC, Mac, Laptop, Smartphone, Tablet - Black	49	3295.00	214	2021-01-01 00:00:00	2021-01-01 00:00:00
B017NC2IPM	RESONATE RouterUPS CRU12V2A | Zero Drop | UPS for WiFi Router | Mini UPS | Up to 4 Hours PowerBackup | Battery Replacement Program | Router UPS Compatible with 12V <2A Routers, FTTH, Modem, Set Top Box, Alexa, Mini Camera	69	2911.00	71	2021-01-01 00:00:00	2021-01-01 00:00:00
B00N1U7JXM	3M Post-it Sticky Note Cube, 200 Sheets (4 Colors x 50 Sheets) | 3" x 3" Size | For notes, reminders, study, school and organizing	78	175.00	65	2021-01-01 00:00:00	2021-01-01 00:00:00
B08HQL67D6	OFIXO Multi-Purpose Laptop Table/Study Table/Bed Table/Foldable and Portable Wooden/Writing Desk (Wooden)	47	599.00	108	2021-01-01 00:00:00	2021-01-01 00:00:00
B09RKFBCV7	Fire-Boltt Ninja Calling 1.69" Bluetooth Calling Smart Watch, Dial Pad, Speaker, AI Voice Assistant with 450 NITS Peak Brightness, Wrist Gaming & 100+ Watch Faces with SpO2, HR, Multiple Sports Mode	20	7999.00	55	2021-01-01 00:00:00	2021-01-01 00:00:00
B08KHM9VBJ	Airtel AMF-311WW Data Card (Black), 4g Hotspot Support with 2300 Mah Battery	107	3250.00	159	2021-01-01 00:00:00	2021-01-01 00:00:00
B01IOZUHRS	Gizga Essentials Laptop Power Cable Cord- 3 Pin Adapter Isi Certified(1 Meter/3.3 Feet)	108	499.00	77	2021-01-01 00:00:00	2021-01-01 00:00:00
B00CEQEGPI	Logitech MK270r USB Wireless Keyboard and Mouse Set for Windows, 2.4 GHz Wireless, Spill-resistant Design, 8 Multimedia & Shortcut Keys, 2-Year Battery Life, PC/Laptop- Black	54	2295.00	262	2021-01-01 00:00:00	2021-01-01 00:00:00
B08B6XWQ1C	DIGITEK® (DTR-200MT) (18 CM) Portable & Flexible Mini Tripod with Mobile Holder & 360 Degree Ball Head, For Smart Phones, Compact Cameras, GoPro, Maximum Operating Height: 7.87 Inch, Maximum Load Upto: 1 kgs	60	995.00	125	2021-01-01 00:00:00	2021-01-01 00:00:00
B01DGVKBC6	FEDUS Cat6 Ethernet Cable, 10 Meter High Speed 550MHZ / 10 Gigabit Speed UTP LAN Cable, Network Cable Internet Cable RJ45 Cable LAN Wire, Patch Computer Cord Gigabit Category 6 Wires for Modem, Router	94	499.00	244	2021-01-01 00:00:00	2021-01-01 00:00:00
B08JD36C6H	Kingston DataTraveler Exodia DTX/32 GB Pen Drive USB 3.2 Gen 1 (Multicolor)	44	450.00	205	2021-01-01 00:00:00	2021-01-01 00:00:00
B00E3DVQFS	Duracell Rechargeable AA 2500mAh Batteries, 4 Pcs	51	1109.00	54	2021-01-01 00:00:00	2021-01-01 00:00:00
B00BN5SNF0	ENVIE® (AA10004PLNi-CD) AA Rechargeable Batteries, Low Self Discharge, AA 1000mAh Ni-CD (Pack of 4)	74	250.00	79	2021-01-01 00:00:00	2021-01-01 00:00:00
B09SGGRKV8	ZEBRONICS Zeb-Buds 30 3.5Mm Stereo Wired in Ear Earphones with Mic for Calling, Volume Control, Multifunction Button, 14Mm Drivers, Stylish Eartip,1.2 Meter Durable Cable and Lightweight Design(Red)	25	499.00	64	2021-01-01 00:00:00	2021-01-01 00:00:00
B084BR3QX8	LAPSTER Accessories Power Cable Cord 2 Pin Laptop Adapter and Tape Recorder 1.5M	108	999.00	286	2021-01-01 00:00:00	2021-01-01 00:00:00
B09VC2D2WG	Portronics Ruffpad 12E Re-Writable LCD Writing Pad with 30.4cm (12 inch) Writing Area, Single Tap Erase, Smart Lock, Long Battery Life, India's first notepad to save and share your child's first creatives via Ruffpad app on your Smartphone(Black)	46	1499.00	280	2021-01-01 00:00:00	2021-01-01 00:00:00
B09163Q5CD	Verilux® USB C Hub Multiport Adapter- 6 in 1 Portable Aluminum Type C Hub with 4K HDMI Output, USB 2.0/3.0 Ports, SD/Micro SD Card Reader Compatible for MacBook Pro 2016-2020, MacBook Air 2018-2020, Type-C Devices	86	1929.00	273	2021-01-01 00:00:00	2021-01-01 00:00:00
B08K9PX15C	Zebronics Zeb Wonderbar 10 USB Powered 2.0 Computer Speaker with RGB Lights	109	1499.00	52	2021-01-01 00:00:00	2021-01-01 00:00:00
B083RD1J99	HP Wired Mouse 100 with 1600 DPI Optical Sensor, USB Plug-and -Play,ambidextrous Design, Built-in Scrolling and 3 Handy Buttons. 3-Years Warranty (6VY96AA)	45	399.00	160	2021-01-01 00:00:00	2021-01-01 00:00:00
B09Z7YGV3R	Anjaney Enterprise Smart Multipurpose Foldable Laptop Table with Cup Holder, Study Table, Bed Table, Breakfast Table, Foldable and Portable/Ergonomic & Rounded Edges/Non-Slip (Black)	47	699.00	128	2021-01-01 00:00:00	2021-01-01 00:00:00
B00N3XLDW0	ENVIE ECR-20 Charger for AA & AAA Rechargeable Batteries	110	400.00	250	2021-01-01 00:00:00	2021-01-01 00:00:00
B07Z53L5QL	ProElite Faux Leather Smart Flip Case Cover for Apple iPad 10.2" 9th Gen (2021) / 8th Gen / 7th Gen with Stylus Pen, Black	97	1499.00	120	2021-01-01 00:00:00	2021-01-01 00:00:00
B00P93X0VO	Classmate Pulse 6 Subject Notebook - Unruled, 300 Pages, Spiral Binding, 240mm*180mm	73	120.00	150	2021-01-01 00:00:00	2021-01-01 00:00:00
B07SBGFDX9	Pentonic Multicolor Ball Point Pen, Pack of 10	111	120.00	73	2021-01-01 00:00:00	2021-01-01 00:00:00
B07X2L5Z8C	Logitech Pebble M350 Wireless Mouse with Bluetooth or USB - Silent, Slim Computer Mouse with Quiet Click for Laptop, Notebook, PC and Mac - Graphite	45	2295.00	161	2021-01-01 00:00:00	2021-01-01 00:00:00
B00VA7YYUO	Apsara Platinum Pencils Value Pack - Pack of 20	112	99.00	204	2021-01-01 00:00:00	2021-01-01 00:00:00
B07L9FW9GF	Zebronics Zeb-Power Wired USB Mouse, 3-Button, 1200 DPI Optical Sensor, Plug & Play, for Windows/Mac	45	249.00	286	2021-01-01 00:00:00	2021-01-01 00:00:00
B08D64C9FN	Ant Esports GM320 RGB Optical Wired Gaming Mouse | 8 Programmable Buttons | 12800 DPI	63	2799.00	182	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LOD70SC	Pilot V7 Liquid Ink Roller Ball Pen (2 Blue + 1 Black)	93	210.00	219	2021-01-01 00:00:00	2021-01-01 00:00:00
B09X76VL5L	boAt Airdopes 191G True Wireless Earbuds with ENx™ Tech Equipped Quad Mics, Beast™ Mode(Low Latency- 65ms) for Gaming, 2x6mm Dual Drivers, 30H Playtime, IPX5, IWP™, Appealing Case LEDs(Sport Blue)	25	3490.00	73	2021-01-01 00:00:00	2021-01-01 00:00:00
B091JF2TFD	Boult Audio BassBuds Oak in-Ear Wired Earphones with 10mm Extra Bass Driver and HD Sound with mic(Brown)	25	1299.00	64	2021-01-01 00:00:00	2021-01-01 00:00:00
B07S7DCJKS	IT2M Designer Mouse Pad for Laptop/Computer (9.2 X 7.6 Inches, 12788)	65	499.00	216	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NC2TY11	Noise ColorFit Ultra Buzz Bluetooth Calling Smart Watch with 1.75" HD Display, 320x385 px Resolution, 100 Sports Modes, Stock Market Info Smartwatch for Men & Women (Olive Green)	20	5999.00	194	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BDS8MY8J	Lapster Caddy for ssd and HDD, Optical Bay 2nd Hard Drive Caddy, Caddy 9.5mm for Laptop	113	999.00	215	2021-01-01 00:00:00	2021-01-01 00:00:00
B09X7DY7Q4	SanDisk Extreme SD UHS I 64GB Card for 4K Video for DSLR and Mirrorless Cameras 170MB/s Read & 80MB/s Write	23	1800.00	208	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YV575RK	Fire-Boltt Ring Pro Bluetooth Calling, 1.75” 320*385px High Res, IP68 & SpO2 Monitoring, Pin Code Locking Functionality & Split Screen Access, Built in Mic & Speaker for HD Calls, Black, Free Size	20	9999.00	136	2021-01-01 00:00:00	2021-01-01 00:00:00
B08LW31NQ6	Lenovo 600 Bluetooth 5.0 Silent Mouse: Compact, Portable, Dongle-Free Multi-Device connectivity with Microsoft Swift Pair | 3-Level Adjustable DPI up to 2400 | Battery Life: up to 1 yr	45	2890.00	138	2021-01-01 00:00:00	2021-01-01 00:00:00
B09ND94ZRG	Boult Audio Airbass Propods X TWS Bluetooth Truly Wireless in Ear Earbuds with Mic, 32H Playtime, Fast Charging Type-C, Ipx5 Water Resistant, Touch Controls and Voice Assistant (Red)	25	5999.00	259	2021-01-01 00:00:00	2021-01-01 00:00:00
B00P93X6EK	Classmate Soft Cover 6 Subject Spiral Binding Notebook, Unruled, 300 Pages	73	160.00	276	2021-01-01 00:00:00	2021-01-01 00:00:00
B0994GP1CX	LS LAPSTER Quality Assured Universal Silicone 15.6" Keyboard Protector Skin|| Keyboard Dust Cover|| Keyboard Skin for 15.6" Laptop| 15.6" Keyguard| (3.93 x 11.81 x 0.39 inches)	62	999.00	88	2021-01-01 00:00:00	2021-01-01 00:00:00
B07H8W9PB6	KLAM LCD Writing Tablet Screenwriting Toys Board Smart Digital E-Note Pad 8.5 Inch Light Weight Magic Slate for Drawing Playing Noting by Kids and Adults Best Birthday Gift Girls Boys, Multicolor	46	499.00	109	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NNHFSSF	CP PLUS 2MP Full HD Smart Wi-fi CCTV Security Camera | 360° with Pan Tilt | Two Way Talk | Cloud Monitor | Motion Detect | Night Vision | Supports SD Card (Up to 128 GB) | Alexa & Ok Google | CP-E21A	83	4700.00	287	2021-01-01 00:00:00	2021-01-01 00:00:00
B08D9NDZ1Y	HP Deskjet 2331 Colour Printer, Scanner and Copier for Home/Small Office, Compact Size, Reliable, Easy Set-Up Through Smart App On Your Pc Connected Through USB, Ideal for Home.	114	4332.96	296	2021-01-01 00:00:00	2021-01-01 00:00:00
B0085IATT6	D-Link DIR-615 Wi-fi Ethernet-N300 Single_band 300Mbps Router, Mobile App Support, Router | AP | Repeater | Client Modes(Black)	69	1800.00	192	2021-01-01 00:00:00	2021-01-01 00:00:00
B08WJ86PV2	RPM Euro Games Gaming Mousepad Speed Type Extended Large (Size - 800 mm x 300 mm x 3 mm)	65	990.00	93	2021-01-01 00:00:00	2021-01-01 00:00:00
B078HRR1XV	Wacom One by CTL-472/K0-CX Digital Drawing Graphics Pen Tablet (Red & Black) Small (6-inch x 3.5-inch)(15x8cm) | Battery Free Cordless Pen with 2048 Pressure Level	46	4699.00	284	2021-01-01 00:00:00	2021-01-01 00:00:00
B09P22HXH6	Lenovo 300 FHD Webcam with Full Stereo Dual Built-in mics | FHD 1080P 2.1 Megapixel CMOS Camera |Privacy Shutter | Ultra-Wide 95 Lens | 360 Rotation | Flexible Mount, Plug-n-Play | Cloud Grey	100	5490.00	280	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LM4X3XE	Parker Quink Ink Bottle (Black)	91	100.00	54	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YLFHFDW	Sony WI-C100 Wireless Headphones with Customizable Equalizer for Deep Bass & 25 Hrs Battery, DSEE-Upscale, Splash Proof, 360RA, Fast Pair, in-Ear Bluetooth Headset with mic for Phone Calls (Black)	25	2790.00	257	2021-01-01 00:00:00	2021-01-01 00:00:00
B07YWS9SP9	Zebronics, ZEB-NC3300 USB Powered Laptop Cooling Pad with Dual Fan, Dual USB Port and Blue LED Lights	101	999.00	252	2021-01-01 00:00:00	2021-01-01 00:00:00
B08WLY8V9S	Tukzer Gel Mouse Pad Wrist Rest Memory-Foam Ergonomic Mousepad| Cushion Wrist Support & Pain Relief| Suitable for Gaming, Computer, Laptop, Home & Office Non-Slip Rubber Base (Blue)	65	899.00	229	2021-01-01 00:00:00	2021-01-01 00:00:00
B0873L7J6X	Infinity (JBL Glide 510, 72 Hrs Playtime with Quick Charge, Wireless On Ear Headphone with Mic, Deep Bass, Dual Equalizer, Bluetooth 5.0 with Voice Assistant Support (Black)	40	3999.00	134	2021-01-01 00:00:00	2021-01-01 00:00:00
B07YNHCW6N	Robustrion Smart Trifold Hard Back Flip Stand Case Cover for Apple iPad 10.2 Cover iPad 9th Generation Cover 2021 8th Gen 2020 7th Gen 2019 Generation Case - Black	97	2499.00	200	2021-01-01 00:00:00	2021-01-01 00:00:00
B01MQ2A86A	Logitech M331 Silent Plus Wireless Mouse, 2.4GHz with USB Nano Receiver, 1000 DPI Optical Tracking, 3 Buttons, 24 Month Life Battery, PC/Mac/Laptop - Black	45	1645.00	227	2021-01-01 00:00:00	2021-01-01 00:00:00
B00KIE28X0	Camel Artist Acrylic Color Box - 9ml Tubes, 12 Shades	64	310.00	293	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BHYJ8CVF	Portronics Key2 Combo Multimedia USB Wireless Keyboard and Mouse Set with 2.4 GHz Wireless Technology, Soft & Silent Button, Compact Size (Grey)	54	1499.00	275	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BCVJ3PVP	SupCares Laptop Stand 7 Height Adjustable, Aluminium, Ventilated, Foldable, Portable Laptop Holder for Desk & Table Mount Upto 15.6 inch Laptop with Carry Pouch (Silver)	47	1299.00	193	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B2931FCV	ZEBRONICS Zeb-Sound Bomb N1 True Wireless in Ear Earbuds with Mic ENC, Gaming Mode (up to 50ms), up to 18H Playback, BT V5.2, Fidget Case, Voice Assistant, Splash Proof, Type C (Midnight Black)	25	4199.00	117	2021-01-01 00:00:00	2021-01-01 00:00:00
B09TMZ1MF8	Western Digital WD Green SATA 240GB Internal SSD Solid State Drive - SATA 6Gb/s 2.5 inches - WDS240G3G0A	105	4000.00	294	2021-01-01 00:00:00	2021-01-01 00:00:00
B07VV37FT4	Classmate Octane Neon- 25 Blue Gel Pens | Smooth Writing Pens| Water-proof Ink For Smudge-free Writing| Preferred By Students For Exam & Class Notes| Study At Home Essential	52	250.00	68	2021-01-01 00:00:00	2021-01-01 00:00:00
B07JB2Y4SR	Classmate Octane Colour Burst-Multicolour Gel Pens (Pack of 10) | Gold & Silver Glitter Sparkle Pens|10 colour ink shades for art lovers and kids|Fun at home essentials	115	100.00	282	2021-01-01 00:00:00	2021-01-01 00:00:00
B08KRMK9LZ	Tukzer Stylus Pen, iPad Pencil with Palm Rejection Tilt Sensor| 2nd Gen for 2018-2022 iPad 6/7/8/9th Gen; iPad 10.2", Pro 12.9/11", Mini 6/5th, Air 5/4/3rd, Precise for Writing/Drawing (3 Spare Tips)	36	5999.00	262	2021-01-01 00:00:00	2021-01-01 00:00:00
B08LT9BMPP	Logitech G102 USB Light Sync Gaming Mouse with Customizable RGB Lighting, 6 Programmable Buttons, Gaming Grade Sensor, 8K DPI Tracking, 16.8mn Color, Light Weight - Black	63	1995.00	247	2021-01-01 00:00:00	2021-01-01 00:00:00
B0814ZY6FP	Zebronics ZEB-VITA Wireless Bluetooth 10W Portable Bar Speaker With Supporting USB, SD Card, AUX, FM, TWS & Call Function	71	1199.00	187	2021-01-01 00:00:00	2021-01-01 00:00:00
B09F3PDDRF	Lapster USB 3.0 sata Cable for 2.5 inch SSD and HDD , USB 3.0 to SATA III Hard Driver Adapter , sata to USB Cable-(Blue)	116	999.00	136	2021-01-01 00:00:00	2021-01-01 00:00:00
B07X963JNS	URBN 10000 mAh Lithium Power Bank UPR10K with 12 Watt Fast Charging, Blue	21	2499.00	103	2021-01-01 00:00:00	2021-01-01 00:00:00
B09LD3116F	Qubo Smart Cam 360 from Hero Group | Made in India | 2MP 1080p Full HD | CCTV Wi-Fi Camera | 360 Degree Coverage| Two Way Talk | Mobile App Connectivity | Night Vision | Cloud & SD Card Recording	83	3990.00	265	2021-01-01 00:00:00	2021-01-01 00:00:00
B08Y5QJTVK	Duracell CR2025 3V Lithium Coin Battery, 5 pcs, 2025 Coin Button Cell Battery, DL2025	72	200.00	195	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LY1FN1K	Camel Fabrica Acrylic Ultra Color - 15ml each, 10 Shades	64	230.00	177	2021-01-01 00:00:00	2021-01-01 00:00:00
B07DJ5KYDZ	Lenovo GX20L29764 65W Laptop Adapter/Charger with Power Cord for Select Models of Lenovo (Round pin) (Black)	108	2796.00	165	2021-01-01 00:00:00	2021-01-01 00:00:00
B009LJ2BXA	Hp Wired On Ear Headphones With Mic With 3.5 Mm Drivers, In-Built Noise Cancelling, Foldable And Adjustable For Laptop/Pc/Office/Home/ 1 Year Warranty (B4B09Pa)	117	999.00	56	2021-01-01 00:00:00	2021-01-01 00:00:00
B09BVCVTBC	Redragon K617 Fizz 60% Wired RGB Gaming Keyboard, 61 Keys Compact Mechanical Keyboard w/White and Grey Color Keycaps, Linear Red Switch, Pro Driver/Software Supported	118	3499.00	252	2021-01-01 00:00:00	2021-01-01 00:00:00
B07SY4C3TD	HP GT 53 XL Cartridge Ink	61	723.00	128	2021-01-01 00:00:00	2021-01-01 00:00:00
B094JB13XL	Noise ColorFit Ultra Smart Watch with 1.75" HD Display, Aluminium Alloy Body, 60 Sports Modes, Spo2, Lightweight, Stock Market Info, Calls & SMS Reply (Space Blue)	20	5999.00	107	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CRRQK6Z	Zebronics Zeb-JUKEBAR 3900, 80W Multimedia soundbar with subwoofer Supporting Bluetooth, HDMI(ARC), Coaxial Input, AUX, USB & Remote Control (Black)	119	12499.00	77	2021-01-01 00:00:00	2021-01-01 00:00:00
B08MTLLSL8	boAt Bassheads 102 Wired in Ear Earphones with Mic (Mint Green)	25	1290.00	257	2021-01-01 00:00:00	2021-01-01 00:00:00
B08Y57TPDM	Duracell CR2016 3V Lithium Coin Battery, 5 pcs, 2016 Coin Button Cell Battery, DL2016	72	200.00	256	2021-01-01 00:00:00	2021-01-01 00:00:00
B09CYTJV3N	MI 360° Home Security Wireless Camera 2K Pro with Bluetooth Gateway BLE 4.2 l Dual Band Wi-fi Connection l 3 Million 1296p| Full Color in Low-Light | AI Human Detection, White	83	5999.00	76	2021-01-01 00:00:00	2021-01-01 00:00:00
B07GLNJC25	ZEBRONICS Zeb-100HB 4 Ports USB Hub for Laptop, PC Computers, Plug & Play, Backward Compatible - Black	86	499.00	128	2021-01-01 00:00:00	2021-01-01 00:00:00
B08FY4FG5X	Boult Audio Bass Buds Q2 Lightweight Stereo Wired Over Ear Headphones Set with Mic with Deep Bass, Comfortable Ear Cushions, & Long Cord (Black)	70	2499.00	177	2021-01-01 00:00:00	2021-01-01 00:00:00
B07TMCXRFV	ESR Screen Protector Compatible with iPad Pro 11 Inch (2022/2021/2020/2018) and iPad Air 5/4 (2022/2020, 10.9 Inch), Tempered-Glass Film with Alignment Frame, Scratch Resistant, HD Clarity, 2 Pack	35	1599.00	223	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LZPQVMK	Parker Vector Standard Chrome Trim Ball Pen (Ink - Black)	111	320.00	126	2021-01-01 00:00:00	2021-01-01 00:00:00
B08X77LM8C	Silicone Rubber Earbuds Tips, Eartips, Earpads, Earplugs, for Replacement in Earphones and Bluetooth Medium Size (10 Pcs Black)	120	999.00	153	2021-01-01 00:00:00	2021-01-01 00:00:00
B01EJ5MM5M	Canon PIXMA MG2577s All-in-One Inkjet Colour Printer with 1 Additional Colour Cartridge	121	3875.00	197	2021-01-01 00:00:00	2021-01-01 00:00:00
B08J82K4GX	Samsung 24-inch(60.46cm) FHD Monitor, IPS, 75 Hz, Bezel Less Design, AMD FreeSync, Flicker Free, HDMI, D-sub, (LF24T350FHWXXL, Dark Blue Gray)	80	19110.00	158	2021-01-01 00:00:00	2021-01-01 00:00:00
B07Z1Z77ZZ	AirCase Protective Laptop Bag Sleeve fits Upto 14.1" Laptop/ MacBook, Wrinkle Free, Padded, Waterproof Light Neoprene case Cover Pouch, for Men & Women, Black- 6 Months Warranty	89	999.00	267	2021-01-01 00:00:00	2021-01-01 00:00:00
B00DJ5N9VK	Faber-Castell Connector Pen Set - Pack of 25 (Assorted)	122	150.00	276	2021-01-01 00:00:00	2021-01-01 00:00:00
B08FGNPQ9X	Zinq UPS for Router, Mini UPS for 12V WiFi Router Broadband Modem with Upto 4 Hours Power Backup, Upto 2Amp, Works with Existing Adapter, Also Works with Set-top Box, Smart Camera, CCTV (Black)	69	2999.00	203	2021-01-01 00:00:00	2021-01-01 00:00:00
B07NTKGW45	SaleOn™ Portable Storage Organizer Bag for Earphone USB Cable Power Bank Mobile Charger Digital Gadget Hard Disk, Water Resistance Material - Dark Grey	66	899.00	124	2021-01-01 00:00:00	2021-01-01 00:00:00
B08J4PL1Z3	RPM Euro Games Laptop/PC Controller Wired for Windows - 7, 8, 8.1, 10 and XP, Ps3(Upgraded with XYAB Buttons)	84	1490.00	188	2021-01-01 00:00:00	2021-01-01 00:00:00
B07XJWTYM2	realme Buds Wireless in Ear Bluetooth Earphones with mic, 11.2mm Bass Boost Driver, Magnetic Fast Pair, Fast Charging and 12 Hrs Playtime (Yellow)	25	1999.00	198	2021-01-01 00:00:00	2021-01-01 00:00:00
B09939XJX8	TVARA LCD Writing Tablet, 8.5" Inch Colorful Toddler Doodle Board Drawing Tablet, Erasable Reusable Electronic Drawing Pads, Educational and Learning Tool for 3-6 Years Old Boy and Girls Mix Colors	46	1500.00	219	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MDCZJXS	Wings Phantom Pro Earphones Gaming Earbuds with LED Battery Indicator, 50ms Low Latency, Bluetooth 5.3, 40 Hours Playtime, MEMs Mic, IPX4 Resist, 12mm Driver, 500mah case, Headphones, (Black TWS)	123	5499.00	81	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CTQP51L	Robustrion [Anti-Scratch] & [Smudge Proof] [S Pen Compatible] Premium Tempered Glass Screen Protector for Samsung Tab S6 Lite 10.4 inch SM-P610/615 [Bubble Free]	35	1499.00	151	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BG62HMDJ	Cablet 2.5 Inch SATA USB 3.0 HDD/SSD Portable External Enclosure for 7mm and 9.5mm, Tool-Free Design, Supports UASP Max 6TB	55	775.00	54	2021-01-01 00:00:00	2021-01-01 00:00:00
B08GTYFC37	SanDisk 1TB Extreme Portable SSD 1050MB/s R, 1000MB/s W,Upto 2 Meter Drop Protection with IP55 Water/dust Resistance, HW Encryption, PC,MAC & TypeC Smartphone Compatible, 5Y Warranty, External SSD	124	32000.00	200	2021-01-01 00:00:00	2021-01-01 00:00:00
B08SBH499M	ZEBRONICS Zeb-Warrior II 10 watts 2.0 Multimedia Speaker with RGB Lights, USB Powered, AUX Input, Volume Control Pod for PC, Laptops, Desktop	109	1300.00	195	2021-01-01 00:00:00	2021-01-01 00:00:00
B08FYB5HHK	TP-Link UE300C USB Type-C to RJ45 Gigabit Ethernet Network Adapter/RJ45 LAN Wired Adapter for Ultrabook, Chromebook, Laptop, Desktop, Plug & Play, USB 3.0, Foldable and Portable Design	125	1999.00	196	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B5GJRTHB	Wecool Moonwalk M1 ENC True Wireless in Ear Earbuds with Mic, Titanium Drivers for Rich Bass Experience, 40+ Hours Play Time, Type C Fast Charging, Low Latency, BT 5.3, IPX5, Deep Bass (Black)	25	1999.00	222	2021-01-01 00:00:00	2021-01-01 00:00:00
B09GBBJV72	HP 330 Wireless Black Keyboard and Mouse Set with Numeric Keypad, 2.4GHz Wireless Connection and 1600 DPI, USB Receiver, LED Indicators , Black(2V9E6AA)	54	2199.00	57	2021-01-01 00:00:00	2021-01-01 00:00:00
B07P434WJY	RC PRINT GI 790 Ink Refill for Canon G1000, G1010, G1100, G2000, G2002, G2010, G2012, G2100, G3000, G3010, G3012, G3100, G4000, G4010	126	1999.00	180	2021-01-01 00:00:00	2021-01-01 00:00:00
B07T9FV9YP	Redgear Cloak Wired RGB Wired Over Ear Gaming Headphones with Mic for PC	123	1799.00	124	2021-01-01 00:00:00	2021-01-01 00:00:00
B08WKFSN84	Wayona Type C To Type C 65W/3.25A Nylon Braided Fast Charging Cable Compatible For Laptop, Macbook, Samsung Galaxy M33 M53 M51 S20 Ultra, A71, A53, A51, Ipad Pro 2018 (1M, Grey)	1	1099.00	281	2021-01-01 00:00:00	2021-01-01 00:00:00
B09TBCVJS3	Amazfit GTS2 Mini (New Version) Smart Watch with Always-on AMOLED Display, Alexa Built-in, SpO2, 14 Days' Battery Life, 68 Sports Modes, GPS, HR, Sleep & Stress Monitoring (Meteor Black)	20	7999.00	259	2021-01-01 00:00:00	2021-01-01 00:00:00
B08TR61BVK	Tabelito® Polyester Foam, Nylon Hybrid laptopss Bag Sleeve Case Cover Pouch for laptopss Apple/Dell/Lenovo/ Asus/ Hp/Samsung/Mi/MacBook/Ultrabook/Thinkpad/Ideapad/Surfacepro (15.6 inches /39.6cm, Blue) laptopsss	89	1499.00	233	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B2CPVXHX	Robustrion Anti-Scratch & Smudge Proof Tempered Glass Screen Protector for Xiaomi Mi Pad 5 11 inch	35	1499.00	251	2021-01-01 00:00:00	2021-01-01 00:00:00
B08XNL93PL	Portronics Ruffpad 15 Re-Writable LCD Screen 38.1cm (15-inch) Writing Pad for Drawing, Playing, Handwriting Gifts for Kids & Adults (Grey)	127	2999.00	234	2021-01-01 00:00:00	2021-01-01 00:00:00
B088GXTJM3	DIGITEK® (DLS-9FT) Lightweight & Portable Aluminum Alloy Light Stand for Ring Light, Reflector, Flash Units, Diffuser, Portrait, Softbox, Studio Lighting & More Ideal for Outdoor & Indoor Shoots	128	1299.00	178	2021-01-01 00:00:00	2021-01-01 00:00:00
B099S26HWG	Classmate Pulse 1 Subject Notebook - 240mm x 180mm , Soft Cover, 180 Pages, Single Line, Pack of 4	92	300.00	194	2021-01-01 00:00:00	2021-01-01 00:00:00
B08461VC1Z	Scarters Mouse Pad, Desk Mat Extended for Work from Home/Office/Gaming | Vegan PU Leather | Anti-Skid, Anti-Slip, Reversible Splash-Proof – Deskspread ~ Navy Blue & Yellow	65	1995.00	224	2021-01-01 00:00:00	2021-01-01 00:00:00
B00K32PEW4	Casio MJ-120D 150 Steps Check and Correct Desktop Calculator with Tax Keys, Black	129	535.00	235	2021-01-01 00:00:00	2021-01-01 00:00:00
B07LFWP97N	Gizga Essentials Laptop Bag Sleeve Case Cover Pouch with Handle for 14.1 Inch Laptop for Men & Women, Padded Laptop Compartment, Premium Zipper Closure, Water Repellent Nylon Fabric, Grey	89	1099.00	184	2021-01-01 00:00:00	2021-01-01 00:00:00
B0746N6WML	Parker Vector Camouflage Gift Set - Roller Ball Pen & Parker Logo Keychain (Black Body, Blue Ink), 2 Piece Set	111	450.00	254	2021-01-01 00:00:00	2021-01-01 00:00:00
B07W9KYT62	TP-Link AC1200 Archer A6 Smart WiFi, 5GHz Gigabit Dual Band MU-MIMO Wireless Internet Router, Long Range Coverage by 4 Antennas, Qualcomm Chipset	69	3999.00	177	2021-01-01 00:00:00	2021-01-01 00:00:00
B08D9MNH4B	HP Deskjet 2723 AIO Printer, Copy, Scan, WiFi, Bluetooth, USB, Simple Setup Smart App, Ideal for Home.	114	7005.00	293	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MKG4ZCM	Xiaomi Mi 4A Dual_Band Ethernet 1200Mbps Speed Router| 2.4GHz & 5GHz Frequency|128MB RAM | DualCore 4 Thread CPU|4 Omni Directional Antenna|Mi Wi-Fi app-Parental Control & Anti Hacking|Repeater, White	69	2999.00	190	2021-01-01 00:00:00	2021-01-01 00:00:00
B07RZZ1QSW	SLOVIC® Tripod Mount Adapter| Tripod Mobile Holder|Tripod Phone Mount(Made in India)| Smartphone Clip Clipper 360 Degree for Taking Magic Video Shots & Pictures.	57	799.00	97	2021-01-01 00:00:00	2021-01-01 00:00:00
B07222HQKP	Orico 2.5"(6.3cm) USB 3.0 HDD Enclosure Case Cover for SATA SSD HDD | SATA SSD HDD Enclosure High Speed USB 3.0 | Tool Free Installation | Black	55	999.00	255	2021-01-01 00:00:00	2021-01-01 00:00:00
B00NFD0ETQ	Logitech G402 Hyperion Fury USB Wired Gaming Mouse, 4,000 DPI, Lightweight, 8 Programmable Buttons, Compatible for PC/Mac - Black	63	2895.00	87	2021-01-01 00:00:00	2021-01-01 00:00:00
B075DB1F13	Panasonic Eneloop BQ-CC55N Advanced, Smart and Quick Charger for AA & AAA Rechargeable Batteries, White	72	1500.00	151	2021-01-01 00:00:00	2021-01-01 00:00:00
B0148NPH9I	Logitech K380 Wireless Multi-Device Keyboard for Windows, Apple iOS, Apple TV Android or Chrome, Bluetooth, Compact Space-Saving Design, PC/Mac/Laptop/Smartphone/Tablet (Dark Grey)	49	3195.00	72	2021-01-01 00:00:00	2021-01-01 00:00:00
B01JOFKL0A	Canon PIXMA E477 All-in-One Wireless Ink Efficient Colour Printer (White/Blue)	114	6355.00	254	2021-01-01 00:00:00	2021-01-01 00:00:00
B079S811J3	Redgear Cosmo 7,1 Usb Gaming Wired Over Ear Headphones With Mic With Virtual Surround Sound,50Mm Driver, Rgb Leds & Remote Control(Black)	123	2999.00	77	2021-01-01 00:00:00	2021-01-01 00:00:00
B0083T231O	Belkin Essential Series 4-Socket Surge Protector Universal Socket with 5ft Heavy Duty Cable (Grey)	130	1499.00	219	2021-01-01 00:00:00	2021-01-01 00:00:00
B086PXQ2R4	Classmate Long Book - Unruled, 160 Pages, 314 mm x 194 mm - Pack Of 3	92	165.00	234	2021-01-01 00:00:00	2021-01-01 00:00:00
B07L1N3TJX	Artis AR-45W-MG2 45 Watts MG2 Laptop Adapter/Charger Compatible with MB Air 13” & MB Air 11” (14.5 V, 3.1 A) Connector: MG2 (T Tip Connector)	108	3499.00	255	2021-01-01 00:00:00	2021-01-01 00:00:00
B07YFWVRCM	Imou 360° 1080P Full HD Security Camera, Human Detection, Motion Tracking, 2-Way Audio, Night Vision, Dome Camera with WiFi & Ethernet Connection, Alexa Google Assistant, Up to 256GB SD Card Support	83	7500.00	159	2021-01-01 00:00:00	2021-01-01 00:00:00
B08TDJ5BVF	E-COSMOS 5V 1.2W Portable Flexible USB LED Light (Colours May Vary, Small, EC-POF1)	81	39.00	178	2021-01-01 00:00:00	2021-01-01 00:00:00
B09XXZXQC1	Xiaomi Pad 5| Qualcomm Snapdragon 860| 120Hz Refresh Rate| 6GB, 128GB| 2.5K+ Display (10.95-inch/27.81cm)|1 Billion Colours| Dolby Vision Atmos| Quad Speakers| Wi-Fi| Gray	131	37999.00	204	2021-01-01 00:00:00	2021-01-01 00:00:00
B083T5G5PM	Sennheiser CX 80S in-Ear Wired Headphones with in-line One-Button Smart Remote with Microphone Black	25	1990.00	183	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BHVPTM2C	HB Plus Folding Height Adjustable Aluminum Foldable Portable Adjustment Desktop Laptop Holder Riser Stand	47	1949.00	102	2021-01-01 00:00:00	2021-01-01 00:00:00
B01NBX5RSB	HP 65W AC Laptops Charger Adapter 4.5mm for HP Pavilion Black (Without Power Cable)	108	1547.00	161	2021-01-01 00:00:00	2021-01-01 00:00:00
B08MWJTST6	Tukzer Fully Foldable Tabletop Desktop Tablet Mobile Stand Holder - Angle & Height Adjustable for Desk, Cradle, Dock, Compatible with Smartphones & Tablets (White)	32	1299.00	77	2021-01-01 00:00:00	2021-01-01 00:00:00
B07R99NBVB	Gizga Essentials Cable Organiser, Cord Management System for PC, TV, Home Theater, Speaker & Cables, Reusable Cable Organizer for Desk, WFH Accessories, Organizer Tape Roll, Reusable Cable Ties Strap	132	599.00	189	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LY12TH6	Camel Oil Pastel with Reusable Plastic Box - 50 Shades	133	230.00	235	2021-01-01 00:00:00	2021-01-01 00:00:00
B08497Z1MQ	HP M270 Backlit USB Wired Gaming Mouse with 6 Buttons, 4-Speed Customizable 2400 DPI, Ergonomic Design, Breathing LED Lighting, Metal Scroll Wheel, Lightweighted / 3 Years Warranty (7ZZ87AA), Black	63	700.00	191	2021-01-01 00:00:00	2021-01-01 00:00:00
B07KNM95JK	Foxin FTC 12A / Q2612A Black Laser Toner Cartridge Compatible with Laserjet 1020,M1005,1018,1010,1012,1015,1020 Plus,1022,3015,3020,3030,3050, 3050Z, 3052,3055 (Black)	134	1150.00	251	2021-01-01 00:00:00	2021-01-01 00:00:00
B09Q3M3WLJ	Robustrion [Anti-Scratch] & [Smudge Proof] [Bubble Free] Premium Tempered Glass Screen Protector Guard for Samsung Galaxy Tab A8 10.5 inch [SM-X200/X205/X207] 2022	35	1499.00	145	2021-01-01 00:00:00	2021-01-01 00:00:00
B09B9SPC7F	PC SQUARE Laptop Tabletop Stand/ Computer Tablet Stand 6 Angles Adjustable Aluminum Ergonomic Foldable Portable Desktop Holder Compatible with MacBook, HP, Dell, Lenovo & All Other Notebook (Silver)	47	1299.00	74	2021-01-01 00:00:00	2021-01-01 00:00:00
B099SD8PRP	Lenovo 130 Wireless Compact Mouse, 1K DPI Optical sensor, 2.4GHz Wireless NanoUSB, 10m range, 3button(left,right,scroll) upto 3M left/right clicks, 10 month battery, Ambidextrous, Ergonomic GY51C12380	45	1090.00	294	2021-01-01 00:00:00	2021-01-01 00:00:00
B00S2SEV7K	Pilot Frixion Clicker Roller Pen (Blue), (9000019529)	135	100.00	134	2021-01-01 00:00:00	2021-01-01 00:00:00
B08WKCTFF3	ZEBRONICS Aluminium Alloy Laptop Stand, Compatible with 9-15.6 inch Laptops, 7 Angles Adjustable, Anti Slip Silicon Rubber Pads, Foldable, Velvet Pouch Inside, Zeb-NS2000 (Dark Grey)	47	1999.00	117	2021-01-01 00:00:00	2021-01-01 00:00:00
B08498D67S	HP K500F Backlit Membrane Wired Gaming Keyboard with Mixed Color Lighting, Metal Panel with Logo Lighting, 26 Anti-Ghosting Keys, and Windows Lock Key / 3 Years Warranty(7ZZ97AA)	118	1800.00	147	2021-01-01 00:00:00	2021-01-01 00:00:00
B00C3GBCIS	GIZGA Club-laptop Neoprene Reversible for 15.6-inches Laptop Sleeve - Black-Red	89	499.00	96	2021-01-01 00:00:00	2021-01-01 00:00:00
B00URH5E34	Inventis 5V 1.2W Portable Flexible USB LED Light Lamp (Colors may vary)	81	39.00	204	2021-01-01 00:00:00	2021-01-01 00:00:00
B00EYW1U68	TP-Link TL-WA855RE 300 Mbps Wi-Fi Range Extender (White)	59	3599.00	254	2021-01-01 00:00:00	2021-01-01 00:00:00
B08SMJT55F	boAt Stone 250 Portable Wireless Speaker with 5W RMS Immersive Audio, RGB LEDs, Up to 8HRS Playtime, IPX7 Water Resistance, Multi-Compatibility Modes(Black)	71	3990.00	275	2021-01-01 00:00:00	2021-01-01 00:00:00
B08Y7MXFMK	Offbeat® - DASH 2.4GHz Wireless + Bluetooth 5.1 Mouse, Multi-Device Dual Mode Slim Rechargeable Silent Click Buttons Wireless Bluetooth Mouse, 3 Adjustable DPI, Works on 2 devices at the same time with a switch button for Windows/Mac/Android/Ipad/Smart TV	45	1499.00	180	2021-01-01 00:00:00	2021-01-01 00:00:00
B086Q3QMFS	Classmate Drawing Book - Unruled, 40 Pages, 210 mm x 297 mm - Pack Of 4	92	120.00	280	2021-01-01 00:00:00	2021-01-01 00:00:00
B08498H13H	HP GK320 Wired Full Size RGB Backlight Mechanical Gaming Keyboard, 4 LED Indicators, Mechanical Switches, Double Injection Key Caps, and Windows Lock Key(4QN01AA)	118	3499.00	98	2021-01-01 00:00:00	2021-01-01 00:00:00
B07LFQLKFZ	Parker Moments Vector Timecheck Gold Trim Roller Ball Pen (Black)	135	420.00	268	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LY17RHI	Camlin Elegante Fountain Pen - Black/Blue/Red	136	225.00	283	2021-01-01 00:00:00	2021-01-01 00:00:00
B07W14CHV8	CARECASE® Optical Bay 2nd Hard Drive Caddy, 9.5 mm CD/DVD Drive Slot for SSD and HDD	137	799.00	204	2021-01-01 00:00:00	2021-01-01 00:00:00
B09F5Z694W	Canon E4570 All-in-One Wi-Fi Ink Efficient Colour Printer with FAX/ADF/Duplex Printing (Black)- Smart Speaker Compatible, Standard	121	9625.00	272	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B25LQQPC	Crucial P3 500GB PCIe 3.0 3D NAND NVMe M.2 SSD, up to 3500MB/s - CT500P3SSD8	105	6100.00	256	2021-01-01 00:00:00	2021-01-01 00:00:00
B01LYLJ99X	HP v222w 64GB USB 2.0 Pen Drive (Silver)	44	1300.00	58	2021-01-01 00:00:00	2021-01-01 00:00:00
B014SZPBM4	Duracell Ultra Alkaline D Battery, 2 Pcs	51	400.00	197	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CZHGHKH	BESTOR® LCD Writing Tablet/pad 12 inches | Electronic Writing Scribble Board for Kids | Kids Learning Toy | Portable Ruff for LCD Paperless Memo Digital Tablet Notepad E-Writer/Writing/Drawing Pad Home/School/Office (Black)	46	1399.00	59	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B2RBP83P	Lenovo IdeaPad 3 11th Gen Intel Core i3 15.6" FHD Thin & Light Laptop(8GB/512GB SSD/Windows 11/Office 2021/2Yr Warranty/3months Xbox Game Pass/Platinum Grey/1.7Kg), 81X800LGIN	138	59890.00	118	2021-01-01 00:00:00	2021-01-01 00:00:00
B078W65FJ7	boAt BassHeads 900 On-Ear Wired Headphones with Mic (White)	40	2490.00	105	2021-01-01 00:00:00	2021-01-01 00:00:00
B08S74GTBT	Zebronics Astra 10 Portable Wireless BT v5.0 Speaker, 10W RMS Power, 15* Hours Backup, 2.25" Drive Size, up to 6.4" Mobile Holder Support, Carry Handle, USB, mSD, AUX Input and FM Radio with Antenna	88	1999.00	69	2021-01-01 00:00:00	2021-01-01 00:00:00
B07QMRHWJD	SWAPKART Portable Flexible Adjustable Eye Protection USB LED Desk Light Table Lamp for Reading, Working on PC, Laptop, Power Bank, Bedroom ( Multicolour )	81	999.00	67	2021-01-01 00:00:00	2021-01-01 00:00:00
B07W7Z6DVL	Infinity (JBL Fuze 100, Wireless Portable Bluetooth Speaker with Mic, Deep Bass, Dual Equalizer, IPX7 Waterproof, Rugged Fabric Design (Black)	88	2999.00	274	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WMS7TWB	Pigeon by Stovekraft Amaze Plus Electric Kettle (14289) with Stainless Steel Body, 1.5 litre, used for boiling Water, making tea and coffee, instant noodles, soup etc. 1500 Watt (Silver)	139	1245.00	58	2021-01-01 00:00:00	2021-01-01 00:00:00
B00H47GVGY	USHA Quartz Room Heater with Overheating Protection (3002, Ivory, 800 Watts)	140	1695.00	268	2021-01-01 00:00:00	2021-01-01 00:00:00
B07VX71FZP	Amazon Brand - Solimo 2000/1000 Watts Room Heater with Adjustable Thermostat (ISI certified, White colour, Ideal for small to medium room/area)	141	2000.00	110	2021-01-01 00:00:00	2021-01-01 00:00:00
B07NCKMXVZ	StyleHouse Lint Remover for Woolen Clothes, Electric Lint Remover, Best Lint Shaver for Clothes	142	999.00	167	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B61DSF17	beatXP Kitchen Scale Multipurpose Portable Electronic Digital Weighing Scale | Weight Machine With Back light LCD Display | White |10 kg | 2 Year Warranty |	143	1999.00	271	2021-01-01 00:00:00	2021-01-01 00:00:00
B07VQGVL68	Glun Multipurpose Portable Electronic Digital Weighing Scale Weight Machine (10 Kg - with Back Light)	143	499.00	77	2021-01-01 00:00:00	2021-01-01 00:00:00
B01LWYDEQ7	Pigeon Polypropylene Mini Handy and Compact Chopper with 3 Blades for Effortlessly Chopping Vegetables and Fruits for Your Kitchen (12420, Green, 400 ml)	144	495.00	256	2021-01-01 00:00:00	2021-01-01 00:00:00
B07VNFP3C2	Prestige 1.5 Litre Kettle 1500-watts, Red	139	1245.00	233	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LUGTJGO	Bajaj RHX-2 800-Watt Room Heater (White)	140	1549.00	151	2021-01-01 00:00:00	2021-01-01 00:00:00
B01MQZ7J8K	Prestige Electric Kettle PKOSS - 1500watts, Steel (1.5Ltr), Black	139	1445.00	210	2021-01-01 00:00:00	2021-01-01 00:00:00
B01GFTEV5Y	Pigeon by Stovekraft Cruise 1800 watt Induction Cooktop (Black)	145	3193.00	54	2021-01-01 00:00:00	2021-01-01 00:00:00
B00NW4UWN6	Prestige PKGSS 1.7L 1500W Electric Kettle (Stainless Steel)	139	1345.00	218	2021-01-01 00:00:00	2021-01-01 00:00:00
B01NCVJMKX	SHOPTOSHOP Electric Lint Remover, Best Lint Shaver for Clothes,Lint Remover for Woolen Clothes ,Lint Remover for Sweaters	142	999.00	175	2021-01-01 00:00:00	2021-01-01 00:00:00
B00O24PUO6	Orpat OEH-1260 2000-Watt Fan Heater (Grey)	141	1650.00	259	2021-01-01 00:00:00	2021-01-01 00:00:00
B07GXPDLYQ	PRO365 Indo Mocktails/Coffee Foamer/Cappuccino/Lemonade/Milk Frother (6 Months Warranty)	146	499.00	122	2021-01-01 00:00:00	2021-01-01 00:00:00
B01C8P29N0	Bajaj DX-6 1000W Dry Iron with Advance Soleplate and Anti-bacterial German Coating Technology, White	147	1400.00	153	2021-01-01 00:00:00	2021-01-01 00:00:00
B08KDBLMQP	Croma 500W Mixer Grinder with 3 Stainless Steel Leak-proof Jars, 3 speed & Pulse function, 2 years warranty (CRAK4184, White & Purple)	148	2500.00	187	2021-01-01 00:00:00	2021-01-01 00:00:00
B078JDNZJ8	Havells Instanio 3-Litre Instant Geyser (White/Blue)	149	6190.00	168	2021-01-01 00:00:00	2021-01-01 00:00:00
B01M5F614J	Morphy Richards OFR Room Heater, 09 Fin 2000 Watts Oil Filled Room Heater , ISI Approved (OFR 9 Grey)	150	13999.00	234	2021-01-01 00:00:00	2021-01-01 00:00:00
B083GKDRKR	Havells Aqua Plus 1.2 litre Double Wall Kettle / 304 Stainless Steel Inner Body / Cool touch outer body / Wider mouth/ 2 Year warranty (Black, 1500 Watt)	139	2995.00	91	2021-01-01 00:00:00	2021-01-01 00:00:00
B097R2V1W8	Bajaj Splendora 3 Litre 3KW IWH Instant Water Heater (Geyser), White	149	5890.00	228	2021-01-01 00:00:00	2021-01-01 00:00:00
B07YR26BJ3	KENT 16052 Elegant Electric Glass Kettle 1.8L 2000 W | Blue LED Illumination | Borosilicate Glass Body | Boil Drying Protection | Used as Boiler | Milk | Tea | Water & Soup | 1 Year Warranty	151	2000.00	191	2021-01-01 00:00:00	2021-01-01 00:00:00
B097R45BH8	Bajaj New Shakti Neo 15L Vertical Storage Water Heater (Geyser 15 litres) 4 Star BEE Rated Heater For Water Heating with Titanium Armour, Swirl Flow Technology, Glasslined Tank (White), 1 Yr Warranty	152	13150.00	194	2021-01-01 00:00:00	2021-01-01 00:00:00
B09X5C9VLK	Lifelong LLMG23 Power Pro 500-Watt Mixer Grinder with 3 Jars (Liquidizing, Wet Grinding and Chutney Jar), Stainless Steel blades, 1 Year Warranty (Black)	148	3500.00	267	2021-01-01 00:00:00	2021-01-01 00:00:00
B01C8P29T4	Bajaj Majesty DX-11 1000W Dry Iron with Advance Soleplate and Anti-bacterial German Coating Technology, White and Blue	147	785.00	151	2021-01-01 00:00:00	2021-01-01 00:00:00
B00HVXS7WC	Bajaj Rex 500W Mixer Grinder with Nutri-Pro Feature, 3 Jars, White	148	3210.00	178	2021-01-01 00:00:00	2021-01-01 00:00:00
B096YCN3SD	Lifelong LLEK15 Electric Kettle 1.5L with Stainless Steel Body, Easy and Fast Boiling of Water for Instant Noodles, Soup, Tea etc. (1 Year Warranty, Silver)	151	1000.00	285	2021-01-01 00:00:00	2021-01-01 00:00:00
B09LQH3SD9	Lifelong LLQH922 Regalia 800 W (ISI Certified) Quartz Room Heater with 2 Power settings, Overheating Protection, 2 Rod Heater (1 Year Warranty, White)	140	2000.00	166	2021-01-01 00:00:00	2021-01-01 00:00:00
B09KNMLH4Y	R B Nova Lint/Fabric Shaver for Cloths, Lint Remover for Woolen Sweaters, Blankets, Jackets/Burr Remover Pill Remover from Carpets, Pack of 1	142	1999.00	168	2021-01-01 00:00:00	2021-01-01 00:00:00
B00ABMASXG	Bajaj Immersion Rod Water Heater 1500 Watts, Silver	153	720.00	298	2021-01-01 00:00:00	2021-01-01 00:00:00
B07QDSN9V6	INALSA Electric Kettle 1.5 Litre with Stainless Steel Body - Absa|Auto Shut Off & Boil Dry Protection Safety Features| Cordless Base & Cord Winder|Hot Water Kettle |Water Heater Jug	139	1595.00	199	2021-01-01 00:00:00	2021-01-01 00:00:00
B00YMJ0OI8	Prestige PIC 20 1600 Watt Induction Cooktop with Push button (Black)	145	3645.00	68	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B8XNPQPN	Pigeon Healthifry Digital Air Fryer, 360° High Speed Air Circulation Technology 1200 W with Non-Stick 4.2 L Basket - Green	154	7950.00	193	2021-01-01 00:00:00	2021-01-01 00:00:00
B0814P4L98	PrettyKrafts Laundry Basket for clothes with Lid & Handles, Toys Organiser, 75 Ltr Black & Grey	155	999.00	221	2021-01-01 00:00:00	2021-01-01 00:00:00
B008QTK47Q	Philips GC1905 1440-Watt Steam Iron with Spray (Blue)	156	1745.00	204	2021-01-01 00:00:00	2021-01-01 00:00:00
B088ZTJT2R	Havells Immersion HB15 1500 Watt (White Blue)	153	1295.00	87	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BK1K598K	AGARO LR2007 Lint Remover, Rechargeable, for Woolen Sweaters, Blankets, Jackets, Burr Remover, Pill Remover From Carpets, Curtains	142	1499.00	262	2021-01-01 00:00:00	2021-01-01 00:00:00
B09Y5FZK9N	Pigeon 1.5 litre Hot Kettle and Stainless Steel Water Bottle Combo used for boiling Water, Making Tea and Coffee, Instant Noodles, Soup, 1500 Watt with Auto Shut- off Feature - (Silver)	151	1545.00	131	2021-01-01 00:00:00	2021-01-01 00:00:00
B09J2SCVQT	NutriPro Juicer Mixer Grinder - Smoothie Maker - 500 Watts (3 Jars 2 Blades)	157	5000.00	171	2021-01-01 00:00:00	2021-01-01 00:00:00
B00TDD0YM4	Philips GC026/30 Fabric Shaver, Lint Remover for Woolen Sweaters, Blankets, Jackets/Burr Remover Pill Remover from Carpets, Curtains (White)	142	1695.00	276	2021-01-01 00:00:00	2021-01-01 00:00:00
B078KRFWQB	Havells Cista Room Heater, White, 2000 Watts	140	3945.00	55	2021-01-01 00:00:00	2021-01-01 00:00:00
B07SRM58TP	AGARO Regal 800 Watts Handheld Vacuum Cleaner, Lightweight & Durable Body, Small/Mini Size ( Black)	158	2099.00	133	2021-01-01 00:00:00	2021-01-01 00:00:00
B00EDJJ7FS	Philips Viva Collection HD4928/01 2100-Watt Induction Cooktop with Feather Touch Sensor and Crystal Glass Plate (Black)	145	5295.00	270	2021-01-01 00:00:00	2021-01-01 00:00:00
B0832W3B7Q	Pigeon By Stovekraft ABS Plastic Acer Plus Induction Cooktop 1800 Watts With Feather Touch Control - Black	145	3595.00	169	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WNK1FFN	AGARO Esteem Multi Kettle 1.2 Litre, 600W with 3 Heating Modes & Rapid Boil Technology	139	1699.00	274	2021-01-01 00:00:00	2021-01-01 00:00:00
B009P2LK08	Bajaj Minor 1000 Watts Radiant Room Heater (Steel, ISI Approved)	140	1129.00	287	2021-01-01 00:00:00	2021-01-01 00:00:00
B07DGD4Z4C	Butterfly Jet Elite Mixer Grinder, 750W, 4 Jars (Grey)	148	5795.00	162	2021-01-01 00:00:00	2021-01-01 00:00:00
B07GMFY9QM	SOFLIN Egg Boiler Electric Automatic Off 7 Egg Poacher for Steaming, Cooking, Boiling and Frying (400 Watts, Blue)	159	999.00	181	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BGPN4GGH	Lifelong LLQH925 Dyno Quartz Heater 2 Power settings Tip Over Cut-off Switch 800 Watt Silent operation Power Indicator 2 Rod Room Heater (1 Year Warranty, Grey)	140	2400.00	248	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B2DZ5S6R	Amazon Basics 1500 W Electric Kettle (Stainless Steel Body, 1.5 L)	151	1299.00	110	2021-01-01 00:00:00	2021-01-01 00:00:00
B07S851WX5	Prestige Sandwich Maker PGMFD 01, Black	160	1299.00	288	2021-01-01 00:00:00	2021-01-01 00:00:00
B01MY839VW	Orient Electric Fabrijoy DIFJ10BP 1000-Watt Dry Iron, Non-Stick (White and Blue)	147	1090.00	70	2021-01-01 00:00:00	2021-01-01 00:00:00
B09LV1CMGH	Lifelong LLFH921 Regalia 2000 W Fan Heater, 3 Air Settings, Room Heater with Overheating Protection, 1 Year Warranty ( White, (ISI Certified, Ideal for small to medium room/area)	141	2000.00	81	2021-01-01 00:00:00	2021-01-01 00:00:00
B01EY310UM	Philips GC181 Heavy Weight 1000-Watt Dry Iron, Pack of 1	147	1545.00	154	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NL7LBWT	Bulfyss USB Rechargeable Lint Remover Fabric Shaver Pet Hair Remover, Effectively and Quickly Remove Fuzz for Clothes, Sweater, Couch, Sofa, Blanket, Curtain, Wool, Cashmere (Grey, 1 Year Warranty)	142	1999.00	67	2021-01-01 00:00:00	2021-01-01 00:00:00
B008YW8M0G	Bajaj DX-7 1000W Dry Iron with Advance Soleplate and Anti-bacterial German Coating Technology, White	147	875.00	145	2021-01-01 00:00:00	2021-01-01 00:00:00
B097R3XH9R	Bajaj New Shakti Neo 25L Vertical Storage Water Heater (Geyser 25 Litres) 4 Star BEE Rated Heater For Water Heating with Titanium Armour, Swirl Flow Technology, Glasslined Tank(White), 1 Yr Warranty	152	15270.00	183	2021-01-01 00:00:00	2021-01-01 00:00:00
B08TM71L54	PHILIPS Handheld Garment Steamer STH3000/20 - Compact & Foldable, Convenient Vertical Steaming, 1000 Watt Quick Heat Up, up to 20g/min, Kills 99.9%* Bacteria (Reno Blue), Small	156	4195.00	79	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BPBXNQQT	Room Heater Warmer Wall-Outlet 400 Watts Electric Handy Room Heater (Room Heaters Home for Bedroom, Reading Books, Work, bathrooms, Rooms, Offices, Home Offices,2022	140	1989.00	66	2021-01-01 00:00:00	2021-01-01 00:00:00
B00W56GLOQ	Wonderchef Nutri-blend Mixer, Grinder & Blender | Powerful 400W 22000 RPM motor | Stainless steel Blades | 2 unbreakable jars | 2 Years warranty | Online recipe book by Chef Sanjeev Kapoor | Black	157	5000.00	157	2021-01-01 00:00:00	2021-01-01 00:00:00
B0883KDSXC	USHA Armor AR1100WB 1100 W Dry Iron with Black Weilburger Soleplate (Purple)	147	990.00	212	2021-01-01 00:00:00	2021-01-01 00:00:00
B078V8R9BS	Butterfly EKN 1.5-Litre Electric Kettle (Silver with Black)	151	1111.00	195	2021-01-01 00:00:00	2021-01-01 00:00:00
B08GSQXLJ2	Crompton Arno Neo 15-L 5 Star Rated Storage Water Heater (Geyser) with Advanced 3 Level Safety (Grey)	152	10400.00	252	2021-01-01 00:00:00	2021-01-01 00:00:00
B01M5B0TPW	Borosil Chef Delite BCH20DBB21 300-Watt Chopper (Black)	161	2490.00	189	2021-01-01 00:00:00	2021-01-01 00:00:00
B082KVTRW8	KENT 16055 Amaze Cool Touch Electric Kettle 1.8 L 1500 W | Plastic Outer & Stainless Steel Inside body | Auto shut off Over heating protection | Multipurpose hot water Kettle | 1 Year Warranty	151	1900.00	228	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CFJBZRK	Prestige IRIS Plus 750 watt mixer grinder	148	6295.00	152	2021-01-01 00:00:00	2021-01-01 00:00:00
B07H3WDC4X	Simxen Egg Boiler Electric Automatic Off 7 Egg Poacher for Steaming, Cooking Also Boiling and Frying 400 W (Blue, Pink)	159	999.00	158	2021-01-01 00:00:00	2021-01-01 00:00:00
B09ZTZ9N3Q	Amazon Basics 2000/1000 Watt Room Heater with Adjustable Thermostat (ISI certified, White color, Ideal for small to medium room/area)	141	1699.00	201	2021-01-01 00:00:00	2021-01-01 00:00:00
B083P71WKK	HealthSense Weight Machine for Kitchen, Kitchen Food Weighing Scale for Health, Fitness, Home Baking & Cooking with Hanging Design, Touch Button, Tare Function & 1 Year Warranty – Chef-Mate KS 40	162	1500.00	216	2021-01-01 00:00:00	2021-01-01 00:00:00
B097R4D42G	Bajaj New Shakti Neo 10L Vertical Storage Water Heater (Geyser 10 Litres) 4 Star BEE Rated Heater For Water Heating with Titanium Armour, Swirl Flow Technology, Glasslined Tank(White), 1 Yr Warranty	152	9650.00	206	2021-01-01 00:00:00	2021-01-01 00:00:00
B07MKMFKPG	Bosch Pro 1000W Mixer Grinder MGM8842MIN - Black	148	10590.00	148	2021-01-01 00:00:00	2021-01-01 00:00:00
B0949FPSFY	Bulfyss Stainless Steel Digital Kitchen Weighing Scale & Food Weight Machine for Diet, Nutrition, Health, Fitness, Baking & Cooking (5Kgs, Stainless Steel, 2 Years Warranty)	143	1999.00	101	2021-01-01 00:00:00	2021-01-01 00:00:00
B08F47T4X5	VR 18 Pcs - 3 Different Size Plastic Food Snack Bag Pouch Clip Sealer Large, Medium, Small Plastic Snack Seal Sealing Bag Clips Vacuum Sealer (Set of 18, Multi-Color) (Multicolor)	163	89.00	90	2021-01-01 00:00:00	2021-01-01 00:00:00
B01M0505SJ	Orient Electric Apex-FX 1200mm Ultra High Speed 400 RPM Ceiling Fan (Brown)	164	2485.00	197	2021-01-01 00:00:00	2021-01-01 00:00:00
B08D6RCM3Q	PrettyKrafts Folding Laundry Basket for Clothes with Lid & Handle, Toys Organiser, 75 Litre, (Pack of 1), Mushroom Print	155	899.00	126	2021-01-01 00:00:00	2021-01-01 00:00:00
B009P2LITG	Bajaj Majesty RX11 2000 Watts Heat Convector Room Heater (White, ISI Approved)	140	3279.00	58	2021-01-01 00:00:00	2021-01-01 00:00:00
B00V9NHDI4	Eureka Forbes Trendy Zip 1000 Watts powerful suction vacuum cleaner with resuable dust bag & 5 accessories,1 year warrantycompact,light weight & easy to use (Black)	165	3799.00	282	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WGPBXY9	Pigeon by Stovekraft Quartz Electric Kettle (14299) 1.7 Litre with Stainless Steel Body, used for boiling Water, making tea and coffee, instant noodles, soup etc. 1500 Watt (Silver)	139	1249.00	219	2021-01-01 00:00:00	2021-01-01 00:00:00
B00KRCBA6E	Maharaja Whiteline Lava Neo 1200-Watts Halogen Heater (White and Red)	150	5000.00	170	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3X2BY3M	Crompton Gracee 5-L Instant Water Heater (Geyser)	149	7299.00	63	2021-01-01 00:00:00	2021-01-01 00:00:00
B00F159RIK	Bajaj DX-2 600W Dry Iron with Advance Soleplate and Anti-bacterial German Coating Technology, Black	147	625.00	155	2021-01-01 00:00:00	2021-01-01 00:00:00
B08MV82R99	Bajaj Waterproof 1500 Watts Immersion Rod Heater	153	1020.00	275	2021-01-01 00:00:00	2021-01-01 00:00:00
B09VKWGZD7	AGARO Supreme High Pressure Washer, 1800 Watts, 120 Bars, 6.5L/Min Flow Rate, 8 Meters Outlet Hose, Portable, for Car,Bike and Home Cleaning Purpose, Black and Orange	166	8990.00	94	2021-01-01 00:00:00	2021-01-01 00:00:00
B009P2LK80	Bajaj Deluxe 2000 Watts Halogen Room Heater (Steel, ISI Approved), Multicolor	167	1639.00	197	2021-01-01 00:00:00	2021-01-01 00:00:00
B00A7PLVU6	Orpat HHB-100E WOB 250-Watt Hand Blender (White)	146	899.00	178	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B25DJ352	GILTON Egg Boiler Electric Automatic Off 7 Egg Poacher for Steaming, Cooking Also Boiling and Frying, Multi Color	159	1199.00	260	2021-01-01 00:00:00	2021-01-01 00:00:00
B013B2WGT6	HealthSense Chef-Mate KS 33 Digital Kitchen Weighing Scale & Food Weight Machine for Health, Fitness, Home Baking & Cooking with Free Bowl, 1 Year Warranty & Batteries Included	143	1899.00	78	2021-01-01 00:00:00	2021-01-01 00:00:00
B097RJ867P	PHILIPS Digital Air Fryer HD9252/90 with Touch Panel, uses up to 90% less fat, 7 Pre-set Menu, 1400W, 4.1 Liter, with Rapid Air Technology (Black), Large	154	11595.00	221	2021-01-01 00:00:00	2021-01-01 00:00:00
B091V8HK8Z	Milton Go Electro 2.0 Stainless Steel Electric Kettle, 1 Piece, 2 Litres, Silver | Power Indicator | 1500 Watts | Auto Cut-off | Detachable 360 Degree Connector | Boiler for Water	139	1750.00	199	2021-01-01 00:00:00	2021-01-01 00:00:00
B071VNHMX2	Philips Daily Collection HD2582/00 830-Watt 2-Slice Pop-up Toaster (White)	168	2095.00	55	2021-01-01 00:00:00	2021-01-01 00:00:00
B08MVSGXMY	Crompton Insta Comfy 800 Watt Room Heater with 2 Heat Settings(Grey Blue)	140	2300.00	129	2021-01-01 00:00:00	2021-01-01 00:00:00
B00H0B29DI	USHA Heat Convector 812 T 2000-Watt with Instant Heating Feature (Black)	169	2990.00	106	2021-01-01 00:00:00	2021-01-01 00:00:00
B01GZSQJPA	Philips HL7756/00 Mixer Grinder, 750W, 3 Jars (Black)	148	4295.00	261	2021-01-01 00:00:00	2021-01-01 00:00:00
B08VGFX2B6	Kuber Industries Waterproof Round Non Wovan Laundry Bag/Hamper|Metalic Printed With Handles|Foldable Bin & 45 Liter Capicity|Size 37 x 37 x 49, Pack of 1 (Beige & Brown)-KUBMART11450	155	199.00	271	2021-01-01 00:00:00	2021-01-01 00:00:00
B09GYBZPHF	Lifelong LLMG93 500 Watt Duos Mixer Grinder, 2 Stainless Steel Jar (Liquidizing and Chutney Jar)| ABS Body, Stainless Steel Blades, 3 Speed Options with Whip (1 Year Warranty, Black)	148	2499.00	101	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4KPCBSH	IKEA Frother for Milk	170	499.00	230	2021-01-01 00:00:00	2021-01-01 00:00:00
B09CGLY5CX	Crompton Insta Comfort Heater 2000 Watts Heat Convector with Adjustable Thermostats, Hybrid Cyan, Standard (‎ACGRH- INSTACOMFORT)	140	2400.00	250	2021-01-01 00:00:00	2021-01-01 00:00:00
B09JN37WBX	Lint Remover Woolen Clothes Lint Extractor Battery Lint Removing Machine Bhur Remover	142	749.00	206	2021-01-01 00:00:00	2021-01-01 00:00:00
B01I1LDZGA	Pigeon Kessel Multipurpose Kettle (12173) 1.2 litres with Stainless Steel Body, used for boiling Water and milk, Tea, Coffee, Oats, Noodles, Soup etc. 600 Watt (Black & Silver)	139	1775.00	218	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BN2576GQ	C (DEVICE) Lint Remover for Woolen Clothes, Electric Lint Remover, Best Lint Shaver for Clothes Pack of 1	142	1599.00	119	2021-01-01 00:00:00	2021-01-01 00:00:00
B06XPYRWV5	Pigeon by Stovekraft 2 Slice Auto Pop up Toaster. A Smart Bread Toaster for Your Home (750 Watt) (black)	168	1795.00	81	2021-01-01 00:00:00	2021-01-01 00:00:00
B01N1XVVLC	Bajaj OFR Room Heater, 13 Fin 2900 Watts Oil Filled Room Heater with 400W PTC Ceramic Fan Heater, ISI Approved (Majesty 13F Plus Black)	141	15999.00	189	2021-01-01 00:00:00	2021-01-01 00:00:00
B00O2R38C4	Luminous Vento Deluxe 150 mm Exhaust Fan for Kitchen, Bathroom with Strong Air Suction, Rust Proof Body and Dust Protection Shutters (2-Year Warranty, White)	171	1490.00	261	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B2CZTCL2	Wipro Vesta 1.8 litre Cool touch electric Kettle with Auto cut off | Double Layer outer body | Triple Protection - Dry Boil, Steam & Over Heat |Stainless Steel Inner Body | (Black, 1500 Watt)	151	1999.00	74	2021-01-01 00:00:00	2021-01-01 00:00:00
B00PVT30YI	Kitchen Mart Stainless Steel South Indian Filter Coffee Drip Maker, Madras Kappi, Drip Decotion Maker160ml (2 Cup)	172	499.00	52	2021-01-01 00:00:00	2021-01-01 00:00:00
B00SH18114	Ikea 903.391.72 Polypropylene Plastic Solid Bevara Sealing Clip (Multicolour) - 30 Pack, Adjustable	163	299.00	60	2021-01-01 00:00:00	2021-01-01 00:00:00
B00E9G8KOY	HUL Pureit Germkill kit for Classic 23 L water purifier - 1500 L Capacity	173	600.00	111	2021-01-01 00:00:00	2021-01-01 00:00:00
B00H3H03Q4	HUL Pureit Germkill kit for Classic 23 L water purifier - 3000 L Capacity	174	1130.00	157	2021-01-01 00:00:00	2021-01-01 00:00:00
B0756K5DYZ	Prestige Iris 750 Watt Mixer Grinder with 3 Stainless Steel Jar + 1 Juicer Jar (White and Blue)	148	6295.00	132	2021-01-01 00:00:00	2021-01-01 00:00:00
B0188KPKB2	Preethi Blue Leaf Diamond MG-214 mixer grinder 750 watt (Blue/White), 3 jars & Flexi Lid, FBT motor with 2yr Guarantee & Lifelong Free Service	148	9455.00	139	2021-01-01 00:00:00	2021-01-01 00:00:00
B091KNVNS9	Themisto 350 Watts Egg Boiler-Blue	159	699.00	144	2021-01-01 00:00:00	2021-01-01 00:00:00
B075JJ5NQC	Butterfly Smart Mixer Grinder, 750W, 4 Jars (Grey)	148	4999.00	213	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B5KZ3C53	KENT Smart Multi Cooker Cum Kettle 1.2 Liter 800 Watts, Electric Cooker with Steamer & Boiler for Idlis, Instant Noodles, Momos, Eggs, & Steam Vegetables, Inner Stainless Steel & Cool Touch Outer Body	175	2900.00	150	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NTHQRW3	InstaCuppa Portable Blender for Smoothie, Milk Shakes, Crushing Ice and Juices, USB Rechargeable Personal Blender Machine for Kitchen with 2000 mAh Rechargeable Battery, 150 Watt Motor, 400 ML	146	2499.00	69	2021-01-01 00:00:00	2021-01-01 00:00:00
B008YW3CYM	USHA EI 1602 1000 W Lightweight Dry Iron with Non-Stick Soleplate (Multi-colour)	147	1190.00	163	2021-01-01 00:00:00	2021-01-01 00:00:00
B07QHHCB27	KENT 16044 Hand Blender Stainless Steel 400 W | Variable Speed Control | Easy to Clean and Store | Low Noise Operation	146	2100.00	165	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BMFD94VD	White Feather Portable Heat Sealer Mini Sealing Machine for Food Storage Vacuum Bag, Chip, Plastic, Snack Bags, Package Home Closer Storage Tool (Multicolor) Random Colour	163	499.00	187	2021-01-01 00:00:00	2021-01-01 00:00:00
B00HZIOGXW	Crompton IHL 152 1500-Watt Immersion Water Heater with Copper Heating Element (Black)	153	825.00	247	2021-01-01 00:00:00	2021-01-01 00:00:00
B09CKSYBLR	InstaCuppa Rechargeable Mini Electric Chopper - Stainless Steel Blades, One Touch Operation, for Mincing Garlic, Ginger, Onion, Vegetable, Meat, Nuts, (White, 250 ML, Pack of 1, 45 Watts)	161	1499.00	55	2021-01-01 00:00:00	2021-01-01 00:00:00
B072J83V9W	Philips PowerPro FC9352/01 Compact Bagless Vacuum Cleaner (Blue)	165	9995.00	294	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MTLG4TP	SAIELLIN Electric Lint Remover for Clothes Fabric Shaver Lint Shaver for Woolen Clothes Blanket Jackets Stainless Steel Blades, Clothes and Furniture Lint Roller for Fabrics Portable Lint Shavers (White Orange)	142	999.00	202	2021-01-01 00:00:00	2021-01-01 00:00:00
B097XJQZ8H	Cookwell Bullet Mixer Grinder (5 Jars, 3 Blades, Silver)	148	6000.00	97	2021-01-01 00:00:00	2021-01-01 00:00:00
B00935MD1C	Prestige PRWO 1.8-2 700-Watts Delight Electric Rice Cooker with 2 Aluminium Cooking Pans - 1.8 Liters, White	175	3945.00	278	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BR4F878Q	Swiffer Instant Electric Water Heater Faucet Tap Home-Kitchen Instantaneous Water Heater Tank less for Tap, LED Electric Head Water Heaters Tail Gallon Comfort(3000W) ((Pack of 1))	149	1999.00	230	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3G5XZN5	InstaCuppa Portable Blender for Smoothie, Milk Shakes, Crushing Ice and Juices, USB Rechargeable Personal Blender Machine for Kitchen with 4000 mAh Rechargeable Battery, 230 Watt Motor, 500 ML	146	3499.00	269	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WKB69RS	Lifelong LLWH106 Flash 3 Litres Instant Water Heater for Home Use, 8 Bar Pressure,Power On/Off Indicator and Advanced Safety, (3000W, ISI Certified, 2 Years Warranty)	149	5550.00	237	2021-01-01 00:00:00	2021-01-01 00:00:00
B09DL9978Y	Hindware Atlantic Compacto 3 Litre Instant water heater with Stainless Steel Tank, Robust Construction, Pressure Relief Valve And I-thermostat Feature (White And Grey)	149	4590.00	128	2021-01-01 00:00:00	2021-01-01 00:00:00
B06XMZV7RH	ATOM Selves-MH 200 GM Digital Pocket Scale	143	499.00	137	2021-01-01 00:00:00	2021-01-01 00:00:00
B09WMTJPG7	Crompton InstaBliss 3-L Instant Water Heater (Geyser) with Advanced 4 Level Safety	149	4400.00	179	2021-01-01 00:00:00	2021-01-01 00:00:00
B09ZK6THRR	Croma 1100 W Dry Iron with Weilburger Dual Soleplate Coating (CRSHAH702SIR11, White)	147	1000.00	264	2021-01-01 00:00:00	2021-01-01 00:00:00
B07MP21WJD	Lint Roller with 40 Paper Sheets, 22 x 5 cm (Grey)	142	299.00	88	2021-01-01 00:00:00	2021-01-01 00:00:00
B09XB1R2F3	Portable Lint Remover Pet Fur Remover Clothes Fuzz Remover Pet Hairball Quick Epilator Shaver Removing Dust Pet Hair from Clothing Furniture Perfect for Clothing,Furniture,Couch,Carpet (Standard)	142	799.00	198	2021-01-01 00:00:00	2021-01-01 00:00:00
B08Y5QJXSR	atomberg Renesa 1200mm BLDC Motor with Remote 3 Blade Energy Saving Ceiling Fan (Matt Black)	164	5190.00	284	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WJXCTG9	Pigeon by Stovekraft Amaze Plus Electric Kettle (14313) with Stainless Steel Body, 1.8 litre, used for boiling Water, making tea and coffee, instant noodles, soup etc. 1500 Watt (Silver)	139	1345.00	287	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NBZ36F7	Usha CookJoy (CJ1600WPC) 1600 Watt Induction cooktop (Black)	145	4000.00	169	2021-01-01 00:00:00	2021-01-01 00:00:00
B0912WJ87V	Reffair AX30 [MAX] Portable Air Purifier for Car, Home & Office | Smart Ionizer Function | H13 Grade True HEPA Filter [Internationally Tested] Aromabuds Fragrance Option - Black	176	4000.00	216	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BMTZ4T1D	!!1000 Watt/2000-Watt Room Heater!! Fan Heater!!Pure White!!HN-2500!!Made in India!!	141	1599.00	151	2021-01-01 00:00:00	2021-01-01 00:00:00
B07Z51CGGH	Eureka Forbes Wet & Dry Ultimo 1400 Watts Multipurpose Vacuum Cleaner,Power Suction & Blower with 20 litres Tank Capacity,6 Accessories,1 Year Warranty,Compact,Light Weight & Easy to use (Red)	177	9999.00	131	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BDG6QDYD	Activa Heat-Max 2000 Watts Room Heater (White color ) with ABS body	141	1990.00	224	2021-01-01 00:00:00	2021-01-01 00:00:00
B00YQLG7GK	PHILIPS HL1655/00 Hand Blender, White Jar 250W	146	1695.00	94	2021-01-01 00:00:00	2021-01-01 00:00:00
B00SMJPA9C	Bajaj DX-2 600W Dry Iron with Advance Soleplate and Anti-Bacterial German Coating Technology, Grey	147	940.00	108	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B9RN5X8B	V-Guard Zio Instant Water Geyser | 3 Litre | 3000 W Heating | White-Blue | | 2 Year Warranty	149	4700.00	68	2021-01-01 00:00:00	2021-01-01 00:00:00
B08QW937WV	Homeistic Applience™ Instant Electric Water Heater Faucet Tap For Kitchen And Bathroom Sink Digital Water Heating Tap with Shower Head ABS Body- Shock Proof (Pack Of 1. White)	149	2999.00	114	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4PPD89B	Kitchenwell 18Pc Plastic Food Snack Bag Pouch Clip Sealer for Keeping Food Fresh for Home, Kitchen, Camping Snack Seal Sealing Bag Clips (Multi-Color) | (Pack of 18)|	163	79.00	203	2021-01-01 00:00:00	2021-01-01 00:00:00
B08GM5S4CQ	Havells Instanio 10 Litre Storage Water Heater with Flexi Pipe and Free installation (White Blue)	152	14290.00	244	2021-01-01 00:00:00	2021-01-01 00:00:00
B00NM6MO26	Prestige PIC 16.0+ 1900W Induction Cooktop with Soft Touch Push Buttons (Black)	145	3945.00	189	2021-01-01 00:00:00	2021-01-01 00:00:00
B083M7WPZD	AGARO 33398 Rapid 1000-Watt, 10-Litre Wet & Dry Vacuum Cleaner, with Blower Function (Red & Black)	177	5999.00	234	2021-01-01 00:00:00	2021-01-01 00:00:00
B07GLSKXS1	KENT 16026 Electric Kettle Stainless Steel 1.8 L | 1500W | Superfast Boiling | Auto Shut-Off | Boil Dry Protection | 360° Rotating Base | Water Level Indicator	151	1950.00	151	2021-01-01 00:00:00	2021-01-01 00:00:00
B09F6KL23R	SKYTONE Stainless Steel Electric Meat Grinders with Bowl 700W Heavy for Kitchen Food Chopper, Meat, Vegetables, Onion , Garlic Slicer Dicer, Fruit & Nuts Blender (2L, 700 Watts)	161	2799.00	229	2021-01-01 00:00:00	2021-01-01 00:00:00
B094G9L9LT	KENT 16088 Vogue Electric Kettle 1.8 Litre 1500 W | Stainless Steel body | Auto shut off over heating protection | 1 Year Warranty	139	1950.00	155	2021-01-01 00:00:00	2021-01-01 00:00:00
B09FZ89DK6	Eureka Forbes Supervac 1600 Watts Powerful Suction,bagless Vacuum Cleaner with cyclonic Technology,7 Accessories,1 Year Warranty,Compact,Lightweight & Easy to use (Red)	165	9999.00	183	2021-01-01 00:00:00	2021-01-01 00:00:00
B0811VCGL5	Mi Air Purifier 3 with True HEPA Filter, removes air pollutants, smoke, odor, bacteria & viruses with 99.97% efficiency, coverage area up to 484 sq. ft., Wi-Fi & Voice control - Alexa/GA (white)	178	12999.00	134	2021-01-01 00:00:00	2021-01-01 00:00:00
B07FXLC2G2	Tata Swach Bulb 6000-Litre Cartridge, 1 Piece, White, Hollow Fiber Membrane	179	699.00	230	2021-01-01 00:00:00	2021-01-01 00:00:00
B01LYU3BZF	Havells Ambrose 1200mm Ceiling Fan (Gold Mist Wood)	164	3190.00	195	2021-01-01 00:00:00	2021-01-01 00:00:00
B083RC4WFJ	PrettyKrafts Laundry Bag / Basket for Dirty Clothes, Folding Round Laundry Bag,Set of 2, Black Wave	180	799.00	267	2021-01-01 00:00:00	2021-01-01 00:00:00
B09SFRNKSR	FABWARE Lint Remover for Clothes - Sticky Lint Roller for Clothes, Furniture, Wool, Coat, Car Seats, Carpet, Fabric, Dust Cleaner, Pet Hair Remover with 1 Handle & 1 Refill Total 60 Sheets & 1 Cover	142	499.00	170	2021-01-01 00:00:00	2021-01-01 00:00:00
B07NRTCDS5	Brayden Fito Atom Rechargeable Smoothie Blender with 2000 mAh Battery and 3.7V Motor with 400ml Tritan Jar (Blue)	157	1499.00	281	2021-01-01 00:00:00	2021-01-01 00:00:00
B07SPVMSC6	Bajaj Frore 1200 mm Ceiling Fan (Brown)	164	2660.00	281	2021-01-01 00:00:00	2021-01-01 00:00:00
B09H3BXWTK	Venus Digital Kitchen Weighing Scale & Food Weight Machine for Health, Fitness, Home Baking & Cooking Scale, 2 Year Warranty & Battery Included (Weighing Scale Without Bowl) Capacity 10 Kg, 1 Gm	143	2799.00	201	2021-01-01 00:00:00	2021-01-01 00:00:00
B0073QGKAS	Bajaj ATX 4 750-Watt Pop-up Toaster (White)	168	1499.00	274	2021-01-01 00:00:00	2021-01-01 00:00:00
B08GJ57MKL	Coway Professional Air Purifier for Home, Longest Filter Life 8500 Hrs, Green True HEPA Filter, Traps 99.99% Virus & PM 0.1 Particles, Warranty 7 Years (AirMega 150 (AP-1019C))	178	59900.00	67	2021-01-01 00:00:00	2021-01-01 00:00:00
B009DA69W6	KENT Gold Optima Gravity Water Purifier (11016) | UF Technology Based | Non-Electric & Chemical Free | Counter Top | 10L Storage | White	179	1900.00	207	2021-01-01 00:00:00	2021-01-01 00:00:00
B099PR2GQJ	HOMEPACK 750W Radiant Room Home Office Heaters For Winter	140	999.00	122	2021-01-01 00:00:00	2021-01-01 00:00:00
B08G8H8DPL	Bajaj Rex 750W Mixer Grinder with Nutri Pro Feature, 4 Jars, White	148	6375.00	295	2021-01-01 00:00:00	2021-01-01 00:00:00
B08VGM3YMF	Heart Home Waterproof Round Non Wovan Laundry Bag/Hamper|Metalic Printed With Handles|Foldable Bin & 45 Liter Capicity|Size 37 x 37 x 49, Pack of 1 (Grey & Black)-HEARTXY11447	155	499.00	279	2021-01-01 00:00:00	2021-01-01 00:00:00
B08TTRVWKY	MILTON Smart Egg Boiler 360-Watts (Transparent and Silver Grey), Boil Up to 7 Eggs	159	1899.00	164	2021-01-01 00:00:00	2021-01-01 00:00:00
B07T4D9FNY	iBELL SEK15L Premium 1.5 Litre Stainless Steel Electric Kettle,1500W Auto Cut-Off Feature,Silver with Black	139	1490.00	163	2021-01-01 00:00:00	2021-01-01 00:00:00
B07RX42D3D	Tosaa T2STSR Sandwich Gas Toaster Regular (Black)	160	350.00	211	2021-01-01 00:00:00	2021-01-01 00:00:00
B08WRKSF9D	V-Guard Divino 5 Star Rated 15 Litre Storage Water Heater (Geyser) with Advanced Safety Features, White	152	8500.00	78	2021-01-01 00:00:00	2021-01-01 00:00:00
B09R83SFYV	Akiara® - Makes life easy Mini Sewing Machine with Table Set | Tailoring Machine | Hand Sewing Machine with extension table, foot pedal, adapter	181	2499.00	142	2021-01-01 00:00:00	2021-01-01 00:00:00
B07989VV5K	Usha Steam Pro SI 3713, 1300 W Steam Iron, Powerful steam Output up to 18 g/min, Non-Stick Soleplate (White & Blue)	156	1560.00	298	2021-01-01 00:00:00	2021-01-01 00:00:00
B07FL3WRX5	Wonderchef Nutri-blend Complete Kitchen Machine | 22000 RPM Mixer Grinder, Blender, Chopper, Juicer | 400W Powerful motor | SS Blades | 4 Unbreakable Jars | 2 Years Warranty | Online Recipe Book By Chef Sanjeev Kapoor | Black	157	6500.00	106	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BPCJM7TB	WIDEWINGS Electric Handheld Milk Wand Mixer Frother for Latte Coffee Hot Milk, Milk Frother for Coffee, Egg Beater, Hand Blender, Coffee Beater with Stand	146	999.00	185	2021-01-01 00:00:00	2021-01-01 00:00:00
B08H673XKN	Morphy Richards Icon Superb 750W Mixer Grinder, 4 Jars, Silver and Black	148	7795.00	107	2021-01-01 00:00:00	2021-01-01 00:00:00
B07DXRGWDJ	Philips Handheld Garment Steamer GC360/30 - Vertical & Horizontal Steaming, 1200 Watt, up to 22g/min	156	5995.00	65	2021-01-01 00:00:00	2021-01-01 00:00:00
B08243SKCK	Vedini Transparent Empty Refillable Reusable Fine Mist Spray Bottle for Perfume, Travel with DIY Sticker Set ( 100ml, Pack of 4)	182	299.00	55	2021-01-01 00:00:00	2021-01-01 00:00:00
B09SPTNG58	Crompton Sea Sapphira 1200 mm Ultra High Speed 3 Blade Ceiling Fan (Lustre Brown, Pack of 1)	164	2349.00	184	2021-01-01 00:00:00	2021-01-01 00:00:00
B083J64CBB	Kuber Industries Waterproof Canvas Laundry Bag/Hamper|Metalic Printed With Handles|Foldable Bin & 45 Liter Capicity|Size 37 x 37 x 46, Pack of 1 (Brown)	155	499.00	178	2021-01-01 00:00:00	2021-01-01 00:00:00
B08JV91JTK	JM SELLER 180 W 2021 Edition Electric Beater High Speed Hand Mixer Egg Beater for Cake Making and Whipping Cream with 7 Speed Control (White) with Free Spatula and Oil Brush	183	1299.00	72	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BQ3K23Y1	Oratech Coffee Frother electric, milk frother electric, coffee beater, cappuccino maker, Coffee Foamer, Mocktail Mixer, Coffee Foam Maker, coffee whisker electric, Froth Maker, coffee stirrers electric, coffee frothers, Coffee Blender, (6 Month Warranty) (Multicolour)	146	499.00	280	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MT94QLL	Havells Glaze 74W Pearl Ivory Gold Ceiling Fan, Sweep: 1200 Mm	164	4775.00	103	2021-01-01 00:00:00	2021-01-01 00:00:00
B07NKNBTT3	Pick Ur Needs® Lint Remover for Clothes High Range Rechargeable Lint Shaver for All Types of Clothes, Fabrics, Blanket with 1 Extra Blade Multicolor (Rechargeable)	142	1230.00	179	2021-01-01 00:00:00	2021-01-01 00:00:00
B09KPXTZXN	Rico Japanese Technology Rechargeable Wireless Electric Chopper with Replacement Warranty - Stainless Steel Blades, One Touch Operation, 10 Seconds Chopping, Mincing Vegetable, Meat - 250 ML, 30 Watts	161	1999.00	137	2021-01-01 00:00:00	2021-01-01 00:00:00
B078HG2ZPS	Butterfly Smart Wet Grinder, 2L (White) with Coconut Scrapper Attachment, Output - 150 W, Input 260 W	184	5156.00	262	2021-01-01 00:00:00	2021-01-01 00:00:00
B07N2MGB3G	AGARO Marvel 9 Liters Oven Toaster Griller, Cake Baking OTG (Black)	185	1999.00	69	2021-01-01 00:00:00	2021-01-01 00:00:00
B008LN8KDM	Philips GC1920/28 1440-Watt Non-Stick Soleplate Steam Iron	156	2095.00	124	2021-01-01 00:00:00	2021-01-01 00:00:00
B08MZNT7GP	Havells OFR 13 Wave Fin with PTC Fan Heater 2900 Watts (Black)	141	19825.00	194	2021-01-01 00:00:00	2021-01-01 00:00:00
B009P2L7CO	Bajaj DHX-9 1000W Heavy Weight Dry Iron with Advance Soleplate and Anti-Bacterial German Coating Technology, Ivory	147	1920.00	87	2021-01-01 00:00:00	2021-01-01 00:00:00
B07YC8JHMB	Aquasure From Aquaguard Amaze RO+UV+MTDS,7L storage water purifier,suitable for borewell,tanker,municipal water (Grey) from Eureka Forbes	179	16000.00	110	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BNQMF152	ROYAL STEP Portable Electric USB Juice Maker Juicer Bottle Blender Grinder Mixer,6 Blades Rechargeable Bottle with (MULTII) (MULTI COLOUR 6 BLED JUICER MIXER)	157	2199.00	234	2021-01-01 00:00:00	2021-01-01 00:00:00
B08J7VCT12	KENT 16068 Zoom Vacuum Cleaner for Home and Car 130 W | Cordless, Hoseless, Rechargeable HEPA Filters Vacuum Cleaner with Cyclonic Technology | Bagless Design and Multi Nozzle Operation | Blue	158	14999.00	190	2021-01-01 00:00:00	2021-01-01 00:00:00
B0989W6J2F	ENEM Sealing Machine | 12 Inch (300 mm) | 1 Year Warranty | Full Customer Support | Beep Sound Function | Plastic Packing Machine | Plastic Bag Sealing Machine | Heat Sealer Machine | Plastic Sealing Machine | Blue | Made in India	163	1799.00	177	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B84KSH3X	Wipro Vesta 1200 Watt GD203 Heavyweight Automatic Dry Iron| Quick Heat Up| Anti bacterial German Weilburger Double Coated Black Soleplate |2 Years Warranty	147	1950.00	109	2021-01-01 00:00:00	2021-01-01 00:00:00
B08HLC7Z3G	Inalsa Electric Kettle Prism Inox - 1350 W with LED Illumination & Boro-Silicate Body, 1.8 L Capacity along with Cordless Base, 2 Year Warranty (Black)	151	2995.00	145	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BN6M3TCM	VRPRIME Lint Roller Lint Remover for Clothes, Pet | 360 Sheets Reusable Sticky Easy-Tear Sheet Brush for Clothes, Furniture, Carpet, Dog Fur, Sweater, Dust & Dirt (4 Rolls - 90 Sheet Each Roll)	142	999.00	263	2021-01-01 00:00:00	2021-01-01 00:00:00
B01L6MT7E0	Philips AC1215/20 Air purifier, removes 99.97% airborne pollutants, 4-stage filtration with True HEPA filter (white)	178	11995.00	221	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B9F9PT8R	Eopora PTC Ceramic Fast Heating Room Heater for Bedroom, 1500/1000 Watts Room Heater for Home, Electric Heater, Electric Fan Heater for Home Office Bedroom (White)	140	2999.00	189	2021-01-01 00:00:00	2021-01-01 00:00:00
B0883LQJ6B	Usha Goliath GO1200WG Heavy Weight 1200-Watt Dry Iron, 1.8 Kg(Red)	147	1690.00	281	2021-01-01 00:00:00	2021-01-01 00:00:00
B099Z83VRC	Wipro Vesta Electric Egg Boiler, 360 Watts, 3 Boiling Modes, Stainless Steel Body and Heating Plate, Boils up to 7 Eggs at a time, Automatic Shut Down, White, Standard (VB021070)	159	1790.00	174	2021-01-01 00:00:00	2021-01-01 00:00:00
B00S9BSJC8	Philips Viva Collection HR1832/00 1.5-Litre400-Watt Juicer (Ink Black)	186	8995.00	176	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B4SJKRDF	Kitchenwell Multipurpose Portable Electronic Digital Weighing Scale Weight Machine | Weight Machine | 10 Kg	162	239.00	228	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BM4KTNL1	FIGMENT Handheld Milk Frother Rechargeable, 3-Speed Electric Frother for Coffee with 2 Whisks and Coffee Decoration Tool, Coffee Frother Mixer, CRESCENT ENTERPRISES VRW0.50BK (A1)	146	1599.00	53	2021-01-01 00:00:00	2021-01-01 00:00:00
B08S6RKT4L	Balzano High Speed Nutri Blender/Mixer/Smoothie Maker - 500 Watt - Silver, 2 Jar	187	4290.00	231	2021-01-01 00:00:00	2021-01-01 00:00:00
B09SZ5TWHW	Swiss Military VC03 Wireless Car Vacuum Cleaner | Wireless Vacuum Cleaner for Home, Car, Living Room | Wireless Vacuum Cleaner Dust Collection/Lighting Car Pet Hair Vacuum with Powerful Motor	158	2890.00	260	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BLC2BYPX	Zuvexa USB Rechargeable Electric Foam Maker - Handheld Milk Wand Mixer Frother for Hot Milk, Hand Blender Coffee, Egg Beater (Black)	146	1299.00	160	2021-01-01 00:00:00	2021-01-01 00:00:00
B00P0R95EA	Usha IH2415 1500-Watt Immersion Heater (Silver)	153	640.00	77	2021-01-01 00:00:00	2021-01-01 00:00:00
B07W4HTS8Q	ACTIVA Instant 3 LTR 3 KVA SPECIAL Anti Rust Coated Tank Geyser with Full ABS Body with 5 Year Warranty Premium (White)	149	3790.00	281	2021-01-01 00:00:00	2021-01-01 00:00:00
B078JBK4GX	Havells Instanio 1-Litre 3KW Instant Water Heater (Geyser), White Blue	149	4560.00	60	2021-01-01 00:00:00	2021-01-01 00:00:00
B08S7V8YTN	Lifelong 2-in1 Egg Boiler and Poacher 500-Watt (Transparent and Silver Grey), Boil 8 eggs, Poach 4 eggs, Easy to clean| 3 Boiling Modes, Stainless Steel Body and Heating Plate, Automatic Turn-Off	159	3500.00	136	2021-01-01 00:00:00	2021-01-01 00:00:00
B07H5PBN54	INDIAS®™ Electro-Instant Water Geyser A.B.S. Body Shock Proof Can be Used in Bathroom, Kitchen, wash Area, Hotels, Hospital etc.	149	2600.00	99	2021-01-01 00:00:00	2021-01-01 00:00:00
B07YCBSCYB	AmazonBasics Induction Cooktop 1600 Watt (Black)	145	3300.00	141	2021-01-01 00:00:00	2021-01-01 00:00:00
B098T9CJVQ	Sui Generis Electric Handheld Milk Wand Mixer Frother for Latte Coffee Hot Milk, Milk Frother, Electric Coffee Beater, Egg Beater, Latte Maker, Mini Hand Blender Cappuccino Maker (Multicolor)	146	699.00	57	2021-01-01 00:00:00	2021-01-01 00:00:00
B01KCSGBU2	Philips Air Purifier Ac2887/20,Vitashield Intelligent Purification,Long Hepa Filter Life Upto 17000 Hours,Removes 99.9% Airborne Viruses & Bacteria,99.97% Airborne Pollutants,Ideal For Master Bedroom	178	23559.00	272	2021-01-01 00:00:00	2021-01-01 00:00:00
B095XCRDQW	Esquire Laundry Basket Brown, 50 Ltr Capacity(Plastic)	155	1599.00	163	2021-01-01 00:00:00	2021-01-01 00:00:00
B09CTWFV5W	PHILIPS Air Fryer HD9200/90, uses up to 90% less fat, 1400W, 4.1 Liter, with Rapid Air Technology (Black), Large	154	9995.00	134	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B7NWGXS6	Havells Bero Quartz Heater Black 800w 2 Heat Settings 2 Year Product Warranty	140	2545.00	234	2021-01-01 00:00:00	2021-01-01 00:00:00
B07DZ986Q2	Philips EasyTouch Plus Standing Garment Steamer GC523/60 - 1600 Watt, 5 Steam Settings, Up to 32 g/min steam, with Double Pole	156	8995.00	108	2021-01-01 00:00:00	2021-01-01 00:00:00
B07KKJPTWB	Brayden Chopro, Electric Vegetable Chopper for Kitchen with 500 ML Capacity, 400 Watts Copper Motor and 4 Bi-Level SS Blades (Black)	161	1999.00	226	2021-01-01 00:00:00	2021-01-01 00:00:00
B071R3LHFM	Wonderchef Nutri-blend Mixer, Grinder & Blender | Powerful 400W 22000 RPM motor | Stainless steel Blades | 3 unbreakable jars | 2 Years warranty | Online recipe book by Chef Sanjeev Kapoor | Black	148	5500.00	191	2021-01-01 00:00:00	2021-01-01 00:00:00
B086X18Q71	Usha Janome Dream Stitch Automatic Zig-Zag Electric Sewing Machine with 14 Stitch Function (White and Blue) with Free Sewing KIT Worth RS 500	181	12150.00	160	2021-01-01 00:00:00	2021-01-01 00:00:00
B07WVQG8WZ	Black+Decker Handheld Portable Garment Steamer 1500 Watts with Anti Calc (Violet)	156	4995.00	104	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BFBNXS94	Personal Size Blender, Portable Blender, Battery Powered USB Blender, with Four Blades, Mini Blender Travel Bottle for Juice, Shakes, and Smoothies (Pink)	146	1499.00	78	2021-01-01 00:00:00	2021-01-01 00:00:00
B071113J7M	Sujata Powermatic Plus 900 Watts Juicer Mixer Grinder	157	7506.00	90	2021-01-01 00:00:00	2021-01-01 00:00:00
B09YLWT89W	Sure From Aquaguard Delight NXT RO+UV+UF+Taste Adjuster(MTDS),6L water purifier,8 stages purification,Suitable for borewell,tanker,municipal water(Black) from Eureka Forbes	179	18000.00	94	2021-01-01 00:00:00	2021-01-01 00:00:00
B0814LP6S9	PrettyKrafts Laundry Basket for clothes with Lid & Handles, Toys Organiser, 75 Ltr Grey	155	1099.00	84	2021-01-01 00:00:00	2021-01-01 00:00:00
B07BKSSDR2	Dr Trust Electronic Kitchen Digital Scale Weighing Machine (Blue)	188	1900.00	211	2021-01-01 00:00:00	2021-01-01 00:00:00
B09VGS66FV	Tesora - Inspired by you Large Premium Electric Kettle 1.8L, Stainless Steel Inner Body - Auto Power Cut, Boil Dry Protection & Cool Touch Double Wall, Portable | 1500 Watts |1 Year Warranty | (White)	151	1850.00	80	2021-01-01 00:00:00	2021-01-01 00:00:00
B07RCGTZ4M	AGARO Ace 1600 Watts, 21.5 kPa Suction Power, 21 litres Wet & Dry Stainless Steel Vacuum Cleaner with Blower Function and Washable Dust Bag	177	9999.00	208	2021-01-01 00:00:00	2021-01-01 00:00:00
B0747VDH9L	INALSA Hand Blender 1000 Watt with Chopper, Whisker, 600 ml Multipurpose Jar|Variable Speed And Turbo Speed Function |100% Copper Motor |Low Noise |ANTI-SPLASH TECHNOLOGY|2 Year Warranty	146	3995.00	118	2021-01-01 00:00:00	2021-01-01 00:00:00
B08XLR6DSB	akiara - Makes life easy Electric Handy Sewing/Stitch Handheld Cordless Portable White Sewing Machine for Home Tailoring, Hand Machine | Mini Silai | White Hand Machine with Adapter	181	1499.00	52	2021-01-01 00:00:00	2021-01-01 00:00:00
B08H6CZSHT	Philips EasySpeed Plus Steam Iron GC2145/20-2200W, Quick Heat Up with up to 30 g/min steam, 110 g steam Boost, Scratch Resistant Ceramic Soleplate, Vertical steam & Drip-Stop	156	3295.00	52	2021-01-01 00:00:00	2021-01-01 00:00:00
B07CVR2L5K	INALSA Electric Chopper Bullet- 400 Watts with 100% Pure Copper Motor| Chop, Mince, Puree, Dice | Twin Blade Technology| 900 ml Capacity| One Touch Operation, 1.30mtr Long Power Cord (Black/Silver)	161	2695.00	62	2021-01-01 00:00:00	2021-01-01 00:00:00
B09J4YQYX3	Borosil Electric Egg Boiler, 8 Egg Capacity, For Hard, Soft, Medium Boiled Eggs, Steamed Vegetables, Transparent Lid, Stainless Steel Exterior (500 Watts)	159	2290.00	117	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B2DD8BQ8	Wipro Vesta Grill 1000 Watt Sandwich Maker |Dual function-SW Maker&Griller|Non stick Coat -BPA&PTFE Free |Auto Temp Cut-off| Height Control -180ᶿ&105ᶿ |2 year warranty|SS Finish|Standard size	160	3099.00	300	2021-01-01 00:00:00	2021-01-01 00:00:00
B0123P3PWE	Rico IRPRO 1500 Watt Japanese Technology Electric Water Heater Immersion Rod Shockproof Protection & Stainless Steel Heating Element for Instant Heating| ISI Certified 1 Year Replacement Warranty	153	1075.00	135	2021-01-01 00:00:00	2021-01-01 00:00:00
B08HDCWDXD	Eureka Forbes Active Clean 700 Watts Powerful Suction & Blower Vacuum Cleaner with Washable HEPA Filter & 6 Accessories,1 Year Warranty,Compact,Light Weight & Easy to use (Red & Black)	158	6999.00	197	2021-01-01 00:00:00	2021-01-01 00:00:00
B0836JGZ74	CSI INTERNATIONAL® Instant Water Geyser, Water Heater, Portable Water Heater, Geyser Made of First Class ABS Plastic 3KW (White)	149	2499.00	83	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BCKJJN8R	Hindware Atlantic Xceed 5L 3kW Instant Water Heater with Copper Heating Element and High Grade Stainless Steel Tank	149	7290.00	241	2021-01-01 00:00:00	2021-01-01 00:00:00
B008P7IF02	Morphy Richards New Europa 800-Watt Espresso and Cappuccino 4-Cup Coffee Maker (Black)	189	5795.00	66	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CNLYKW5	Lifelong Power - Pro 500 Watt 3 Jar Mixer Grinder with 3 Speed Control and 1100 Watt Dry Non-Stick soleplate Iron Super Combo (White and Grey, 1 Year Warranty)	148	3398.00	246	2021-01-01 00:00:00	2021-01-01 00:00:00
B08C7TYHPB	iBELL Castor CTEK15L Premium 1.5 Litre Stainless Steel Electric Kettle,1500W Auto Cut-Off Feature,Silver	151	1490.00	146	2021-01-01 00:00:00	2021-01-01 00:00:00
B08VJFYH6N	BAJAJ PYGMY MINI 110 MM 10 W HIGH SPEED OPERATION, USB CHARGING, MULTI-CLIP FUNCTION PERSONAL FAN	190	1620.00	175	2021-01-01 00:00:00	2021-01-01 00:00:00
B08235JZFB	Crompton InstaGlide 1000-Watts Dry Iron with American Heritage Coating, Pack of 1 Iron	147	1000.00	92	2021-01-01 00:00:00	2021-01-01 00:00:00
B078XFKBZL	Prestige Clean Home Water Purifier Cartridge	174	640.00	164	2021-01-01 00:00:00	2021-01-01 00:00:00
B01M265AAK	Morphy Richards Aristo 2000 Watts PTC Room Heater (White)	140	4495.00	131	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B694PXQJ	Gadgetronics Digital Kitchen Weighing Scale & Food Weight Machine for Health, Fitness, Home Baking & Cooking (10 KGs,1 Year Warranty & Batteries Included)	143	2999.00	253	2021-01-01 00:00:00	2021-01-01 00:00:00
B00B3VFJY2	HUL Pureit Germkill kit for Advanced 23 L water purifier - 3000 L Capacity, Sand, Multicolour	173	980.00	231	2021-01-01 00:00:00	2021-01-01 00:00:00
B08W9BK4MD	Tom & Jerry Folding Laundry Basket for Clothes with Lid & Handle, Toys Organiser, 75 Litre, Green	155	899.00	246	2021-01-01 00:00:00	2021-01-01 00:00:00
B09X5HD5T1	Ikea Little Loved Corner PRODUKT Milk-frother, Coffee/Tea Frother, Handheld Milk Wand Mixer Frother, Black	191	499.00	153	2021-01-01 00:00:00	2021-01-01 00:00:00
B08H6B3G96	Philips EasySpeed Plus Steam Iron GC2147/30-2400W, Quick Heat up with up to 30 g/min steam, 150g steam Boost, Scratch Resistant Ceramic Soleplate, Vertical steam, Drip-Stop	156	3995.00	251	2021-01-01 00:00:00	2021-01-01 00:00:00
B09N3BFP4M	Bajaj New Shakti Neo Plus 15 Litre 4 Star Rated Storage Water Heater (Geyser) with Multiple Safety System, White	152	11500.00	294	2021-01-01 00:00:00	2021-01-01 00:00:00
B09DSQXCM8	House of Quirk Reusable Sticky Picker Cleaner Easy-Tear Sheets Travel Pet Hair Lint Rollers Brush (10cm Sheet, Set of 3 Rolls, 180 Sheets, 60 Sheets Each roll Lint Roller Remover, Multicolour)	142	499.00	253	2021-01-01 00:00:00	2021-01-01 00:00:00
B01M69WCZ6	Allin Exporters J66 Ultrasonic Humidifier Cool Mist Air Purifier for Dryness, Cold & Cough Large Capacity for Room, Baby, Plants, Bedroom (2.4 L) (1 Year Warranty)	192	3550.00	287	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BM9H2NY9	Multifunctional 2 in 1 Electric Egg Boiling Steamer Egg Frying Pan Egg Boiler Electric Automatic Off with Egg Boiler Machine Non-Stick Electric Egg Frying Pan-Tiger Woods (Multy)	159	1599.00	123	2021-01-01 00:00:00	2021-01-01 00:00:00
B099FDW2ZF	Maharaja Whiteline Nano Carbon Neo, 500 Watts Room Heater (Black, White), Standard (5200100986)	140	1499.00	95	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B935YNR7	KENT Electric Chopper-B for Kitchen 250 Watt | Chop, Mince, Puree, Whisk, 400 ml Capacity | Stainless Steel Double Chopping Blades | Transparent Chopping Bowl | Anti-Skid | One Touch Operation | Black	161	2999.00	213	2021-01-01 00:00:00	2021-01-01 00:00:00
B07JGCGNDG	Crompton Amica 15-L 5 Star Rated Storage Water Heater (Geyser) with Free Installation (White)	152	11500.00	140	2021-01-01 00:00:00	2021-01-01 00:00:00
B08L12N5H1	Eureka Forbes car Vac 100 Watts Powerful Suction Vacuum Cleaner with Washable HEPA Filter, 3 Accessories,Compact,Light Weight & Easy to use (Black and Red)	158	2499.00	139	2021-01-01 00:00:00	2021-01-01 00:00:00
B07GWTWFS2	KENT 16025 Sandwich Grill 700W | Non-Toxic Ceramic Coating | Automatic Temperature Cut-off with LED Indicator | Adjustable Height Control, Metallic Silver, Standard	160	1975.00	92	2021-01-01 00:00:00	2021-01-01 00:00:00
B09KRHXTLN	Candes Gloster All in One Silent Blower Fan Room Heater Ideal for Small and Medium Area, 2000 Watts (White)	141	1699.00	181	2021-01-01 00:00:00	2021-01-01 00:00:00
B09H34V36W	Inalsa Electric Fan Heater Hotty - 2000 Watts Variable Temperature Control Cool/Warm/Hot Air Selector | Over Heat Protection | ISI Certification, White	141	2495.00	243	2021-01-01 00:00:00	2021-01-01 00:00:00
B09J2QCKKM	Havells Zella Flap Auto Immersion Rod 1500 Watts	153	3500.00	89	2021-01-01 00:00:00	2021-01-01 00:00:00
B09XRBJ94N	iBELL SM1301 3-in-1 Sandwich Maker with Detachable Plates for Toast / Waffle / Grill , 750 Watt (Black)	160	4600.00	178	2021-01-01 00:00:00	2021-01-01 00:00:00
B07SLNG3LW	Inalsa Vacuum Cleaner Wet and Dry Micro WD10 with 3in1 Multifunction Wet/Dry/Blowing| 14KPA Suction and Impact Resistant Polymer Tank,(Yellow/Black)	177	10295.00	266	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BNDGL26T	MR. BRAND Portable USB Juicer Electric USB Juice Maker Mixer Bottle Blender Grinder Mixer,6 Blades Rechargeable Bottle with (Multi color) (MULTI MIXER 6 BLED)	157	2199.00	122	2021-01-01 00:00:00	2021-01-01 00:00:00
B095PWLLY6	Crompton Hill Briz Deco 1200mm (48 inch) High Speed Designer Ceiling Fan (Smoked Brown)	164	2380.00	141	2021-01-01 00:00:00	2021-01-01 00:00:00
B07Y9PY6Y1	Sujata Powermatic Plus, Juicer Mixer Grinder with Chutney Jar, 900 Watts, 3 Jars (White)	157	8820.00	61	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BJ966M5K	Aquadpure Copper + Mineral RO+UV+UF 10 to 12 Liter RO + UV + TDS ADJUSTER Water Purifier with Copper Charge Technology black & copper Best For Home and Office (Made In India)	179	24999.00	61	2021-01-01 00:00:00	2021-01-01 00:00:00
B086GVRP63	Amazon Basics 650 Watt Drip Coffee Maker with Borosilicate Carafe	172	2400.00	109	2021-01-01 00:00:00	2021-01-01 00:00:00
B08MVXPTDG	Crompton Insta Delight Fan Circulator Room Heater with 3 Heat Settings (Slate Grey & Black, 2000 Watt)	141	4200.00	102	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BMZ6SY89	!!HANEUL!!1000 Watt/2000-Watt Room Heater!! Fan Heater!!Pure White!!HN-2500!!Made in India!!Thermoset!!	141	1599.00	231	2021-01-01 00:00:00	2021-01-01 00:00:00
B09P1MFKG1	Melbon VM-905 2000-Watt Room Heater (ISI Certified, White Color) Ideal Electric Fan Heater for Small to Medium Room/Area (Plastic Body)	141	2999.00	178	2021-01-01 00:00:00	2021-01-01 00:00:00
B01LY9W8AF	Cello Eliza Plastic Laundry Bag/Basket, 50 litres, Light Grey	155	1282.00	53	2021-01-01 00:00:00	2021-01-01 00:00:00
B07ZJND9B9	ACTIVA 1200 MM HIGH SPEED 390 RPM BEE APPROVED 5 STAR RATED APSRA CEILING FAN BROWN 2 Years Warranty	164	1990.00	235	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B2CWRDB1	Shakti Technology S5 High Pressure Car Washer Machine 1900 Watts and Pressure 125 Bar with 10 Meter Hose Pipe	166	9999.00	217	2021-01-01 00:00:00	2021-01-01 00:00:00
B072NCN9M4	AMERICAN MICRONIC- Imported Wet & Dry Vacuum Cleaner, 21 Litre Stainless Steel with Blower & HEPA filter, 1600 Watts 100% Copper Motor 28 KPa suction with washable reusable dust bag (Red/Black/Steel)-AMI-VCD21-1600WDx	177	11850.00	142	2021-01-01 00:00:00	2021-01-01 00:00:00
B08SKZ2RMG	Demokrazy New Nova Lint Cum Fuzz Remover for All Woolens Sweaters, Blankets, Jackets Remover Pill Remover from Carpets, Curtains (Pack of 1)	142	999.00	165	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B53DS4TF	Instant Pot Air Fryer, Vortex 2QT, Touch Control Panel, 360° EvenCrisp™ Technology, Uses 95 % less Oil, 4-in-1 Appliance: Air Fry, Roast, Bake, Reheat (Vortex 1.97Litre, Black)	154	20049.00	197	2021-01-01 00:00:00	2021-01-01 00:00:00
B08BJN4MP3	HUL Pureit Eco Water Saver Mineral RO+UV+MF AS wall mounted/Counter top Black 10L Water Purifier	179	24850.00	122	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BCYQY9X5	Livpure Glo Star RO+UV+UF+Mineraliser - 7 L Storage Tank, 15 LPH Water Purifier for Home, Black	179	16490.00	85	2021-01-01 00:00:00	2021-01-01 00:00:00
B009UORDX4	Philips Hi113 1000-Watt Plastic Body Ptfe Coating Dry Iron, Pack of 1	147	975.00	126	2021-01-01 00:00:00	2021-01-01 00:00:00
B08VGDBF3B	Kuber Industries Round Non Woven Fabric Foldable Laundry Basket|Toy Storage Basket|Cloth Storage Basket With Handles| Capicity 45 Ltr (Grey & Black)-KUBMART11446	155	499.00	136	2021-01-01 00:00:00	2021-01-01 00:00:00
B012ELCYUG	Preethi MGA-502 0.4-Litre Grind and Store Jar (White), stainless steel, Set of 1	193	635.00	86	2021-01-01 00:00:00	2021-01-01 00:00:00
B07S9M8YTY	Usha Aurora 1000 W Dry Iron with Innovative Tail Light Indicator, Weilburger Soleplate (White & Grey)	147	1390.00	83	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B19VJXQZ	ECOVACS DEEBOT N8 2-in-1 Robotic Vacuum Cleaner, 2022 New Launch, Most Powerful Suction, Covers 2000+ Sq. Ft in One Charge, Advanced dToF Technology with OZMO Mopping (DEEBOT N8) - White	194	59900.00	146	2021-01-01 00:00:00	2021-01-01 00:00:00
B00SMFPJG0	Kent Gold, Optima, Gold+ Spare Kit	174	670.00	266	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BHYLCL19	AVNISH Tap Water Purifier Filter Faucet 6 Layer Carbon Activated Dust Chlorine Remover Water Softener for Drinking Cartridge Alkaline Taps for Kitchen Sink Bathroom Wash Basin (6-Layer Filtration)	173	399.00	199	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BPJBTB3F	Khaitan ORFin Fan heater for Home and kitchen-K0 2215	141	2495.00	184	2021-01-01 00:00:00	2021-01-01 00:00:00
B08MXJYB2V	USHA RapidMix 500-Watt Copper Motor Mixer Grinder with 3 Jars and 5 Years Warranty(Sea Green/White)	148	3390.00	174	2021-01-01 00:00:00	2021-01-01 00:00:00
B081B1JL35	CSI INTERNATIONAL® Instant Water Geyser, Water Heater, Portable Water Heater, Geyser Made of First Class ABS Plastic 3KW (Red)	149	2499.00	191	2021-01-01 00:00:00	2021-01-01 00:00:00
B09VL9KFDB	Havells Gatik Neo 400mm Pedestal Fan (Aqua Blue)	190	4200.00	60	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B1MDZV9C	INALSA Upright Vacuum Cleaner, 2-in-1,Handheld & Stick for Home & Office Use,800W- with 16KPA Strong Suction & HEPA Filtration|0.8L Dust Tank|Includes Multiple Accessories,(Grey/Black)	158	4495.00	194	2021-01-01 00:00:00	2021-01-01 00:00:00
B08TT63N58	ROYAL STEP - AMAZON'S BRAND - Portable Electric USB Juice Maker Juicer Bottle Blender Grinder Mixer,4 Blades Rechargeable Bottle with (Multi color) (MULTI)	186	2199.00	294	2021-01-01 00:00:00	2021-01-01 00:00:00
B08YK7BBD2	Nirdambhay Mini Bag Sealer, 2 in 1 Heat Sealer and Cutter Handheld Sealing Machine Portable Bag Resealer Sealer for Plastic Bags Food Storage Snack Fresh Bag Sealer (Including 2 AA Battery)	163	999.00	134	2021-01-01 00:00:00	2021-01-01 00:00:00
B07YQ5SN4H	Cello Non-Stick Aluminium Sandwich Gas Toaster(Black)	160	595.00	286	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B7FJNSZR	Proven® Copper + Mineral RO+UV+UF 10 to 12 Liter RO + UV + TDS ADJUSTER Water Purifier with Copper Charge Technology black & copper Best For Home and Office (Made In India)	179	19990.00	240	2021-01-01 00:00:00	2021-01-01 00:00:00
B01N6IJG0F	Morphy Richards Daisy 1000W Dry Iron with American Heritage Non-Stick Coated Soleplate, White	147	1010.00	170	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B84QN4CN	Wipro Vesta 1200 Watt GD201 Lightweight Automatic Dry Iron| Quick Heat Up| Stylish & Sleek |Anti bacterial German Weilburger Double Coated Soleplate |2 Years Warranty	147	1100.00	296	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B8ZM9RVV	Zuvexa Egg Boiler Poacher Automatic Off Steaming, Cooking, Boiling Double Layer 14 Egg Boiler (Multicolor)…	159	999.00	158	2021-01-01 00:00:00	2021-01-01 00:00:00
B01892MIPA	AO Smith HSE-VAS-X-015 Storage 15 Litre Vertical Water Heater (Geyser) White 4 Star	152	10900.00	264	2021-01-01 00:00:00	2021-01-01 00:00:00
B08ZHYNTM1	Havells Festiva 1200mm Dust Resistant Ceiling Fan (Gold Mist)	164	4005.00	110	2021-01-01 00:00:00	2021-01-01 00:00:00
B09SDDQQKP	INALSA Vaccum Cleaner Handheld 800W High Powerful Motor- Dura Clean with HEPA Filtration & Strong Powerful 16KPA Suction| Lightweight, Compact & Durable Body|Includes Multiple Accessories,(Grey/Black)	158	3295.00	266	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B5RP43VN	iBELL SM1515NEW Sandwich Maker with Floating Hinges, 1000Watt, Panini / Grill / Toast (Black)	160	4650.00	50	2021-01-01 00:00:00	2021-01-01 00:00:00
B096NTB9XT	Aquaguard Aura RO+UV+UF+Taste Adjuster(MTDS) with Active Copper & Zinc 7L water purifier,8 stages of purification,suitable for borewell,tanker,municipal water(Black) from Eureka Forbes	179	24500.00	116	2021-01-01 00:00:00	2021-01-01 00:00:00
B078JF6X9B	Havells Instanio 3-Litre 4.5KW Instant Water Heater (Geyser), White Blue	149	6070.00	68	2021-01-01 00:00:00	2021-01-01 00:00:00
B08CGW4GYR	Milk Frother, Immersion Blender Cordlesss Foam Maker USB Rechargeable Small Mixer Handheld with 2 Stainless Whisks，Wisker for Stirring 3-Speed Adjustable Mini Frother for Cappuccino Latte Coffee Egg	146	999.00	92	2021-01-01 00:00:00	2021-01-01 00:00:00
B00A328ENA	Panasonic SR-WA22H (E) Automatic Rice Cooker, Apple Green, 2.2 Liters	175	3945.00	111	2021-01-01 00:00:00	2021-01-01 00:00:00
B0763K5HLQ	InstaCuppa Milk Frother for Coffee - Handheld Battery-Operated Electric Milk and Coffee Frother, Stainless Steel Whisk and Stand, Portable Foam Maker for Coffee, Cappuccino, Lattes, and Egg Beaters	191	1499.00	57	2021-01-01 00:00:00	2021-01-01 00:00:00
B09PDZNSBG	Goodscity Garment Steamer for Clothes, Steam Iron Press - Vertical & Horizontal Steaming up to 22g/min, 1200 Watt, 230 ml Water tank & 30 sec Fast Heating (GC 111)	156	6700.00	264	2021-01-01 00:00:00	2021-01-01 00:00:00
B085LPT5F4	Solidaire 550-Watt Mixer Grinder with 3 Jars (Black) (SLD-550-B)	148	2800.00	173	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B9RZ4G4W	Amazon Basics 300 W Hand Blender with Stainless Steel Stem for Hot/Cold Blending and In-Built Cord Hook, ISI-Marked, Black	146	1699.00	169	2021-01-01 00:00:00	2021-01-01 00:00:00
B0085W2MUQ	Orpat HHB-100E 250-Watt Hand Blender (White)	146	970.00	173	2021-01-01 00:00:00	2021-01-01 00:00:00
B09474JWN6	HealthSense Rechargeable Lint Remover for Clothes | Fuzz and Fur Remover | Electric Fabric Shaver, Trimmer for Clothes, Carpet, Sofa, Sweaters, Curtains | One-Year Warranty Included - New-Feel LR350	142	1500.00	67	2021-01-01 00:00:00	2021-01-01 00:00:00
B09G2VTHQM	AGARO Classic Portable Yogurt Maker, 1.2L Capacity, Electric, Automatic, Grey and White, Medium (33603)	195	1295.00	299	2021-01-01 00:00:00	2021-01-01 00:00:00
B07R679HTT	AGARO Imperial 240-Watt Slow Juicer with Cold Press Technology	196	23999.00	152	2021-01-01 00:00:00	2021-01-01 00:00:00
B00B7GKXMG	Wipro Smartlife Super Deluxe Dry Iron- 1000W	147	850.00	146	2021-01-01 00:00:00	2021-01-01 00:00:00
B07H3N8RJH	AmazonBasics Cylinder Bagless Vacuum Cleaner with Power Suction, Low Sound, High Energy Efficiency and 2 Years Warranty (1.5L, Black)	165	6000.00	149	2021-01-01 00:00:00	2021-01-01 00:00:00
B07K2HVKLL	Crompton IHL 251 1500-Watt Immersion Water Heater with Copper Heating Element and IP 68 Protection	153	1020.00	208	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MQ9PDHR	SaiEllin Room Heater For Home 2000 Watts Room Heater For Bedroom | ISI Approved With 1 Year Warranty | For 250 Sq. Feet Blower Heater & Room Heaters Home For Winters	141	1999.00	289	2021-01-01 00:00:00	2021-01-01 00:00:00
B014HDJ7ZE	Bajaj Majesty Duetto Gas 6 Ltr Vertical Water Heater ( LPG), White	149	7445.00	202	2021-01-01 00:00:00	2021-01-01 00:00:00
B07D2NMTTV	Black + Decker BD BXIR2201IN 2200-Watt Cord & Cordless Steam Iron (Green)	156	3500.00	246	2021-01-01 00:00:00	2021-01-01 00:00:00
B075K76YW1	Inalsa Hand Blender| Hand Mixer|Beater - Easy Mix, Powerful 250 Watt Motor | Variable 7 Speed Control | 1 Year Warranty | (White/Red)	183	1395.00	283	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BNLFQDG2	Longway Blaze 2 Rod Quartz Room Heater (White, Gray, 800 watts)	140	2199.00	242	2021-01-01 00:00:00	2021-01-01 00:00:00
B082ZQ4479	Prestige PWG 07 Wet Grinder, 2L (Multicolor) with Coconut Scraper and Atta Kneader Attachments, 200 Watt	184	4330.00	73	2021-01-01 00:00:00	2021-01-01 00:00:00
B09Y358DZQ	Pigeon Zest Mixer Grinder 3 Speed Control 750 Watt Powerful Copper Motor with 3 Stainless Steel Jars for Dry Grinding, Wet Grinding and Making Chutney and 3 Polycarbonate lids - Blue	148	4295.00	281	2021-01-01 00:00:00	2021-01-01 00:00:00
B09M3F4HGB	Borosil Volcano 13 Fin Oil Filled Radiator Room Heater, 2900 W, Black	140	18990.00	120	2021-01-01 00:00:00	2021-01-01 00:00:00
B07VZH6ZBB	Crompton Solarium Qube 15-L 5 Star Rated Storage Water Heater (Geyser) with Free Installation and Connection Pipes (White and Black)	152	12500.00	99	2021-01-01 00:00:00	2021-01-01 00:00:00
B07F366Z51	Singer Aroma 1.8 Liter Electric Kettle High Grade Stainless Steel with Cool and Touch Body and Cordless Base, 1500 watts, Auto Shut Off with Dry Boiling (Silver/Black)	139	2385.00	281	2021-01-01 00:00:00	2021-01-01 00:00:00
B077BTLQ67	Orient Electric Aura Neo Instant 3L Water Heater (Geyser), 5-level Safety Shield, Stainless Steel Tank (White & Turquoise)	149	4890.00	203	2021-01-01 00:00:00	2021-01-01 00:00:00
B07YSJ7FF1	Crompton Brio 1000-Watts Dry Iron with Weilburger Coating (Sky Blue and White)	147	1100.00	84	2021-01-01 00:00:00	2021-01-01 00:00:00
B07TXCY3YK	Butterfly Hero Mixer Grinder, 500W, 3 Jars (Grey)	148	3899.00	171	2021-01-01 00:00:00	2021-01-01 00:00:00
B07TC9F7PN	Racold Eterno Pro 25L Vertical 5 Star Storage Water Heater (Geyser) with free Standard Installation and free Installation Pipes	152	16899.00	64	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NS5TKPN	LG 1.5 Ton 5 Star AI DUAL Inverter Split AC (Copper, Super Convertible 6-in-1 Cooling, HD Filter with Anti-Virus Protection, 2022 Model, PS-Q19YNZE, White)	197	75990.00	129	2021-01-01 00:00:00	2021-01-01 00:00:00
B00LP9RFSU	Eureka Forbes Aquasure Amrit Twin Cartridge (Pack of 2), White	173	825.00	256	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B7L86YCB	Green Tales Heat Seal Mini Food Sealer-Impulse Machine for Sealing Plastic Bags Packaging	163	300.00	171	2021-01-01 00:00:00	2021-01-01 00:00:00
B09VPH38JS	SaleOn Instant Coal Heater 500W Charcoal Burner Electric Stove Hot Plate - Mix Colors - Pack of 1 - Only Charcoal Heater	145	1499.00	240	2021-01-01 00:00:00	2021-01-01 00:00:00
B01MUAUOCX	Sujata Chutney Steel Jar, 400 ml, (White), Stainless Steel	198	747.00	193	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MB3DKG1	KHAITAN AVAANTE KA-2013 1200 Watt 3-Rod Halogen Heater (1200 Watts, Grey)	167	3999.00	108	2021-01-01 00:00:00	2021-01-01 00:00:00
B08QHLXWV3	Kenstar 2400 Watts 9 Fins Oil Filled Radiator with PTC Fan Heater (BLACK GOLD)	141	11990.00	86	2021-01-01 00:00:00	2021-01-01 00:00:00
B07G147SZD	NEXOMS Instant Heating Water Tap Wall Mounted with 3 Pin Indian Plug (16Amp)	149	3799.00	219	2021-01-01 00:00:00	2021-01-01 00:00:00
B09LH32678	JIALTO Mini Waffle Maker 4 Inch- 350 Watts: Stainless Steel Non-Stick Electric Iron Machine for Individual Belgian Waffles, Pan Cakes, Paninis or Other Snacks - Aqua blue	199	1999.00	214	2021-01-01 00:00:00	2021-01-01 00:00:00
B09R1YFL6S	Candes BlowHot All in One Silent Blower Fan Room Heater (ABS Body, White, Brown) 2000 Watts	141	2999.00	274	2021-01-01 00:00:00	2021-01-01 00:00:00
B07Q4NJQC5	Ionix Jewellery Scale | Weight Scale | Digital Weight Machine | weight machine for gold | Electronic weighing machines for Jewellery 0.01G to 200G Small Weight Machine for Shop - Silver	143	599.00	206	2021-01-01 00:00:00	2021-01-01 00:00:00
B097RN7BBK	Kitchen Kit Electric Kettle, 1.8L Stainless Steel Tea Kettle, Fast Boil Water Warmer with Auto Shut Off and Boil Dry Protection Tech	151	1999.00	280	2021-01-01 00:00:00	2021-01-01 00:00:00
B097MKZHNV	Racold Pronto Pro 3Litres 3KW Vertical Instant Water Heater (Geyser)	149	4849.00	168	2021-01-01 00:00:00	2021-01-01 00:00:00
B07LG96SDB	ESN 999 Supreme Quality 1500W Immersion Water Heater Rod (Black)	153	510.00	142	2021-01-01 00:00:00	2021-01-01 00:00:00
B08KS2KQTK	Pajaka® South Indian Filter Coffee Maker 200 ML 2-4 Cup / Mugs / Glass | Madras Kaapi/ Kappi Drip Decoction Maker / Makers / Brewer / Pot or Drip / Dripper Made of Stainless Steel | Non-Electric Machine / Appliances / Utensils Medium Size for Home and Kitchen, Office, Cefe Traditional Item / Product | Used for making Country /Desi Style French Press Espresso Nespresso Expresso Cappuccino Instant Black Coffee | Best flavoured with Grounded Arabica Roasted Crushed Grind Coffee Beans	172	499.00	56	2021-01-01 00:00:00	2021-01-01 00:00:00
B095K14P86	Saiyam Stainless Steel Espresso Maker Stovetop Coffee Percolator Italian Coffee Maker Moka Pot (4 Cup - 200 ml, Silver)	200	1299.00	297	2021-01-01 00:00:00	2021-01-01 00:00:00
B08K36NZSV	KONVIO NEER 10 Inch Spun Filter (PP SPUN) Cartridge Compatible for 10 Inch Pre-Filter Housing of Water Purifier | Pack of 4 Spun	173	999.00	132	2021-01-01 00:00:00	2021-01-01 00:00:00
B07LDPLSZC	Havells Glydo 1000 watt Dry Iron With American Heritage Non Stick Sole Plate, Aerodynamic Design, Easy Grip Temperature Knob & 2 years Warranty. (Charcoal Blue)	147	1190.00	226	2021-01-01 00:00:00	2021-01-01 00:00:00
B07F1T31ZZ	Raffles Premium Stainless Steel South Indian Coffee Filter/Drip Coffee Maker, 2-3 Cups, 150 ml	172	400.00	50	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BNDRK886	IONIX Activated Carbon Faucet Water Filters Universal Interface Home Kitchen Faucet Tap Water | Tap filter Multilayer | Clean Purifier Filter Cartridge Five Layer Water Filter-Pack of 1	173	599.00	137	2021-01-01 00:00:00	2021-01-01 00:00:00
B09ZVJXN5L	KNYUC MART Mini Electric Handy Room Heater Compact Plug-in, The Wall Outlet 400 Watts, Handy Air Warmer Blower Adjustable Timer Digital Display	141	999.00	58	2021-01-01 00:00:00	2021-01-01 00:00:00
B08JKPVDKL	INKULTURE Stainless_Steel Measuring Cups & Spoon Combo for Dry or Liquid/Kitchen Gadgets for Cooking & Baking Cakes/Measuring Cup Set Combo with Handles (Set of 4 Cups & 4 Spoons)	201	699.00	114	2021-01-01 00:00:00	2021-01-01 00:00:00
B09JFR8H3Q	Macmillan Aquafresh 5 Micron PS-05 10" in PP Spun Filter Candle Set for All Type RO Water Purifier 10 inch (4)	173	1499.00	246	2021-01-01 00:00:00	2021-01-01 00:00:00
B07LDN9Q2P	Havells D'zire 1000 watt Dry Iron With American Heritage Sole Plate, Aerodynamic Design, Easy Grip Temperature Knob & 2 years Warranty. (Mint)	147	1295.00	116	2021-01-01 00:00:00	2021-01-01 00:00:00
B08T8KWNQ9	TE™ Instant Electric Heating Hot and Cold Water Geyser Tap Water with Digital Display (White)	149	4999.00	283	2021-01-01 00:00:00	2021-01-01 00:00:00
B07Y1RCCW5	ZIGMA WinoteK WinoteK Sun Instant Water Geyser, Water Heater, Portable Water Heater, Geysers Made of First Class ABS Plastic, automatic Reset Model, AE10-3 W (Yellow)	149	2550.00	108	2021-01-01 00:00:00	2021-01-01 00:00:00
B0762HXMTF	KENT 11054 Alkaline Water Filter Pitcher 3.5 L | Chemical-Free Water with Balanced pH Levels 8.0 to 9.5 | Solves Acidity Issue | Equipped with Carbon and Sediment Filter - Grey	179	1950.00	105	2021-01-01 00:00:00	2021-01-01 00:00:00
B00K57MR22	Sujata Dynamix DX Mixer Grinder, 900W, 3 Jars (White)	148	8478.00	222	2021-01-01 00:00:00	2021-01-01 00:00:00
B07TTSS5MP	Lifelong LLMG74 750 Watt Mixer Grinder with 3 Jars (White and Grey)	148	3299.00	278	2021-01-01 00:00:00	2021-01-01 00:00:00
B09ZDVL7L8	TTK Prestige Limited Orion Mixer Grinder 500 Watts, 3 Jars (1200ml, 1000ml, 500ml) (Red)	148	3895.00	95	2021-01-01 00:00:00	2021-01-01 00:00:00
B09XHXXCFH	AGARO Regal Electric Rice Cooker, 3L Ceramic Inner Bowl, Cooks Up to 600 Gms Raw Rice, SS Steamer, Preset Cooking Functions, Preset Timer, Keep Warm Function, LED Display, Black	175	5495.00	98	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BL3R4RGS	VAPJA® Portable Mini Juicer Cup Blender USB Rechargeable with 4 Blades for Shakes and Smoothies Fruits Vegetables Juice Maker Grinder Mixer Strong Cutting Bottle Sports Travel Outdoors Gym (BOTTLE)	157	999.00	76	2021-01-01 00:00:00	2021-01-01 00:00:00
B07P1BR7L8	Philips HD6975/00 25 Litre Digital Oven Toaster Grill, Grey, 25 liter	185	8995.00	97	2021-01-01 00:00:00	2021-01-01 00:00:00
B078WB1VWJ	Usha EI 3710 Heavy Weight 1000-Watt Dry Iron with Golden American Heritage Soleplate, 1.75 Kg(White)	147	1599.00	270	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BP89YBC1	Campfire Spring Chef Prolix Instant Portable Water Heater Geyser 1Ltr. for Use Home Stainless Steel Baking Rack | Restaurant | Office | Labs | Clinics | Saloon | with Installation Kit (With MCB)	149	3500.00	231	2021-01-01 00:00:00	2021-01-01 00:00:00
B09W9V2PXG	Themisto TH-WS20 Digital Kitchen Weighing Scale Stainless Steel (5Kg)	143	1999.00	231	2021-01-01 00:00:00	2021-01-01 00:00:00
B09XTQFFCG	FYA Handheld Vacuum Cleaner Cordless, Wireless Hand Vacuum&Air Blower 2-in-1, Mini Portable Car Vacuum Cleaner with Powerful Suction, USB Rechargeable Vacuum for Pet Hair, Home and Car	158	3199.00	176	2021-01-01 00:00:00	2021-01-01 00:00:00
B08LVVTGZK	Lifelong LLSM120G Sandwich Griller , Classic Pro 750 W Sandwich Maker with 4 Slice Non-Stick Fixed Plates for Sandwiches at Home with 1 Year Warranty (Black)	160	1300.00	93	2021-01-01 00:00:00	2021-01-01 00:00:00
B07J2BQZD6	Kuber Industries Nylon Mesh Laundry Basket|Sturdy Material & Durable Handles|Netted Lightweight Laundry Bag, Size 36 x 36 x 58, Capicity 30 Ltr (Pink)	155	399.00	115	2021-01-01 00:00:00	2021-01-01 00:00:00
B07HK53XM4	Bulfyss Plastic Sticky Lint Roller Hair Remover Cleaner Set of 5 Rolls 150 Sheets, 30 Sheets Each roll Lint Roller Remover for Clothes, Furniture, Carpet, Dog Fur, Sweater, Dust & Dirt	142	599.00	221	2021-01-01 00:00:00	2021-01-01 00:00:00
B08RDWBYCQ	T TOPLINE 180 W Electric Hand Mixer,Hand Blender , Egg Beater, Cake maker , Beater Cream Mix, Food Blender, Beater for Whipping Cream Beater for Cake With 7 -Speed with spatula and oil brush	146	999.00	182	2021-01-01 00:00:00	2021-01-01 00:00:00
B09FHHTL8L	Empty Mist Trigger Plastic Spray Bottle for Multi use 200ml Pack of 2	182	199.00	286	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BHNHMR3H	LONAXA Mini Travel Rechargeable Fruit Juicer - USB Electric Fruit & Vegetable Juice Blender/Grinder for Home and Office Use (Multicolor)…	157	1299.00	74	2021-01-01 00:00:00	2021-01-01 00:00:00
B07D8VBYB4	SUJATA Powermatic Plus, Juicer Mixer Grinder, 900 Watts, 2 Jars (White)	157	7776.00	271	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3TBY2YX	AGARO Royal Double Layered Kettle, 1.5 Litres, Double Layered Cool Touch , Dry Boiling Protection, Black	139	2299.00	150	2021-01-01 00:00:00	2021-01-01 00:00:00
B088WCFPQF	Cafe JEI French Press Coffee and Tea Maker 600ml with 4 Level Filtration System, Heat Resistant Borosilicate Glass (Black, 600ml)	202	1500.00	160	2021-01-01 00:00:00	2021-01-01 00:00:00
B07JZSG42Y	Borosil Prime Grill Sandwich Maker (Grey)	160	2590.00	299	2021-01-01 00:00:00	2021-01-01 00:00:00
B08YRMBK9R	Candes 10 Litre Perfecto 5 Star Rated Automatic Instant Storage Electric Water Heater with Special Metal Body Anti Rust Coating With Installation Kit, 2KW Geyser (Ivory)	152	6299.00	167	2021-01-01 00:00:00	2021-01-01 00:00:00
B00935MGHS	Prestige PSMFB 800 Watt Sandwich Toaster with Fixed Plates, Black	160	1795.00	162	2021-01-01 00:00:00	2021-01-01 00:00:00
B07B5XJ572	iBELL MPK120L Premium Stainless Steel Multi Purpose Kettle/Cooker with Inner Pot 1.2 Litre (Silver)	139	3190.00	126	2021-01-01 00:00:00	2021-01-01 00:00:00
B086199CWG	Maharaja Whiteline Odacio Plus 550-Watt Juicer Mixer Grinder with 3 Jars (Black/Silver)	157	4799.00	50	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BBWJFK5C	Shakti Technology S3 High Pressure Car Washer Machine 1800 Watts and Pressure 120 Bar for Cleaning Car, Bike & Home	166	8999.00	238	2021-01-01 00:00:00	2021-01-01 00:00:00
B07GLS2563	Cello Quick Boil Popular Electric Kettle 1 Litre 1200 Watts | Stainless Steel body | Boiler for Water, Silver	151	1899.00	128	2021-01-01 00:00:00	2021-01-01 00:00:00
B09P182Z2H	AGARO Glory Cool Mist Ultrasonic Humidifier, 4.5Litres, For Large Area, Room, Home, Office, Adjustable Mist Output, Ceramic Ball Filter, Ultra Quiet, 360° Rotatable Nozzle, Auto Shut Off, Grey	192	5799.00	85	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B59K1C8F	Wolpin 1 Lint Roller with 60 Sheets Remove Clothes Lint Dog Hair Dust (19 x 13 cm) Orange	142	799.00	118	2021-01-01 00:00:00	2021-01-01 00:00:00
B06Y36JKC3	Abode Kitchen Essential Measuring Cup & Spoon for Spices | for Cooking and Baking Cake | Multipurpose Tablespoon Cups with Ring Holder | (Black)	201	300.00	114	2021-01-01 00:00:00	2021-01-01 00:00:00
B075S9FVRY	Sujata Supermix, Mixer Grinder, 900 Watts, 3 Jars (White)	148	7200.00	168	2021-01-01 00:00:00	2021-01-01 00:00:00
B08SJVD8QD	CARDEX Digital Kitchen Weighing Machine Multipurpose Electronic Weight Scale With Back Lite LCD Display for Measuring Food, Cake, Vegetable, Fruit (KITCHEN SCALE)	143	389.00	74	2021-01-01 00:00:00	2021-01-01 00:00:00
B07FJNNZCJ	V-Guard Zenora RO+UF+MB Water Purifier | Suitable for water with TDS up to 2000 ppm | 8 Stage Purification with World-class RO Membrane and Advanced UF Membrane | Free PAN India Installation & 1-Year Comprehensive Warranty | 7 Litre, Black	179	13049.00	165	2021-01-01 00:00:00	2021-01-01 00:00:00
B09MFR93KS	Bajaj Rex DLX 750 W 4 Jars Mixer Grinder, White and Blue	148	5999.00	78	2021-01-01 00:00:00	2021-01-01 00:00:00
B07Y5FDPKV	KENT 16051 Hand Blender 300 W | 5 Variable Speed Control | Multiple Beaters & Dough Hooks | Turbo Function	146	2400.00	144	2021-01-01 00:00:00	2021-01-01 00:00:00
B0756KCV5K	Prestige PIC 15.0+ 1900-Watt Induction Cooktop (Black)	145	5295.00	178	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BJ6P3LSK	Aqua d pure Active Copper 12-L RO+UV Water Filter Purifier for Home, Kitchen Fully Automatic UF+TDS Controller	179	24999.00	80	2021-01-01 00:00:00	2021-01-01 00:00:00
B09HS1NDRQ	PrettyKrafts Laundry Square Shape Basket Bag/Foldable/Multipurpose/Carry Handles/Slanting Lid for Home, Cloth Storage,(Single) Jute Grey	155	799.00	130	2021-01-01 00:00:00	2021-01-01 00:00:00
B018SJJ0GE	Libra Roti Maker Electric Automatic | chapati Maker Electric Automatic | roti Maker Machine with 900 Watts for Making Roti/Chapati/Parathas - Stainless Steel	203	2999.00	238	2021-01-01 00:00:00	2021-01-01 00:00:00
B09FPP3R1D	Glen 3 in 1 Electric Multi Cooker - Steam, Cook & Egg Boiler with 350 W (SA 3035MC) - 350 Watts	159	2495.00	68	2021-01-01 00:00:00	2021-01-01 00:00:00
B01F7B2JCI	Dynore Stainless Steel Set of 4 Measuring Cup and 4 Measuring Spoon	201	450.00	129	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NNZ1GF7	Lint Remover For Clothes With 1 Year Warranty Fabric Shaver Lint Shaver for Woolen Clothes Blanket Jackets Stainless Steel Blades,Bedding, Clothes and Furniture Best Remover for Fabrics Portable Lint Shavers (White Orange)	142	999.00	187	2021-01-01 00:00:00	2021-01-01 00:00:00
B01CS4A5V4	Monitor AC Stand/Heavy Duty Air Conditioner Outdoor Unit Mounting Bracket	204	1690.00	199	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BL11S5QK	iBELL Induction Cooktop, 2000W with Auto Shut Off and Overheat Protection, BIS Certified, Black	145	3890.00	58	2021-01-01 00:00:00	2021-01-01 00:00:00
B09BL2KHQW	KENT POWP-Sediment Filter 10'' Thread WCAP	173	260.00	136	2021-01-01 00:00:00	2021-01-01 00:00:00
B081RLM75M	LACOPINE Mini Pocket Size Lint Roller (White)	142	599.00	74	2021-01-01 00:00:00	2021-01-01 00:00:00
B07SYYVP69	iBELL SEK170BM Premium Electric Kettle, 1.7 Litre, Stainless Steel with Coating,1500W Auto Cut-Off, Silver with Black	139	1950.00	207	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BDZWMGZ1	Activa Easy Mix Nutri Mixer Grinder 500 Watt | Long Lasting Shock Proof ABS Body | Heavy Duty Motor With Nano - Grinding Technology	148	2990.00	185	2021-01-01 00:00:00	2021-01-01 00:00:00
B078JT7LTD	Sujata Dynamix, Mixer Grinder, 900 Watts, 3 Jars (White)	148	8073.00	206	2021-01-01 00:00:00	2021-01-01 00:00:00
B09WF4Q7B3	Wipro Vesta 1380W Cordless Steam Iron Quick heat up with 20gm/ min Steam Burst, Scratch resistant Ceramic soleplate ,Vertical and Horizontal Ironing, Steam burst of upto .8g/ shot	156	2599.00	152	2021-01-01 00:00:00	2021-01-01 00:00:00
B092R48XXB	Mi Robot Vacuum-Mop P, Best-in-class Laser Navigation in 10-20K INR price band, Intelligent mapping, Robotic Floor Cleaner with 2 in 1 Mopping and Vacuum, App Control (WiFi, Alexa,GA), Strong suction	194	29999.00	156	2021-01-01 00:00:00	2021-01-01 00:00:00
B00KIDSU8S	Havells Ventil Air DX 200mm Exhaust Fan (White)	171	2360.00	219	2021-01-01 00:00:00	2021-01-01 00:00:00
B0977CGNJJ	AGARO Royal Stand 1000W Mixer with 5L SS Bowl and 8 Speed Setting, Includes Whisking Cone, Mixing Beater & Dough Hook, and Splash Guard, 2 Years Warranty, (Black), Medium (33554)	205	11495.00	148	2021-01-01 00:00:00	2021-01-01 00:00:00
B08WWKM5HQ	Crompton Highspeed Markle Prime 1200 mm (48 inch) Anti-Dust Ceiling Fan with Energy Efficient 55W Motor (Burgundy)	164	4780.00	193	2021-01-01 00:00:00	2021-01-01 00:00:00
B015GX9Y0W	Lifelong LLWM105 750-Watt Belgian Waffle Maker for Home| Makes 2 Square Shape Waffles| Non-stick Plates| Easy to Use with Indicator Lights (1 Year Warranty, Black)	199	2400.00	78	2021-01-01 00:00:00	2021-01-01 00:00:00
B089BDBDGM	Kuber Industries Waterproof Round Laundry Bag/Hamper|Polka Dots Print Print with Handles|Foldable Bin & 45 Liter Capicity|Size 37 x 37 x 49, Pack of 1(Black & White)- CTKTC044992	155	249.00	276	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BPBG712X	Portable, Handy Compact Plug-in Portable Digital Electric Heater Fan Wall-Outlet Handy Air Warmer Blower Adjustable Timer Digital Display Heater for Home/Office/Camper (Black, 400 Watts)	141	1199.00	287	2021-01-01 00:00:00	2021-01-01 00:00:00
B00JBNZPFM	Karcher WD3 EU Wet and Dry Vacuum Cleaner, 1000 Watts Powerful Suction, 17 L Capacity, Blower Function, Easy Filter Removal for Home and Garden Cleaning  (Yellow/Black)	177	10999.00	114	2021-01-01 00:00:00	2021-01-01 00:00:00
B08N6P8G5K	INALSA Air Fryer Digital 4L Nutri Fry - 1400W with Smart AirCrisp Technology| 8-Preset Menu, Touch Control & Digital Display|Variable Temperature & Timer Control|Free Recipe book|2 Yr Warranty (Black)	154	10995.00	126	2021-01-01 00:00:00	2021-01-01 00:00:00
B07NPBG1B4	AmazonBasics High Speed 55 Watt Oscillating Pedestal Fan, 400mm Sweep Length, White (Without Remote)	206	3300.00	262	2021-01-01 00:00:00	2021-01-01 00:00:00
B01MRARGBW	Eco Crystal J 5 inch Cartridge (Pack of 2)	173	400.00	265	2021-01-01 00:00:00	2021-01-01 00:00:00
B07VZYMQNZ	Borosil Rio 1.5 L Electric Kettle, Stainless Steel Inner Body, Boil Water For Tea, Coffee, Soup, Silver	139	1440.00	158	2021-01-01 00:00:00	2021-01-01 00:00:00
B01L7C4IU2	Havells Ambrose 1200mm Ceiling Fan (Pearl White Wood)	164	3045.00	53	2021-01-01 00:00:00	2021-01-01 00:00:00
B09H7JDJCW	PHILIPS Drip Coffee Maker HD7432/20, 0.6 L, Ideal for 2-7 cups, Black, Medium	172	3595.00	248	2021-01-01 00:00:00	2021-01-01 00:00:00
B07F6GXNPB	Eureka Forbes Euroclean Paper Vacuum Cleaner Dust Bags for Excel, Ace, 300, Jet Models - Set of 10	207	500.00	107	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B97D658R	Larrito wooden Cool Mist Humidifiers Essential Oil Diffuser Aroma Air Humidifier with Colorful Change for Car, Office, Babies, humidifiers for home, air humidifier for room (WOODEN HUMIDIFIRE-A)	192	799.00	140	2021-01-01 00:00:00	2021-01-01 00:00:00
B09NFSHCWN	Hilton Quartz Heater 400/800-Watt ISI 2 Rods Multi Mode Heater Long Lasting Quick Heating Extremely Warm (Grey)	140	1899.00	119	2021-01-01 00:00:00	2021-01-01 00:00:00
B076VQS87V	Syska SDI-07 1000 W Stellar with Golden American Heritage Soleplate Dry Iron (Blue)	147	799.00	182	2021-01-01 00:00:00	2021-01-01 00:00:00
B09LMMFW3S	IKEA Milk Frother for Your Milk, Coffee,(Cold and hot Drinks), Black	191	399.00	203	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BBLHTRM9	IONIX Tap filter Multilayer | Activated Carbon Faucet Water Filters Universal Interface Home Kitchen Faucet Tap Water Clean Purifier Filter Cartridge Five Layer Water Filter-Pack of 1	173	699.00	129	2021-01-01 00:00:00	2021-01-01 00:00:00
B0BJYSCWFQ	Kitchengenix's Mini Waffle Maker 4 Inch- 350 Watts: Stainless Steel Non-Stick Electric Iron Machine for Individual Belgian Waffles, Pan Cakes, Paninis or Other Snacks (Red)	199	1999.00	279	2021-01-01 00:00:00	2021-01-01 00:00:00
B0187F2IOK	Bajaj HM-01 Powerful 250W Hand Mixer, Black	183	2199.00	273	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B8CB7MHW	KNOWZA Electric Handheld Milk Wand Mixer Frother for Latte Coffee Hot Milk, Milk Frother for Coffee, Egg Beater, Hand Blender, Coffee Beater (BLACK COFFEE BEATER)	146	999.00	280	2021-01-01 00:00:00	2021-01-01 00:00:00
B07K19NYZ8	Usha Hc 812 T Thermo Fan Room Heater	141	3290.00	165	2021-01-01 00:00:00	2021-01-01 00:00:00
B08ZXZ362Z	akiara - Makes life easy Mini Sewing Machine for Home Tailoring use | Mini Silai Machine with Sewing Kit Set Sewing Box with Thread Scissors, Needle All in One Sewing Accessories (White & Purple)	181	3098.00	285	2021-01-01 00:00:00	2021-01-01 00:00:00
B00GHL8VP2	USHA 1212 PTC with Adjustable Thermostat Fan Heater (Black/Brown, 1500-Watts).	140	4990.00	217	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B9JZW1SQ	4 in 1 Handheld Electric Vegetable Cutter Set,Wireless Food Processor Electric Food Chopper for Garlic Chili Pepper Onion Ginger Celery Meat with Brush	161	1200.00	172	2021-01-01 00:00:00	2021-01-01 00:00:00
B00TI8E7BI	Philips HD9306/06 1.5-Litre Electric Kettle (Multicolor)	139	2695.00	220	2021-01-01 00:00:00	2021-01-01 00:00:00
B07J9KXQCC	Libra Room Heater for Home, Room Heaters Home for Winter, Electric Heater with 2000 Watts Power as per IS Specification for Small to Medium Rooms - FH12 (Grey)	140	2299.00	229	2021-01-01 00:00:00	2021-01-01 00:00:00
B0B3JSWG81	NGI Store 2 Pieces Pet Hair Removers for Your Laundry Catcher Lint Remover for Washing Machine Lint Remover Reusable Portable Silica Gel Clothes Washer Dryer Floating Ball	142	999.00	67	2021-01-01 00:00:00	2021-01-01 00:00:00
B08L7J3T31	Noir Aqua - 5pcs PP Spun Filter + 1 Spanner | for All Types of RO Water purifiers (5 Piece, White, 10 Inch, 5 Micron) - RO Spun Filter Cartridge Sponge Replacement Water Filter Candle	173	919.00	184	2021-01-01 00:00:00	2021-01-01 00:00:00
B01M6453MB	Prestige Delight PRWO Electric Rice Cooker (1 L, White)	175	3045.00	286	2021-01-01 00:00:00	2021-01-01 00:00:00
B009P2LIL4	Bajaj Majesty RX10 2000 Watts Heat Convector Room Heater (White, ISI Approved)	169	3080.00	157	2021-01-01 00:00:00	2021-01-01 00:00:00
B00J5DYCCA	Havells Ventil Air DSP 230mm Exhaust Fan (Pista Green)	171	1890.00	200	2021-01-01 00:00:00	2021-01-01 00:00:00
B01486F4G6	Borosil Jumbo 1000-Watt Grill Sandwich Maker (Black)	160	3690.00	132	2021-01-01 00:00:00	2021-01-01 00:00:00
\.


--
-- Data for Name: subcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subcategory (subcategory_id, name, category_id, description, created_at, updated_at) FROM stdin;
1	USBCables	1	USBCables is Mind crime recent morning action.	2021-01-01 00:00:00	2021-01-01 00:00:00
2	WirelessUSBAdapters	1	WirelessUSBAdapters is Smile commercial character amount big animal.	2021-01-01 00:00:00	2021-01-01 00:00:00
3	HDMICables	2	HDMICables is Street none poor whether concern themselves within.	2021-01-01 00:00:00	2021-01-01 00:00:00
4	SmartTelevisions	2	SmartTelevisions is Leader exactly less itself former discuss them.	2021-01-01 00:00:00	2021-01-01 00:00:00
5	RemoteControls	2	RemoteControls is Expect about success citizen price six statement start.	2021-01-01 00:00:00	2021-01-01 00:00:00
6	StandardTelevisions	2	StandardTelevisions is Follow religious analysis pressure conference unit lay finish window.	2021-01-01 00:00:00	2021-01-01 00:00:00
7	TVWall&CeilingMounts	2	TVWall&CeilingMounts is Remain people business film well tough hour with.	2021-01-01 00:00:00	2021-01-01 00:00:00
8	RCACables	2	RCACables is Consider civil half my none wife keep main.	2021-01-01 00:00:00	2021-01-01 00:00:00
9	Mounts	2	Mounts is Money response maybe memory yes compare difficult respond should check.	2021-01-01 00:00:00	2021-01-01 00:00:00
10	OpticalCables	2	OpticalCables is Great evidence situation group be rate among hair then wonder.	2021-01-01 00:00:00	2021-01-01 00:00:00
11	Projectors	2	Projectors is Minute with newspaper media security job everyone participant show.	2021-01-01 00:00:00	2021-01-01 00:00:00
12	Adapters	2	Adapters is Institution claim future national anyone begin impact in data style across.	2021-01-01 00:00:00	2021-01-01 00:00:00
13	SatelliteReceivers	2	SatelliteReceivers is Consumer between brother property Mr just camera south show smile.	2021-01-01 00:00:00	2021-01-01 00:00:00
14	DVICables	1	DVICables is Half rate enter thus event mission.	2021-01-01 00:00:00	2021-01-01 00:00:00
15	SpeakerCables	2	SpeakerCables is Cause green political policy mother strategy phone her leave what.	2021-01-01 00:00:00	2021-01-01 00:00:00
16	StreamingClients	2	StreamingClients is Single price than bit hotel early cost side store air.	2021-01-01 00:00:00	2021-01-01 00:00:00
17	AVReceivers&Amplifiers	2	AVReceivers&Amplifiers is Reason modern theory this course.	2021-01-01 00:00:00	2021-01-01 00:00:00
18	TowerSpeakers	2	TowerSpeakers is Stuff section mean cell allow side away painting.	2021-01-01 00:00:00	2021-01-01 00:00:00
19	3DGlasses	2	3DGlasses is Rate play eight body parent effect child.	2021-01-01 00:00:00	2021-01-01 00:00:00
20	SmartWatches	2	SmartWatches is Kitchen employee whatever finish determine.	2021-01-01 00:00:00	2021-01-01 00:00:00
21	PowerBanks	2	PowerBanks is Top including rule work include which concern.	2021-01-01 00:00:00	2021-01-01 00:00:00
22	Smartphones	2	Smartphones is Whose must check factor role baby difference concern.	2021-01-01 00:00:00	2021-01-01 00:00:00
23	MicroSD	2	MicroSD is Through during special person size news join.	2021-01-01 00:00:00	2021-01-01 00:00:00
24	BasicMobiles	2	BasicMobiles is Score event space five follow general through light student.	2021-01-01 00:00:00	2021-01-01 00:00:00
25	In-Ear	2	In-Ear is Central number north bank argue should baby collection.	2021-01-01 00:00:00	2021-01-01 00:00:00
26	AutomobileChargers	2	AutomobileChargers is Black maintain say child hotel.	2021-01-01 00:00:00	2021-01-01 00:00:00
27	Cradles	2	Cradles is Many bring home nation subject want commercial trial game.	2021-01-01 00:00:00	2021-01-01 00:00:00
28	WallChargers	2	WallChargers is Both notice order why right technology election agency product film.	2021-01-01 00:00:00	2021-01-01 00:00:00
29	OTGAdapters	2	OTGAdapters is Determine likely stay movie wish experience behavior large conference sit.	2021-01-01 00:00:00	2021-01-01 00:00:00
30	Tripods	2	Tripods is Subject check across recent buy start here power easy environment nearly.	2021-01-01 00:00:00	2021-01-01 00:00:00
31	SelfieSticks	2	SelfieSticks is Stay specific mouth fall to decide.	2021-01-01 00:00:00	2021-01-01 00:00:00
32	Stands	2	Stands is Story television population decide assume fly.	2021-01-01 00:00:00	2021-01-01 00:00:00
33	CableConnectionProtectors	1	CableConnectionProtectors is Wrong try street win stock.	2021-01-01 00:00:00	2021-01-01 00:00:00
34	Décor	2	Décor is Son local poor local song development once.	2021-01-01 00:00:00	2021-01-01 00:00:00
35	ScreenProtectors	2	ScreenProtectors is Them professor pick walk site born store out down.	2021-01-01 00:00:00	2021-01-01 00:00:00
36	StylusPens	2	StylusPens is Pattern clear be girl early.	2021-01-01 00:00:00	2021-01-01 00:00:00
37	Bedstand&DeskMounts	2	Bedstand&DeskMounts is Technology recently if west federal center against case recent sort.	2021-01-01 00:00:00	2021-01-01 00:00:00
38	BasicCases	2	BasicCases is Time cup another wear sort pass pick stand realize tough.	2021-01-01 00:00:00	2021-01-01 00:00:00
39	HandlebarMounts	2	HandlebarMounts is Bed vote few must party particular drive.	2021-01-01 00:00:00	2021-01-01 00:00:00
40	On-Ear	2	On-Ear is Upon second behind trip which everybody.	2021-01-01 00:00:00	2021-01-01 00:00:00
41	CameraPrivacyCovers	1	CameraPrivacyCovers is Account back rule international or across chance type no.	2021-01-01 00:00:00	2021-01-01 00:00:00
42	PhoneCharms	2	PhoneCharms is Read strategy owner audience side speech sign.	2021-01-01 00:00:00	2021-01-01 00:00:00
43	Shower&WallMounts	2	Shower&WallMounts is Where opportunity employee range eye front responsibility part team there.	2021-01-01 00:00:00	2021-01-01 00:00:00
44	PenDrives	1	PenDrives is Turn official other morning step development tonight.	2021-01-01 00:00:00	2021-01-01 00:00:00
45	Mice	1	Mice is Teach front century entire wrong around summer realize.	2021-01-01 00:00:00	2021-01-01 00:00:00
46	GraphicTablets	1	GraphicTablets is Site policy into herself well individual Mrs player add foreign.	2021-01-01 00:00:00	2021-01-01 00:00:00
47	Lapdesks	1	Lapdesks is According school young data how.	2021-01-01 00:00:00	2021-01-01 00:00:00
48	NotebookComputerStands	1	NotebookComputerStands is Notice include trade carry series enter police should economy hour often.	2021-01-01 00:00:00	2021-01-01 00:00:00
49	Keyboards	1	Keyboards is Head policy prepare every our money prepare site whatever left.	2021-01-01 00:00:00	2021-01-01 00:00:00
50	Condenser	3	Condenser is House appear trial nor product top describe agent.	2021-01-01 00:00:00	2021-01-01 00:00:00
51	DisposableBatteries	2	DisposableBatteries is Quality often everyone western begin marriage position someone.	2021-01-01 00:00:00	2021-01-01 00:00:00
52	GelInkRollerballPens	4	GelInkRollerballPens is Interest hundred seven including.	2021-01-01 00:00:00	2021-01-01 00:00:00
53	Tape	5	Tape is Sit issue professional economy include.	2021-01-01 00:00:00	2021-01-01 00:00:00
54	Keyboard&MouseSets	1	Keyboard&MouseSets is Care of real ago while debate project body you example.	2021-01-01 00:00:00	2021-01-01 00:00:00
55	ExternalHardDisks	1	ExternalHardDisks is Audience among must score attack people citizen PM poor.	2021-01-01 00:00:00	2021-01-01 00:00:00
56	VideoCameras	2	VideoCameras is Require standard subject hit southern card nation.	2021-01-01 00:00:00	2021-01-01 00:00:00
57	Tabletop&TravelTripods	2	Tabletop&TravelTripods is Institution budget card have issue beautiful story.	2021-01-01 00:00:00	2021-01-01 00:00:00
58	Scientific	4	Scientific is Letter first budget country blood American left.	2021-01-01 00:00:00	2021-01-01 00:00:00
59	Repeaters&Extenders	1	Repeaters&Extenders is Manage vote total shoulder any customer place civil.	2021-01-01 00:00:00	2021-01-01 00:00:00
60	TripodLegs	2	TripodLegs is Respond career wide change great recently.	2021-01-01 00:00:00	2021-01-01 00:00:00
61	InkjetInkCartridges	1	InkjetInkCartridges is Above wrong story writer offer tax court myself hand.	2021-01-01 00:00:00	2021-01-01 00:00:00
62	DustCovers	1	DustCovers is Policy into range hand national loss.	2021-01-01 00:00:00	2021-01-01 00:00:00
63	GamingMice	1	GamingMice is Employee be from environmental perform example build eight area.	2021-01-01 00:00:00	2021-01-01 00:00:00
64	Paints	5	Paints is Program offer edge democratic not edge amount thought strong medical.	2021-01-01 00:00:00	2021-01-01 00:00:00
65	MousePads	1	MousePads is Almost likely girl interest result executive economic bad full fall.	2021-01-01 00:00:00	2021-01-01 00:00:00
66	HardDiskBags	1	HardDiskBags is Should forget high movement likely officer.	2021-01-01 00:00:00	2021-01-01 00:00:00
67	Macro&RinglightFlashes	2	Macro&RinglightFlashes is Believe per be design none.	2021-01-01 00:00:00	2021-01-01 00:00:00
68	NetworkingDevices	1	NetworkingDevices is Old should people news church home consumer.	2021-01-01 00:00:00	2021-01-01 00:00:00
69	Routers	1	Routers is Raise end none control pay outside agree owner trial community network.	2021-01-01 00:00:00	2021-01-01 00:00:00
70	Over-Ear	2	Over-Ear is Feeling within box source sound.	2021-01-01 00:00:00	2021-01-01 00:00:00
71	BluetoothSpeakers	2	BluetoothSpeakers is Success fear let ability exactly a chair nature member own.	2021-01-01 00:00:00	2021-01-01 00:00:00
72	GeneralPurposeBatteries&BatteryChargers	2	GeneralPurposeBatteries&BatteryChargers is Such interesting rich third order by part language his somebody.	2021-01-01 00:00:00	2021-01-01 00:00:00
73	WireboundNotebooks	4	WireboundNotebooks is Career spring visit since usually.	2021-01-01 00:00:00	2021-01-01 00:00:00
74	RechargeableBatteries	2	RechargeableBatteries is Tree third ever series least wide line final hand.	2021-01-01 00:00:00	2021-01-01 00:00:00
75	BluetoothAdapters	1	BluetoothAdapters is Trouble computer enjoy rock.	2021-01-01 00:00:00	2021-01-01 00:00:00
76	USBtoUSBAdapters	1	USBtoUSBAdapters is Account money station hit fly number firm.	2021-01-01 00:00:00	2021-01-01 00:00:00
77	CompleteTripodUnits	2	CompleteTripodUnits is Religious commercial win street reduce.	2021-01-01 00:00:00	2021-01-01 00:00:00
78	Notepads&MemoBooks	4	Notepads&MemoBooks is Along between chance enjoy put low.	2021-01-01 00:00:00	2021-01-01 00:00:00
79	Film	2	Film is Place over himself pay.	2021-01-01 00:00:00	2021-01-01 00:00:00
80	Monitors	1	Monitors is Finish yeah pull sing American occur single article vote suddenly admit.	2021-01-01 00:00:00	2021-01-01 00:00:00
81	Lamps	1	Lamps is Father treatment any operation our maintain.	2021-01-01 00:00:00	2021-01-01 00:00:00
82	CleaningKits	2	CleaningKits is They political whatever visit so.	2021-01-01 00:00:00	2021-01-01 00:00:00
83	DomeCameras	2	DomeCameras is Some painting especially respond guess choose student nearly.	2021-01-01 00:00:00	2021-01-01 00:00:00
84	Gamepads	1	Gamepads is The wait beyond put ok do word member knowledge window.	2021-01-01 00:00:00	2021-01-01 00:00:00
85	Basic	4	Basic is Staff before pressure take dream.	2021-01-01 00:00:00	2021-01-01 00:00:00
86	USBHubs	1	USBHubs is Collection watch should reach sort animal agreement concern responsibility.	2021-01-01 00:00:00	2021-01-01 00:00:00
87	PCMicrophones	1	PCMicrophones is Former should create other point build pass bank.	2021-01-01 00:00:00	2021-01-01 00:00:00
88	OutdoorSpeakers	2	OutdoorSpeakers is Large Mr everything it part case technology seven theory.	2021-01-01 00:00:00	2021-01-01 00:00:00
89	LaptopSleeves&Slipcases	1	LaptopSleeves&Slipcases is Hard else art recently get we arrive.	2021-01-01 00:00:00	2021-01-01 00:00:00
90	ExternalMemoryCardReaders	1	ExternalMemoryCardReaders is Ask challenge nearly huge voice figure page identify scene.	2021-01-01 00:00:00	2021-01-01 00:00:00
91	BottledInk	4	BottledInk is Recent thought Democrat reach leader open relate.	2021-01-01 00:00:00	2021-01-01 00:00:00
92	CompositionNotebooks	4	CompositionNotebooks is Blood indicate me power prepare half dog early.	2021-01-01 00:00:00	2021-01-01 00:00:00
93	RetractableBallpointPens	4	RetractableBallpointPens is Effect someone also citizen better quality everybody girl left.	2021-01-01 00:00:00	2021-01-01 00:00:00
94	EthernetCables	1	EthernetCables is Several yes ahead admit industry Congress mind network list smile.	2021-01-01 00:00:00	2021-01-01 00:00:00
95	Memory	1	Memory is Over leg area computer sell scientist land action feeling myself.	2021-01-01 00:00:00	2021-01-01 00:00:00
96	UninterruptedPowerSupplies	1	UninterruptedPowerSupplies is Course player raise truth weight throw.	2021-01-01 00:00:00	2021-01-01 00:00:00
97	Cases	2	Cases is Treatment account detail either similar suggest increase garden.	2021-01-01 00:00:00	2021-01-01 00:00:00
98	SecureDigitalCards	2	SecureDigitalCards is Often hotel night admit claim available their allow early.	2021-01-01 00:00:00	2021-01-01 00:00:00
99	SelfieLights	2	SelfieLights is Father network they chair operation occur laugh him born.	2021-01-01 00:00:00	2021-01-01 00:00:00
100	Webcams	1	Webcams is Tree figure growth reason decade model could girl.	2021-01-01 00:00:00	2021-01-01 00:00:00
101	CoolingPads	1	CoolingPads is Others direction reality generation state very dog learn several painting.	2021-01-01 00:00:00	2021-01-01 00:00:00
102	LaptopAccessories	1	LaptopAccessories is Data road spend too police that poor state material government.	2021-01-01 00:00:00	2021-01-01 00:00:00
103	Adapters&Multi-Outlets	6	Adapters&Multi-Outlets is Tonight fish stop view seem into any institution area reach.	2021-01-01 00:00:00	2021-01-01 00:00:00
104	ColouredPaper	4	ColouredPaper is Whatever claim hair real also.	2021-01-01 00:00:00	2021-01-01 00:00:00
105	InternalSolidStateDrives	1	InternalSolidStateDrives is Identify base local yeah either skill development clear throw.	2021-01-01 00:00:00	2021-01-01 00:00:00
106	MultimediaSpeakerSystems	2	MultimediaSpeakerSystems is Argue room treat defense glass now simple morning.	2021-01-01 00:00:00	2021-01-01 00:00:00
107	DataCards&Dongles	1	DataCards&Dongles is Accept another father almost garden party theory perhaps.	2021-01-01 00:00:00	2021-01-01 00:00:00
108	LaptopChargers&PowerSupplies	1	LaptopChargers&PowerSupplies is Act board research window protect rest hit produce.	2021-01-01 00:00:00	2021-01-01 00:00:00
109	PCSpeakers	1	PCSpeakers is Friend its cold fact whether oil.	2021-01-01 00:00:00	2021-01-01 00:00:00
110	BatteryChargers	2	BatteryChargers is After western yes seat indicate tax up.	2021-01-01 00:00:00	2021-01-01 00:00:00
111	StickBallpointPens	4	StickBallpointPens is Herself than play long anything plant behind.	2021-01-01 00:00:00	2021-01-01 00:00:00
112	WoodenPencils	5	WoodenPencils is Color draw after whatever experience across.	2021-01-01 00:00:00	2021-01-01 00:00:00
113	InternalHardDrives	1	InternalHardDrives is Able trial catch quite week get sister herself.	2021-01-01 00:00:00	2021-01-01 00:00:00
114	Printers	1	Printers is Dog blood machine morning crime story even parent.	2021-01-01 00:00:00	2021-01-01 00:00:00
115	Pens	5	Pens is Million force big garden Mr onto several ten.	2021-01-01 00:00:00	2021-01-01 00:00:00
116	SATACables	1	SATACables is Boy trip ever foot training total realize girl determine.	2021-01-01 00:00:00	2021-01-01 00:00:00
117	PCHeadsets	1	PCHeadsets is Black describe or wall.	2021-01-01 00:00:00	2021-01-01 00:00:00
118	GamingKeyboards	1	GamingKeyboards is Likely program quickly believe war bed loss.	2021-01-01 00:00:00	2021-01-01 00:00:00
119	SoundbarSpeakers	2	SoundbarSpeakers is Best money although fall range teach.	2021-01-01 00:00:00	2021-01-01 00:00:00
120	Earpads	2	Earpads is Road doctor our economic since.	2021-01-01 00:00:00	2021-01-01 00:00:00
121	InkjetPrinters	1	InkjetPrinters is Determine western last matter consider.	2021-01-01 00:00:00	2021-01-01 00:00:00
122	ColouringPens&Markers	7	ColouringPens&Markers is Technology son month whatever thousand hold mean.	2021-01-01 00:00:00	2021-01-01 00:00:00
123	Headsets	1	Headsets is Shake perhaps speech success involve executive issue choice.	2021-01-01 00:00:00	2021-01-01 00:00:00
124	ExternalSolidStateDrives	1	ExternalSolidStateDrives is Owner parent should character every bit.	2021-01-01 00:00:00	2021-01-01 00:00:00
125	PowerLANAdapters	1	PowerLANAdapters is Hear safe study fund almost same attorney open.	2021-01-01 00:00:00	2021-01-01 00:00:00
126	InkjetInkRefills&Kits	1	InkjetInkRefills&Kits is Free exist growth politics treatment.	2021-01-01 00:00:00	2021-01-01 00:00:00
127	Notebooks,WritingPads&Diaries	4	Notebooks,WritingPads&Diaries is Dog central describe pressure reduce.	2021-01-01 00:00:00	2021-01-01 00:00:00
128	BackgroundSupports	2	BackgroundSupports is Man college spend film defense arm.	2021-01-01 00:00:00	2021-01-01 00:00:00
129	Financial&Business	4	Financial&Business is Suggest head test compare whatever.	2021-01-01 00:00:00	2021-01-01 00:00:00
130	SurgeProtectors	2	SurgeProtectors is Rich never for cause kind former.	2021-01-01 00:00:00	2021-01-01 00:00:00
131	Tablets	1	Tablets is Same think significant with including herself open least matter vote.	2021-01-01 00:00:00	2021-01-01 00:00:00
132	CordManagement	6	CordManagement is Standard public animal do white class should herself.	2021-01-01 00:00:00	2021-01-01 00:00:00
133	PaintingMaterials	5	PaintingMaterials is South true daughter watch young.	2021-01-01 00:00:00	2021-01-01 00:00:00
134	TonerCartridges	1	TonerCartridges is Good speak west million attorney color say message wish.	2021-01-01 00:00:00	2021-01-01 00:00:00
135	LiquidInkRollerballPens	4	LiquidInkRollerballPens is Require site understand deep our hope.	2021-01-01 00:00:00	2021-01-01 00:00:00
136	FountainPens	4	FountainPens is Agree he up technology already with.	2021-01-01 00:00:00	2021-01-01 00:00:00
137	Caddies	1	Caddies is Week peace it wrong push deep.	2021-01-01 00:00:00	2021-01-01 00:00:00
138	TraditionalLaptops	1	TraditionalLaptops is Cold culture sell reach treatment house.	2021-01-01 00:00:00	2021-01-01 00:00:00
139	ElectricKettles	5	ElectricKettles is Nothing boy case free lead dream these least heavy decide piece.	2021-01-01 00:00:00	2021-01-01 00:00:00
140	ElectricHeaters	5	ElectricHeaters is Start eat data responsibility short technology sure especially save.	2021-01-01 00:00:00	2021-01-01 00:00:00
141	FanHeaters	5	FanHeaters is Bit issue way director team left finally allow.	2021-01-01 00:00:00	2021-01-01 00:00:00
142	LintShavers	5	LintShavers is Prepare will charge play smile final avoid last firm rule.	2021-01-01 00:00:00	2021-01-01 00:00:00
143	DigitalKitchenScales	5	DigitalKitchenScales is Type care important tax impact or free room sometimes song buy.	2021-01-01 00:00:00	2021-01-01 00:00:00
144	Choppers	5	Choppers is Product enough about magazine among option plan gas professor fast leg.	2021-01-01 00:00:00	2021-01-01 00:00:00
145	InductionCooktop	5	InductionCooktop is Owner space indicate defense name.	2021-01-01 00:00:00	2021-01-01 00:00:00
146	HandBlenders	5	HandBlenders is Fine land there some.	2021-01-01 00:00:00	2021-01-01 00:00:00
147	DryIrons	5	DryIrons is Central environment sport company north run wish finish what than.	2021-01-01 00:00:00	2021-01-01 00:00:00
148	MixerGrinders	5	MixerGrinders is Your ahead plant difference enough letter agree.	2021-01-01 00:00:00	2021-01-01 00:00:00
149	InstantWaterHeaters	5	InstantWaterHeaters is Effort few stock one eight far allow.	2021-01-01 00:00:00	2021-01-01 00:00:00
150	RoomHeaters	5	RoomHeaters is Also through experience consumer sound detail.	2021-01-01 00:00:00	2021-01-01 00:00:00
151	Kettle&ToasterSets	5	Kettle&ToasterSets is Provide western main somebody chance one kid laugh.	2021-01-01 00:00:00	2021-01-01 00:00:00
152	StorageWaterHeaters	5	StorageWaterHeaters is Office few wind democratic mother simply note why Democrat.	2021-01-01 00:00:00	2021-01-01 00:00:00
153	ImmersionRods	5	ImmersionRods is Nation section measure lay world quite both.	2021-01-01 00:00:00	2021-01-01 00:00:00
154	AirFryers	5	AirFryers is Present likely but this reflect.	2021-01-01 00:00:00	2021-01-01 00:00:00
155	LaundryBaskets	5	LaundryBaskets is Tend development in benefit home until middle herself well study.	2021-01-01 00:00:00	2021-01-01 00:00:00
156	SteamIrons	5	SteamIrons is Drop current leg six beyond reason treat sign sound.	2021-01-01 00:00:00	2021-01-01 00:00:00
157	JuicerMixerGrinders	5	JuicerMixerGrinders is Choose position station participant agency whether air.	2021-01-01 00:00:00	2021-01-01 00:00:00
158	HandheldVacuums	5	HandheldVacuums is Able commercial late by they close tax world mean.	2021-01-01 00:00:00	2021-01-01 00:00:00
159	EggBoilers	5	EggBoilers is Subject north society ready collection none.	2021-01-01 00:00:00	2021-01-01 00:00:00
160	SandwichMakers	5	SandwichMakers is Issue participant head huge carry area own.	2021-01-01 00:00:00	2021-01-01 00:00:00
161	MiniFoodProcessors&Choppers	5	MiniFoodProcessors&Choppers is Operation should material see factor friend nothing tree enter.	2021-01-01 00:00:00	2021-01-01 00:00:00
162	DigitalScales	5	DigitalScales is Position but never should certainly third site prevent.	2021-01-01 00:00:00	2021-01-01 00:00:00
163	VacuumSealers	5	VacuumSealers is However center kind including manage stop best product vote so.	2021-01-01 00:00:00	2021-01-01 00:00:00
164	CeilingFans	5	CeilingFans is Present three tax national often education.	2021-01-01 00:00:00	2021-01-01 00:00:00
165	CanisterVacuums	5	CanisterVacuums is Body once use idea through paper save low woman safe.	2021-01-01 00:00:00	2021-01-01 00:00:00
166	PressureWashers,Steam&WindowCleaners	5	PressureWashers,Steam&WindowCleaners is True would they almost morning authority bed stop specific.	2021-01-01 00:00:00	2021-01-01 00:00:00
167	HalogenHeaters	5	HalogenHeaters is Will major lot force discuss thousand summer board.	2021-01-01 00:00:00	2021-01-01 00:00:00
168	Pop-upToasters	5	Pop-upToasters is Point though read nearly allow difficult system however already prevent.	2021-01-01 00:00:00	2021-01-01 00:00:00
169	HeatConvectors	5	HeatConvectors is Chance however office sense admit think.	2021-01-01 00:00:00	2021-01-01 00:00:00
170	ElectricGrinders	5	ElectricGrinders is Indeed if they clearly development past.	2021-01-01 00:00:00	2021-01-01 00:00:00
171	ExhaustFans	5	ExhaustFans is Three once or clearly develop either central detail.	2021-01-01 00:00:00	2021-01-01 00:00:00
172	DripCoffeeMachines	5	DripCoffeeMachines is Activity your work cover beyond task direction become although scientist.	2021-01-01 00:00:00	2021-01-01 00:00:00
173	WaterPurifierAccessories	5	WaterPurifierAccessories is Military continue down check them.	2021-01-01 00:00:00	2021-01-01 00:00:00
174	WaterCartridges	5	WaterCartridges is Yeah his along daughter off probably mission position card front.	2021-01-01 00:00:00	2021-01-01 00:00:00
175	Rice&PastaCookers	5	Rice&PastaCookers is Big collection realize mind break right cover kind resource.	2021-01-01 00:00:00	2021-01-01 00:00:00
176	AirPurifiers&Ionizers	8	AirPurifiers&Ionizers is Morning little her total current left quite.	2021-01-01 00:00:00	2021-01-01 00:00:00
177	Wet-DryVacuums	5	Wet-DryVacuums is Mouth some order thousand upon local word treatment school thousand.	2021-01-01 00:00:00	2021-01-01 00:00:00
178	HEPAAirPurifiers	5	HEPAAirPurifiers is Tonight threat national trial page thus learn.	2021-01-01 00:00:00	2021-01-01 00:00:00
179	WaterFilters&Purifiers	5	WaterFilters&Purifiers is Hard better somebody only time political question.	2021-01-01 00:00:00	2021-01-01 00:00:00
180	LaundryBags	5	LaundryBags is Example partner news human describe art exactly year first two themselves.	2021-01-01 00:00:00	2021-01-01 00:00:00
181	Sewing&EmbroideryMachines	5	Sewing&EmbroideryMachines is Force six throw if notice pull sort wall.	2021-01-01 00:00:00	2021-01-01 00:00:00
182	SprayBottles	5	SprayBottles is Enter these series approach break attention sell vote.	2021-01-01 00:00:00	2021-01-01 00:00:00
183	HandMixers	5	HandMixers is Until pretty board only far material system reality.	2021-01-01 00:00:00	2021-01-01 00:00:00
184	WetGrinders	5	WetGrinders is Think speak we what I stop must rule deal.	2021-01-01 00:00:00	2021-01-01 00:00:00
185	OvenToasterGrills	5	OvenToasterGrills is Summer court data democratic listen.	2021-01-01 00:00:00	2021-01-01 00:00:00
186	Juicers	5	Juicers is Story tend affect above participant single.	2021-01-01 00:00:00	2021-01-01 00:00:00
187	SmallKitchenAppliances	5	SmallKitchenAppliances is Everything she wind wish remember money pass partner large.	2021-01-01 00:00:00	2021-01-01 00:00:00
188	DigitalBathroomScales	9	DigitalBathroomScales is Compare over despite military light clear.	2021-01-01 00:00:00	2021-01-01 00:00:00
189	EspressoMachines	5	EspressoMachines is Activity will serve ago message.	2021-01-01 00:00:00	2021-01-01 00:00:00
190	TableFans	5	TableFans is About station ever live air early seven character.	2021-01-01 00:00:00	2021-01-01 00:00:00
191	MilkFrothers	5	MilkFrothers is May manage social building democratic paper realize minute.	2021-01-01 00:00:00	2021-01-01 00:00:00
192	Humidifiers	5	Humidifiers is Four energy type reach spend hit rise information make.	2021-01-01 00:00:00	2021-01-01 00:00:00
193	StandMixerAccessories	5	StandMixerAccessories is Long another item anyone whether room everyone worry.	2021-01-01 00:00:00	2021-01-01 00:00:00
194	RoboticVacuums	5	RoboticVacuums is Describe able official about machine deep room space executive year win.	2021-01-01 00:00:00	2021-01-01 00:00:00
195	YogurtMakers	5	YogurtMakers is Community ball site list news yourself thus tough.	2021-01-01 00:00:00	2021-01-01 00:00:00
196	ColdPressJuicers	5	ColdPressJuicers is Wife court war believe buy hundred check free see very.	2021-01-01 00:00:00	2021-01-01 00:00:00
197	Split-SystemAirConditioners	5	Split-SystemAirConditioners is Statement bad any conference space sell yourself century simply.	2021-01-01 00:00:00	2021-01-01 00:00:00
198	SmallApplianceParts&Accessories	5	SmallApplianceParts&Accessories is Recent ask half eight return old issue behavior.	2021-01-01 00:00:00	2021-01-01 00:00:00
199	WaffleMakers&Irons	5	WaffleMakers&Irons is Least person a often image feel.	2021-01-01 00:00:00	2021-01-01 00:00:00
200	StovetopEspressoPots	5	StovetopEspressoPots is Marriage evidence great take dream.	2021-01-01 00:00:00	2021-01-01 00:00:00
201	MeasuringSpoons	5	MeasuringSpoons is Operation entire talk type perform even movie everything.	2021-01-01 00:00:00	2021-01-01 00:00:00
202	CoffeePresses	5	CoffeePresses is Behind street inside sort this no choice hear record film describe.	2021-01-01 00:00:00	2021-01-01 00:00:00
203	RotiMakers	5	RotiMakers is Out various ability garden network but thus could news Mr.	2021-01-01 00:00:00	2021-01-01 00:00:00
204	FanParts&Accessories	5	FanParts&Accessories is Development level it life two sea both.	2021-01-01 00:00:00	2021-01-01 00:00:00
205	StandMixers	5	StandMixers is Trade ten role expert long.	2021-01-01 00:00:00	2021-01-01 00:00:00
206	PedestalFans	5	PedestalFans is Growth imagine let least few from everything campaign.	2021-01-01 00:00:00	2021-01-01 00:00:00
207	HandheldBags	5	HandheldBags is Subject smile owner history fund.	2021-01-01 00:00:00	2021-01-01 00:00:00
\.


--
-- Name: category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_category_id_seq', 1, false);


--
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_customer_id_seq', 1, false);


--
-- Name: order_detail_order_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_detail_order_detail_id_seq', 1, false);


--
-- Name: subcategory_subcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subcategory_subcategory_id_seq', 1, false);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- Name: order_detail order_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_pkey PRIMARY KEY (order_detail_id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- Name: subcategory subcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subcategory
    ADD CONSTRAINT subcategory_pkey PRIMARY KEY (subcategory_id);


--
-- Name: subcategory fk_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subcategory
    ADD CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES public.category(category_id);


--
-- Name: orders fk_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);


--
-- Name: order_detail fk_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES public.orders(order_id);


--
-- Name: order_detail fk_product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES public.product(product_id);


--
-- Name: product fk_subcategory; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk_subcategory FOREIGN KEY (subcategory_id) REFERENCES public.subcategory(subcategory_id);


--
-- Name: order_detail order_detail_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id) ON DELETE CASCADE;


--
-- Name: order_detail order_detail_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id) ON DELETE CASCADE;


--
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id) ON DELETE CASCADE;


--
-- Name: product product_subcategory_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_subcategory_id_fkey FOREIGN KEY (subcategory_id) REFERENCES public.subcategory(subcategory_id) ON DELETE CASCADE;


--
-- Name: subcategory subcategory_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subcategory
    ADD CONSTRAINT subcategory_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(category_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

