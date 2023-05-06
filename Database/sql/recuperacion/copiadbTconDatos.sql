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
-- Name: GradeAffectation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."GradeAffectation" (
    "idAffectation" integer NOT NULL,
    "Name" character varying(60) NOT NULL,
    "Description" character varying(100)
);


ALTER TABLE public."GradeAffectation" OWNER TO postgres;

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

ALTER SEQUENCE public."Affectation_idAffectation_seq" OWNED BY public."GradeAffectation"."idAffectation";


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
    "Report" character varying(230) NOT NULL,
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
    "idCity" integer,
    "idPhone" integer,
    "idGender" integer,
    "idUser_type" integer
);


ALTER TABLE public."User" OWNER TO postgres;

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
    published boolean NOT NULL,
    "idUser" integer
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
    "nameLocation" character varying,
    "idReport" integer,
    idlocations integer NOT NULL
);


ALTER TABLE public.locations OWNER TO postgres;

--
-- Name: locations_idlocations_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.locations_idlocations_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locations_idlocations_seq OWNER TO postgres;

--
-- Name: locations_idlocations_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.locations_idlocations_seq OWNED BY public.locations.idlocations;


--
-- Name: user_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_type (
    "idUser_type" integer NOT NULL,
    "Type" character varying NOT NULL
);


ALTER TABLE public.user_type OWNER TO postgres;

--
-- Name: user_type_idUser_type_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."user_type_idUser_type_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."user_type_idUser_type_seq" OWNER TO postgres;

--
-- Name: user_type_idUser_type_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."user_type_idUser_type_seq" OWNED BY public.user_type."idUser_type";


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
-- Name: GradeAffectation idAffectation; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GradeAffectation" ALTER COLUMN "idAffectation" SET DEFAULT nextval('public."Affectation_idAffectation_seq"'::regclass);


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
-- Name: blogs idBlogs; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs ALTER COLUMN "idBlogs" SET DEFAULT nextval('public."blogs_idBlogs_seq"'::regclass);


--
-- Name: entity_user idEntityus; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entity_user ALTER COLUMN "idEntityus" SET DEFAULT nextval('public."entity_user_idEntityus_seq"'::regclass);


--
-- Name: locations idlocations; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations ALTER COLUMN idlocations SET DEFAULT nextval('public.locations_idlocations_seq'::regclass);


--
-- Name: user_type idUser_type; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_type ALTER COLUMN "idUser_type" SET DEFAULT nextval('public."user_type_idUser_type_seq"'::regclass);


--
-- Data for Name: Amount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Amount" ("idAmount", "Quantity") FROM stdin;
1	$ 51,00
2	$ 624,00
3	$ 563,00
4	$ 678,00
5	$ 733,00
6	$ 144,00
7	$ 212,00
8	$ 804,00
9	$ 781,00
10	$ 707,00
11	$ 929,00
12	$ 416,00
13	$ 848,00
14	$ 362,00
15	$ 883,00
16	$ 31,00
17	$ 933,00
18	$ 669,00
19	$ 63,00
20	$ 778,00
21	$ 358,00
22	$ 931,00
23	$ 516,00
24	$ 344,00
25	$ 590,00
26	$ 523,00
27	$ 264,00
28	$ 265,00
29	$ 643,00
30	$ 625,00
\.


