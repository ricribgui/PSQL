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
    name character varying(100) NOT NULL,
    size integer NOT NULL,
    num_stars integer NOT NULL,
    is_active boolean NOT NULL,
    description text
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
    planet_id integer,
    name character varying(100) NOT NULL,
    diameter integer NOT NULL,
    distante_from_planet numeric NOT NULL
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
    star_id integer,
    name character varying(100) NOT NULL,
    radius integer NOT NULL,
    orbital_period numeric NOT NULL,
    has_atmosphere boolean NOT NULL
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
    galaxy_id integer,
    name character varying(100) NOT NULL,
    temperature integer NOT NULL,
    mass numeric NOT NULL,
    is_visible boolean NOT NULL
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
-- Name: tabeladeteste; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.tabeladeteste (
    tabeladeteste_id integer NOT NULL,
    name character varying(30) NOT NULL,
    coluna02 character varying(50),
    ultimacoluna numeric
);


ALTER TABLE public.tabeladeteste OWNER TO freecodecamp;

--
-- Name: tabeladeteste_tabeladeteste_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.tabeladeteste_tabeladeteste_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tabeladeteste_tabeladeteste_id_seq OWNER TO freecodecamp;

--
-- Name: tabeladeteste_tabeladeteste_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.tabeladeteste_tabeladeteste_id_seq OWNED BY public.tabeladeteste.tabeladeteste_id;


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
-- Name: tabeladeteste tabeladeteste_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tabeladeteste ALTER COLUMN tabeladeteste_id SET DEFAULT nextval('public.tabeladeteste_tabeladeteste_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100, 200, true, 'Our home galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 150, 200, true, 'Nerest spiral galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 50, 100, true, 'Small spiral galaxy');
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 200, 100, true, 'Active galaxy with a supermassive black hole');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 120, 180, true, 'Spiral galaxy with a bright central bulge');
INSERT INTO public.galaxy VALUES (6, 'Wirpool', 90, 150, true, 'Interacting galaxy pair');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Moon', 3474, 384400);
INSERT INTO public.moon VALUES (2, 2, 'Phobos', 22, 9376);
INSERT INTO public.moon VALUES (3, 2, 'Deimos', 12, 23458);
INSERT INTO public.moon VALUES (4, 3, 'Charon', 1207, 19591);
INSERT INTO public.moon VALUES (5, 3, 'Nix', 46, 49712);
INSERT INTO public.moon VALUES (6, 4, 'Ganymede', 5262, 1070400);
INSERT INTO public.moon VALUES (7, 4, 'Callisto', 4821, 1882700);
INSERT INTO public.moon VALUES (8, 5, 'Titan', 5150, 1221870);
INSERT INTO public.moon VALUES (9, 6, 'Europa', 3122, 671034);
INSERT INTO public.moon VALUES (10, 7, 'Io', 3642, 421700);
INSERT INTO public.moon VALUES (11, 8, 'Enceladus', 252, 147909);
INSERT INTO public.moon VALUES (19, 8, 'Tethys', 1062, 294619);
INSERT INTO public.moon VALUES (20, 9, 'Triton', 2707, 354759);
INSERT INTO public.moon VALUES (21, 10, 'Titania', 1578, 435910);
INSERT INTO public.moon VALUES (22, 10, 'Miranda', 472, 129900);
INSERT INTO public.moon VALUES (23, 11, 'Oberon', 1522, 583520);
INSERT INTO public.moon VALUES (24, 11, 'Ariel', 1157, 190900);
INSERT INTO public.moon VALUES (25, 12, 'Hydra', 65, 64738);
INSERT INTO public.moon VALUES (26, 12, 'Kerberos', 19, 57800);
INSERT INTO public.moon VALUES (28, 12, 'Dione', 3207, 17591);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Eath', 6371, 365.25, true);
INSERT INTO public.planet VALUES (2, 1, 'Mars', 3389, 687, true);
INSERT INTO public.planet VALUES (3, 2, 'Proxima Centauri', 6350, 11.2, false);
INSERT INTO public.planet VALUES (4, 2, 'Alpha Centauri', 7532, 3.24, false);
INSERT INTO public.planet VALUES (5, 1, 'Venus', 6051, 224.7, true);
INSERT INTO public.planet VALUES (6, 4, 'Kepler-452b', 10240, 384.84, true);
INSERT INTO public.planet VALUES (7, 1, 'Jupiter', 69911, 4332.59, true);
INSERT INTO public.planet VALUES (8, 1, 'Saturn', 58232, 10759.22, true);
INSERT INTO public.planet VALUES (9, 1, 'Neptune', 24622, 60190, true);
INSERT INTO public.planet VALUES (10, 1, 'Uranus', 25362, 30685, true);
INSERT INTO public.planet VALUES (11, 1, 'Mercury', 2439, 87.97, true);
INSERT INTO public.planet VALUES (12, 1, 'Pluto', 1188, 90560, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 5778, 1.989, true);
INSERT INTO public.star VALUES (2, 1, 'Proxima Centauri', 3042, 2.446, false);
INSERT INTO public.star VALUES (3, 2, 'Alpha Centauri A', 5790, 2.187, true);
INSERT INTO public.star VALUES (4, 3, 'Sirius', 9940, 1.989, true);
INSERT INTO public.star VALUES (5, 3, 'Betelgeuse', 3500, 1.131, true);
INSERT INTO public.star VALUES (6, 4, 'Sagitarius A', 8000, 4.313, false);


--
-- Data for Name: tabeladeteste; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.tabeladeteste VALUES (1, 'Teste01', 'teste02', 1);
INSERT INTO public.tabeladeteste VALUES (2, 'teste3', 'teste4', 2);
INSERT INTO public.tabeladeteste VALUES (3, 'teste5', 'teste6', 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: tabeladeteste_tabeladeteste_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.tabeladeteste_tabeladeteste_id_seq', 3, true);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: tabeladeteste tabeladeteste_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tabeladeteste
    ADD CONSTRAINT tabeladeteste_pkey PRIMARY KEY (tabeladeteste_id);


--
-- Name: tabeladeteste tabeladeteste_ultimacoluna_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tabeladeteste
    ADD CONSTRAINT tabeladeteste_ultimacoluna_key UNIQUE (ultimacoluna);


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
