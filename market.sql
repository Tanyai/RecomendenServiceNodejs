--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.1
-- Dumped by pg_dump version 9.5.1

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
-- Name: movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE movie (
    title character varying(100),
    director character varying(50),
    country character varying(30),
    pub_year integer,
    rank real,
    duration real,
    category character varying(100),
    poster text
);


ALTER TABLE movie OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    pass character varying(25),
    login character varying(30),
    last_activity timestamp without time zone,
    registration_date timestamp without time zone,
    gender boolean,
    birthday_date timestamp without time zone,
    first_name character varying(20),
    last_name character varying(20),
    fhoto text
);


ALTER TABLE users OWNER TO postgres;

--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY movie (title, director, country, pub_year, rank, duration, category, poster) FROM stdin;
Mr.Nobody	Zhako van Dormel	Germany	2009	8	18	fantasy	\N
inception	Nolan	USA, GB	2010	148	9	fantasy	\N
inception	Nolan	USA, GB	2010	8.60000038	148	fantasy	\N
The revenant	Inuarrity	USA	2015	7.9000001	156	drama	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (pass, login, last_activity, registration_date, gender, birthday_date, first_name, last_name, fhoto) FROM stdin;
123	tanya	2016-02-29 14:43:26.588962	2016-02-29 14:43:26.588962	f	1998-03-17 00:00:00	Tanya	Kryuchova	\N
123	Ksusha	2016-02-29 14:47:21.981016	2016-02-29 14:47:21.981016	f	1997-04-23 00:00:00	Ksusha	Varlamova	\N
123	Sasha	2016-02-29 14:48:03.332149	2016-02-29 14:48:03.332149	f	1995-04-08 00:00:00	Sasha	Zhuravlev	\N
123	Sasha	2016-02-29 14:48:30.028251	2016-02-29 14:48:30.028251	t	1995-04-08 00:00:00	Sasha	Zhuravlev	\N
\.


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

