--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: explorer_bot; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.explorer_bot (
    explorer_bot_id integer NOT NULL,
    bot_name text NOT NULL,
    destination text NOT NULL,
    dummy boolean,
    name character varying(30)
);


ALTER TABLE public.explorer_bot OWNER TO freecodecamp;

--
-- Name: explorer_bot_explorer_bot_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.explorer_bot_explorer_bot_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.explorer_bot_explorer_bot_id_seq OWNER TO freecodecamp;

--
-- Name: explorer_bot_explorer_bot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.explorer_bot_explorer_bot_id_seq OWNED BY public.explorer_bot.explorer_bot_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    solestial boolean NOT NULL,
    star_amount integer NOT NULL,
    planet_amount integer NOT NULL,
    moon_amount integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    size numeric(6,2),
    dummy integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    explored boolean,
    livable boolean,
    size numeric(6,2)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    size numeric(6,2),
    age numeric(6,2),
    dummy integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: explorer_bot explorer_bot_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explorer_bot ALTER COLUMN explorer_bot_id SET DEFAULT nextval('public.explorer_bot_explorer_bot_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: explorer_bot; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.explorer_bot VALUES (1, 'A', 'A', NULL, NULL);
INSERT INTO public.explorer_bot VALUES (2, 'B', 'B', NULL, NULL);
INSERT INTO public.explorer_bot VALUES (3, 'C', 'C', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'gal1', true, 1, 1, 1);
INSERT INTO public.galaxy VALUES (2, 'gal2', true, 2, 2, 2);
INSERT INTO public.galaxy VALUES (3, 'gal3', true, 3, 3, 3);
INSERT INTO public.galaxy VALUES (5, 'g4', true, 4, 4, 4);
INSERT INTO public.galaxy VALUES (6, 'g5', true, 5, 5, 5);
INSERT INTO public.galaxy VALUES (7, 'g6', true, 6, 6, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'B', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'C', 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'D', 1, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'E', 1, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'F', 1, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'G', 1, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'H', 1, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'I', 1, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'J', 1, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'K', 1, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'L', 1, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'M', 1, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'N', 1, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'O', 1, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'P', 1, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'R', 1, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'S', 1, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'T', 1, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'U', 1, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'V', 1, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'A', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'B', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'C', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'D', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'E', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'F', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'G', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'H', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'I', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'J', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'K', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'L', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'M', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'N', 1, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, 100.00, 100.00, NULL);
INSERT INTO public.star VALUES (2, 'star2', 2, 200.00, 200.00, NULL);
INSERT INTO public.star VALUES (3, 'star3', 3, 300.00, 300.00, NULL);
INSERT INTO public.star VALUES (7, 's4', 5, 5.00, 5.00, NULL);
INSERT INTO public.star VALUES (8, 's5', 6, 6.00, 6.00, NULL);
INSERT INTO public.star VALUES (9, 's6', 7, 7.00, 7.00, NULL);


--
-- Name: explorer_bot_explorer_bot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.explorer_bot_explorer_bot_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: explorer_bot bot_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explorer_bot
    ADD CONSTRAINT bot_unique UNIQUE (bot_name);


--
-- Name: explorer_bot explorer_bot_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explorer_bot
    ADD CONSTRAINT explorer_bot_pkey PRIMARY KEY (explorer_bot_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