--
-- Data for Name: City; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."City" ("idCity", "Name", addres) FROM stdin;
1	Pengilon	01973 Carpenter Circle
2	Huancapallac	63 Columbus Trail
3	Arroio Grande	537 Fremont Terrace
4	Brudzeń Duży	498 Manufacturers Road
5	Thị Trấn Cẩm Thủy	0 Shelley Parkway
6	Porkhov	290 Packers Crossing
7	Alistráti	8 Maple Wood Circle
8	Wairiang	79393 Thackeray Trail
9	Hōjō	85835 Center Crossing
10	São Domingos do Maranhão	3058 Magdeline Avenue
11	Sake	55 Morningstar Junction
12	Tsurib	0 Hudson Plaza
13	Tlogotunggal	41119 Bluejay Drive
14	Cunliji	887 Heath Circle
15	Inari	4 Eagan Street
16	Tysmenychany	648 Vernon Parkway
17	Puerto Nariño	5 Roxbury Trail
18	Kabare	1 Knutson Lane
19	Jieshui	473 Sycamore Court
20	Valencia	9917 Vera Pass
21	Atlanta	64222 Hoffman Center
22	Blois	77363 Sauthoff Way
23	Brunflo	08383 La Follette Junction
24	Retenggoma	429 Hanson Circle
25	Buawan	05 Sullivan Circle
26	Kiaranonggeng	20 Hanson Way
27	Buchou	902 Meadow Vale Crossing
28	Qal‘at al Andalus	981 Caliangt Center
29	Valdemarsvik	48833 Oak Valley Hill
30	Lendangara Satu	2 Eastwood Terrace
\.


--
-- Data for Name: Deforest_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Deforest_type" ("idDeforest", "Name") FROM stdin;
4	Ganadería
5	Petróleo y gas
6	Construcción
7	Mineria
8	Urbanización
9	Tala de árboles
10	Cambio climático
\.


--
-- Data for Name: Donations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Donations" ("idDonation", "Name", iduser, idpayment, idfrecuency, "idAmount") FROM stdin;
1	Jaimie Chismon	21	3	3	12
2	Whitman Hebblewhite	19	1	1	25
3	Conant Treherne	5	1	1	21
4	Averil Ascraft	10	2	1	10
5	Giulia Farmer	23	2	4	7
6	Jarvis D'Alesco	13	3	3	4
7	Loella Crystal	15	3	1	17
8	Phillipe Garard	13	3	2	25
9	Robb Timewell	14	1	1	16
10	Sydney Duckering	14	3	3	4
11	Stefania Dunnet	9	3	4	4
12	Elfrieda McClounan	26	2	3	2
13	Enos Costy	2	3	2	20
14	Charmine Banane	11	2	2	3
15	Corella Jugging	1	3	4	28
16	Flint Meddings	10	3	4	15
17	Sam MacIlurick	14	2	3	17
18	Gilbertine Hartington	27	2	4	25
19	Ab Yegorovnin	6	1	2	30
20	Tresa Du Plantier	6	2	2	15
21	Mace Devers	12	1	1	20
22	Freddy Swayte	26	1	2	15
23	Gay Whitloe	10	2	1	2
24	Irv Elfitt	23	3	1	12
25	Darsie Walford	29	2	4	25
26	Alvera Cullip	13	1	3	17
27	Glyn Draysay	17	1	2	15
28	Cherida Acland	27	1	4	29
29	Jacquelyn Millwater	5	1	1	25
30	Bethany Reinhart	19	2	1	1
\.


--
-- Data for Name: Frecuency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Frecuency" ("idFrecuency", "Name") FROM stdin;
1	Mensual
2	Trimestral
3	Semestral
4	Anual
\.


--
-- Data for Name: Gender; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Gender" ("idGender", "Category") FROM stdin;
1	Masculino
2	Femenino
3	Otro
\.


--
-- Data for Name: Government_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Government_entity" ("idGoverenty", "Name") FROM stdin;
1	Policia
2	Departamento de planeacion
3	Ministerio de ambiente
4	Alcaldia de Chia
5	Alcaldia de Cajica
6	Alcaldia de Zipaquira
7	CAR
\.


--
-- Data for Name: GradeAffectation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."GradeAffectation" ("idAffectation", "Name", "Description") FROM stdin;
3	Moderada	Afectación moderada con posibles consecuencias a corto plazo.
1	Mínima	Casi ninguna afectación al medio ambiente.
2	Baja	Afectación leve y reversible, con impacto mínimo en los ecosistemas.
4	Significativa	Afectación significativa con impacto visible en los ecosistemas y en la calidad del medio ambiente.
5	Alta	Afectación alta con consecuencias a largo plazo y posibles daños irreversibles.
6	Grave	Afectación grave con impacto masivo y daños irreparables al medio ambiente.
\.


--
-- Data for Name: Payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Payment" ("idPayment", "Name") FROM stdin;
1	Tarjeta
2	Pse
3	Consignacion
\.


