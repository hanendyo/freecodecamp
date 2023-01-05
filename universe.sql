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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age_in_billion integer,
    examp1 integer NOT NULL,
    examp2 integer,
    examp3 integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_examp1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_examp1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_examp1_seq OWNER TO freecodecamp;

--
-- Name: galaxy_examp1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_examp1_seq OWNED BY public.galaxy.examp1;


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
    name character varying(30),
    planet_id integer,
    examp1 integer NOT NULL,
    examp2 integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_examp1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_examp1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_examp1_seq OWNER TO freecodecamp;

--
-- Name: moon_examp1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_examp1_seq OWNED BY public.moon.examp1;


--
-- Name: moon_examp2_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_examp2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_examp2_seq OWNER TO freecodecamp;

--
-- Name: moon_examp2_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_examp2_seq OWNED BY public.moon.examp2;


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
    name character varying(30),
    has_life boolean,
    star_id integer,
    has_moon boolean,
    age_in_billion integer,
    mass_of_earth numeric(5,2),
    total_languages integer,
    examp1 integer NOT NULL,
    examp2 text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_examp1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_examp1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_examp1_seq OWNER TO freecodecamp;

--
-- Name: planet_examp1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_examp1_seq OWNED BY public.planet.examp1;


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
    name character varying(30),
    galaxy_id integer,
    examp1 integer NOT NULL,
    examp2 integer,
    examp3 integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_examp1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_examp1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_examp1_seq OWNER TO freecodecamp;

--
-- Name: star_examp1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_examp1_seq OWNED BY public.star.examp1;


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
-- Name: what_for; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.what_for (
    what_for_id integer NOT NULL,
    name character varying(30),
    examp1 integer NOT NULL,
    examp2 integer,
    examp3 integer,
    examp4 integer,
    examp5 integer,
    examp6 integer NOT NULL
);


ALTER TABLE public.what_for OWNER TO freecodecamp;

--
-- Name: what_for_examp6_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.what_for_examp6_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.what_for_examp6_seq OWNER TO freecodecamp;

--
-- Name: what_for_examp6_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.what_for_examp6_seq OWNED BY public.what_for.examp6;


--
-- Name: what_for_what_for_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.what_for_what_for_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.what_for_what_for_id_seq OWNER TO freecodecamp;

