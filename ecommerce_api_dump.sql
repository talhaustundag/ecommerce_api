--
-- PostgreSQL database dump
--

\restrict eVWhqrsfFBoyjyosNQ5PTp3UhxsvfnfTDCOIIGghsaJBbDfLka50K5sWE2G4DN1

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-18 15:07:40

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 235 (class 1259 OID 24679)
-- Name: cart_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart_items (
    id bigint NOT NULL,
    cart_id bigint NOT NULL,
    product_id bigint NOT NULL,
    quantity integer DEFAULT 1 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.cart_items OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 24678)
-- Name: cart_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cart_items_id_seq OWNER TO postgres;

--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 234
-- Name: cart_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_items_id_seq OWNED BY public.cart_items.id;


--
-- TOC entry 233 (class 1259 OID 24671)
-- Name: carts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carts (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.carts OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 24670)
-- Name: carts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.carts_id_seq OWNER TO postgres;

--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 232
-- Name: carts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;


--
-- TOC entry 229 (class 1259 OID 24649)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 24648)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO postgres;

--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 228
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 225 (class 1259 OID 24613)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24612)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 224
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 220 (class 1259 OID 24578)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24577)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 219
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 239 (class 1259 OID 24695)
-- Name: order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_items (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    product_id bigint NOT NULL,
    quantity integer DEFAULT 1 NOT NULL,
    price numeric(10,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.order_items OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 24694)
-- Name: order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_items_id_seq OWNER TO postgres;

--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 238
-- Name: order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;


--
-- TOC entry 237 (class 1259 OID 24687)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    total_amount numeric(10,2) NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 24686)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO postgres;

--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 236
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- TOC entry 223 (class 1259 OID 24603)
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 24632)
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 24631)
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 226
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- TOC entry 231 (class 1259 OID 24660)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    price numeric(10,2) NOT NULL,
    stock integer,
    category_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    brand character varying(255)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 24659)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO postgres;

--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 230
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 222 (class 1259 OID 24588)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    role integer NOT NULL,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24587)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4812 (class 2604 OID 24682)
-- Name: cart_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items ALTER COLUMN id SET DEFAULT nextval('public.cart_items_id_seq'::regclass);


--
-- TOC entry 4811 (class 2604 OID 24674)
-- Name: carts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);


--
-- TOC entry 4809 (class 2604 OID 24652)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 4806 (class 2604 OID 24616)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 4804 (class 2604 OID 24581)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 4816 (class 2604 OID 24698)
-- Name: order_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items ALTER COLUMN id SET DEFAULT nextval('public.order_items_id_seq'::regclass);


--
-- TOC entry 4814 (class 2604 OID 24690)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 4808 (class 2604 OID 24635)
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- TOC entry 4810 (class 2604 OID 24663)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 4805 (class 2604 OID 24591)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 5017 (class 0 OID 24679)
-- Dependencies: 235
-- Data for Name: cart_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart_items (id, cart_id, product_id, quantity, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5015 (class 0 OID 24671)
-- Dependencies: 233
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carts (id, user_id, created_at, updated_at) FROM stdin;
1	1	2025-11-16 10:06:17	2025-11-16 10:06:17
2	2	2025-11-17 12:44:09	2025-11-17 12:44:09
\.


--
-- TOC entry 5011 (class 0 OID 24649)
-- Dependencies: 229
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name, description, created_at, updated_at) FROM stdin;
2	Laptop	\N	2025-11-15 21:02:46	2025-11-15 21:03:21
1	Telefon	\N	2025-11-15 20:58:49	2025-11-15 21:01:44
3	Ayakkabı	\N	2025-11-15 21:02:46	2025-11-15 21:03:21
4	Kişisel Bakım	\N	2025-11-15 21:02:46	2025-11-15 21:03:21
5	Kitap	\N	2025-11-15 21:02:46	2025-11-15 21:03:21
7	Yeni Kategori	\N	2025-11-17 12:16:32	2025-11-17 12:16:32
8	Yeni Kategori	\N	2025-11-17 12:16:35	2025-11-17 12:16:35
\.


