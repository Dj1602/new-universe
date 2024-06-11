--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(40)
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    age_in_billion_years numeric,
    constellation character varying(30),
    foreign_key integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_km integer,
    discovered_by character varying(30),
    foreign_key1 integer,
    is_spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(30),
    distance_from_earth_ly integer,
    has_life boolean,
    foreign_key integer,
    foreign_key1 integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth_ly integer,
    nick_name character varying(30),
    foreign_key integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'galaxy', 'A collection of stars');
INSERT INTO public.description VALUES (2, 'star', 'A collection of planets');
INSERT INTO public.description VALUES (3, 'planet', 'An object orbiting stars');
INSERT INTO public.description VALUES (4, 'moon', 'An object revolving planets');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 'disk', 13.61, 'sagittarius', 1);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 'spiral', 10.01, 'andromeda', 2);
INSERT INTO public.galaxy VALUES (3, 'messier 64', 'disk', 13.28, 'coma berencies', 3);
INSERT INTO public.galaxy VALUES (4, 'coet', 'spiral', 1, 'sculptor', 4);
INSERT INTO public.galaxy VALUES (5, 'sombrero', 'pancake', 13.25, 'virgo', 5);
INSERT INTO public.galaxy VALUES (6, 'cartwheel', 'cartwheel-like', 0.000042, 'sculptor', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'callisto', 4800, 'galileo', 9, true);
INSERT INTO public.moon VALUES (2, 'dactyl', 2, 'galileo', 1, false);
INSERT INTO public.moon VALUES (3, 'charon', 1125, 'hubble', 12, true);
INSERT INTO public.moon VALUES (4, 'atlas', 30, 'voyager', 10, true);
INSERT INTO public.moon VALUES (5, 'hyperion', 300, 'voyager', 10, true);
INSERT INTO public.moon VALUES (6, 'mimas', 130, 'william', 10, true);
INSERT INTO public.moon VALUES (7, 'iapettus', 13, 'cassini', 10, true);
INSERT INTO public.moon VALUES (8, 'pan', 14, 'voyager', 10, true);
INSERT INTO public.moon VALUES (9, 'neppier', 50, 'voyager', 12, true);
INSERT INTO public.moon VALUES (10, 'phobos', 22, 'hubble', 8, true);
INSERT INTO public.moon VALUES (11, 'ganymede', 5148, 'hubble', 9, true);
INSERT INTO public.moon VALUES (12, 'miranda', 500, 'voyager', 11, false);
INSERT INTO public.moon VALUES (13, 'epimetheus', 120, 'voyager', 10, true);
INSERT INTO public.moon VALUES (14, 'janus', 180, 'voyager', 10, true);
INSERT INTO public.moon VALUES (15, 'triton', 2700, 'voyager', 12, true);
INSERT INTO public.moon VALUES (16, 'titan', 5000, 'cassini', 10, true);
INSERT INTO public.moon VALUES (17, 'io', 1821, 'galileo', 9, true);
INSERT INTO public.moon VALUES (18, 'rhea', 1525, 'voyager', 10, true);
INSERT INTO public.moon VALUES (19, 'europa', 3100, 'hubble', 9, true);
INSERT INTO public.moon VALUES (20, 'moon', 3475, 'galileo', 7, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'hd ab', 'jovian', 137, false, 6, 1);
INSERT INTO public.planet VALUES (2, 'kBb', 'exoplanet', 226, false, 1, 2);
INSERT INTO public.planet VALUES (3, 'kepler c', 'extrasolar', 2430, false, 2, 3);
INSERT INTO public.planet VALUES (4, 'kepler b', 'exoplanet', 1206, false, 2, 4);
INSERT INTO public.planet VALUES (5, 'mercury', 'terrestrial', 0, false, 3, 5);
INSERT INTO public.planet VALUES (6, 'venus', 'terrestrial', 0, false, 3, 6);
INSERT INTO public.planet VALUES (7, 'earth', 'terrestrial', 0, true, 3, 7);
INSERT INTO public.planet VALUES (8, 'mars', 'terrestrial', 0, false, 3, 8);
INSERT INTO public.planet VALUES (9, 'jupiter', 'jovian', 0, false, 3, 9);
INSERT INTO public.planet VALUES (10, 'saturn', 'jovian', 0, false, 3, 10);
INSERT INTO public.planet VALUES (11, 'uranus', 'jovian', 0, false, 3, 11);
INSERT INTO public.planet VALUES (12, 'neptune', 'jovian', 0, false, 3, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'polaris', 430, 'north star', 1);
INSERT INTO public.star VALUES (2, 'sirius', 7, 'dog star', 2);
INSERT INTO public.star VALUES (3, 'sol', 0, 'sun', 3);
INSERT INTO public.star VALUES (4, 'xi andromedae', 223, 'adhil', 4);
INSERT INTO public.star VALUES (5, 'alpha lyrae', 25, 'vega', 5);
INSERT INTO public.star VALUES (6, 'alpha orions', 500, 'betelgeuse', 6);


--
-- Name: description description_description_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_description_id_key UNIQUE (description_id);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unq UNIQUE (foreign_key);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_foreign_key1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_foreign_key1_key UNIQUE (foreign_key1);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unq UNIQUE (foreign_key);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (foreign_key) REFERENCES public.galaxy(foreign_key);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (foreign_key1) REFERENCES public.planet(foreign_key1);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (foreign_key) REFERENCES public.star(foreign_key);


--
-- PostgreSQL database dump complete
--

