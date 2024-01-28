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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying(30) NOT NULL,
    asteroid_unique integer NOT NULL
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    temp text NOT NULL,
    galaxy_unique integer NOT NULL,
    optional integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_habitable boolean,
    moon_unique integer NOT NULL,
    optional integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    temp numeric(4,1) NOT NULL,
    num_moons integer NOT NULL,
    is_habitable boolean,
    planet_unique integer NOT NULL,
    optional integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    num_planets integer NOT NULL,
    temp numeric(4,1) NOT NULL,
    star_unique integer NOT NULL,
    optional integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, '1', 1);
INSERT INTO public.asteroids VALUES (2, '2', 2);
INSERT INTO public.asteroids VALUES (3, '3', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '1', 'ooooo hi', 1, NULL);
INSERT INTO public.galaxy VALUES (2, '2', 'oooooo hi', 2, NULL);
INSERT INTO public.galaxy VALUES (3, '3', 'ooooooo hi', 3, NULL);
INSERT INTO public.galaxy VALUES (4, '4', 'oooooooo hi', 4, NULL);
INSERT INTO public.galaxy VALUES (5, '5', 'oooooooooo hiii', 5, NULL);
INSERT INTO public.galaxy VALUES (6, '6', 'ooooooopsie hi', 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1', NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (2, '2', NULL, 2, NULL, 1);
INSERT INTO public.moon VALUES (12, '21', NULL, 12, NULL, 1);
INSERT INTO public.moon VALUES (11, '11', NULL, 11, NULL, 1);
INSERT INTO public.moon VALUES (31, '31', NULL, 31, NULL, 1);
INSERT INTO public.moon VALUES (41, '41', NULL, 14, NULL, 1);
INSERT INTO public.moon VALUES (15, '51', NULL, 51, NULL, 1);
INSERT INTO public.moon VALUES (61, '61', NULL, 16, NULL, 1);
INSERT INTO public.moon VALUES (71, '71', NULL, 71, NULL, 1);
INSERT INTO public.moon VALUES (81, '18', NULL, 18, NULL, 1);
INSERT INTO public.moon VALUES (91, '91', NULL, 19, NULL, 1);
INSERT INTO public.moon VALUES (10, '10', NULL, 10, NULL, 1);
INSERT INTO public.moon VALUES (100, '100', NULL, 100, NULL, 1);
INSERT INTO public.moon VALUES (112, '112', NULL, 112, NULL, 1);
INSERT INTO public.moon VALUES (132, '132', NULL, 132, NULL, 1);
INSERT INTO public.moon VALUES (114, '141', NULL, 114, NULL, 1);
INSERT INTO public.moon VALUES (343, '343', NULL, 343, NULL, 1);
INSERT INTO public.moon VALUES (143, '123', NULL, 122, NULL, 1);
INSERT INTO public.moon VALUES (155, '155', NULL, 155, NULL, 1);
INSERT INTO public.moon VALUES (103, '103', NULL, 103, NULL, 1);
INSERT INTO public.moon VALUES (1320, '120', NULL, 120, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '1', 1.0, 1, false, 1, NULL, 1);
INSERT INTO public.planet VALUES (2, '2', 1.0, 1, false, 2, NULL, 1);
INSERT INTO public.planet VALUES (3, '3', 1.0, 1, false, 3, NULL, 1);
INSERT INTO public.planet VALUES (4, '4', 1.0, 1, false, 4, NULL, 1);
INSERT INTO public.planet VALUES (5, '5', 1.0, 1, false, 5, NULL, 1);
INSERT INTO public.planet VALUES (6, '6', 1.0, 1, false, 6, NULL, 1);
INSERT INTO public.planet VALUES (7, '7', 1.0, 1, false, 7, NULL, 1);
INSERT INTO public.planet VALUES (8, '8', 1.0, 1, false, 8, NULL, 1);
INSERT INTO public.planet VALUES (9, '9', 1.0, 1, false, 9, NULL, 1);
INSERT INTO public.planet VALUES (89, '98', 1.0, 1, false, 98, NULL, 1);
INSERT INTO public.planet VALUES (88, '87', 1.0, 1, false, 86, NULL, 1);
INSERT INTO public.planet VALUES (48, '83', 1.0, 1, false, 28, NULL, 1);
INSERT INTO public.planet VALUES (18, '844', 1.0, 1, false, 568, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '1', 1, 1.0, 1, NULL, 1);
INSERT INTO public.star VALUES (2, '2', 2, 2.0, 2, NULL, 2);
INSERT INTO public.star VALUES (3, '3', 3, 3.0, 3, NULL, 3);
INSERT INTO public.star VALUES (4, '4', 4, 4.0, 4, NULL, 4);
INSERT INTO public.star VALUES (5, '5', 5, 5.0, 5, NULL, 5);
INSERT INTO public.star VALUES (6, '6', 6, 669.0, 6, NULL, 6);


--
-- Name: asteroids asteroids_asteroid_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_asteroid_unique_key UNIQUE (asteroid_unique);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_galaxy_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_unique_key UNIQUE (galaxy_unique);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_unique_key UNIQUE (moon_unique);


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
-- Name: planet planet_planet_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_unique_key UNIQUE (planet_unique);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_unique_key UNIQUE (star_unique);


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

