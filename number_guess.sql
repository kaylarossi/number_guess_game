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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (63, 72, 706);
INSERT INTO public.games VALUES (64, 72, 150);
INSERT INTO public.games VALUES (65, 73, 988);
INSERT INTO public.games VALUES (66, 73, 470);
INSERT INTO public.games VALUES (67, 72, 980);
INSERT INTO public.games VALUES (68, 72, 650);
INSERT INTO public.games VALUES (69, 72, 701);
INSERT INTO public.games VALUES (70, 74, 12);
INSERT INTO public.games VALUES (71, 75, 977);
INSERT INTO public.games VALUES (72, 75, 428);
INSERT INTO public.games VALUES (73, 76, 912);
INSERT INTO public.games VALUES (74, 76, 506);
INSERT INTO public.games VALUES (75, 75, 185);
INSERT INTO public.games VALUES (76, 75, 29);
INSERT INTO public.games VALUES (77, 75, 192);
INSERT INTO public.games VALUES (78, 77, 230);
INSERT INTO public.games VALUES (79, 77, 777);
INSERT INTO public.games VALUES (80, 78, 993);
INSERT INTO public.games VALUES (81, 78, 312);
INSERT INTO public.games VALUES (82, 77, 756);
INSERT INTO public.games VALUES (83, 77, 690);
INSERT INTO public.games VALUES (84, 77, 903);
INSERT INTO public.games VALUES (85, 79, 283);
INSERT INTO public.games VALUES (86, 79, 439);
INSERT INTO public.games VALUES (87, 80, 177);
INSERT INTO public.games VALUES (88, 80, 723);
INSERT INTO public.games VALUES (89, 79, 882);
INSERT INTO public.games VALUES (90, 79, 345);
INSERT INTO public.games VALUES (91, 79, 333);
INSERT INTO public.games VALUES (92, 81, 8);
INSERT INTO public.games VALUES (93, 81, 11);
INSERT INTO public.games VALUES (94, 82, 624);
INSERT INTO public.games VALUES (95, 82, 650);
INSERT INTO public.games VALUES (96, 83, 867);
INSERT INTO public.games VALUES (97, 83, 355);
INSERT INTO public.games VALUES (98, 82, 394);
INSERT INTO public.games VALUES (99, 82, 457);
INSERT INTO public.games VALUES (100, 82, 658);
INSERT INTO public.games VALUES (101, 81, 12);
INSERT INTO public.games VALUES (102, 84, 214);
INSERT INTO public.games VALUES (103, 84, 465);
INSERT INTO public.games VALUES (104, 85, 883);
INSERT INTO public.games VALUES (105, 85, 35);
INSERT INTO public.games VALUES (106, 84, 299);
INSERT INTO public.games VALUES (107, 84, 870);
INSERT INTO public.games VALUES (108, 84, 496);
INSERT INTO public.games VALUES (109, 86, 901);
INSERT INTO public.games VALUES (110, 86, 989);
INSERT INTO public.games VALUES (111, 87, 429);
INSERT INTO public.games VALUES (112, 87, 104);
INSERT INTO public.games VALUES (113, 86, 796);
INSERT INTO public.games VALUES (114, 86, 648);
INSERT INTO public.games VALUES (115, 86, 862);
INSERT INTO public.games VALUES (116, 74, 10);
INSERT INTO public.games VALUES (117, 81, 13);
INSERT INTO public.games VALUES (118, 88, 209);
INSERT INTO public.games VALUES (119, 88, 33);
INSERT INTO public.games VALUES (120, 89, 953);
INSERT INTO public.games VALUES (121, 89, 310);
INSERT INTO public.games VALUES (122, 88, 424);
INSERT INTO public.games VALUES (123, 88, 636);
INSERT INTO public.games VALUES (124, 88, 165);
INSERT INTO public.games VALUES (125, 90, 58);
INSERT INTO public.games VALUES (126, 90, 150);
INSERT INTO public.games VALUES (127, 91, 700);
INSERT INTO public.games VALUES (128, 91, 346);
INSERT INTO public.games VALUES (129, 90, 552);
INSERT INTO public.games VALUES (130, 90, 852);
INSERT INTO public.games VALUES (131, 90, 787);
INSERT INTO public.games VALUES (132, 92, 438);
INSERT INTO public.games VALUES (133, 92, 285);
INSERT INTO public.games VALUES (134, 93, 349);
INSERT INTO public.games VALUES (135, 93, 536);
INSERT INTO public.games VALUES (136, 92, 643);
INSERT INTO public.games VALUES (137, 92, 904);
INSERT INTO public.games VALUES (138, 92, 740);
INSERT INTO public.games VALUES (139, 81, 16);
INSERT INTO public.games VALUES (140, 94, 858);
INSERT INTO public.games VALUES (141, 94, 155);
INSERT INTO public.games VALUES (142, 95, 497);
INSERT INTO public.games VALUES (143, 95, 871);
INSERT INTO public.games VALUES (144, 94, 75);
INSERT INTO public.games VALUES (145, 94, 928);
INSERT INTO public.games VALUES (146, 94, 19);
INSERT INTO public.games VALUES (147, 96, 313);
INSERT INTO public.games VALUES (148, 96, 781);
INSERT INTO public.games VALUES (149, 97, 489);
INSERT INTO public.games VALUES (150, 97, 974);
INSERT INTO public.games VALUES (151, 96, 290);
INSERT INTO public.games VALUES (152, 96, 871);
INSERT INTO public.games VALUES (153, 96, 639);
INSERT INTO public.games VALUES (154, 98, 917);
INSERT INTO public.games VALUES (155, 98, 333);
INSERT INTO public.games VALUES (156, 99, 580);
INSERT INTO public.games VALUES (157, 99, 842);
INSERT INTO public.games VALUES (158, 98, 897);
INSERT INTO public.games VALUES (159, 98, 402);
INSERT INTO public.games VALUES (160, 98, 390);
INSERT INTO public.games VALUES (161, 100, 429);
INSERT INTO public.games VALUES (162, 101, 873);
INSERT INTO public.games VALUES (163, 101, 367);
INSERT INTO public.games VALUES (164, 100, 749);
INSERT INTO public.games VALUES (165, 100, 814);
INSERT INTO public.games VALUES (166, 100, 83);
INSERT INTO public.games VALUES (167, 102, 292);
INSERT INTO public.games VALUES (168, 102, 874);
INSERT INTO public.games VALUES (169, 103, 238);
INSERT INTO public.games VALUES (170, 102, 954);
INSERT INTO public.games VALUES (171, 102, 421);
INSERT INTO public.games VALUES (172, 81, 13);
INSERT INTO public.games VALUES (173, 105, 59);
INSERT INTO public.games VALUES (174, 105, 688);
INSERT INTO public.games VALUES (175, 106, 425);
INSERT INTO public.games VALUES (176, 106, 436);
INSERT INTO public.games VALUES (177, 105, 910);
INSERT INTO public.games VALUES (178, 105, 665);
INSERT INTO public.games VALUES (179, 105, 691);
INSERT INTO public.games VALUES (180, 107, 828);
INSERT INTO public.games VALUES (181, 107, 24);
INSERT INTO public.games VALUES (182, 108, 447);
INSERT INTO public.games VALUES (183, 108, 309);
INSERT INTO public.games VALUES (184, 107, 187);
INSERT INTO public.games VALUES (185, 107, 202);
INSERT INTO public.games VALUES (186, 107, 229);
INSERT INTO public.games VALUES (187, 109, 80);
INSERT INTO public.games VALUES (188, 109, 6);
INSERT INTO public.games VALUES (189, 110, 717);
INSERT INTO public.games VALUES (190, 110, 496);
INSERT INTO public.games VALUES (191, 109, 160);
INSERT INTO public.games VALUES (192, 109, 49);
INSERT INTO public.games VALUES (193, 109, 666);
INSERT INTO public.games VALUES (194, 111, 57);
INSERT INTO public.games VALUES (195, 111, 819);
INSERT INTO public.games VALUES (196, 112, 104);
INSERT INTO public.games VALUES (197, 112, 116);
INSERT INTO public.games VALUES (198, 111, 674);
INSERT INTO public.games VALUES (199, 111, 355);
INSERT INTO public.games VALUES (200, 111, 161);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (72, 'user_1718215527189');
INSERT INTO public.users VALUES (73, 'user_1718215527188');
INSERT INTO public.users VALUES (74, 'kayla');
INSERT INTO public.users VALUES (75, 'user_1718216080846');
INSERT INTO public.users VALUES (76, 'user_1718216080845');
INSERT INTO public.users VALUES (77, 'user_1718216197386');
INSERT INTO public.users VALUES (78, 'user_1718216197385');
INSERT INTO public.users VALUES (79, 'user_1718216265535');
INSERT INTO public.users VALUES (80, 'user_1718216265534');
INSERT INTO public.users VALUES (81, 'hi');
INSERT INTO public.users VALUES (82, 'user_1718216716594');
INSERT INTO public.users VALUES (83, 'user_1718216716593');
INSERT INTO public.users VALUES (84, 'user_1718216900732');
INSERT INTO public.users VALUES (85, 'user_1718216900731');
INSERT INTO public.users VALUES (86, 'user_1718217414704');
INSERT INTO public.users VALUES (87, 'user_1718217414703');
INSERT INTO public.users VALUES (88, 'user_1718217548437');
INSERT INTO public.users VALUES (89, 'user_1718217548436');
INSERT INTO public.users VALUES (90, 'user_1718217592322');
INSERT INTO public.users VALUES (91, 'user_1718217592321');
INSERT INTO public.users VALUES (92, 'user_1718217634165');
INSERT INTO public.users VALUES (93, 'user_1718217634164');
INSERT INTO public.users VALUES (94, 'user_1718217775536');
INSERT INTO public.users VALUES (95, 'user_1718217775535');
INSERT INTO public.users VALUES (96, 'user_1718217805770');
INSERT INTO public.users VALUES (97, 'user_1718217805769');
INSERT INTO public.users VALUES (98, 'user_1718217871295');
INSERT INTO public.users VALUES (99, 'user_1718217871294');
INSERT INTO public.users VALUES (100, 'user_1718217932525');
INSERT INTO public.users VALUES (101, 'user_1718217932524');
INSERT INTO public.users VALUES (102, 'user_1718218106525');
INSERT INTO public.users VALUES (103, 'user_1718218106524');
INSERT INTO public.users VALUES (104, 'helpme');
INSERT INTO public.users VALUES (105, 'user_1718218486702');
INSERT INTO public.users VALUES (106, 'user_1718218486701');
INSERT INTO public.users VALUES (107, 'user_1718218634855');
INSERT INTO public.users VALUES (108, 'user_1718218634853');
INSERT INTO public.users VALUES (109, 'user_1718218647754');
INSERT INTO public.users VALUES (110, 'user_1718218647753');
INSERT INTO public.users VALUES (111, 'user_1718218677848');
INSERT INTO public.users VALUES (112, 'user_1718218677847');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 200, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 112, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