--
-- Data for Name: Phone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Phone" ("idPhone", "Number") FROM stdin;
1	5846557996
2	9446671310
3	3586581424
4	2221843983
5	4083142634
6	2302786211
7	7096610146
8	8520735061
9	3292404088
10	1305175794
11	7753498649
12	9556224092
13	6888963012
14	8068652183
15	9894795870
16	0237367300
17	6942205907
18	3203700107
19	2126516180
20	0847387828
21	0935149686
22	1794953329
23	9763883776
24	2230000799
25	8007100768
26	6702936605
27	3503636935
28	1802084045
29	6112378965
30	8784076909
\.


--
-- Data for Name: Report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Report" ("idReport", "Report", "Datetime", "idDeforest", "idAffectation", "idCity") FROM stdin;
1	Curabitur convallis.	2016-08-10 00:00:00	6	1	4
3	In est risus, auctor sed, tristique in, tempus sit amet, sem.	2018-04-06 00:00:00	6	5	17
4	Suspendisse potenti.	2012-11-26 00:00:00	7	1	21
5	Vestibulum rutrum rutrum neque.	2013-08-04 00:00:00	8	5	1
6	Duis ac nibh.	2019-07-06 00:00:00	8	4	11
7	Vivamus in felis eu sapien cursus vestibulum.	2014-07-31 00:00:00	10	1	3
8	Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.	2018-04-25 00:00:00	9	4	14
9	Etiam justo.	2020-03-03 00:00:00	6	1	6
10	Morbi non lectus.	2022-12-21 00:00:00	7	5	8
11	Proin at turpis a pede posuere nonummy.	2016-01-02 00:00:00	9	2	1
12	Suspendisse potenti.	2015-03-22 00:00:00	8	4	13
13	Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.	2016-02-24 00:00:00	9	4	10
14	Praesent lectus.	2019-11-06 00:00:00	8	6	28
15	Fusce posuere felis sed lacus.	2019-03-07 00:00:00	7	5	17
16	Aliquam quis turpis eget elit sodales scelerisque.	2018-03-12 00:00:00	4	4	21
17	Nulla facilisi.	2021-03-14 00:00:00	8	2	8
18	Suspendisse accumsan tortor quis turpis.	2019-04-18 00:00:00	10	2	28
19	Nam tristique tortor eu pede.	2020-04-16 00:00:00	8	5	18
20	Integer ac neque.	2020-06-24 00:00:00	8	3	29
21	Duis aliquam convallis nunc.	2019-10-06 00:00:00	4	1	26
22	Donec ut dolor.	2016-05-25 00:00:00	4	4	19
23	Quisque ut erat.	2012-03-16 00:00:00	9	4	23
24	Cras in purus eu magna vulputate luctus.	2010-09-17 00:00:00	8	3	21
25	Fusce consequat.	2021-05-11 00:00:00	10	5	7
26	Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.	2021-09-20 00:00:00	5	4	26
27	Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.	2017-12-21 00:00:00	8	5	13
28	Duis consequat dui nec nisi volutpat eleifend.	2011-08-24 00:00:00	5	6	3
29	Sed sagittis.	2020-12-30 00:00:00	6	6	7
30	Fusce posuere felis sed lacus.	2020-06-11 00:00:00	5	5	29
31	In est risus, auctor sed, tristique in, tempus sit amet, sem.	2014-11-21 00:00:00	6	3	9
32	Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.	2015-01-22 00:00:00	5	6	26
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" ("idUser", "First_Name", "Second_Name", "First_surname", "Second_surname", "Email", "Password", "idCity", "idPhone", "idGender", "idUser_type") FROM stdin;
1	Giordano	Earl	Lammie	Tomasian	etomasian0@amazon.com	vtpHBMK2bsL	25	18	1	3
2	Row	Alexei	Jaime	Cringle	acringle1@simplemachines.org	urvrD72YA	9	8	1	1
3	Hewet	Yankee	Vannozzii	Evelyn	yevelyn2@vk.com	8HFA4EwRAYA	20	28	2	3
4	Irita	Taddeo	Gyford	Doone	tdoone3@photobucket.com	2TeQk2D	1	15	2	1
5	Fields	Talbert	Trever	Blackborough	tblackborough4@bandcamp.com	CZxgETL	2	28	1	1
6	Joyann	Melisenda	Mathonnet	Dunbleton	mdunbleton5@joomla.org	w87IfGrh0x	11	4	2	3
7	Maddi	Amandie	Placidi	Ehrat	aehrat6@cbsnews.com	mjXXRsEC	7	1	1	1
8	Flem	Earl	Frankland	Harroll	eharroll7@adobe.com	50sdGGCYC	28	9	1	3
9	Kerry	Filberte	Glauber	Chooter	fchooter8@usgs.gov	z57wLUZ	11	18	1	1
10	Jessie	Cathee	Bronger	Sadgrove	csadgrove9@shutterfly.com	Jgxm1A7FuUW	4	4	1	2
11	Leena	Augie	Gillyett	Salzberg	asalzberga@sciencedirect.com	d8C2JVb	27	2	1	2
12	Caressa	Caralie	Bynold	Readie	creadieb@google.com	b0KXU2h	10	20	2	2
13	Kathryne	Rurik	Stannas	Vuitte	rvuittec@harvard.edu	6fb04vU7S	13	14	3	3
14	Fionna	Christi	Gayther	Lapidus	clapidusd@webs.com	8eSiK0bAhew	23	20	1	2
15	Bobine	Inge	Le Borgne	MacIlhagga	imacilhaggae@ycombinator.com	ycgFrk	13	8	1	3
16	Kimberly	Robina	Horney	Powelee	rpoweleef@businessinsider.com	EvGeoL	30	29	3	2
17	Samaria	Van	Cleminshaw	Highwood	vhighwoodg@google.fr	HIwOoRY9V	12	12	1	2
18	Lisa	Sebastien	Catt	Noon	snoonh@acquirethisname.com	lVl6Y0hGT	7	2	3	1
19	Skipp	Evered	Charlin	Lusher	elusheri@oracle.com	U3izUF0x	11	17	2	3
20	Fran	Gladi	Bole	Jervois	gjervoisj@toplist.cz	KyRCUCTGWr	12	14	2	1
21	Tait	Suzanna	Pietruszka	Torri	storrik@simplemachines.org	t4RObA5	21	24	3	2
22	Sindee	Grier	Vase	Canham	gcanhaml@ustream.tv	237tkbG	13	12	2	3
23	Steven	Belle	Rippon	Elegood	belegoodm@printfriendly.com	JqzUkD9zwrso	12	23	2	3
24	Yasmeen	Martie	Fairbard	Hallgalley	mhallgalleyn@hugedomains.com	tncnKBAo37H	28	23	2	1
25	Juline	Gale	Gretton	Bruin	gbruino@canalblog.com	H5o9IWlqUVIt	29	1	3	2
26	Jorge	Rollin	Clubbe	Cejka	rcejkap@marriott.com	MiERVKkNxio	12	22	2	1
27	Hort	Valeria	Borrell	Yitzowitz	vyitzowitzq@fema.gov	xRVzgJ	21	26	2	2
28	Ariella	Camel	Masarrat	Parram	cparramr@arizona.edu	kzGQdIKRkv	13	12	3	1
29	Lani	Sada	Jerger	Corton	scortons@twitpic.com	ETANuq	20	2	2	2
30	Andres	Courtnay	Castelain	Borgars	cborgarst@quantcast.com	rzzCab	2	1	3	2
\.


