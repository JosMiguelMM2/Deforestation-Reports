--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: Affectation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Affectation" (
    "idAffectation" integer NOT NULL,
    "Name" character varying(20) NOT NULL
);


ALTER TABLE public."Affectation" OWNER TO postgres;

--
-- Name: Affectation_idAffectation_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Affectation_idAffectation_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Affectation_idAffectation_seq" OWNER TO postgres;

--
-- Name: Affectation_idAffectation_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Affectation_idAffectation_seq" OWNED BY public."Affectation"."idAffectation";


--
-- Name: Amount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Amount" (
    "idAmount" integer NOT NULL,
    "Quantity" money NOT NULL
);


ALTER TABLE public."Amount" OWNER TO postgres;

--
-- Name: Amount_idAmount_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Amount_idAmount_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Amount_idAmount_seq" OWNER TO postgres;

--
-- Name: Amount_idAmount_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Amount_idAmount_seq" OWNED BY public."Amount"."idAmount";


--
-- Name: City; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."City" (
    "idCity" integer NOT NULL,
    "Name" character varying(30) NOT NULL,
    addres character varying(300) NOT NULL
);


ALTER TABLE public."City" OWNER TO postgres;

--
-- Name: City_idCity_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."City_idCity_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."City_idCity_seq" OWNER TO postgres;

--
-- Name: City_idCity_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."City_idCity_seq" OWNED BY public."City"."idCity";


--
-- Name: Deforest_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Deforest_type" (
    "idDeforest" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);


ALTER TABLE public."Deforest_type" OWNER TO postgres;

--
-- Name: Deforest_type_idDeforest_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Deforest_type_idDeforest_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Deforest_type_idDeforest_seq" OWNER TO postgres;

--
-- Name: Deforest_type_idDeforest_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Deforest_type_idDeforest_seq" OWNED BY public."Deforest_type"."idDeforest";


--
-- Name: Donations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Donations" (
    "idDonation" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    iduser integer,
    idpayment integer,
    idfrecuency integer,
    "idAmount" integer
);


ALTER TABLE public."Donations" OWNER TO postgres;

--
-- Name: Donations_idDonation_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Donations_idDonation_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Donations_idDonation_seq" OWNER TO postgres;

--
-- Name: Donations_idDonation_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Donations_idDonation_seq" OWNED BY public."Donations"."idDonation";


--
-- Name: Frecuency; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Frecuency" (
    "idFrecuency" integer NOT NULL,
    "Name" character varying(20) NOT NULL
);


ALTER TABLE public."Frecuency" OWNER TO postgres;

--
-- Name: Frecuency_idFrecuency_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Frecuency_idFrecuency_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Frecuency_idFrecuency_seq" OWNER TO postgres;

--
-- Name: Frecuency_idFrecuency_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Frecuency_idFrecuency_seq" OWNED BY public."Frecuency"."idFrecuency";


--
-- Name: Gender; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Gender" (
    "idGender" integer NOT NULL,
    "Category" character varying(30) NOT NULL
);


ALTER TABLE public."Gender" OWNER TO postgres;

--
-- Name: Gender_idGender_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Gender_idGender_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Gender_idGender_seq" OWNER TO postgres;

--
-- Name: Gender_idGender_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Gender_idGender_seq" OWNED BY public."Gender"."idGender";


--
-- Name: Government_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Government_entity" (
    "idGoverenty" integer NOT NULL,
    "Name" character varying(30) NOT NULL
);


ALTER TABLE public."Government_entity" OWNER TO postgres;

--
-- Name: Government_entity_idGoverenty_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Government_entity_idGoverenty_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Government_entity_idGoverenty_seq" OWNER TO postgres;

--
-- Name: Government_entity_idGoverenty_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Government_entity_idGoverenty_seq" OWNED BY public."Government_entity"."idGoverenty";


--
-- Name: Payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Payment" (
    "idPayment" integer NOT NULL,
    "Name" character varying(30) NOT NULL
);


ALTER TABLE public."Payment" OWNER TO postgres;

--
-- Name: Payment_idPayment_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Payment_idPayment_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Payment_idPayment_seq" OWNER TO postgres;

--
-- Name: Payment_idPayment_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Payment_idPayment_seq" OWNED BY public."Payment"."idPayment";


--
-- Name: Phone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Phone" (
    "idPhone" integer NOT NULL,
    "Number" character varying(30) NOT NULL
);


ALTER TABLE public."Phone" OWNER TO postgres;

--
-- Name: Phone_idPhone_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Phone_idPhone_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Phone_idPhone_seq" OWNER TO postgres;

--
-- Name: Phone_idPhone_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Phone_idPhone_seq" OWNED BY public."Phone"."idPhone";


