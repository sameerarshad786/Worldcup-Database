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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name text NOT NULL
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

INSERT INTO public.games VALUES (81, 2018, 'Final', 1188, 1189, 4, 2);
INSERT INTO public.games VALUES (82, 2018, 'Third Place', 1190, 1191, 2, 0);
INSERT INTO public.games VALUES (83, 2018, 'Semi-Final', 1189, 1191, 2, 1);
INSERT INTO public.games VALUES (84, 2018, 'Semi-Final', 1188, 1190, 1, 0);
INSERT INTO public.games VALUES (85, 2018, 'Quarter-Final', 1189, 1197, 3, 2);
INSERT INTO public.games VALUES (86, 2018, 'Quarter-Final', 1191, 1199, 2, 0);
INSERT INTO public.games VALUES (87, 2018, 'Quarter-Final', 1190, 1201, 2, 1);
INSERT INTO public.games VALUES (88, 2018, 'Quarter-Final', 1188, 1203, 2, 0);
INSERT INTO public.games VALUES (89, 2018, 'Eighth-Final', 1191, 1205, 2, 1);
INSERT INTO public.games VALUES (90, 2018, 'Eighth-Final', 1199, 1207, 1, 0);
INSERT INTO public.games VALUES (91, 2018, 'Eighth-Final', 1190, 1209, 3, 2);
INSERT INTO public.games VALUES (92, 2018, 'Eighth-Final', 1201, 1211, 2, 0);
INSERT INTO public.games VALUES (93, 2018, 'Eighth-Final', 1189, 1213, 2, 1);
INSERT INTO public.games VALUES (94, 2018, 'Eighth-Final', 1197, 1215, 2, 1);
INSERT INTO public.games VALUES (95, 2018, 'Eighth-Final', 1203, 1217, 2, 1);
INSERT INTO public.games VALUES (96, 2018, 'Eighth-Final', 1188, 1219, 4, 3);
INSERT INTO public.games VALUES (97, 2014, 'Final', 1220, 1219, 1, 0);
INSERT INTO public.games VALUES (98, 2014, 'Third Place', 1222, 1201, 3, 0);
INSERT INTO public.games VALUES (99, 2014, 'Semi-Final', 1219, 1222, 1, 0);
INSERT INTO public.games VALUES (100, 2014, 'Semi-Final', 1220, 1201, 7, 1);
INSERT INTO public.games VALUES (101, 2014, 'Quarter-Final', 1222, 1229, 1, 0);
INSERT INTO public.games VALUES (102, 2014, 'Quarter-Final', 1219, 1190, 1, 0);
INSERT INTO public.games VALUES (103, 2014, 'Quarter-Final', 1201, 1205, 2, 1);
INSERT INTO public.games VALUES (104, 2014, 'Quarter-Final', 1220, 1188, 1, 0);
INSERT INTO public.games VALUES (105, 2014, 'Eighth-Final', 1201, 1237, 2, 1);
INSERT INTO public.games VALUES (106, 2014, 'Eighth-Final', 1205, 1203, 2, 0);
INSERT INTO public.games VALUES (107, 2014, 'Eighth-Final', 1188, 1241, 2, 0);
INSERT INTO public.games VALUES (108, 2014, 'Eighth-Final', 1220, 1243, 2, 1);
INSERT INTO public.games VALUES (109, 2014, 'Eighth-Final', 1222, 1211, 2, 1);
INSERT INTO public.games VALUES (110, 2014, 'Eighth-Final', 1229, 1247, 2, 1);
INSERT INTO public.games VALUES (111, 2014, 'Eighth-Final', 1219, 1207, 1, 0);
INSERT INTO public.games VALUES (112, 2014, 'Eighth-Final', 1190, 1251, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1188, 'France');
INSERT INTO public.teams VALUES (1189, 'Croatia');
INSERT INTO public.teams VALUES (1190, 'Belgium');
INSERT INTO public.teams VALUES (1191, 'England');
INSERT INTO public.teams VALUES (1197, 'Russia');
INSERT INTO public.teams VALUES (1199, 'Sweden');
INSERT INTO public.teams VALUES (1201, 'Brazil');
INSERT INTO public.teams VALUES (1203, 'Uruguay');
INSERT INTO public.teams VALUES (1205, 'Colombia');
INSERT INTO public.teams VALUES (1207, 'Switzerland');
INSERT INTO public.teams VALUES (1209, 'Japan');
INSERT INTO public.teams VALUES (1211, 'Mexico');
INSERT INTO public.teams VALUES (1213, 'Denmark');
INSERT INTO public.teams VALUES (1215, 'Spain');
INSERT INTO public.teams VALUES (1217, 'Portugal');
INSERT INTO public.teams VALUES (1219, 'Argentina');
INSERT INTO public.teams VALUES (1220, 'Germany');
INSERT INTO public.teams VALUES (1222, 'Netherlands');
INSERT INTO public.teams VALUES (1229, 'Costa Rica');
INSERT INTO public.teams VALUES (1237, 'Chile');
INSERT INTO public.teams VALUES (1241, 'Nigeria');
INSERT INTO public.teams VALUES (1243, 'Algeria');
INSERT INTO public.teams VALUES (1247, 'Greece');
INSERT INTO public.teams VALUES (1251, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 112, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1251, true);


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
-- Name: games opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

