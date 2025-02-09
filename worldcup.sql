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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (97, 73, 74, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (98, 75, 76, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (99, 74, 76, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (100, 73, 75, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (101, 74, 77, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (102, 76, 78, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (103, 75, 79, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (104, 73, 80, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (105, 76, 81, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (106, 78, 82, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (107, 75, 83, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (108, 79, 84, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (109, 74, 85, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (110, 77, 86, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (111, 80, 87, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (112, 73, 88, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (113, 89, 88, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (114, 90, 79, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (115, 88, 90, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (116, 89, 79, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (117, 90, 91, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (118, 88, 75, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (119, 79, 81, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (120, 89, 73, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (121, 79, 92, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (122, 81, 80, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (123, 73, 93, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (124, 89, 94, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (125, 90, 84, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (126, 91, 95, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (127, 88, 82, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (128, 75, 96, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (73, 'France');
INSERT INTO public.teams VALUES (74, 'Croatia');
INSERT INTO public.teams VALUES (75, 'Belgium');
INSERT INTO public.teams VALUES (76, 'England');
INSERT INTO public.teams VALUES (77, 'Russia');
INSERT INTO public.teams VALUES (78, 'Sweden');
INSERT INTO public.teams VALUES (79, 'Brazil');
INSERT INTO public.teams VALUES (80, 'Uruguay');
INSERT INTO public.teams VALUES (81, 'Colombia');
INSERT INTO public.teams VALUES (82, 'Switzerland');
INSERT INTO public.teams VALUES (83, 'Japan');
INSERT INTO public.teams VALUES (84, 'Mexico');
INSERT INTO public.teams VALUES (85, 'Denmark');
INSERT INTO public.teams VALUES (86, 'Spain');
INSERT INTO public.teams VALUES (87, 'Portugal');
INSERT INTO public.teams VALUES (88, 'Argentina');
INSERT INTO public.teams VALUES (89, 'Germany');
INSERT INTO public.teams VALUES (90, 'Netherlands');
INSERT INTO public.teams VALUES (91, 'Costa Rica');
INSERT INTO public.teams VALUES (92, 'Chile');
INSERT INTO public.teams VALUES (93, 'Nigeria');
INSERT INTO public.teams VALUES (94, 'Algeria');
INSERT INTO public.teams VALUES (95, 'Greece');
INSERT INTO public.teams VALUES (96, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 96, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