--
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blogs ("idBlogs", "Title", content, created_at, updated_at, published, "idUser") FROM stdin;
31	Research Associate	Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.	2022-04-22 00:00:00	2021-08-29 00:00:00	t	4
32	Statistician I	In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.	2013-08-18 00:00:00	2013-02-23 00:00:00	f	9
33	Structural Analysis Engineer	Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.	2012-07-11 00:00:00	2018-11-05 00:00:00	t	12
34	Business Systems Development Analyst	Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.	2013-10-12 00:00:00	2012-02-09 00:00:00	t	30
35	Business Systems Development Analyst	In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.	2011-05-25 00:00:00	2023-02-02 00:00:00	t	14
36	Senior Editor	In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.	2017-03-17 00:00:00	2016-12-02 00:00:00	t	7
37	Senior Financial Analyst	Aliquam non mauris.	2019-07-04 00:00:00	2011-03-19 00:00:00	f	7
38	Budget/Accounting Analyst I	Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.	2021-05-21 00:00:00	2018-03-26 00:00:00	t	19
39	Office Assistant I	In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.	2020-12-25 00:00:00	2021-06-17 00:00:00	t	1
40	Research Nurse	Maecenas pulvinar lobortis est. Phasellus sit amet erat.	2017-12-11 00:00:00	2019-10-02 00:00:00	t	5
41	Senior Cost Accountant	Suspendisse potenti.	2010-06-09 00:00:00	2017-01-10 00:00:00	f	25
42	Business Systems Development Analyst	Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.	2016-02-18 00:00:00	2017-08-12 00:00:00	t	15
43	Research Assistant IV	Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.	2017-10-01 00:00:00	2011-11-07 00:00:00	f	27
44	Assistant Professor	Curabitur convallis.	2020-10-31 00:00:00	2017-08-20 00:00:00	t	15
45	Structural Analysis Engineer	Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.	2011-10-08 00:00:00	2019-01-05 00:00:00	t	6
46	Community Outreach Specialist	Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.	2016-03-25 00:00:00	2013-01-01 00:00:00	f	15
47	Tax Accountant	Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.	2021-04-11 00:00:00	2010-12-07 00:00:00	f	29
48	Project Manager	Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.	2016-06-26 00:00:00	2018-04-30 00:00:00	f	26
49	VP Quality Control	Donec semper sapien a libero.	2020-04-21 00:00:00	2013-09-15 00:00:00	t	3
50	Pharmacist	Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.	2019-10-02 00:00:00	2013-09-16 00:00:00	t	7
51	Project Manager	Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.	2014-01-01 00:00:00	2020-12-13 00:00:00	f	8
52	Nuclear Power Engineer	Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.	2017-01-25 00:00:00	2013-08-09 00:00:00	t	5
53	Senior Financial Analyst	Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.	2014-04-18 00:00:00	2021-04-12 00:00:00	t	9
54	Assistant Professor	Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.	2015-09-29 00:00:00	2023-01-10 00:00:00	t	8
55	Sales Associate	In hac habitasse platea dictumst.	2018-11-16 00:00:00	2016-12-02 00:00:00	t	2
56	Financial Advisor	Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.	2014-12-20 00:00:00	2011-01-08 00:00:00	f	5
57	Internal Auditor	Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.	2013-12-02 00:00:00	2020-03-14 00:00:00	f	10
58	GIS Technical Architect	Etiam justo. Etiam pretium iaculis justo.	2019-07-28 00:00:00	2023-04-02 00:00:00	f	27
59	Community Outreach Specialist	Quisque porta volutpat erat.	2020-02-29 00:00:00	2022-04-15 00:00:00	f	28
60	Professor	Pellentesque ultrices mattis odio.	2011-02-12 00:00:00	2021-03-13 00:00:00	t	20
\.