--
-- Name: Report; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Report" (
    "idReport" integer NOT NULL,
    "Report" character varying(30) NOT NULL,
    "Datetime" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "idDeforest" integer NOT NULL,
    "idAffectation" integer NOT NULL,
    "idCity" integer NOT NULL
);


ALTER TABLE public."Report" OWNER TO postgres;

--
-- Name: Report_idReport_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Report_idReport_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Report_idReport_seq" OWNER TO postgres;

--
-- Name: Report_idReport_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Report_idReport_seq" OWNED BY public."Report"."idReport";


--
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    "idUser" integer NOT NULL,
    "First_Name" character varying(15) NOT NULL,
    "Second_Name" character varying(15),
    "First_surname" character varying(15) NOT NULL,
    "Second_surname" character varying(15),
    "Email" character varying(200) NOT NULL,
    "Password" character varying(100) NOT NULL,
    user_type character varying(20) NOT NULL,
    "idCity" integer,
    "idPhone" integer,
    "idGender" integer,
    "idLocations" integer
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- Name: UserBlogs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserBlogs" (
    "idUserBlogs" integer NOT NULL,
    "idUser" integer,
    "IdBlogs" integer
);


ALTER TABLE public."UserBlogs" OWNER TO postgres;

--
-- Name: UserBlogs_idUserBlogs_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserBlogs_idUserBlogs_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."UserBlogs_idUserBlogs_seq" OWNER TO postgres;

--
-- Name: UserBlogs_idUserBlogs_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserBlogs_idUserBlogs_seq" OWNED BY public."UserBlogs"."idUserBlogs";


--
-- Name: User_idUser_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_idUser_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."User_idUser_seq" OWNER TO postgres;

--
-- Name: User_idUser_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_idUser_seq" OWNED BY public."User"."idUser";


--
-- Name: blogs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blogs (
    "idBlogs" integer NOT NULL,
    "Title" character varying NOT NULL,
    content character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    published boolean NOT NULL
);


ALTER TABLE public.blogs OWNER TO postgres;

--
-- Name: blogs_idBlogs_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."blogs_idBlogs_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."blogs_idBlogs_seq" OWNER TO postgres;

--
-- Name: blogs_idBlogs_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."blogs_idBlogs_seq" OWNED BY public.blogs."idBlogs";


--
-- Name: entity_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entity_user (
    "idEntityus" integer NOT NULL,
    "idGoverenty" integer,
    "idUser" integer
);


ALTER TABLE public.entity_user OWNER TO postgres;

--
-- Name: entity_user_idEntityus_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."entity_user_idEntityus_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."entity_user_idEntityus_seq" OWNER TO postgres;

--
-- Name: entity_user_idEntityus_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."entity_user_idEntityus_seq" OWNED BY public.entity_user."idEntityus";


--
-- Name: locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locations (
    latitude numeric(10,8),
    longitude numeric(11,8),
    "numberLocation" character varying,
    "idLocations" integer NOT NULL
);


ALTER TABLE public.locations OWNER TO postgres;

--
-- Name: Affectation idAffectation; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Affectation" ALTER COLUMN "idAffectation" SET DEFAULT nextval('public."Affectation_idAffectation_seq"'::regclass);


--
-- Name: Amount idAmount; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Amount" ALTER COLUMN "idAmount" SET DEFAULT nextval('public."Amount_idAmount_seq"'::regclass);


--
-- Name: City idCity; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."City" ALTER COLUMN "idCity" SET DEFAULT nextval('public."City_idCity_seq"'::regclass);


--
-- Name: Deforest_type idDeforest; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Deforest_type" ALTER COLUMN "idDeforest" SET DEFAULT nextval('public."Deforest_type_idDeforest_seq"'::regclass);


--
-- Name: Donations idDonation; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Donations" ALTER COLUMN "idDonation" SET DEFAULT nextval('public."Donations_idDonation_seq"'::regclass);


--
-- Name: Frecuency idFrecuency; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Frecuency" ALTER COLUMN "idFrecuency" SET DEFAULT nextval('public."Frecuency_idFrecuency_seq"'::regclass);


--
-- Name: Gender idGender; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Gender" ALTER COLUMN "idGender" SET DEFAULT nextval('public."Gender_idGender_seq"'::regclass);


--
-- Name: Government_entity idGoverenty; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Government_entity" ALTER COLUMN "idGoverenty" SET DEFAULT nextval('public."Government_entity_idGoverenty_seq"'::regclass);


--
-- Name: Payment idPayment; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Payment" ALTER COLUMN "idPayment" SET DEFAULT nextval('public."Payment_idPayment_seq"'::regclass);