--
-- TOC entry 5007 (class 0 OID 24613)
-- Dependencies: 225
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- TOC entry 5002 (class 0 OID 24578)
-- Dependencies: 220
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_reset_tokens_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
5	2025_11_15_104856_create_categories_table	1
6	2025_11_15_105037_create_products_table	1
7	2025_11_15_105339_create_carts_table	1
8	2025_11_15_105429_create_cart_items_table	1
9	2025_11_15_105544_create_orders_table	1
10	2025_11_15_105718_create_order_items_table	1
11	2025_11_15_210723_update_products_table	2
12	2025_11_16_095840_update_cart_tables	3
13	2025_11_16_101315_update_orders_tables	4
\.


--
-- TOC entry 5021 (class 0 OID 24695)
-- Dependencies: 239
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_items (id, order_id, product_id, quantity, price, created_at, updated_at) FROM stdin;
1	1	1	3	55999.00	2025-11-16 10:26:55	2025-11-16 10:26:55
2	2	1	4	55999.00	2025-11-16 15:09:31	2025-11-16 15:09:31
3	3	1	3	55999.00	2025-11-16 22:29:21	2025-11-16 22:29:21
4	4	1	3	55999.00	2025-11-16 22:34:39	2025-11-16 22:34:39
5	5	1	3	55999.00	2025-11-16 22:36:04	2025-11-16 22:36:04
6	6	1	3	55999.00	2025-11-16 22:43:54	2025-11-16 22:43:54
7	7	1	3	55999.00	2025-11-16 22:51:24	2025-11-16 22:51:24
8	8	1	3	55999.00	2025-11-16 22:52:40	2025-11-16 22:52:40
9	9	1	3	55999.00	2025-11-16 22:54:01	2025-11-16 22:54:01
10	10	1	2	55999.00	2025-11-17 08:31:42	2025-11-17 08:31:42
11	11	16	1	500.00	2025-11-17 13:36:41	2025-11-17 13:36:41
12	11	15	1	5400.00	2025-11-17 13:36:41	2025-11-17 13:36:41
\.


--
-- TOC entry 5019 (class 0 OID 24687)
-- Dependencies: 237
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, user_id, total_amount, status, created_at, updated_at) FROM stdin;
1	1	167997.00	pending	2025-11-16 10:26:55	2025-11-16 10:26:55
2	1	223996.00	pending	2025-11-16 15:09:31	2025-11-16 15:09:31
3	1	167997.00	pending	2025-11-16 22:29:21	2025-11-16 22:29:21
4	1	167997.00	pending	2025-11-16 22:34:39	2025-11-16 22:34:39
5	1	167997.00	pending	2025-11-16 22:36:04	2025-11-16 22:36:04
6	1	167997.00	pending	2025-11-16 22:43:54	2025-11-16 22:43:54
7	1	167997.00	pending	2025-11-16 22:51:24	2025-11-16 22:51:24
8	1	167997.00	pending	2025-11-16 22:52:40	2025-11-16 22:52:40
9	1	167997.00	pending	2025-11-16 22:54:01	2025-11-16 22:54:01
10	1	111998.00	beklemede	2025-11-17 08:31:42	2025-11-17 08:31:42
11	2	5900.00	hazırlanıyor	2025-11-17 13:36:41	2025-11-17 14:42:22
\.