--
-- Data for Name: entity_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entity_user ("idEntityus", "idGoverenty", "idUser") FROM stdin;
1	5	28
2	7	26
3	3	26
4	7	20
5	1	21
6	1	24
7	4	10
8	5	5
9	1	5
10	2	15
11	7	7
12	2	11
13	4	11
14	3	28
15	5	29
16	3	11
17	1	7
18	2	5
19	2	29
20	3	13
21	3	30
22	2	22
23	2	7
24	5	16
25	6	20
26	7	3
27	6	13
28	1	19
29	7	17
30	6	13
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.locations (latitude, longitude, "nameLocation", "idReport", idlocations) FROM stdin;
8.56813930	-70.35838790	320 Pawling Road	22	1
45.00587420	39.06949000	6 Banding Circle	4	2
44.19468020	4.04306080	51 Fordem Center	7	3
7.76666700	-71.46666700	5 Claremont Lane	9	4
27.26740270	31.15192800	7843 Londonderry Hill	3	5
66.32263100	23.67353000	35 Emmet Road	30	6
-6.97167800	107.58454180	8654 Beilfuss Pass	9	7
-15.92540000	-69.33540000	857 Walton Park	31	8
33.82979930	46.30731610	621 Meadow Vale Plaza	6	9
25.82234900	107.32232300	9 Pennsylvania Center	24	10
48.70375150	2.30560350	332 Fair Oaks Avenue	20	11
-6.73387510	111.34710220	0361 Lighthouse Bay Court	3	12
24.51302500	117.64709300	42765 Gerald Plaza	17	13
60.35733690	5.27316440	5201 Del Mar Park	6	14
42.07927900	-8.48351850	8 Schmedeman Terrace	18	15
-9.29393180	-77.62425740	0 Del Mar Trail	14	16
23.15604500	112.89660600	4 Mendota Lane	19	17
\.


