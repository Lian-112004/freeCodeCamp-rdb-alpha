--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1786556324102', 2, 75);
INSERT INTO public.users VALUES (1, 'user_1786556324103', 5, 578);
INSERT INTO public.users VALUES (18, 'user_1786557127304', 2, 38);
INSERT INTO public.users VALUES (4, 'user_1786556600224', 2, 142);
INSERT INTO public.users VALUES (17, 'user_1786557127305', 5, 33);
INSERT INTO public.users VALUES (3, 'user_1786556600225', 5, 23);
INSERT INTO public.users VALUES (34, 'user_1786557817627', 2, 95);
INSERT INTO public.users VALUES (6, 'user_1786556620595', 2, 137);
INSERT INTO public.users VALUES (20, 'user_1786557138646', 2, 36);
INSERT INTO public.users VALUES (5, 'user_1786556620596', 5, 28);
INSERT INTO public.users VALUES (33, 'user_1786557817628', 5, 205);
INSERT INTO public.users VALUES (19, 'user_1786557138647', 5, 257);
INSERT INTO public.users VALUES (8, 'user_1786556725353', 2, 54);
INSERT INTO public.users VALUES (7, 'user_1786556725354', 5, 110);
INSERT INTO public.users VALUES (10, 'user_1786556768646', 2, 160);
INSERT INTO public.users VALUES (22, 'user_1786557252896', 2, 460);
INSERT INTO public.users VALUES (9, 'user_1786556768647', 5, 175);
INSERT INTO public.users VALUES (36, 'user_1786558024749', 2, 162);
INSERT INTO public.users VALUES (21, 'user_1786557252897', 5, 66);
INSERT INTO public.users VALUES (12, 'user_1786556832715', 2, 208);
INSERT INTO public.users VALUES (11, 'user_1786556832716', 5, 448);
INSERT INTO public.users VALUES (35, 'user_1786558024750', 5, 189);
INSERT INTO public.users VALUES (24, 'user_1786557262148', 2, 432);
INSERT INTO public.users VALUES (14, 'user_1786556933637', 2, 257);
INSERT INTO public.users VALUES (13, 'user_1786556933638', 5, 330);
INSERT INTO public.users VALUES (23, 'user_1786557262149', 5, 179);
INSERT INTO public.users VALUES (16, 'user_1786557027257', 2, 22);
INSERT INTO public.users VALUES (15, 'user_1786557027258', 5, 55);
INSERT INTO public.users VALUES (26, 'user_1786557322962', 2, 187);
INSERT INTO public.users VALUES (38, 'user_1786558303097', 2, 353);
INSERT INTO public.users VALUES (25, 'user_1786557322963', 5, 15);
INSERT INTO public.users VALUES (37, 'user_1786558303098', 5, 52);
INSERT INTO public.users VALUES (28, 'user_1786557425679', 2, 889);
INSERT INTO public.users VALUES (27, 'user_1786557425680', 5, 82);
INSERT INTO public.users VALUES (30, 'user_1786557493043', 2, 586);
INSERT INTO public.users VALUES (29, 'user_1786557493044', 5, 69);
INSERT INTO public.users VALUES (32, 'user_1786557589161', 2, 161);
INSERT INTO public.users VALUES (31, 'user_1786557589162', 5, 56);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 38, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