--
-- Name: Phone idPhone; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Phone" ALTER COLUMN "idPhone" SET DEFAULT nextval('public."Phone_idPhone_seq"'::regclass);


--
-- Name: Report idReport; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Report" ALTER COLUMN "idReport" SET DEFAULT nextval('public."Report_idReport_seq"'::regclass);


--
-- Name: User idUser; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User" ALTER COLUMN "idUser" SET DEFAULT nextval('public."User_idUser_seq"'::regclass);


--
-- Name: UserBlogs idUserBlogs; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserBlogs" ALTER COLUMN "idUserBlogs" SET DEFAULT nextval('public."UserBlogs_idUserBlogs_seq"'::regclass);


--
-- Name: blogs idBlogs; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs ALTER COLUMN "idBlogs" SET DEFAULT nextval('public."blogs_idBlogs_seq"'::regclass);


--
-- Name: entity_user idEntityus; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entity_user ALTER COLUMN "idEntityus" SET DEFAULT nextval('public."entity_user_idEntityus_seq"'::regclass);


--
-- Data for Name: Affectation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Affectation" ("idAffectation", "Name") FROM stdin;
\.


--
-- Data for Name: Amount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Amount" ("idAmount", "Quantity") FROM stdin;
\.


--
-- Data for Name: City; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."City" ("idCity", "Name", addres) FROM stdin;
\.


--
-- Data for Name: Deforest_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Deforest_type" ("idDeforest", "Name") FROM stdin;
\.


--
-- Data for Name: Donations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Donations" ("idDonation", "Name", iduser, idpayment, idfrecuency, "idAmount") FROM stdin;
\.


--
-- Data for Name: Frecuency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Frecuency" ("idFrecuency", "Name") FROM stdin;
\.


--
-- Data for Name: Gender; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Gender" ("idGender", "Category") FROM stdin;
\.


--
-- Data for Name: Government_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Government_entity" ("idGoverenty", "Name") FROM stdin;
\.


--
-- Data for Name: Payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Payment" ("idPayment", "Name") FROM stdin;
\.


--
-- Data for Name: Phone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Phone" ("idPhone", "Number") FROM stdin;
\.


--
-- Data for Name: Report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Report" ("idReport", "Report", "Datetime", "idDeforest", "idAffectation", "idCity") FROM stdin;
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" ("idUser", "First_Name", "Second_Name", "First_surname", "Second_surname", "Email", "Password", user_type, "idCity", "idPhone", "idGender", "idLocations") FROM stdin;
\.


--
-- Data for Name: UserBlogs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserBlogs" ("idUserBlogs", "idUser", "IdBlogs") FROM stdin;
\.


--
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blogs ("idBlogs", "Title", content, created_at, updated_at, published) FROM stdin;
\.


--
-- Data for Name: entity_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entity_user ("idEntityus", "idGoverenty", "idUser") FROM stdin;
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.locations (latitude, longitude, "numberLocation", "idLocations") FROM stdin;
\.


--
-- Name: Affectation_idAffectation_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Affectation_idAffectation_seq"', 1, false);


--
-- Name: Amount_idAmount_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Amount_idAmount_seq"', 1, false);


--
-- Name: City_idCity_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."City_idCity_seq"', 1, false);


--
-- Name: Deforest_type_idDeforest_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Deforest_type_idDeforest_seq"', 1, false);


--
-- Name: Donations_idDonation_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Donations_idDonation_seq"', 1, false);


--
-- Name: Frecuency_idFrecuency_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Frecuency_idFrecuency_seq"', 1, false);


--
-- Name: Gender_idGender_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Gender_idGender_seq"', 1, false);


--
-- Name: Government_entity_idGoverenty_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Government_entity_idGoverenty_seq"', 1, false);


--
-- Name: Payment_idPayment_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Payment_idPayment_seq"', 1, false);


--
-- Name: Phone_idPhone_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Phone_idPhone_seq"', 1, false);


--
-- Name: Report_idReport_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Report_idReport_seq"', 1, false);


--
-- Name: UserBlogs_idUserBlogs_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserBlogs_idUserBlogs_seq"', 1, false);


--
-- Name: User_idUser_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_idUser_seq"', 1, false);


--
-- Name: blogs_idBlogs_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."blogs_idBlogs_seq"', 1, false);


--
-- Name: entity_user_idEntityus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."entity_user_idEntityus_seq"', 1, false);


--
-- Name: Affectation Affectation_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Affectation"
    ADD CONSTRAINT "Affectation_pk" PRIMARY KEY ("idAffectation");


--
-- Name: Amount Amount_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Amount"
    ADD CONSTRAINT "Amount_pk" PRIMARY KEY ("idAmount");


--
-- Name: City City_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."City"
    ADD CONSTRAINT "City_pk" PRIMARY KEY ("idCity");


