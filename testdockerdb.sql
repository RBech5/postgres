--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: mytable; Type: TABLE; Schema: public; Owner: docker
--

CREATE TABLE mytable (
    id integer NOT NULL,
    "Nom" text NOT NULL,
    "Ville" text NOT NULL,
    "Age" integer NOT NULL
);


ALTER TABLE mytable OWNER TO docker;

--
-- Name: mytable_id_seq; Type: SEQUENCE; Schema: public; Owner: docker
--

CREATE SEQUENCE mytable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mytable_id_seq OWNER TO docker;

--
-- Name: mytable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: docker
--

ALTER SEQUENCE mytable_id_seq OWNED BY mytable.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: docker
--

ALTER TABLE ONLY mytable ALTER COLUMN id SET DEFAULT nextval('mytable_id_seq'::regclass);


--
-- Data for Name: mytable; Type: TABLE DATA; Schema: public; Owner: docker
--

COPY mytable (id, "Nom", "Ville", "Age") FROM stdin;
1	Rudy	Paris	22
2	Marc	Versailles	21
3	Paul	Nantes	55
4	Jean	Lyon	12
5	Dupont	Rouen	24
\.


--
-- Name: mytable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: docker
--

SELECT pg_catalog.setval('mytable_id_seq', 1, false);


--
-- Name: mytable_pkey; Type: CONSTRAINT; Schema: public; Owner: docker
--

ALTER TABLE ONLY mytable
    ADD CONSTRAINT mytable_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--
