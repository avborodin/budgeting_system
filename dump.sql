--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO budgeting_system;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO budgeting_system;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO budgeting_system;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO budgeting_system;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO budgeting_system;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO budgeting_system;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO budgeting_system;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO budgeting_system;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO budgeting_system;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO budgeting_system;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO budgeting_system;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO budgeting_system;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: counterparty_accounttype; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.counterparty_accounttype (
    id integer NOT NULL,
    name character varying(128) NOT NULL
);


ALTER TABLE public.counterparty_accounttype OWNER TO budgeting_system;

--
-- Name: counterparty_accounttype_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.counterparty_accounttype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.counterparty_accounttype_id_seq OWNER TO budgeting_system;

--
-- Name: counterparty_accounttype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.counterparty_accounttype_id_seq OWNED BY public.counterparty_accounttype.id;


--
-- Name: counterparty_bankdetails; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.counterparty_bankdetails (
    id integer NOT NULL,
    bank_name character varying(128) NOT NULL,
    bik character varying(9) NOT NULL,
    correspondent_account character varying(20) NOT NULL,
    checking_account character varying(20) NOT NULL,
    create_at timestamp with time zone NOT NULL,
    update_at timestamp with time zone NOT NULL,
    account_type_id integer NOT NULL,
    counterparty_id integer NOT NULL,
    current_id integer NOT NULL
);


ALTER TABLE public.counterparty_bankdetails OWNER TO budgeting_system;

--
-- Name: counterparty_bankdetails_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.counterparty_bankdetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.counterparty_bankdetails_id_seq OWNER TO budgeting_system;

--
-- Name: counterparty_bankdetails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.counterparty_bankdetails_id_seq OWNED BY public.counterparty_bankdetails.id;


--
-- Name: counterparty_bankinfo; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.counterparty_bankinfo (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    city character varying(100) NOT NULL,
    bik character varying(9) NOT NULL,
    correspondent_account character varying(20) NOT NULL
);


ALTER TABLE public.counterparty_bankinfo OWNER TO budgeting_system;

--
-- Name: counterparty_bankinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.counterparty_bankinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.counterparty_bankinfo_id_seq OWNER TO budgeting_system;

--
-- Name: counterparty_bankinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.counterparty_bankinfo_id_seq OWNED BY public.counterparty_bankinfo.id;


