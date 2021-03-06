PGDMP     9                    x            real_estate    12.2    12.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16613    real_estate    DATABASE     �   CREATE DATABASE real_estate WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE real_estate;
                postgres    false            �            1259    16765    agent_agent    TABLE     	  CREATE TABLE public.agent_agent (
    id integer NOT NULL,
    telephone integer NOT NULL,
    address character varying(200),
    description text NOT NULL,
    picture character varying(100) NOT NULL,
    date_added date NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.agent_agent;
       public         heap    postgres    false            �            1259    16763    agent_agent_id_seq    SEQUENCE     �   CREATE SEQUENCE public.agent_agent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.agent_agent_id_seq;
       public          postgres    false    221                       0    0    agent_agent_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.agent_agent_id_seq OWNED BY public.agent_agent.id;
          public          postgres    false    220            �            1259    16645 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16643    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    16655    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16653    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    16637    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16635    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    16663 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16673    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16671    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    16661    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    16681    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16679 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    16860    booking_booking    TABLE       CREATE TABLE public.booking_booking (
    id integer NOT NULL,
    time_booking timestamp with time zone NOT NULL,
    date_starting date NOT NULL,
    date_ending date,
    payment_status boolean NOT NULL,
    property_id integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.booking_booking;
       public         heap    postgres    false            �            1259    16858    booking_booking_id_seq    SEQUENCE     �   CREATE SEQUENCE public.booking_booking_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.booking_booking_id_seq;
       public          postgres    false    231                       0    0    booking_booking_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.booking_booking_id_seq OWNED BY public.booking_booking.id;
          public          postgres    false    230            �            1259    16880    contact_question    TABLE       CREATE TABLE public.contact_question (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    subject character varying(200) NOT NULL,
    message text NOT NULL,
    "time" timestamp with time zone NOT NULL
);
 $   DROP TABLE public.contact_question;
       public         heap    postgres    false            �            1259    16878    contact_question_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.contact_question_id_seq;
       public          postgres    false    233                       0    0    contact_question_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.contact_question_id_seq OWNED BY public.contact_question.id;
          public          postgres    false    232            �            1259    16902    contact_question_tags    TABLE     �   CREATE TABLE public.contact_question_tags (
    id integer NOT NULL,
    question_id integer NOT NULL,
    questiontag_id integer NOT NULL
);
 )   DROP TABLE public.contact_question_tags;
       public         heap    postgres    false            �            1259    16900    contact_question_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_question_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.contact_question_tags_id_seq;
       public          postgres    false    237                       0    0    contact_question_tags_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.contact_question_tags_id_seq OWNED BY public.contact_question_tags.id;
          public          postgres    false    236            �            1259    16891    contact_questiontag    TABLE     �   CREATE TABLE public.contact_questiontag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);
 '   DROP TABLE public.contact_questiontag;
       public         heap    postgres    false            �            1259    16889    contact_questiontag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_questiontag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.contact_questiontag_id_seq;
       public          postgres    false    235                       0    0    contact_questiontag_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.contact_questiontag_id_seq OWNED BY public.contact_questiontag.id;
          public          postgres    false    234            �            1259    16741    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16739    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    16627    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16625    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    16616    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16614    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    16931    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16792    property_buildingtype    TABLE     �   CREATE TABLE public.property_buildingtype (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);
 )   DROP TABLE public.property_buildingtype;
       public         heap    postgres    false            �            1259    16790    property_buildingtype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.property_buildingtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.property_buildingtype_id_seq;
       public          postgres    false    223                       0    0    property_buildingtype_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.property_buildingtype_id_seq OWNED BY public.property_buildingtype.id;
          public          postgres    false    222            �            1259    16803    property_property    TABLE     �  CREATE TABLE public.property_property (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    price double precision NOT NULL,
    description text NOT NULL,
    location character varying(200) NOT NULL,
    date_added date NOT NULL,
    bedrooms integer NOT NULL,
    kitchens integer NOT NULL,
    living_rooms integer NOT NULL,
    parking integer NOT NULL,
    picture_1 character varying(100) NOT NULL,
    picture_2 character varying(100),
    picture_3 character varying(100),
    picture_4 character varying(100),
    availability boolean NOT NULL,
    agent_id integer,
    building_type_id integer,
    sale_type_id integer
);
 %   DROP TABLE public.property_property;
       public         heap    postgres    false            �            1259    16801    property_property_id_seq    SEQUENCE     �   CREATE SEQUENCE public.property_property_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.property_property_id_seq;
       public          postgres    false    225                        0    0    property_property_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.property_property_id_seq OWNED BY public.property_property.id;
          public          postgres    false    224            �            1259    16814    property_propertyenquiry    TABLE     �   CREATE TABLE public.property_propertyenquiry (
    id integer NOT NULL,
    message text NOT NULL,
    property_id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    subject character varying(200) NOT NULL,
    user_id integer NOT NULL
);
 ,   DROP TABLE public.property_propertyenquiry;
       public         heap    postgres    false            �            1259    16812    property_propertyenquiry_id_seq    SEQUENCE     �   CREATE SEQUENCE public.property_propertyenquiry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.property_propertyenquiry_id_seq;
       public          postgres    false    227            !           0    0    property_propertyenquiry_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.property_propertyenquiry_id_seq OWNED BY public.property_propertyenquiry.id;
          public          postgres    false    226            �            1259    16825    property_saletype    TABLE     �   CREATE TABLE public.property_saletype (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);
 %   DROP TABLE public.property_saletype;
       public         heap    postgres    false            �            1259    16823    property_saletype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.property_saletype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.property_saletype_id_seq;
       public          postgres    false    229            "           0    0    property_saletype_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.property_saletype_id_seq OWNED BY public.property_saletype.id;
          public          postgres    false    228            �
           2604    16768    agent_agent id    DEFAULT     p   ALTER TABLE ONLY public.agent_agent ALTER COLUMN id SET DEFAULT nextval('public.agent_agent_id_seq'::regclass);
 =   ALTER TABLE public.agent_agent ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �
           2604    16648    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    16658    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    16640    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    16666    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    16676    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    16684    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                       2604    16863    booking_booking id    DEFAULT     x   ALTER TABLE ONLY public.booking_booking ALTER COLUMN id SET DEFAULT nextval('public.booking_booking_id_seq'::regclass);
 A   ALTER TABLE public.booking_booking ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231                       2604    16883    contact_question id    DEFAULT     z   ALTER TABLE ONLY public.contact_question ALTER COLUMN id SET DEFAULT nextval('public.contact_question_id_seq'::regclass);
 B   ALTER TABLE public.contact_question ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233                       2604    16905    contact_question_tags id    DEFAULT     �   ALTER TABLE ONLY public.contact_question_tags ALTER COLUMN id SET DEFAULT nextval('public.contact_question_tags_id_seq'::regclass);
 G   ALTER TABLE public.contact_question_tags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237                       2604    16894    contact_questiontag id    DEFAULT     �   ALTER TABLE ONLY public.contact_questiontag ALTER COLUMN id SET DEFAULT nextval('public.contact_questiontag_id_seq'::regclass);
 E   ALTER TABLE public.contact_questiontag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �
           2604    16744    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    16630    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    16619    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    16795    property_buildingtype id    DEFAULT     �   ALTER TABLE ONLY public.property_buildingtype ALTER COLUMN id SET DEFAULT nextval('public.property_buildingtype_id_seq'::regclass);
 G   ALTER TABLE public.property_buildingtype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223                        2604    16806    property_property id    DEFAULT     |   ALTER TABLE ONLY public.property_property ALTER COLUMN id SET DEFAULT nextval('public.property_property_id_seq'::regclass);
 C   ALTER TABLE public.property_property ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225                       2604    16817    property_propertyenquiry id    DEFAULT     �   ALTER TABLE ONLY public.property_propertyenquiry ALTER COLUMN id SET DEFAULT nextval('public.property_propertyenquiry_id_seq'::regclass);
 J   ALTER TABLE public.property_propertyenquiry ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227                       2604    16828    property_saletype id    DEFAULT     |   ALTER TABLE ONLY public.property_saletype ALTER COLUMN id SET DEFAULT nextval('public.property_saletype_id_seq'::regclass);
 C   ALTER TABLE public.property_saletype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �          0    16765    agent_agent 
   TABLE DATA           h   COPY public.agent_agent (id, telephone, address, description, picture, date_added, user_id) FROM stdin;
    public          postgres    false    221   9�       �          0    16645 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   *�       �          0    16655    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   G�       �          0    16637    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   d�       �          0    16663 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   ��       �          0    16673    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   V�       �          0    16681    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   s�                 0    16860    booking_booking 
   TABLE DATA           }   COPY public.booking_booking (id, time_booking, date_starting, date_ending, payment_status, property_id, user_id) FROM stdin;
    public          postgres    false    231   ��                 0    16880    contact_question 
   TABLE DATA           U   COPY public.contact_question (id, name, email, subject, message, "time") FROM stdin;
    public          postgres    false    233   ��       	          0    16902    contact_question_tags 
   TABLE DATA           P   COPY public.contact_question_tags (id, question_id, questiontag_id) FROM stdin;
    public          postgres    false    237   ;�                 0    16891    contact_questiontag 
   TABLE DATA           D   COPY public.contact_questiontag (id, name, description) FROM stdin;
    public          postgres    false    235   X�       �          0    16741    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   u�       �          0    16627    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   ��       �          0    16616    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   P       
          0    16931    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    238   b      �          0    16792    property_buildingtype 
   TABLE DATA           F   COPY public.property_buildingtype (id, name, description) FROM stdin;
    public          postgres    false    223   �      �          0    16803    property_property 
   TABLE DATA           �   COPY public.property_property (id, name, price, description, location, date_added, bedrooms, kitchens, living_rooms, parking, picture_1, picture_2, picture_3, picture_4, availability, agent_id, building_type_id, sale_type_id) FROM stdin;
    public          postgres    false    225         �          0    16814    property_propertyenquiry 
   TABLE DATA           d   COPY public.property_propertyenquiry (id, message, property_id, date, subject, user_id) FROM stdin;
    public          postgres    false    227   �                0    16825    property_saletype 
   TABLE DATA           B   COPY public.property_saletype (id, name, description) FROM stdin;
    public          postgres    false    229   �      #           0    0    agent_agent_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.agent_agent_id_seq', 6, true);
          public          postgres    false    220            $           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            %           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            &           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public          postgres    false    206            '           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            (           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 8, true);
          public          postgres    false    212            )           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            *           0    0    booking_booking_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.booking_booking_id_seq', 1, true);
          public          postgres    false    230            +           0    0    contact_question_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.contact_question_id_seq', 1, true);
          public          postgres    false    232            ,           0    0    contact_question_tags_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.contact_question_tags_id_seq', 1, false);
          public          postgres    false    236            -           0    0    contact_questiontag_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.contact_questiontag_id_seq', 1, false);
          public          postgres    false    234            .           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 10, true);
          public          postgres    false    218            /           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public          postgres    false    204            0           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);
          public          postgres    false    202            1           0    0    property_buildingtype_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.property_buildingtype_id_seq', 4, true);
          public          postgres    false    222            2           0    0    property_property_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.property_property_id_seq', 5, true);
          public          postgres    false    224            3           0    0    property_propertyenquiry_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.property_propertyenquiry_id_seq', 1, false);
          public          postgres    false    226            4           0    0    property_saletype_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.property_saletype_id_seq', 2, true);
          public          postgres    false    228            3           2606    16773    agent_agent agent_agent_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.agent_agent
    ADD CONSTRAINT agent_agent_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.agent_agent DROP CONSTRAINT agent_agent_pkey;
       public            postgres    false    221            5           2606    16775 #   agent_agent agent_agent_user_id_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.agent_agent
    ADD CONSTRAINT agent_agent_user_id_key UNIQUE (user_id);
 M   ALTER TABLE ONLY public.agent_agent DROP CONSTRAINT agent_agent_user_id_key;
       public            postgres    false    221                       2606    16788    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209                       2606    16697 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211                       2606    16660 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211                       2606    16650    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209                       2606    16688 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207                       2606    16642 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            $           2606    16678 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            '           2606    16712 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215                       2606    16668    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            *           2606    16686 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            -           2606    16726 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            !           2606    16782     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            D           2606    16865 $   booking_booking booking_booking_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.booking_booking
    ADD CONSTRAINT booking_booking_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.booking_booking DROP CONSTRAINT booking_booking_pkey;
       public            postgres    false    231            H           2606    16888 &   contact_question contact_question_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.contact_question
    ADD CONSTRAINT contact_question_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.contact_question DROP CONSTRAINT contact_question_pkey;
       public            postgres    false    233            L           2606    16907 0   contact_question_tags contact_question_tags_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.contact_question_tags
    ADD CONSTRAINT contact_question_tags_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.contact_question_tags DROP CONSTRAINT contact_question_tags_pkey;
       public            postgres    false    237            O           2606    16909 T   contact_question_tags contact_question_tags_question_id_questiontag_id_c2275d9c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.contact_question_tags
    ADD CONSTRAINT contact_question_tags_question_id_questiontag_id_c2275d9c_uniq UNIQUE (question_id, questiontag_id);
 ~   ALTER TABLE ONLY public.contact_question_tags DROP CONSTRAINT contact_question_tags_question_id_questiontag_id_c2275d9c_uniq;
       public            postgres    false    237    237            J           2606    16899 ,   contact_questiontag contact_questiontag_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.contact_questiontag
    ADD CONSTRAINT contact_questiontag_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.contact_questiontag DROP CONSTRAINT contact_questiontag_pkey;
       public            postgres    false    235            0           2606    16750 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            
           2606    16634 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205                       2606    16632 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205                       2606    16624 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            S           2606    16938 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    238            7           2606    16800 0   property_buildingtype property_buildingtype_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.property_buildingtype
    ADD CONSTRAINT property_buildingtype_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.property_buildingtype DROP CONSTRAINT property_buildingtype_pkey;
       public            postgres    false    223            ;           2606    16811 (   property_property property_property_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.property_property
    ADD CONSTRAINT property_property_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.property_property DROP CONSTRAINT property_property_pkey;
       public            postgres    false    225            >           2606    16822 6   property_propertyenquiry property_propertyenquiry_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.property_propertyenquiry
    ADD CONSTRAINT property_propertyenquiry_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.property_propertyenquiry DROP CONSTRAINT property_propertyenquiry_pkey;
       public            postgres    false    227            B           2606    16833 (   property_saletype property_saletype_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.property_saletype
    ADD CONSTRAINT property_saletype_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.property_saletype DROP CONSTRAINT property_saletype_pkey;
       public            postgres    false    229                       1259    16789    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209                       1259    16708 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211                       1259    16709 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211                       1259    16694 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            "           1259    16724 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            %           1259    16723 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            (           1259    16738 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            +           1259    16737 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217                       1259    16783     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            E           1259    16876 $   booking_booking_property_id_47230499    INDEX     g   CREATE INDEX booking_booking_property_id_47230499 ON public.booking_booking USING btree (property_id);
 8   DROP INDEX public.booking_booking_property_id_47230499;
       public            postgres    false    231            F           1259    16877     booking_booking_user_id_e1eb6912    INDEX     _   CREATE INDEX booking_booking_user_id_e1eb6912 ON public.booking_booking USING btree (user_id);
 4   DROP INDEX public.booking_booking_user_id_e1eb6912;
       public            postgres    false    231            M           1259    16920 *   contact_question_tags_question_id_a7656264    INDEX     s   CREATE INDEX contact_question_tags_question_id_a7656264 ON public.contact_question_tags USING btree (question_id);
 >   DROP INDEX public.contact_question_tags_question_id_a7656264;
       public            postgres    false    237            P           1259    16921 -   contact_question_tags_questiontag_id_a66813a0    INDEX     y   CREATE INDEX contact_question_tags_questiontag_id_a66813a0 ON public.contact_question_tags USING btree (questiontag_id);
 A   DROP INDEX public.contact_question_tags_questiontag_id_a66813a0;
       public            postgres    false    237            .           1259    16761 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            1           1259    16762 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            Q           1259    16940 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    238            T           1259    16939 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    238            8           1259    16849 #   property_property_agent_id_cf0451e9    INDEX     e   CREATE INDEX property_property_agent_id_cf0451e9 ON public.property_property USING btree (agent_id);
 7   DROP INDEX public.property_property_agent_id_cf0451e9;
       public            postgres    false    225            9           1259    16850 +   property_property_building_type_id_ebd9fe38    INDEX     u   CREATE INDEX property_property_building_type_id_ebd9fe38 ON public.property_property USING btree (building_type_id);
 ?   DROP INDEX public.property_property_building_type_id_ebd9fe38;
       public            postgres    false    225            <           1259    16857 '   property_property_sale_type_id_7766fad5    INDEX     m   CREATE INDEX property_property_sale_type_id_7766fad5 ON public.property_property USING btree (sale_type_id);
 ;   DROP INDEX public.property_property_sale_type_id_7766fad5;
       public            postgres    false    225            ?           1259    16856 -   property_propertyenquiry_property_id_522c00c7    INDEX     y   CREATE INDEX property_propertyenquiry_property_id_522c00c7 ON public.property_propertyenquiry USING btree (property_id);
 A   DROP INDEX public.property_propertyenquiry_property_id_522c00c7;
       public            postgres    false    227            @           1259    16930 )   property_propertyenquiry_user_id_882a6030    INDEX     q   CREATE INDEX property_propertyenquiry_user_id_882a6030 ON public.property_propertyenquiry USING btree (user_id);
 =   DROP INDEX public.property_propertyenquiry_user_id_882a6030;
       public            postgres    false    227            ^           2606    16776 8   agent_agent agent_agent_user_id_bfcb5c50_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.agent_agent
    ADD CONSTRAINT agent_agent_user_id_bfcb5c50_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.agent_agent DROP CONSTRAINT agent_agent_user_id_bfcb5c50_fk_auth_user_id;
       public          postgres    false    221    2846    213            W           2606    16703 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2833    207    211            V           2606    16698 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2838    209    211            U           2606    16689 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    2828    205            Y           2606    16718 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    209    215    2838            X           2606    16713 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    215    2846    213            [           2606    16732 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    207    217    2833            Z           2606    16727 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2846    217    213            d           2606    16866 L   booking_booking booking_booking_property_id_47230499_fk_property_property_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking_booking
    ADD CONSTRAINT booking_booking_property_id_47230499_fk_property_property_id FOREIGN KEY (property_id) REFERENCES public.property_property(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.booking_booking DROP CONSTRAINT booking_booking_property_id_47230499_fk_property_property_id;
       public          postgres    false    2875    231    225            e           2606    16871 @   booking_booking booking_booking_user_id_e1eb6912_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking_booking
    ADD CONSTRAINT booking_booking_user_id_e1eb6912_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.booking_booking DROP CONSTRAINT booking_booking_user_id_e1eb6912_fk_auth_user_id;
       public          postgres    false    213    2846    231            f           2606    16910 L   contact_question_tags contact_question_tag_question_id_a7656264_fk_contact_q    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_question_tags
    ADD CONSTRAINT contact_question_tag_question_id_a7656264_fk_contact_q FOREIGN KEY (question_id) REFERENCES public.contact_question(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.contact_question_tags DROP CONSTRAINT contact_question_tag_question_id_a7656264_fk_contact_q;
       public          postgres    false    233    2888    237            g           2606    16915 O   contact_question_tags contact_question_tag_questiontag_id_a66813a0_fk_contact_q    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_question_tags
    ADD CONSTRAINT contact_question_tag_questiontag_id_a66813a0_fk_contact_q FOREIGN KEY (questiontag_id) REFERENCES public.contact_questiontag(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.contact_question_tags DROP CONSTRAINT contact_question_tag_questiontag_id_a66813a0_fk_contact_q;
       public          postgres    false    237    2890    235            \           2606    16751 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    219    205    2828            ]           2606    16756 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    213    219    2846            `           2606    16839 G   property_property property_property_agent_id_cf0451e9_fk_agent_agent_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.property_property
    ADD CONSTRAINT property_property_agent_id_cf0451e9_fk_agent_agent_id FOREIGN KEY (agent_id) REFERENCES public.agent_agent(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.property_property DROP CONSTRAINT property_property_agent_id_cf0451e9_fk_agent_agent_id;
       public          postgres    false    225    2867    221            a           2606    16844 J   property_property property_property_building_type_id_ebd9fe38_fk_property_    FK CONSTRAINT     �   ALTER TABLE ONLY public.property_property
    ADD CONSTRAINT property_property_building_type_id_ebd9fe38_fk_property_ FOREIGN KEY (building_type_id) REFERENCES public.property_buildingtype(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.property_property DROP CONSTRAINT property_property_building_type_id_ebd9fe38_fk_property_;
       public          postgres    false    223    225    2871            _           2606    16834 Q   property_property property_property_sale_type_id_7766fad5_fk_property_saletype_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.property_property
    ADD CONSTRAINT property_property_sale_type_id_7766fad5_fk_property_saletype_id FOREIGN KEY (sale_type_id) REFERENCES public.property_saletype(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.property_property DROP CONSTRAINT property_property_sale_type_id_7766fad5_fk_property_saletype_id;
       public          postgres    false    225    2882    229            b           2606    16851 O   property_propertyenquiry property_propertyenq_property_id_522c00c7_fk_property_    FK CONSTRAINT     �   ALTER TABLE ONLY public.property_propertyenquiry
    ADD CONSTRAINT property_propertyenq_property_id_522c00c7_fk_property_ FOREIGN KEY (property_id) REFERENCES public.property_property(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.property_propertyenquiry DROP CONSTRAINT property_propertyenq_property_id_522c00c7_fk_property_;
       public          postgres    false    2875    225    227            c           2606    16925 R   property_propertyenquiry property_propertyenquiry_user_id_882a6030_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.property_propertyenquiry
    ADD CONSTRAINT property_propertyenquiry_user_id_882a6030_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.property_propertyenquiry DROP CONSTRAINT property_propertyenquiry_user_id_882a6030_fk_auth_user_id;
       public          postgres    false    213    2846    227            �   �   x�]��N�0���S�2���#�$�4&Hp��
Xi@�U�oO[�(�|���� j2du�3tZϱ\u�'�sxcew�Ԩ�&����*yn��I�.d9v�\B�rH���|��n���Xplg0�][?)!�k�Ӣ��A0��Xj*G�d���f��/�/G �f��M/8�����o��&>=6[n/p_7��=,�(�S��8�-Y��N��Qgd      �      x������ � �      �      x������ � �      �   H  x�m��n�0E��W�����6��4� �3��F��ď���)J$�L�:�ye�ڡh/��:v��鮌r�����% �?��YA�%+ /�j	�%k ��������hv���~��qP%�т�s9�c�O�(��#)
w���4�7U� <k��ra�1�) ��HI* ܮ��:�I� �=jS��q��@�OG �����m8�o���qX�W+��ͪpi[���E��^	�~�/w��Р+X�g����ҥ�wb�3bb�	C���Y'�"B���������K?t� joX�#��@Q�$f?ӄڲ�� �/!(�it)Y������D&�A���F��a>���<�Z�k�\{w񜄡�����4%±Od*ӗ��>�L�x��s�69�۫U�⁉v��]�cnd;ҧܬ:�w����!	��HR���W��h�е�]P��Ƞ2,p� ܧ�����6���U�Ե�B�'2Ÿ����1��'0��wY��xZ��lׅ���O�u#"��Q�:D�r�L,T9䉦t�xn�[��|i;݈X�t""OiC�,H).�7������      �   �  x�u��n�P�k|�^p��6��I��*U�d���(��~@����6���?P�y�/��]�B��@`���DyEP�iiFoB9����N;�f���ʇ�6�cKs2�!�\6�(���JA�/,ya��$�% @��g ��r�$J)겾-7Z3^�T��IfX�@,V�xKe��)vzX�6J�&4�q�O�r�D�S�Mq̹�˨0����N�4��+�էTR��J���SCw����f�'T�'�(�L�ӛy^�U��Q�~OH��8kwԛ�`c>`����zof;����v�����k�c�wA~��A^���rS�5B�e%�1X1��<N�vw��=�'��{;��O����m�fj��j�m�Z�OG�n8靍�sSw�U����m��Yeb����'�j��*�Z�?V%�vD�{�iI���D��訛��l��͝��v���$�NE������%�� =���ŽJ���"�F�1�?|�t�ɢ_҇���Ua:�{-mۑgf�����4�Y/ZZ���ڡ`_�����w�{"�>#b [I�? zL4�����S�� Y��n|����N�mM���M�>�3OƬ������q��r�H��yPtu<��f�2,U?b��͍/��h��PI%      �      x������ � �      �      x������ � �         =   x�3�4202�50�50R00�25�2��363345�64���B��� f��1W� ��Q         N   x�3�L)�-��H���wH�M���K���I-.��K��H��4202�50�50R04�21�24ֳ44064�64����� �,      	      x������ � �            x������ � �      �     x���=O�0����UVT�w>�?�NH��K��iL��T�U��Hm Hݼ<��*TS�S�As�(=8�|(P<�V�X��XU�*�d8,��0A@����?b�?��V-P�[�
��ꦉ#����4�D�\�Q�^c��}�R�����E�^�v�6=A��ɚ�,��VZr����<6��j7���E�]$��Z���u���EP �$2lN7'�g�w#�����
��6b���m��!���`X����ԣ���A��q�yؔ�ԟ�>�q��c�GY��*�      �   �   x�eN��0;'3��^��K���mi�C�~�1�K;�cz����r36��| P�-��ۍ1ѧ��S��I�I�� ��Tռ��}��}��h���σ�|�9rK�%��;�U�@��������o��wTmͧ�%˚Hu'N���0�a�      �     x����n�0���S�^D�.��,�f���RT�}IZ�D�|���|���c�R��nj!`����]��/~ }�
�%Z�O�6vNo�
�5PQ����{�J����%h�p�F��Dׇwg��cO�M����3蝑u�����ٳ9��	l�'��hl���[`)��K�j	("�6���T#p	U���o�//LycۻMC	Z�^�}t�E3���i*�����p�_m�8Ӳ���(���)?\o}�KQL.X1�S�O��Bx�֡�^C����ʲ}m�w���T
])"��o�qͷoJj�@嵫�V�\���Οl
q�}s1�hz7M��L�8 �8���f:;9K�P^Ib%�/=����ZG�7�u�a������b��c�ș1���C%��
]�5�&K���wE�4�vI�;��~8�4��sUA=����S�V1�U�&�'�O�~�
��+�~"�sO��9�-����}�����s��9	W������2�b      
   C  x���n�0 D��W�^%��D�J"�����^Xp +�__�CՏ�a4�������:_b�"�	�1��ǵhOi���[���@	��*�Оf�J`t����Fq����Q�}gz�]faІ���p��|'}�iO�2Dk��e���I[
�.'�W�2r�2Q�c��#9Ϙ{wA�$���IX��&q6�@�&Q;�]n��چ):>CT�)*��MM+O�UPGn�(?`������}�*��aꊧ�����X5v���	�� ��Sh�B���3ۂ��x�h2�yv�=��V�Uf˦���i|�X��g��Y c�����s6�L� ���      �   Z   x�3�t,H,*�M�+��H-NUH,b�X1��Si^zbN~9�|T��˘�71�83?I6"R�e��]Y�\�X�Z�$_,����� �-�      �   �  x����n�0��'O������ˤ�j��m@m��e�!q�I\���Jk��{�����L-�x0��&Mm��{��*���|��O|
��Xa��9m��W�ɿ&�F�'�U��M�$<�����Y;䋬(2��y^�YU��i��-��%��mMh?�| 69��:]tZ�����--v��X��S��pm;S�AHLȇd��ʶ�=
1jyG�`k{�i��U��'i6�9�����u�ȧ�YN�ٺtC5�%��r���F���ݩIG�!�����aڋ�l�
��z�������{�/�dk��V�|��Z�Q��hg��.�W��h\�|�;#��l�3U?0g�^�7�PLҭ�5�o�j������I�z�<��-�      �      x������ � �         F   x�3�N�I��/-RH�/J-K-�2�t*���IM,NM	*$*�e�(�)�d�*���Tr��qqq �y`     