--
-- TOC entry 5005 (class 0 OID 24603)
-- Dependencies: 223
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- TOC entry 5009 (class 0 OID 24632)
-- Dependencies: 227
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
1	App\\Models\\User	1	my-app-token	c19c8079f874158d21cad30f1aeb8bf5825865a2473eda815cffb5d037752585	["*"]	\N	\N	2025-11-15 13:45:48	2025-11-15 13:45:48
2	App\\Models\\User	1	my-app-token	b8a08503ff6206c698b34477b19635973d8e845a16ff5e51b40048e35973d410	["*"]	\N	\N	2025-11-15 13:48:36	2025-11-15 13:48:36
4	App\\Models\\User	1	my-app-token	f4813dcec4489346b132587d5ac71c9eeed2caf19b4e1acd295dd0d16a26fcf5	["*"]	2025-11-15 20:49:58	\N	2025-11-15 16:02:00	2025-11-15 20:49:58
3	App\\Models\\User	1	my-app-token	aeafcf91098fbfde169c0d5699d5e64da8169cf42cf3ee200d349573c72a7a45	["*"]	2025-11-15 16:00:07	\N	2025-11-15 14:15:47	2025-11-15 16:00:07
16	App\\Models\\User	2	my-app-token	e87ed6a8f73580074a920de3a3ac44f8f0d76df9ff8d93b5257983a5ea99d41c	["*"]	\N	\N	2025-11-17 14:41:01	2025-11-17 14:41:01
5	App\\Models\\User	1	my-app-token	6991032a992b840f9f28213716fd035612260f39437ba7b605f8f9d9a10fe86b	["*"]	2025-11-17 08:35:25	\N	2025-11-15 20:50:02	2025-11-17 08:35:25
6	App\\Models\\User	2	my-app-token	5b95ffebd5b53721f2cc5300380e0b289d7a4c989936f1fb7cf6bbecbd4a7eb1	["*"]	\N	\N	2025-11-17 08:51:55	2025-11-17 08:51:55
7	App\\Models\\User	2	my-app-token	0310e81355525f606085e5279b9768773b937a13f3064f840749909105b7bb16	["*"]	\N	\N	2025-11-17 08:56:47	2025-11-17 08:56:47
8	App\\Models\\User	2	my-app-token	30e1701853c63be8d44a40c4ead7f1fd7044a756b136d4df52bbd9cb9082c191	["*"]	\N	\N	2025-11-17 09:00:41	2025-11-17 09:00:41
9	App\\Models\\User	3	my-app-token	706e860fbde528f071e50f612030564206a9e2ed919375eafeee7283c046f776	["*"]	\N	\N	2025-11-17 09:06:14	2025-11-17 09:06:14
10	App\\Models\\User	2	my-app-token	2c280ce53a3b183cdb8f147fe59126791b722ae4647d54093708360b0b6fdb53	["*"]	\N	\N	2025-11-17 09:07:24	2025-11-17 09:07:24
12	App\\Models\\User	4	my-app-token	1413cf033ff6e6a79ae51d7683f44b836d4d3696bf737f19bc4ec53e64422464	["*"]	\N	\N	2025-11-17 11:47:51	2025-11-17 11:47:51
13	App\\Models\\User	3	my-app-token	e2c1a99cf7c300e155052291e69b45f109336a34a514f68509fe54a8f328b359	["*"]	2025-11-17 12:00:13	\N	2025-11-17 11:57:10	2025-11-17 12:00:13
11	App\\Models\\User	2	my-app-token	ccf3048a95b7819d7884160eb4ec8de58e63096581429722eee1ba96c4d87b08	["*"]	2025-11-18 10:54:05	\N	2025-11-17 11:45:44	2025-11-18 10:54:05
14	App\\Models\\User	2	my-app-token	c79ef791d1352c65c4efa78460d81b6aaf47af2a913eeae93a210cefa630075b	["*"]	\N	\N	2025-11-17 12:13:17	2025-11-17 12:13:17
15	App\\Models\\User	3	my-app-token	28b32d41126c2d6260894f8bf92506a4d7e849109801bbfcde098289205bbb73	["*"]	2025-11-17 13:47:25	\N	2025-11-17 13:47:14	2025-11-17 13:47:25
\.