--
-- Data for Name: user_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_type ("idUser_type", "Type") FROM stdin;
1	admin
2	basico
3	entidad
\.


--
-- Name: Affectation_idAffectation_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Affectation_idAffectation_seq"', 54, true);


--
-- Name: Amount_idAmount_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Amount_idAmount_seq"', 30, true);


--
-- Name: City_idCity_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."City_idCity_seq"', 30, true);


--
-- Name: Deforest_type_idDeforest_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Deforest_type_idDeforest_seq"', 10, true);


--
-- Name: Donations_idDonation_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Donations_idDonation_seq"', 30, true);


--
-- Name: Frecuency_idFrecuency_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Frecuency_idFrecuency_seq"', 4, true);


--
-- Name: Gender_idGender_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Gender_idGender_seq"', 3, true);


--
-- Name: Government_entity_idGoverenty_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Government_entity_idGoverenty_seq"', 7, true);


--
-- Name: Payment_idPayment_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Payment_idPayment_seq"', 3, true);


--
-- Name: Phone_idPhone_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Phone_idPhone_seq"', 30, true);


--
-- Name: Report_idReport_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Report_idReport_seq"', 32, true);


--
-- Name: User_idUser_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_idUser_seq"', 30, true);


--
-- Name: blogs_idBlogs_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."blogs_idBlogs_seq"', 60, true);


--
-- Name: entity_user_idEntityus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."entity_user_idEntityus_seq"', 30, true);


--
-- Name: locations_idlocations_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.locations_idlocations_seq', 18, true);


--
-- Name: user_type_idUser_type_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."user_type_idUser_type_seq"', 3, true);


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
-- Name: GradeAffectation GradeAffectation_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GradeAffectation"
    ADD CONSTRAINT "GradeAffectation_pk" PRIMARY KEY ("idAffectation");


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
    ADD CONSTRAINT locations_pk PRIMARY KEY (idlocations);


--
-- Name: user_type user_type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_type
    ADD CONSTRAINT user_type_pk PRIMARY KEY ("idUser_type");


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
    ADD CONSTRAINT "IdAffectation___fk" FOREIGN KEY ("idAffectation") REFERENCES public."GradeAffectation"("idAffectation");


--
-- Name: Donations Payment__fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Donations"
    ADD CONSTRAINT "Payment__fk" FOREIGN KEY (idpayment) REFERENCES public."Payment"("idPayment");


--
-- Name: Donations User__fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Donations"
    ADD CONSTRAINT "User__fk" FOREIGN KEY (iduser) REFERENCES public."User"("idUser");


--
-- Name: User User_user_type_idUser_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_user_type_idUser_type_fk" FOREIGN KEY ("idUser_type") REFERENCES public.user_type("idUser_type");


--
-- Name: blogs blogs_User_idUser_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT "blogs_User_idUser_fk" FOREIGN KEY ("idUser") REFERENCES public."User"("idUser");


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
-- Name: locations locations_Report_idReport_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT "locations_Report_idReport_fk" FOREIGN KEY ("idReport") REFERENCES public."Report"("idReport");


--
-- PostgreSQL database dump complete
--