--
-- Name: what_for_what_for_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.what_for_what_for_id_seq OWNED BY public.what_for.what_for_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy examp1; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN examp1 SET DEFAULT nextval('public.galaxy_examp1_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon examp1; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN examp1 SET DEFAULT nextval('public.moon_examp1_seq'::regclass);


--
-- Name: moon examp2; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN examp2 SET DEFAULT nextval('public.moon_examp2_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet examp1; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN examp1 SET DEFAULT nextval('public.planet_examp1_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star examp1; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN examp1 SET DEFAULT nextval('public.star_examp1_seq'::regclass);


--
-- Name: what_for what_for_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.what_for ALTER COLUMN what_for_id SET DEFAULT nextval('public.what_for_what_for_id_seq'::regclass);


--
-- Name: what_for examp6; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.what_for ALTER COLUMN examp6 SET DEFAULT nextval('public.what_for_examp6_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Antennae', NULL, 2, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Backward', NULL, 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', NULL, 4, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Bode', NULL, 5, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Butterfly', NULL, 6, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (12, 'Charon', NULL, 1, 1);
INSERT INTO public.moon VALUES (13, 'Nix', NULL, 2, 2);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 3, 3);
INSERT INTO public.moon VALUES (4, 'Io', 5, 4, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 5, 5);
INSERT INTO public.moon VALUES (6, 'Mimas', 6, 6, 6);
INSERT INTO public.moon VALUES (7, 'Enceladus', 6, 7, 7);
INSERT INTO public.moon VALUES (8, 'Ariel', 7, 8, 8);
INSERT INTO public.moon VALUES (9, 'Umbriel', 7, 9, 9);
INSERT INTO public.moon VALUES (10, 'Triton', 8, 10, 10);
INSERT INTO public.moon VALUES (11, 'Nereid', 8, 11, 11);
INSERT INTO public.moon VALUES (1, 'Moon', 3, 12, 12);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 13, 13);
INSERT INTO public.moon VALUES (14, 'Ganymede', 5, 14, 14);
INSERT INTO public.moon VALUES (15, 'Callisto', 5, 15, 15);
INSERT INTO public.moon VALUES (16, 'Amalthea', 5, 16, 16);
INSERT INTO public.moon VALUES (17, 'Himalia', 5, 17, 17);
INSERT INTO public.moon VALUES (18, 'Elara', 5, 18, 18);
INSERT INTO public.moon VALUES (19, 'Pasiphae', 5, 19, 19);
INSERT INTO public.moon VALUES (20, 'Sinope', 5, 20, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', true, NULL, true, 5, 1.00, 6500, 1, NULL);
INSERT INTO public.planet VALUES (1, 'Mercury', false, NULL, false, 5, 0.06, 0, 2, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', false, NULL, false, 5, 0.82, 0, 3, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', false, NULL, true, 5, 0.11, 0, 4, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, NULL, true, 5, 317.80, 0, 5, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', false, NULL, true, 5, 95.20, 0, 6, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', false, NULL, true, 5, 14.60, 0, 7, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', false, NULL, true, 5, 17.20, 0, 8, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', false, NULL, true, 5, 0.01, 0, 9, NULL);
INSERT INTO public.planet VALUES (10, 'Namek', true, NULL, true, 8, 1.00, 100, 10, NULL);
INSERT INTO public.planet VALUES (11, 'X', false, NULL, false, 7, 10.00, 0, 11, NULL);
INSERT INTO public.planet VALUES (12, 'Zippo', false, NULL, false, 7, 7.00, 0, 12, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Andromeda Star #1', NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Andromeda Star #2', NULL, 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Antennae star #1', NULL, 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Antennae Star #2', NULL, 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Backward Star #1', NULL, 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Backward Star #2', NULL, 6, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Black Eye Star #1', NULL, 7, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Bode Star #1', NULL, 8, NULL, NULL);
INSERT INTO public.star VALUES (9, 'Butterfly Star #1', NULL, 9, NULL, NULL);


--
-- Data for Name: what_for; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.what_for VALUES (1, 'Curtouis', 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.what_for VALUES (2, 'ALABA', 2, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.what_for VALUES (3, 'MILITAO', 3, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.what_for VALUES (4, 'Carvajal', 4, NULL, NULL, NULL, NULL, 4);


--
-- Name: galaxy_examp1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_examp1_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_examp1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_examp1_seq', 20, true);


--
-- Name: moon_examp2_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_examp2_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, true);


--
-- Name: planet_examp1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_examp1_seq', 12, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 33, true);


--
-- Name: star_examp1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_examp1_seq', 9, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: what_for_examp6_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.what_for_examp6_seq', 4, true);


--
-- Name: what_for_what_for_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.what_for_what_for_id_seq', 1, true);


--
-- Name: galaxy galaxy_examp1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_examp1_key UNIQUE (examp1);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_examp1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_examp1_key UNIQUE (examp1);


--
-- Name: moon moon_examp2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_examp2_key UNIQUE (examp2);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_examp1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_examp1_key UNIQUE (examp1);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_examp1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_examp1_key UNIQUE (examp1);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: what_for what_for_examp1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.what_for
    ADD CONSTRAINT what_for_examp1_key UNIQUE (examp1);


--
-- Name: what_for what_for_examp6_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.what_for
    ADD CONSTRAINT what_for_examp6_key UNIQUE (examp6);


--
-- Name: what_for what_for_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.what_for
    ADD CONSTRAINT what_for_pkey PRIMARY KEY (what_for_id);


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

