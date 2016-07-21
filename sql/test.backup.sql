--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5rc1
-- Dumped by pg_dump version 9.5rc1

-- Started on 2016-07-16 13:16:04 MSK

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 184 (class 3079 OID 12623)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2384 (class 0 OID 0)
-- Dependencies: 184
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 48175)
-- Name: credits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE credits (
    provider character varying,
    credit real
);


ALTER TABLE credits OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 48181)
-- Name: order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "order" (
    product bit varying,
    provider character varying,
    price real,
    datetime timestamp with time zone
);


ALTER TABLE "order" OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 48168)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE products (
    id integer NOT NULL,
    product character varying,
    provider character varying,
    price real
);


ALTER TABLE products OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 48166)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_id_seq OWNER TO postgres;

--
-- TOC entry 2385 (class 0 OID 0)
-- Dependencies: 180
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- TOC entry 2258 (class 2604 OID 48171)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- TOC entry 2375 (class 0 OID 48175)
-- Dependencies: 182
-- Data for Name: credits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY credits (provider, credit) FROM stdin;
provider1	1000000
provider2	1000000
provider3	197
provider4	1000000
provider5	1000000
provider6	1000000
\.


--
-- TOC entry 2376 (class 0 OID 48181)
-- Dependencies: 183
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "order" (product, provider, price, datetime) FROM stdin;
\.


--
-- TOC entry 2374 (class 0 OID 48168)
-- Dependencies: 181
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY products (id, product, provider, price) FROM stdin;
1	product1	provider1	100
2	product1	provider2	101
3	product1	provider3	99
4	product2	provider1	102
5	product2	provider2	101
6	product3	provider1	101
7	product3	provider2	100
8	product3	provider5	100
9	product4	provider4	50
10	product4	provider5	100
11	product5	provider2	100
12	product5	provider3	10
13	product5	provider4	100
14	product5	provider5	10
15	product6	provider6	60
16	product7	provider6	100
17	product7	provider6	99
18	product8	provider6	100
\.


--
-- TOC entry 2386 (class 0 OID 0)
-- Dependencies: 180
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('products_id_seq', 18, true);


--
-- TOC entry 2383 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-07-16 13:16:04 MSK

--
-- PostgreSQL database dump complete
--

