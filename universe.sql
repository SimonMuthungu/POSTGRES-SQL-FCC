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
-- Name: age; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.age (
    name character varying(30),
    is_old boolean,
    has_long_life_span boolean,
    age_id integer NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.age OWNER TO freecodecamp;

--
-- Name: age_age_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.age_age_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.age_age_id_seq OWNER TO freecodecamp;

--
-- Name: age_age_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.age_age_id_seq OWNED BY public.age.age_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    d_from_milky integer NOT NULL,
    galaxy_no integer NOT NULL,
    has_life boolean NOT NULL,
    gas_weight numeric(3,3),
    description text,
    has_aliens boolean
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
    luminosity integer NOT NULL,
    is_large boolean,
    population integer,
    revolve_time numeric,
    revolve_around character varying(30),
    description text
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
    dis_from_sun integer NOT NULL,
    has_life boolean,
    is_large boolean,
    population integer,
    description text,
    revolve_days numeric,
    star_id integer
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
    size integer NOT NULL,
    bodies_around integer NOT NULL,
    is_large boolean,
    is_populated boolean,
    revolve_speed numeric NOT NULL,
    description text,
    galaxy_id integer
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
-- Name: age age_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age ALTER COLUMN age_id SET DEFAULT nextval('public.age_age_id_seq'::regclass);


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
-- Data for Name: age; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.age VALUES ('earth', true, true, 1, 4);
INSERT INTO public.age VALUES ('mars', true, true, 2, 5);
INSERT INTO public.age VALUES ('mercury', true, true, 4, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky', 0, 1, true, 0.030, 'the galaxy we exist in', false);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 1, 2, false, 0.020, 'the closest to our milky', false);
INSERT INTO public.galaxy VALUES (3, 'antennae', 5, 3, false, 0.050, 'looks like an insecs antennae', false);
INSERT INTO public.galaxy VALUES (4, 'baackward', 5, 3, false, 0.070, 'rotates backward', false);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 7, 3, false, 0.090, 'has some darkness outside its nucleus', true);
INSERT INTO public.galaxy VALUES (6, 'Butterfly', 7, 3, true, 0.090, 'Looks like a butterfly', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'earth', 2, false, 0, 28, 'earth', 'the only satellite we use at night');
INSERT INTO public.moon VALUES (3, 'mars', 2, false, 0, 28, 'mars', 'who said red planet cant have a moon?');
INSERT INTO public.moon VALUES (5, 'jupiter', 2, false, 0, 28, 'jupiter', 'jupiter has 79');
INSERT INTO public.moon VALUES (6, 'mars', 2, false, 0, 28, 'mars', 'actually it has two, phobos and demios');
INSERT INTO public.moon VALUES (7, 'jupiter', 2, false, 0, 28, 'jupiter', 'jupiter has around like 79, this one is pandia');
INSERT INTO public.moon VALUES (8, 'jupiter', 2, false, 0, 28, 'jupiter', 'jupiter has around like 79, this one is Ersa');
INSERT INTO public.moon VALUES (9, 'jupiter', 2, false, 0, 28, 'jupiter', 'jupiter has around like 79, this one is Eirine');
INSERT INTO public.moon VALUES (10, 'jupiter', 2, false, 0, 28, 'jupiter', 'jupiter has around like 79, this one is euiphime');
INSERT INTO public.moon VALUES (11, 'jupiter', 2, false, 0, 28, 'jupiter', 'jupiter has around like 79, this one is philorosyne');
INSERT INTO public.moon VALUES (12, 'jupiter', 2, false, 0, 28, 'jupiter', 'jupiter has around like 79, this one is Europa');
INSERT INTO public.moon VALUES (13, 'jupiter', 2, false, 0, 28, 'jupiter', 'jupiter has around like 79, this one is callisto');
INSERT INTO public.moon VALUES (14, 'jupiter', 2, false, 0, 28, 'jupiter', 'jupiter has around like 79, this one is ganymede');
INSERT INTO public.moon VALUES (15, 'jupiter', 2, false, 0, 28, 'jupiter', 'jupiter has around like 79, this one is io');
INSERT INTO public.moon VALUES (16, 'jupiter', 2, false, 0, 28, 'jupiter', 'jupiter has around like 79, this one is metis');
INSERT INTO public.moon VALUES (17, 'jupiter', 2, false, 0, 28, 'jupiter', 'jupiter has around like 79, this one is thebe');
INSERT INTO public.moon VALUES (18, 'saturn', 2, false, 0, 28, 'saturn', 'saturn now, this one is mimas');
INSERT INTO public.moon VALUES (19, 'saturn', 2, false, 0, 28, 'saturn', 'saturn now, this one is dione');
INSERT INTO public.moon VALUES (20, 'saturn', 2, false, 0, 28, 'saturn', 'saturn now, this one is thethys');
INSERT INTO public.moon VALUES (21, 'saturn', 2, false, 0, 28, 'saturn', 'saturn now, this one is enceladus');
INSERT INTO public.moon VALUES (22, 'saturn', 2, false, 0, 28, 'saturn', 'saturn now, this one is titan(the largest)');
INSERT INTO public.moon VALUES (23, 'saturn', 2, false, 0, 28, 'saturn', 'saturn now, this one is lapetus(another main one)');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 30, false, false, 1, 'the closest to star sun, and the hottest', 88, 1);
INSERT INTO public.planet VALUES (2, 'venus', 44, false, false, 1, 'the morning star', 224, 1);
INSERT INTO public.planet VALUES (3, 'earth', 149, true, false, 70000000, 'the green, life supporting planet', 365, 1);
INSERT INTO public.planet VALUES (4, 'mars', 149, false, true, 3, 'the red planet, probably be renamed to elon mars very soon', 687, 1);
INSERT INTO public.planet VALUES (5, 'jupiter', 149, false, true, 1, 'the giant phenomenal', 4330, 1);
INSERT INTO public.planet VALUES (6, 'saturn', 400, false, true, 1, 'such a crazy name ikr:)', 10759, 1);
INSERT INTO public.planet VALUES (7, 'uranus', 900, false, true, 1, 'really massive super structure', 30687, 1);
INSERT INTO public.planet VALUES (8, 'neptune', 900, false, true, 1, 'new dimensional thinking will get humans here some day', 164, 1);
INSERT INTO public.planet VALUES (9, 'pluto', 900, false, true, 1, 'the dwarf planet', 164, 1);
INSERT INTO public.planet VALUES (10, 'plante x', 1400, false, true, 1, 'outside the solar system', 230, 1);
INSERT INTO public.planet VALUES (11, 'plante y', 1900, false, true, 1, 'outside again but further away', 290, 1);
INSERT INTO public.planet VALUES (12, 'plante z', 1900, false, true, 1, 'outside again but now much more far away, crazy ikr', 390, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 4, 9, true, true, 828, 'is lifes main sustenance', 1);
INSERT INTO public.star VALUES (2, 'acamar', 5, 1, false, true, 90, 'means end of river', 2);
INSERT INTO public.star VALUES (4, 'acrab', 6, 1, true, false, 19, 'the scorpion as they say', 3);
INSERT INTO public.star VALUES (6, 'adhil', 6, 1, true, false, 24, 'the train of a garment', 4);
INSERT INTO public.star VALUES (5, 'acubens', 6, 1, true, false, 19, 'the claws', 5);
INSERT INTO public.star VALUES (3, 'achird', 6, 1, true, false, 19, 'just another super huge structure', 6);


--
-- Name: age_age_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.age_age_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: age age_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age
    ADD CONSTRAINT age_age_key UNIQUE (age);


--
-- Name: age age_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age
    ADD CONSTRAINT age_pkey PRIMARY KEY (age_id);


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
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: age age_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age
    ADD CONSTRAINT age_name_fkey FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: moon moon_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_fkey FOREIGN KEY (name) REFERENCES public.planet(name);


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