--
-- Name: Deforest_type Deforest_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Deforest_type"
    ADD CONSTRAINT "Deforest_pk" PRIMARY KEY ("idDeforest");


--
-- Name: Donations Donation_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Donations"
    ADD CONSTRAINT "Donation_pk" PRIMARY KEY ("idDonation");


--
-- Name: Frecuency Frecuency_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Frecuency"
    ADD CONSTRAINT "Frecuency_pk" PRIMARY KEY ("idFrecuency");


--
-- Name: Gender Gender_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Gender"
    ADD CONSTRAINT "Gender_pk" PRIMARY KEY ("idGender");


--
-- Name: Government_entity Goverenty_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Government_entity"
    ADD CONSTRAINT "Goverenty_pk" PRIMARY KEY ("idGoverenty");


--
-- Name: Payment Payment_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Payment"
    ADD CONSTRAINT "Payment_pk" PRIMARY KEY ("idPayment");


--
-- Name: Phone Phone_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Phone"
    ADD CONSTRAINT "Phone_pk" PRIMARY KEY ("idPhone");


--
-- Name: Report Report_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Report"
    ADD CONSTRAINT "Report_pk" PRIMARY KEY ("idReport");


--
-- Name: UserBlogs UserBlogs_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserBlogs"
    ADD CONSTRAINT "UserBlogs_pk" PRIMARY KEY ("idUserBlogs");


--
-- Name: User User_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pk" PRIMARY KEY ("idUser");


--
-- Name: blogs blogs_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_pk PRIMARY KEY ("idBlogs");


--
-- Name: entity_user entityus_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entity_user
    ADD CONSTRAINT entityus_pk PRIMARY KEY ("idEntityus");


--
-- Name: locations locations_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pk PRIMARY KEY ("idLocations");


--
-- Name: Donations Amount__fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Donations"
    ADD CONSTRAINT "Amount__fk" FOREIGN KEY ("idAmount") REFERENCES public."Amount"("idAmount");


--
-- Name: Donations Frecuency__fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Donations"
    ADD CONSTRAINT "Frecuency__fk" FOREIGN KEY (idfrecuency) REFERENCES public."Frecuency"("idFrecuency");


--
-- Name: Report IdAffectation___fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Report"
    ADD CONSTRAINT "IdAffectation___fk" FOREIGN KEY ("idAffectation") REFERENCES public."Affectation"("idAffectation");


--
-- Name: Donations Payment__fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Donations"
    ADD CONSTRAINT "Payment__fk" FOREIGN KEY (idpayment) REFERENCES public."Payment"("idPayment");


--
-- Name: UserBlogs UserBlogs_User_idUser_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserBlogs"
    ADD CONSTRAINT "UserBlogs_User_idUser_fk" FOREIGN KEY ("idUser") REFERENCES public."User"("idUser");


--
-- Name: UserBlogs UserBlogs_blogs_idBlogs_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserBlogs"
    ADD CONSTRAINT "UserBlogs_blogs_idBlogs_fk" FOREIGN KEY ("IdBlogs") REFERENCES public.blogs("idBlogs");


--
-- Name: Donations User__fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Donations"
    ADD CONSTRAINT "User__fk" FOREIGN KEY (iduser) REFERENCES public."User"("idUser");


--
-- Name: User User_locations_idLocations_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_locations_idLocations_fk" FOREIGN KEY ("idLocations") REFERENCES public.locations("idLocations");


--
-- Name: User idCity___fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "idCity___fk" FOREIGN KEY ("idCity") REFERENCES public."City"("idCity");


--
-- Name: Report idCity___fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Report"
    ADD CONSTRAINT "idCity___fk" FOREIGN KEY ("idCity") REFERENCES public."City"("idCity");


--
-- Name: Report idDeforest__fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Report"
    ADD CONSTRAINT "idDeforest__fk" FOREIGN KEY ("idDeforest") REFERENCES public."Deforest_type"("idDeforest");


--
-- Name: User idGender___fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "idGender___fk" FOREIGN KEY ("idGender") REFERENCES public."Gender"("idGender");


--
-- Name: entity_user idGoverenty___fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entity_user
    ADD CONSTRAINT "idGoverenty___fk" FOREIGN KEY ("idGoverenty") REFERENCES public."Government_entity"("idGoverenty");


--
-- Name: User idPhone___fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "idPhone___fk" FOREIGN KEY ("idPhone") REFERENCES public."Phone"("idPhone");


--
-- Name: entity_user iduser___fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entity_user
    ADD CONSTRAINT iduser___fk FOREIGN KEY ("idUser") REFERENCES public."User"("idUser");


--
-- PostgreSQL database dump complete
--