--
-- TOC entry 5013 (class 0 OID 24660)
-- Dependencies: 231
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, description, price, stock, category_id, created_at, updated_at, brand) FROM stdin;
15	Nike Sneakers	İkonik birimiyle rahatlık sağlar, günlük kullanım için klasik bir model.	5400.00	31	3	2025-11-15 21:25:11	2025-11-17 13:36:41	Nike
28	Yeni Ürün 1	Yeni Ürün Detayı	15.00	10	5	2025-11-17 12:36:26	2025-11-17 14:41:29	Marka
2	Iphone 17 Pro Max	256 GB	128000.00	10	1	2025-11-15 21:25:46	2025-11-15 21:25:46	Apple
1	Iphone 15 Pro	256 GB	55999.00	15	1	2025-11-15 21:25:11	2025-11-17 08:31:42	Apple
3	Xiaomi mi9t 128 gb	harika kalite	15000.00	25	1	2025-11-16 10:43:09	2025-11-16 10:46:56	Xiaomi
4	Huawei Note 9	64 GB Mavi	10000.00	5	1	2025-11-15 21:25:11	2025-11-17 08:31:42	Huawei
5	Samsung Galaxy Note 5	128 GB Siyah	5999.00	8	1	2025-11-15 21:25:11	2025-11-17 08:31:42	Samsung
6	Dell XPS 13	Dayanıklı yapı, taşınabilirlik ve uzun batarya süresi ile profesyoneller ve öğrenciler için ideal.	79000.00	14	2	2025-11-15 21:25:11	2025-11-17 08:31:42	Dell
7	Apple MacBook Air M2	Apple’ın M2 çipi sayesinde hem güçlü hem de enerji verimli çalışır.	36000.00	18	2	2025-11-15 21:25:11	2025-11-17 08:31:42	Apple
8	Lenovo ThinkPad X1 Carbon	Hafif olmasına rağmen iş odaklı performans sunar. ThinkPad’lerde genelde iyi servis ağı da vardır.	28000.00	19	2	2025-11-15 21:25:11	2025-11-17 08:31:42	Lenovo
9	Asus ROG Zephyrus G14	Asus’un ROG (Republic of Gamers) serisinden; oyun ve yüksek performans için tasarlanmış.	59000.00	4	2	2025-11-15 21:25:11	2025-11-17 08:31:42	Asus
10	HP Spectre x360	Tasarım açısından şık, dokunmatik ekranlı, grafik işleri, sunum veya genel kullanım için çok uygun.	75000.00	13	2	2025-11-15 21:25:11	2025-11-17 08:31:42	HP
11	Adidas Terrex SkychaserGTX	Su geçirmez Gore‑Tex membranlı outdoor ayakkabı; patika koşusu ve trekking için uygun.	4500.00	46	3	2025-11-15 21:25:11	2025-11-17 08:31:42	Adidas
12	Nike Air Max90	İkonik “Max Air” hava birimiyle rahat yastıklama sağlar, günlük kullanım için klasik bir model	5200.00	38	3	2025-11-15 21:25:11	2025-11-17 08:31:42	Nike
13	New Balance574	Retro görünüm + EVA yastıklama, hem konforlu hem sağlam.	5900.00	30	3	2025-11-15 21:25:11	2025-11-17 08:31:42	New Balance
14	New Balance529	Hem konforlu hem sağlam.	5500.00	31	3	2025-11-15 21:25:11	2025-11-17 08:31:42	New Balance
17	Head & Shoulders Derinlemesine Temiz Kaşıntı Şampuan	Kepek ve kaşıntı problemine yönelik, saç derisini derinlemesine temizleyen formül.	400.00	94	4	2025-11-15 21:25:11	2025-11-17 08:31:42	Head & Shoulders
18	Head & Shoulders Deep Cleansing Duş Jeli & Şampuan	Saç, yüz ve vücut için kullanılabilen çok yönlü bir temizlik jeli — hem duş jeli hem de şampuan işlevi görüyor.	420.00	88	4	2025-11-15 21:25:11	2025-11-17 08:31:42	Head & Shoulders
19	Nivea Men Sport Duş Jeli	Erkekler için, spor sonrası ferahlık veren duş jeli; taze kokulu ve canlandırıcı.	125.00	56	4	2025-11-15 21:25:11	2025-11-17 08:31:42	Nivea
20	Dove Bond Intense Repair Şampuan	Saçı onarmaya yardımcı olan bağ güçlendirici (bond) teknolojisiyle hasarlı saçlar için ideal.	150.00	44	4	2025-11-15 21:25:11	2025-11-17 08:31:42	Dove
21	Kürk Mantolu Madonna	Sabahattin Ali: Aşk, yalnızlık ve içsel çatışmalar. Türk edebiyatının en sevilen klasiklerinden.	90.00	6	5	2025-11-15 21:25:11	2025-11-17 08:31:42	Sabahattin Ali
22	İtiraflar	Batı Klasikleri	80.00	44	5	2025-11-15 21:25:11	2025-11-17 08:31:42	J.J. Rousseau
23	Kumarbaz	Klasikler Dizisi	35.00	39	5	2025-11-15 21:25:11	2025-11-17 08:31:42	Dostoyevski
24	Suç ve Ceza	Klasikler Dizisi	400.00	32	5	2025-11-15 21:25:11	2025-11-17 08:31:42	Dostoyevski
25	Harry Potter	7 Kitaplık Serinin Tamamı Tek Paket Halinde.	2600.00	5	5	2025-11-15 21:25:11	2025-11-17 08:31:42	J.K. Rowling
26	Yeni Ürün	Yeni Ürün Detayı	15.00	10	1	2025-11-17 12:36:00	2025-11-17 12:36:00	Marka
27	Yeni Ürün	Yeni Ürün Detayı	15.00	10	5	2025-11-17 12:36:10	2025-11-17 12:36:10	Marka
30	Yeni Ürün	Yeni Ürün Detayı	15.00	10	5	2025-11-17 12:40:38	2025-11-17 12:40:38	Marka
16	Collagen Biotin & Hacim Şampuan	Saç dökülmesine karşı; biotin ve kolajen içererek saçı güçlendirmeye yardımcı olur.	500.00	37	4	2025-11-15 21:25:11	2025-11-17 13:36:41	Collagen
\.