--
-- Name: counterparty_counterparty; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.counterparty_counterparty (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    full_name character varying(128) NOT NULL,
    short_name character varying(128) NOT NULL,
    inn character varying(12) NOT NULL,
    kpp character varying(12) NOT NULL,
    code_okpo character varying(128) NOT NULL,
    is_security_document boolean NOT NULL,
    is_physical_face boolean NOT NULL,
    is_non_resident boolean NOT NULL,
    is_supplier boolean NOT NULL,
    is_buyer boolean NOT NULL,
    create_at timestamp with time zone NOT NULL,
    update_at timestamp with time zone NOT NULL,
    group_id integer NOT NULL,
    opf_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.counterparty_counterparty OWNER TO budgeting_system;

--
-- Name: counterparty_counterparty_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.counterparty_counterparty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.counterparty_counterparty_id_seq OWNER TO budgeting_system;

--
-- Name: counterparty_counterparty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.counterparty_counterparty_id_seq OWNED BY public.counterparty_counterparty.id;


--
-- Name: counterparty_currency; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.counterparty_currency (
    id integer NOT NULL,
    name character varying(3) NOT NULL,
    code integer NOT NULL
);


ALTER TABLE public.counterparty_currency OWNER TO budgeting_system;

--
-- Name: counterparty_currency_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.counterparty_currency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.counterparty_currency_id_seq OWNER TO budgeting_system;

--
-- Name: counterparty_currency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.counterparty_currency_id_seq OWNED BY public.counterparty_currency.id;


--
-- Name: counterparty_group; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.counterparty_group (
    id integer NOT NULL,
    name character varying(128) NOT NULL
);


ALTER TABLE public.counterparty_group OWNER TO budgeting_system;

--
-- Name: counterparty_group_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.counterparty_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.counterparty_group_id_seq OWNER TO budgeting_system;

--
-- Name: counterparty_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.counterparty_group_id_seq OWNED BY public.counterparty_group.id;


--
-- Name: counterparty_opf; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.counterparty_opf (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    full_name character varying(128) NOT NULL
);


ALTER TABLE public.counterparty_opf OWNER TO budgeting_system;

--
-- Name: counterparty_opf_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.counterparty_opf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.counterparty_opf_id_seq OWNER TO budgeting_system;

--
-- Name: counterparty_opf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.counterparty_opf_id_seq OWNED BY public.counterparty_opf.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO budgeting_system;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO budgeting_system;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO budgeting_system;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO budgeting_system;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO budgeting_system;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: budgeting_system
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO budgeting_system;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: budgeting_system
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: budgeting_system
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO budgeting_system;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: counterparty_accounttype id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_accounttype ALTER COLUMN id SET DEFAULT nextval('public.counterparty_accounttype_id_seq'::regclass);


--
-- Name: counterparty_bankdetails id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_bankdetails ALTER COLUMN id SET DEFAULT nextval('public.counterparty_bankdetails_id_seq'::regclass);


--
-- Name: counterparty_bankinfo id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_bankinfo ALTER COLUMN id SET DEFAULT nextval('public.counterparty_bankinfo_id_seq'::regclass);


--
-- Name: counterparty_counterparty id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_counterparty ALTER COLUMN id SET DEFAULT nextval('public.counterparty_counterparty_id_seq'::regclass);


--
-- Name: counterparty_currency id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_currency ALTER COLUMN id SET DEFAULT nextval('public.counterparty_currency_id_seq'::regclass);


--
-- Name: counterparty_group id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_group ALTER COLUMN id SET DEFAULT nextval('public.counterparty_group_id_seq'::regclass);


--
-- Name: counterparty_opf id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_opf ALTER COLUMN id SET DEFAULT nextval('public.counterparty_opf_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.auth_group (id, name) FROM stdin;
1	Директор
2	Менеджер
3	Бухгалтер
4	Юрист
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
113	Can add инфо о банке	29	add_bankinfo
114	Can change инфо о банке	29	change_bankinfo
115	Can delete инфо о банке	29	delete_bankinfo
116	Can view инфо о банке	29	view_bankinfo
117	Can add банковскую реквизиту	30	add_bankdetails
118	Can change банковскую реквизиту	30	change_bankdetails
119	Can delete банковскую реквизиту	30	delete_bankdetails
120	Can view банковскую реквизиту	30	view_bankdetails
121	Can add группу	31	add_group
122	Can change группу	31	change_group
123	Can delete группу	31	delete_group
124	Can view группу	31	view_group
125	Can add контрагент	32	add_counterparty
126	Can change контрагент	32	change_counterparty
127	Can delete контрагент	32	delete_counterparty
128	Can view контрагент	32	view_counterparty
129	Can add ОПФ	33	add_opf
130	Can change ОПФ	33	change_opf
131	Can delete ОПФ	33	delete_opf
132	Can view ОПФ	33	view_opf
133	Can add account type	34	add_accounttype
134	Can change account type	34	change_accounttype
135	Can delete account type	34	delete_accounttype
136	Can view account type	34	view_accounttype
137	Can add currency	35	add_currency
138	Can change currency	35	change_currency
139	Can delete currency	35	delete_currency
140	Can view currency	35	view_currency
141	Can add инфо о банке	36	add_bankinfo
142	Can change инфо о банке	36	change_bankinfo
143	Can delete инфо о банке	36	delete_bankinfo
144	Can view инфо о банке	36	view_bankinfo
145	Can add валюту 	37	add_currency
146	Can change валюту 	37	change_currency
147	Can delete валюту 	37	delete_currency
148	Can view валюту 	37	view_currency
149	Can add тип счета	38	add_accounttype
150	Can change тип счета	38	change_accounttype
151	Can delete тип счета	38	delete_accounttype
152	Can view тип счета	38	view_accounttype
153	Can add контрагент	39	add_counterparty
154	Can change контрагент	39	change_counterparty
155	Can delete контрагент	39	delete_counterparty
156	Can view контрагент	39	view_counterparty
157	Can add банковскую реквизиту	40	add_bankdetails
158	Can change банковскую реквизиту	40	change_bankdetails
159	Can delete банковскую реквизиту	40	delete_bankdetails
160	Can view банковскую реквизиту	40	view_bankdetails
161	Can add группу	41	add_group
162	Can change группу	41	change_group
163	Can delete группу	41	delete_group
164	Can view группу	41	view_group
165	Can add ОПФ	42	add_opf
166	Can change ОПФ	42	change_opf
167	Can delete ОПФ	42	delete_opf
168	Can view ОПФ	42	view_opf
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	pbkdf2_sha256$216000$qKuQsqdaM6vL$7QB92BPLmnubrgONwFIn2aqZSD0MomSDgzhlyUgpwq4=	\N	f	Директор	Ирина	Романова		f	t	2021-03-02 22:32:08.535269+03
4	pbkdf2_sha256$216000$qKuQsqdaM6vL$7QB92BPLmnubrgONwFIn2aqZSD0MomSDgzhlyUgpwq4=	2021-03-24 19:15:44.889331+03	f	Бухгалтер	Наталья	Васюкова		f	t	2021-03-02 22:33:17+03
1	pbkdf2_sha256$216000$qKuQsqdaM6vL$7QB92BPLmnubrgONwFIn2aqZSD0MomSDgzhlyUgpwq4=	2021-03-24 19:20:29.729447+03	t	Админ	Андрей	Бородин		t	t	2021-02-27 20:52:35.042837+03
2	pbkdf2_sha256$216000$qKuQsqdaM6vL$7QB92BPLmnubrgONwFIn2aqZSD0MomSDgzhlyUgpwq4=	2021-03-24 19:23:21.291658+03	f	Менеджер	Елена	Иванова		t	t	2021-03-02 22:31:29+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	4	3
2	2	2
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: counterparty_accounttype; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.counterparty_accounttype (id, name) FROM stdin;
1	Расчетный
2	Депозитный
3	Ссудный
4	Аккредитивный
5	Иной
\.


--
-- Data for Name: counterparty_bankdetails; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.counterparty_bankdetails (id, bank_name, bik, correspondent_account, checking_account, create_at, update_at, account_type_id, counterparty_id, current_id) FROM stdin;
2	ВОЛГО-ВЯТСКИЙ БАНК СБЕРБАНКА РФ г.НИЖНИЙ НОВГОРОД	042202603	30101810900000000603	40702810342000024013	2021-03-22 22:28:03.377047+03	2021-03-22 22:28:03.377079+03	1	2	1
3	в Филиале №7701 банка ВТБ (ПАО)	770801001	30101810345250000745	40702810500000065778	2021-03-24 10:14:51.943313+03	2021-03-24 10:14:51.943373+03	1	3	1
\.


--
-- Data for Name: counterparty_bankinfo; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.counterparty_bankinfo (id, name, city, bik, correspondent_account) FROM stdin;
\.


--
-- Data for Name: counterparty_counterparty; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.counterparty_counterparty (id, name, full_name, short_name, inn, kpp, code_okpo, is_security_document, is_physical_face, is_non_resident, is_supplier, is_buyer, create_at, update_at, group_id, opf_id, user_id) FROM stdin;
2	Завод Инком	Общество с ограниченной ответственностью "Завод Инком"	ООО "Завод Инком"	5260430734	526001001	04255917	f	f	f	f	f	2021-03-22 22:28:03.368581+03	2021-03-22 22:28:03.368614+03	3	3	2
3	Отраслевой центр разработки и внедрения информационных систем	Общество с ограниченной ответственностью "Отраслевой центр разработки и внедрения информационных систем"	ООО "Отраслевой центр разработки и внедрения информационных систем"	5042060280	770801001	0	f	f	f	f	f	2021-03-24 10:14:51.91965+03	2021-03-24 10:14:51.919701+03	3	3	2
\.


--
-- Data for Name: counterparty_currency; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.counterparty_currency (id, name, code) FROM stdin;
1	RUB	0
2	USD	840
3	EUR	978
4	KZT	398
5	CNY	156
6	GBP	826
\.


--
-- Data for Name: counterparty_group; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.counterparty_group (id, name) FROM stdin;
1	Банки
2	Внутригрупповые
3	Контрагенты (Поставщики и покупатели, займодавцы)
4	Налоги и взносы
5	Сотрудники
6	Учредители
\.


--
-- Data for Name: counterparty_opf; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.counterparty_opf (id, name, full_name) FROM stdin;
1	Другая	Другая
2	ИП	Индивидуальный предприниматель
3	ООО	Общество с ограниченной ответственностью
4	ЗАО	Закрытое акционерное общество
5	ОАО	Открытое акционерное общество
6	ПАО	Публичное акционерное общество
7	АО	Акционерное общество
8	ФГУП	Федеральное государственное унитарное предприятие
9	НП	Некоммерческое Партнерство
10	АНО	Автономная некоммерческая организация
11	ФГБОУ	Федеральное государственное бюджетное образователь
12	ФГБУК	Федеральное государственное бюджетное учреждение культуры
13	ФГБУ	Федеральное государственное бюджетное учреждение
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-02-28 00:35:20.909733+03	1	AccountType object (1)	1	[{"added": {}}]	34	1
2	2021-02-28 00:35:49.096994+03	2	AccountType object (2)	1	[{"added": {}}]	34	1
3	2021-02-28 00:36:09.751306+03	3	AccountType object (3)	1	[{"added": {}}]	34	1
4	2021-02-28 00:36:51.964676+03	4	AccountType object (4)	1	[{"added": {}}]	34	1
5	2021-02-28 00:37:17.488242+03	5	AccountType object (5)	1	[{"added": {}}]	34	1
6	2021-03-02 21:13:15.270853+03	1	Opf object (1)	1	[{"added": {}}]	33	1
7	2021-03-02 21:13:27.108635+03	2	Opf object (2)	1	[{"added": {}}]	33	1
8	2021-03-02 21:13:38.435695+03	3	Opf object (3)	1	[{"added": {}}]	33	1
9	2021-03-02 21:13:48.703067+03	4	Opf object (4)	1	[{"added": {}}]	33	1
10	2021-03-02 21:14:00.050676+03	5	Opf object (5)	1	[{"added": {}}]	33	1
11	2021-03-02 21:14:10.105653+03	6	Opf object (6)	1	[{"added": {}}]	33	1
12	2021-03-02 21:14:20.294361+03	7	Opf object (7)	1	[{"added": {}}]	33	1
13	2021-03-02 21:14:29.846312+03	8	Opf object (8)	1	[{"added": {}}]	33	1
14	2021-03-02 21:14:42.082297+03	9	Opf object (9)	1	[{"added": {}}]	33	1
15	2021-03-02 21:14:52.176627+03	10	Opf object (10)	1	[{"added": {}}]	33	1
16	2021-03-02 21:15:02.257783+03	11	Opf object (11)	1	[{"added": {}}]	33	1
17	2021-03-02 21:15:11.807889+03	12	Opf object (12)	1	[{"added": {}}]	33	1
18	2021-03-02 21:15:24.361164+03	13	Opf object (13)	1	[{"added": {}}]	33	1
19	2021-03-02 22:31:29.771492+03	2	Mенеджер	1	[{"added": {}}]	4	1
20	2021-03-02 22:32:08.656452+03	3	Директор	1	[{"added": {}}]	4	1
21	2021-03-02 22:33:17.458355+03	4	Бухгалтер	1	[{"added": {}}]	4	1
22	2021-03-04 16:44:52.574889+03	1	Group object (1)	1	[{"added": {}}]	31	1
23	2021-03-04 16:45:09.176708+03	2	Group object (2)	1	[{"added": {}}]	31	1
24	2021-03-04 16:45:21.41305+03	3	Group object (3)	1	[{"added": {}}]	31	1
25	2021-03-04 16:45:38.566032+03	4	Group object (4)	1	[{"added": {}}]	31	1
26	2021-03-04 16:45:47.415929+03	5	Group object (5)	1	[{"added": {}}]	31	1
27	2021-03-04 16:46:01.813489+03	6	Group object (6)	1	[{"added": {}}]	31	1
28	2021-03-14 21:38:19.82369+03	1	Currency object (1)	1	[{"added": {}}]	35	1
29	2021-03-14 21:38:34.258068+03	2	Currency object (2)	1	[{"added": {}}]	35	1
30	2021-03-14 21:38:47.468617+03	3	Currency object (3)	1	[{"added": {}}]	35	1
31	2021-03-14 21:38:59.876311+03	4	Currency object (4)	1	[{"added": {}}]	35	1
32	2021-03-14 21:39:11.779334+03	5	Currency object (5)	1	[{"added": {}}]	35	1
33	2021-03-14 21:39:28.036257+03	6	Currency object (6)	1	[{"added": {}}]	35	1
34	2021-03-14 22:31:27.232543+03	1	Counterparty object (1)	2	[{"changed": {"fields": ["\\u0418\\u041d\\u041d", "\\u041a\\u041f\\u041f", "\\u041a\\u043e\\u0434 \\u043f\\u043e \\u041e\\u041a\\u041f\\u041e"]}}]	32	1
35	2021-03-14 22:32:59.4102+03	1	Counterparty object (1)	2	[{"added": {"name": "\\u0431\\u0430\\u043d\\u043a\\u043e\\u0432\\u0441\\u043a\\u0443\\u044e \\u0440\\u0435\\u043a\\u0432\\u0438\\u0437\\u0438\\u0442\\u0443", "object": "BankDetails object (1)"}}]	32	1
36	2021-03-15 21:42:51.623916+03	2	Менеджер	2	[{"changed": {"fields": ["Staff status"]}}]	4	1
37	2021-03-18 14:21:12.775559+03	3	Counterparty object (3)	3		32	1
38	2021-03-18 14:21:17.820836+03	4	Counterparty object (4)	3		32	1
39	2021-03-18 21:05:18.409222+03	1	Counterparty object (1)	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0438\\u043c\\u0435\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435"]}}, {"changed": {"name": "\\u0431\\u0430\\u043d\\u043a\\u043e\\u0432\\u0441\\u043a\\u0443\\u044e \\u0440\\u0435\\u043a\\u0432\\u0438\\u0437\\u0438\\u0442\\u0443", "object": "BankDetails object (1)", "fields": ["Bank name"]}}]	32	1
40	2021-03-22 19:06:29.086215+03	1	Банки	1	[{"added": {}}]	41	1
41	2021-03-22 19:06:36.477439+03	2	Внутригрупповые	1	[{"added": {}}]	41	1
42	2021-03-22 19:06:42.987137+03	3	Контрагенты (Поставщики и покупатели, займодавцы)	1	[{"added": {}}]	41	1
43	2021-03-22 19:06:52.442411+03	4	Налоги и взносы	1	[{"added": {}}]	41	1
44	2021-03-22 19:06:59.366051+03	5	Сотрудники	1	[{"added": {}}]	41	1
45	2021-03-22 19:07:06.080551+03	6	Учредители	1	[{"added": {}}]	41	1
46	2021-03-22 19:07:55.662453+03	1	Другая	1	[{"added": {}}]	42	1
47	2021-03-22 19:08:09.553176+03	2	ИП	1	[{"added": {}}]	42	1
48	2021-03-22 19:08:23.12198+03	3	ООО	1	[{"added": {}}]	42	1
49	2021-03-22 19:08:37.296739+03	4	ЗАО	1	[{"added": {}}]	42	1
50	2021-03-22 19:08:49.815545+03	5	ОАО	1	[{"added": {}}]	42	1
51	2021-03-22 19:09:01.622426+03	6	ПАО	1	[{"added": {}}]	42	1
52	2021-03-22 19:09:13.598109+03	7	АО	1	[{"added": {}}]	42	1
53	2021-03-22 19:09:24.948456+03	8	ФГУП	1	[{"added": {}}]	42	1
54	2021-03-22 19:09:38.086937+03	9	НП	1	[{"added": {}}]	42	1
55	2021-03-22 19:09:50.484685+03	10	АНО	1	[{"added": {}}]	42	1
56	2021-03-22 19:10:02.451674+03	11	ФГБОУ	1	[{"added": {}}]	42	1
57	2021-03-22 19:10:14.076948+03	12	ФГБУК	1	[{"added": {}}]	42	1
58	2021-03-22 19:10:25.050662+03	13	ФГБУ	1	[{"added": {}}]	42	1
59	2021-03-22 19:10:52.36514+03	1	RUB	1	[{"added": {}}]	37	1
60	2021-03-22 19:11:12.266906+03	2	USD	1	[{"added": {}}]	37	1
61	2021-03-22 19:11:27.479752+03	3	EUR	1	[{"added": {}}]	37	1
62	2021-03-22 19:11:39.702107+03	4	KZT	1	[{"added": {}}]	37	1
63	2021-03-22 19:11:55.114734+03	5	CNY	1	[{"added": {}}]	37	1
64	2021-03-22 19:12:08.622066+03	6	GBP	1	[{"added": {}}]	37	1
65	2021-03-22 19:12:37.480939+03	1	Расчетный	1	[{"added": {}}]	38	1
66	2021-03-22 19:12:43.164667+03	2	Депозитный	1	[{"added": {}}]	38	1
67	2021-03-22 19:12:48.937519+03	3	Ссудный	1	[{"added": {}}]	38	1
68	2021-03-22 19:12:54.709+03	4	Аккредитивный	1	[{"added": {}}]	38	1
69	2021-03-22 19:13:00.662366+03	5	Иной	1	[{"added": {}}]	38	1
70	2021-03-24 10:52:23.948373+03	1	Директор	1	[{"added": {}}]	3	1
71	2021-03-24 10:52:32.648972+03	2	Менеджер	1	[{"added": {}}]	3	1
72	2021-03-24 10:52:39.342924+03	3	Бухгалтер	1	[{"added": {}}]	3	1
73	2021-03-24 10:52:44.613004+03	4	Юрист	1	[{"added": {}}]	3	1
74	2021-03-24 10:54:44.683537+03	4	Бухгалтер	2	[{"changed": {"fields": ["Groups"]}}]	4	1
75	2021-03-24 18:46:35.673026+03	2	Менеджер	2	[{"changed": {"fields": ["Groups"]}}]	4	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
29	budgeting_system_app	bankinfo
30	budgeting_system_app	bankdetails
31	budgeting_system_app	group
32	budgeting_system_app	counterparty
33	budgeting_system_app	opf
34	budgeting_system_app	accounttype
35	budgeting_system_app	currency
36	counterparty	bankinfo
37	counterparty	currency
38	counterparty	accounttype
39	counterparty	counterparty
40	counterparty	bankdetails
41	counterparty	group
42	counterparty	opf
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-11-27 15:33:14.471428+03
2	auth	0001_initial	2020-11-27 15:33:14.564075+03
3	admin	0001_initial	2020-11-27 15:33:14.73766+03
4	admin	0002_logentry_remove_auto_add	2020-11-27 15:33:14.774336+03
5	admin	0003_logentry_add_action_flag_choices	2020-11-27 15:33:14.793495+03
6	contenttypes	0002_remove_content_type_name	2020-11-27 15:33:14.829426+03
7	auth	0002_alter_permission_name_max_length	2020-11-27 15:33:14.848818+03
8	auth	0003_alter_user_email_max_length	2020-11-27 15:33:14.866205+03
9	auth	0004_alter_user_username_opts	2020-11-27 15:33:14.882057+03
10	auth	0005_alter_user_last_login_null	2020-11-27 15:33:14.89687+03
11	auth	0006_require_contenttypes_0002	2020-11-27 15:33:14.901873+03
12	auth	0007_alter_validators_add_error_messages	2020-11-27 15:33:14.916144+03
13	auth	0008_alter_user_username_max_length	2020-11-27 15:33:14.938093+03
14	auth	0009_alter_user_last_name_max_length	2020-11-27 15:33:14.956667+03
15	auth	0010_alter_group_name_max_length	2020-11-27 15:33:14.972889+03
16	auth	0011_update_proxy_permissions	2020-11-27 15:33:14.987767+03
17	auth	0012_alter_user_first_name_max_length	2020-11-27 15:33:15.001212+03
19	sessions	0001_initial	2020-11-27 15:33:15.054232+03
28	budgeting_system_app	0001_initial	2021-02-27 18:48:59.345857+03
29	budgeting_system_app	0002_auto_20210227_2011	2021-02-27 23:11:56.494727+03
30	budgeting_system_app	0003_auto_20210302_1843	2021-03-02 21:43:35.095902+03
31	counterparty	0001_initial	2021-03-22 18:44:27.224771+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: budgeting_system
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
g5etjn0uml6qw51zvcbpf5i0htkhxigf	.eJxVjDEOwyAQBP9CHaGDQwZSps8b0AFHcBJhydiVlb_HllwkzRY7s7uJQOtSw9p5DmMWV6HF5beLlF7cDpCf1B6TTFNb5jHKQ5En7fI-ZX7fTvfvoFKv-9rbgRM4YwqgBwueHDJFKoNFqxyxpgzglMpESDEaTKrsiawtJu_F5wvWnzfB:1lP6Hx:mtJLO18nceaaa7nnB7lWJxBNagaPKKc97Mb34SbyKWA	2021-04-07 19:23:21.295281+03
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 4, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 168, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 2, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: counterparty_accounttype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.counterparty_accounttype_id_seq', 5, true);


--
-- Name: counterparty_bankdetails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.counterparty_bankdetails_id_seq', 3, true);


--
-- Name: counterparty_bankinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.counterparty_bankinfo_id_seq', 1, false);


--
-- Name: counterparty_counterparty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.counterparty_counterparty_id_seq', 3, true);


--
-- Name: counterparty_currency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.counterparty_currency_id_seq', 6, true);


--
-- Name: counterparty_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.counterparty_group_id_seq', 6, true);


--
-- Name: counterparty_opf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.counterparty_opf_id_seq', 13, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 75, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 42, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: budgeting_system
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: counterparty_accounttype counterparty_accounttype_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_accounttype
    ADD CONSTRAINT counterparty_accounttype_pkey PRIMARY KEY (id);


--
-- Name: counterparty_bankdetails counterparty_bankdetails_counterparty_id_key; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_bankdetails
    ADD CONSTRAINT counterparty_bankdetails_counterparty_id_key UNIQUE (counterparty_id);


--
-- Name: counterparty_bankdetails counterparty_bankdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_bankdetails
    ADD CONSTRAINT counterparty_bankdetails_pkey PRIMARY KEY (id);


--
-- Name: counterparty_bankinfo counterparty_bankinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_bankinfo
    ADD CONSTRAINT counterparty_bankinfo_pkey PRIMARY KEY (id);


--
-- Name: counterparty_counterparty counterparty_counterparty_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_counterparty
    ADD CONSTRAINT counterparty_counterparty_pkey PRIMARY KEY (id);


--
-- Name: counterparty_currency counterparty_currency_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_currency
    ADD CONSTRAINT counterparty_currency_pkey PRIMARY KEY (id);


--
-- Name: counterparty_group counterparty_group_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_group
    ADD CONSTRAINT counterparty_group_pkey PRIMARY KEY (id);


--
-- Name: counterparty_opf counterparty_opf_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_opf
    ADD CONSTRAINT counterparty_opf_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: counterparty_bankdetails_account_type_id_8d59339d; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX counterparty_bankdetails_account_type_id_8d59339d ON public.counterparty_bankdetails USING btree (account_type_id);


--
-- Name: counterparty_bankdetails_current_id_8b2f2bc5; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX counterparty_bankdetails_current_id_8b2f2bc5 ON public.counterparty_bankdetails USING btree (current_id);


--
-- Name: counterparty_counterparty_group_id_8c01a1a1; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX counterparty_counterparty_group_id_8c01a1a1 ON public.counterparty_counterparty USING btree (group_id);


--
-- Name: counterparty_counterparty_opf_id_a148c999; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX counterparty_counterparty_opf_id_a148c999 ON public.counterparty_counterparty USING btree (opf_id);


--
-- Name: counterparty_counterparty_user_id_64b942f4; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX counterparty_counterparty_user_id_64b942f4 ON public.counterparty_counterparty USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: budgeting_system
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: counterparty_bankdetails counterparty_bankdet_account_type_id_8d59339d_fk_counterpa; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_bankdetails
    ADD CONSTRAINT counterparty_bankdet_account_type_id_8d59339d_fk_counterpa FOREIGN KEY (account_type_id) REFERENCES public.counterparty_accounttype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: counterparty_bankdetails counterparty_bankdet_counterparty_id_b5579578_fk_counterpa; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_bankdetails
    ADD CONSTRAINT counterparty_bankdet_counterparty_id_b5579578_fk_counterpa FOREIGN KEY (counterparty_id) REFERENCES public.counterparty_counterparty(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: counterparty_bankdetails counterparty_bankdet_current_id_8b2f2bc5_fk_counterpa; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_bankdetails
    ADD CONSTRAINT counterparty_bankdet_current_id_8b2f2bc5_fk_counterpa FOREIGN KEY (current_id) REFERENCES public.counterparty_currency(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: counterparty_counterparty counterparty_counter_group_id_8c01a1a1_fk_counterpa; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_counterparty
    ADD CONSTRAINT counterparty_counter_group_id_8c01a1a1_fk_counterpa FOREIGN KEY (group_id) REFERENCES public.counterparty_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: counterparty_counterparty counterparty_counter_opf_id_a148c999_fk_counterpa; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_counterparty
    ADD CONSTRAINT counterparty_counter_opf_id_a148c999_fk_counterpa FOREIGN KEY (opf_id) REFERENCES public.counterparty_opf(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: counterparty_counterparty counterparty_counterparty_user_id_64b942f4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.counterparty_counterparty
    ADD CONSTRAINT counterparty_counterparty_user_id_64b942f4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: budgeting_system
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

