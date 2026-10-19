-- PostgreSQL database dump for number_guess
SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE IF EXISTS number_guess;
CREATE DATABASE number_guess;
\c number_guess

CREATE TABLE public.users (
    user_id serial NOT NULL PRIMARY KEY,
    username character varying(22) NOT NULL UNIQUE
);

CREATE TABLE public.games (
    game_id serial NOT NULL PRIMARY KEY,
    user_id integer NOT NULL REFERENCES public.users(user_id),
    guesses integer NOT NULL
);

ALTER TABLE public.users OWNER TO freecodecamp;
ALTER TABLE public.games OWNER TO freecodecamp;