--
-- TOC entry 5004 (class 0 OID 24588)
-- Dependencies: 222
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, role, password, remember_token, created_at, updated_at) FROM stdin;
1	Sebastian	talhaustundag51@gmail.com	\N	1	$2y$12$KC91O1NXlf4F7BZXLcjxmeLkKCJUeFBzgwDtGMX5voSufAa2kMmzq	\N	2025-11-15 13:45:48	2025-11-15 21:53:26
3	Normal Kullanıcı	user@test.com	\N	0	$2y$12$ojJ5iXbmIZ.HMIGDz7D9ZORqax6mOWhnPjJJ5kLTOxqkMjaenge1y	\N	2025-11-17 09:06:14	2025-11-17 09:06:14
4	Talha	test@test.com	\N	0	$2y$12$kJTTh1ffk4VHwazr2aLFX.DG4Cl3wUi0DE3WlRiBywsJoWhJJSjE.	\N	2025-11-17 11:47:51	2025-11-17 11:47:51
2	Admin kullanıcı	admin@test.com	\N	1	$2y$12$xFXs.kOApPjlG6RN5ao7Y.A7wlLeeqzs.9tNkK3A08yU7Ig8JtPM2	\N	2025-11-17 08:51:55	2025-11-17 11:51:02
\.


--
-- TOC entry 5037 (class 0 OID 0)
-- Dependencies: 234
-- Name: cart_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_items_id_seq', 18, true);


--
-- TOC entry 5038 (class 0 OID 0)
-- Dependencies: 232
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carts_id_seq', 2, true);


--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 228
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 8, true);


--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 224
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 5041 (class 0 OID 0)
-- Dependencies: 219
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 13, true);


--
-- TOC entry 5042 (class 0 OID 0)
-- Dependencies: 238
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_id_seq', 12, true);


--
-- TOC entry 5043 (class 0 OID 0)
-- Dependencies: 236
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 11, true);


--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 226
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 16, true);


--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 230
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 30, true);


--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- TOC entry 4842 (class 2606 OID 24685)
-- Name: cart_items cart_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_pkey PRIMARY KEY (id);


--
-- TOC entry 4840 (class 2606 OID 24677)
-- Name: carts carts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);


--
-- TOC entry 4836 (class 2606 OID 24658)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 4827 (class 2606 OID 24628)
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 4829 (class 2606 OID 24630)
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- TOC entry 4819 (class 2606 OID 24586)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 4846 (class 2606 OID 24701)
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- TOC entry 4844 (class 2606 OID 24693)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4825 (class 2606 OID 24611)
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- TOC entry 4831 (class 2606 OID 24644)
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 4833 (class 2606 OID 24647)
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- TOC entry 4838 (class 2606 OID 24669)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 4821 (class 2606 OID 24602)
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 4823 (class 2606 OID 24600)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4834 (class 1259 OID 24645)
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- TOC entry 4849 (class 2606 OID 32786)
-- Name: cart_items cart_items_cart_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_cart_id_foreign FOREIGN KEY (cart_id) REFERENCES public.carts(id) ON DELETE CASCADE;


--
-- TOC entry 4850 (class 2606 OID 32791)
-- Name: cart_items cart_items_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- TOC entry 4848 (class 2606 OID 32773)
-- Name: carts carts_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 4852 (class 2606 OID 32818)
-- Name: order_items order_items_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_foreign FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- TOC entry 4853 (class 2606 OID 32823)
-- Name: order_items order_items_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- TOC entry 4851 (class 2606 OID 32804)
-- Name: orders orders_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 4847 (class 2606 OID 24710)
-- Name: products products_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_foreign FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


-- Completed on 2025-11-18 15:07:40

--
-- PostgreSQL database dump complete
--

\unrestrict eVWhqrsfFBoyjyosNQ5PTp3UhxsvfnfTDCOIIGghsaJBbDfLka50K5sWE2G4DN1

