PGDMP     *            
        x            Proyecto    12.2    12.2 E    \           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ]           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ^           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            _           1262    18713    Proyecto    DATABASE     �   CREATE DATABASE "Proyecto" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "Proyecto";
                postgres    false            �            1259    18792    alumno    TABLE     ,  CREATE TABLE public.alumno (
    alumnoid integer NOT NULL,
    centroescolarid integer,
    municipioid integer,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    carnet character varying(8) NOT NULL,
    birthdaydate date NOT NULL,
    edad smallint NOT NULL,
    direccion character varying(300) NOT NULL,
    telefonofijo character varying(8) NOT NULL,
    telefonomovil character varying(8) NOT NULL,
    nombredelpadre character varying(50) NOT NULL,
    nombredelamadre character varying(50) NOT NULL
);
    DROP TABLE public.alumno;
       public         heap    postgres    false            �            1259    18790    alumno_alumnoid_seq    SEQUENCE     �   CREATE SEQUENCE public.alumno_alumnoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.alumno_alumnoid_seq;
       public          postgres    false    215            `           0    0    alumno_alumnoid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.alumno_alumnoid_seq OWNED BY public.alumno.alumnoid;
          public          postgres    false    214            �            1259    18753    centroescolar    TABLE     �   CREATE TABLE public.centroescolar (
    centroescolarid integer NOT NULL,
    municipioid integer,
    centroescolarname character varying(100) NOT NULL,
    direccion character varying(300) NOT NULL,
    estado boolean NOT NULL
);
 !   DROP TABLE public.centroescolar;
       public         heap    postgres    false            �            1259    18751 !   centroescolar_centroescolarid_seq    SEQUENCE     �   CREATE SEQUENCE public.centroescolar_centroescolarid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.centroescolar_centroescolarid_seq;
       public          postgres    false    211            a           0    0 !   centroescolar_centroescolarid_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.centroescolar_centroescolarid_seq OWNED BY public.centroescolar.centroescolarid;
          public          postgres    false    210            �            1259    18732    departamento    TABLE     v   CREATE TABLE public.departamento (
    departamentoid integer NOT NULL,
    departamentoname character varying(50)
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            �            1259    18730    departamento_departamentoid_seq    SEQUENCE     �   CREATE SEQUENCE public.departamento_departamentoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.departamento_departamentoid_seq;
       public          postgres    false    207            b           0    0    departamento_departamentoid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.departamento_departamentoid_seq OWNED BY public.departamento.departamentoid;
          public          postgres    false    206            �            1259    18716    materia    TABLE     �   CREATE TABLE public.materia (
    materiaid integer NOT NULL,
    materianame character varying(50),
    estado boolean,
    descripcion character varying(300)
);
    DROP TABLE public.materia;
       public         heap    postgres    false            �            1259    18714    materia_materiaid_seq    SEQUENCE     �   CREATE SEQUENCE public.materia_materiaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.materia_materiaid_seq;
       public          postgres    false    203            c           0    0    materia_materiaid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.materia_materiaid_seq OWNED BY public.materia.materiaid;
          public          postgres    false    202            �            1259    18813    materiaxalumno    TABLE     �   CREATE TABLE public.materiaxalumno (
    id bigint NOT NULL,
    materiaid integer,
    alumnoid integer,
    anno smallint NOT NULL,
    ciclo smallint NOT NULL,
    nota real NOT NULL,
    resultado boolean NOT NULL
);
 "   DROP TABLE public.materiaxalumno;
       public         heap    postgres    false            �            1259    18811    materiaxalumno_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.materiaxalumno_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.materiaxalumno_id_seq;
       public          postgres    false    217            d           0    0    materiaxalumno_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.materiaxalumno_id_seq OWNED BY public.materiaxalumno.id;
          public          postgres    false    216            �            1259    18740 	   municipio    TABLE     �   CREATE TABLE public.municipio (
    municipioid integer NOT NULL,
    municipioname character varying(50),
    departamentoid integer
);
    DROP TABLE public.municipio;
       public         heap    postgres    false            �            1259    18738    municipio_municipioid_seq    SEQUENCE     �   CREATE SEQUENCE public.municipio_municipioid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.municipio_municipioid_seq;
       public          postgres    false    209            e           0    0    municipio_municipioid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.municipio_municipioid_seq OWNED BY public.municipio.municipioid;
          public          postgres    false    208            �            1259    18724    rol    TABLE     [   CREATE TABLE public.rol (
    rolid integer NOT NULL,
    rolname character varying(50)
);
    DROP TABLE public.rol;
       public         heap    postgres    false            �            1259    18722    rol_rolid_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_rolid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rol_rolid_seq;
       public          postgres    false    205            f           0    0    rol_rolid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rol_rolid_seq OWNED BY public.rol.rolid;
          public          postgres    false    204            �            1259    18766 	   useradmin    TABLE     �  CREATE TABLE public.useradmin (
    useradminid integer NOT NULL,
    centroescolarid integer,
    municipioid integer,
    rolid integer,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    birthdaydate date NOT NULL,
    edad smallint NOT NULL,
    direccion character varying(300) NOT NULL,
    username character varying(50) NOT NULL,
    passwordencripted text NOT NULL,
    estado boolean NOT NULL
);
    DROP TABLE public.useradmin;
       public         heap    postgres    false            �            1259    18764    useradmin_useradminid_seq    SEQUENCE     �   CREATE SEQUENCE public.useradmin_useradminid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.useradmin_useradminid_seq;
       public          postgres    false    213            g           0    0    useradmin_useradminid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.useradmin_useradminid_seq OWNED BY public.useradmin.useradminid;
          public          postgres    false    212            �
           2604    18795    alumno alumnoid    DEFAULT     r   ALTER TABLE ONLY public.alumno ALTER COLUMN alumnoid SET DEFAULT nextval('public.alumno_alumnoid_seq'::regclass);
 >   ALTER TABLE public.alumno ALTER COLUMN alumnoid DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    18756    centroescolar centroescolarid    DEFAULT     �   ALTER TABLE ONLY public.centroescolar ALTER COLUMN centroescolarid SET DEFAULT nextval('public.centroescolar_centroescolarid_seq'::regclass);
 L   ALTER TABLE public.centroescolar ALTER COLUMN centroescolarid DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    18735    departamento departamentoid    DEFAULT     �   ALTER TABLE ONLY public.departamento ALTER COLUMN departamentoid SET DEFAULT nextval('public.departamento_departamentoid_seq'::regclass);
 J   ALTER TABLE public.departamento ALTER COLUMN departamentoid DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    18719    materia materiaid    DEFAULT     v   ALTER TABLE ONLY public.materia ALTER COLUMN materiaid SET DEFAULT nextval('public.materia_materiaid_seq'::regclass);
 @   ALTER TABLE public.materia ALTER COLUMN materiaid DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    18816    materiaxalumno id    DEFAULT     v   ALTER TABLE ONLY public.materiaxalumno ALTER COLUMN id SET DEFAULT nextval('public.materiaxalumno_id_seq'::regclass);
 @   ALTER TABLE public.materiaxalumno ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    18743    municipio municipioid    DEFAULT     ~   ALTER TABLE ONLY public.municipio ALTER COLUMN municipioid SET DEFAULT nextval('public.municipio_municipioid_seq'::regclass);
 D   ALTER TABLE public.municipio ALTER COLUMN municipioid DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    18727 	   rol rolid    DEFAULT     f   ALTER TABLE ONLY public.rol ALTER COLUMN rolid SET DEFAULT nextval('public.rol_rolid_seq'::regclass);
 8   ALTER TABLE public.rol ALTER COLUMN rolid DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    18769    useradmin useradminid    DEFAULT     ~   ALTER TABLE ONLY public.useradmin ALTER COLUMN useradminid SET DEFAULT nextval('public.useradmin_useradminid_seq'::regclass);
 D   ALTER TABLE public.useradmin ALTER COLUMN useradminid DROP DEFAULT;
       public          postgres    false    213    212    213            W          0    18792    alumno 
   TABLE DATA           �   COPY public.alumno (alumnoid, centroescolarid, municipioid, firstname, lastname, carnet, birthdaydate, edad, direccion, telefonofijo, telefonomovil, nombredelpadre, nombredelamadre) FROM stdin;
    public          postgres    false    215   6U       S          0    18753    centroescolar 
   TABLE DATA           k   COPY public.centroescolar (centroescolarid, municipioid, centroescolarname, direccion, estado) FROM stdin;
    public          postgres    false    211   T�       O          0    18732    departamento 
   TABLE DATA           H   COPY public.departamento (departamentoid, departamentoname) FROM stdin;
    public          postgres    false    207   ��       K          0    18716    materia 
   TABLE DATA           N   COPY public.materia (materiaid, materianame, estado, descripcion) FROM stdin;
    public          postgres    false    203   G�       Y          0    18813    materiaxalumno 
   TABLE DATA           _   COPY public.materiaxalumno (id, materiaid, alumnoid, anno, ciclo, nota, resultado) FROM stdin;
    public          postgres    false    217   F�       Q          0    18740 	   municipio 
   TABLE DATA           O   COPY public.municipio (municipioid, municipioname, departamentoid) FROM stdin;
    public          postgres    false    209   ��       M          0    18724    rol 
   TABLE DATA           -   COPY public.rol (rolid, rolname) FROM stdin;
    public          postgres    false    205   1�       U          0    18766 	   useradmin 
   TABLE DATA           �   COPY public.useradmin (useradminid, centroescolarid, municipioid, rolid, nombre, apellido, birthdaydate, edad, direccion, username, passwordencripted, estado) FROM stdin;
    public          postgres    false    213   h�       h           0    0    alumno_alumnoid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.alumno_alumnoid_seq', 400, true);
          public          postgres    false    214            i           0    0 !   centroescolar_centroescolarid_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.centroescolar_centroescolarid_seq', 23, true);
          public          postgres    false    210            j           0    0    departamento_departamentoid_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.departamento_departamentoid_seq', 14, true);
          public          postgres    false    206            k           0    0    materia_materiaid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.materia_materiaid_seq', 34, true);
          public          postgres    false    202            l           0    0    materiaxalumno_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.materiaxalumno_id_seq', 1000, true);
          public          postgres    false    216            m           0    0    municipio_municipioid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.municipio_municipioid_seq', 262, true);
          public          postgres    false    208            n           0    0    rol_rolid_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rol_rolid_seq', 2, true);
          public          postgres    false    204            o           0    0    useradmin_useradminid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.useradmin_useradminid_seq', 2, true);
          public          postgres    false    212            �
           2606    18800    alumno alumno_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_pkey PRIMARY KEY (alumnoid);
 <   ALTER TABLE ONLY public.alumno DROP CONSTRAINT alumno_pkey;
       public            postgres    false    215            �
           2606    18758     centroescolar centroescolar_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.centroescolar
    ADD CONSTRAINT centroescolar_pkey PRIMARY KEY (centroescolarid);
 J   ALTER TABLE ONLY public.centroescolar DROP CONSTRAINT centroescolar_pkey;
       public            postgres    false    211            �
           2606    18737    departamento departamento_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (departamentoid);
 H   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pkey;
       public            postgres    false    207            �
           2606    18721    materia materia_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.materia
    ADD CONSTRAINT materia_pkey PRIMARY KEY (materiaid);
 >   ALTER TABLE ONLY public.materia DROP CONSTRAINT materia_pkey;
       public            postgres    false    203            �
           2606    18818 "   materiaxalumno materiaxalumno_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.materiaxalumno
    ADD CONSTRAINT materiaxalumno_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.materiaxalumno DROP CONSTRAINT materiaxalumno_pkey;
       public            postgres    false    217            �
           2606    18745    municipio municipio_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (municipioid);
 B   ALTER TABLE ONLY public.municipio DROP CONSTRAINT municipio_pkey;
       public            postgres    false    209            �
           2606    18729    rol rol_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (rolid);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    205            �
           2606    18774    useradmin useradmin_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.useradmin
    ADD CONSTRAINT useradmin_pkey PRIMARY KEY (useradminid);
 B   ALTER TABLE ONLY public.useradmin DROP CONSTRAINT useradmin_pkey;
       public            postgres    false    213            �
           2606    18801 "   alumno alumno_centroescolarid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_centroescolarid_fkey FOREIGN KEY (centroescolarid) REFERENCES public.centroescolar(centroescolarid);
 L   ALTER TABLE ONLY public.alumno DROP CONSTRAINT alumno_centroescolarid_fkey;
       public          postgres    false    211    215    2748            �
           2606    18806    alumno alumno_municipioid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_municipioid_fkey FOREIGN KEY (municipioid) REFERENCES public.municipio(municipioid);
 H   ALTER TABLE ONLY public.alumno DROP CONSTRAINT alumno_municipioid_fkey;
       public          postgres    false    215    2746    209            �
           2606    18759 ,   centroescolar centroescolar_municipioid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.centroescolar
    ADD CONSTRAINT centroescolar_municipioid_fkey FOREIGN KEY (municipioid) REFERENCES public.municipio(municipioid);
 V   ALTER TABLE ONLY public.centroescolar DROP CONSTRAINT centroescolar_municipioid_fkey;
       public          postgres    false    211    209    2746            �
           2606    18824 +   materiaxalumno materiaxalumno_alumnoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materiaxalumno
    ADD CONSTRAINT materiaxalumno_alumnoid_fkey FOREIGN KEY (alumnoid) REFERENCES public.alumno(alumnoid);
 U   ALTER TABLE ONLY public.materiaxalumno DROP CONSTRAINT materiaxalumno_alumnoid_fkey;
       public          postgres    false    2752    217    215            �
           2606    18819 ,   materiaxalumno materiaxalumno_materiaid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materiaxalumno
    ADD CONSTRAINT materiaxalumno_materiaid_fkey FOREIGN KEY (materiaid) REFERENCES public.materia(materiaid);
 V   ALTER TABLE ONLY public.materiaxalumno DROP CONSTRAINT materiaxalumno_materiaid_fkey;
       public          postgres    false    217    203    2740            �
           2606    18746 '   municipio municipio_departamentoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_departamentoid_fkey FOREIGN KEY (departamentoid) REFERENCES public.departamento(departamentoid);
 Q   ALTER TABLE ONLY public.municipio DROP CONSTRAINT municipio_departamentoid_fkey;
       public          postgres    false    207    209    2744            �
           2606    18775 (   useradmin useradmin_centroescolarid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.useradmin
    ADD CONSTRAINT useradmin_centroescolarid_fkey FOREIGN KEY (centroescolarid) REFERENCES public.centroescolar(centroescolarid);
 R   ALTER TABLE ONLY public.useradmin DROP CONSTRAINT useradmin_centroescolarid_fkey;
       public          postgres    false    213    211    2748            �
           2606    18780 $   useradmin useradmin_municipioid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.useradmin
    ADD CONSTRAINT useradmin_municipioid_fkey FOREIGN KEY (municipioid) REFERENCES public.municipio(municipioid);
 N   ALTER TABLE ONLY public.useradmin DROP CONSTRAINT useradmin_municipioid_fkey;
       public          postgres    false    213    2746    209            �
           2606    18785    useradmin useradmin_rolid_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.useradmin
    ADD CONSTRAINT useradmin_rolid_fkey FOREIGN KEY (rolid) REFERENCES public.rol(rolid);
 H   ALTER TABLE ONLY public.useradmin DROP CONSTRAINT useradmin_rolid_fkey;
       public          postgres    false    213    2742    205            W      x�u}�v�H��3�����}�D]J����VM���	1�L&4y�*��k��TM��l�*	HD�����{�F�F����·�����_��&�d�/��L�g�6�6a�b|x���C�]]�}l��U���G���~��t��mw�v�1��m��n��w��q��Nx�i]R��|��TlLhZV����닜��E���1?�C�^}s�w݅m�Z|���a<4�
Z�����L�g�V�d[�����a��V���m���tp�7�5J�6��n����7ۡ�p�����]s��n7���F��m�ϔ}�L�l�V��w�����_�=�n�ø�j%���M�.�+���~�����\����'��|B2����P�
a�k��~��ߎ���}�_i�к6a�C����y���áy�����"ԇ�q�n�m�i���vl�I��/H��Vϔk��n�|{�W��gV���}Y��\�F��uZi�B�i��蛿���;�S��M����ܟ�C����ǯ��+���8OG������R��46�tk��7���7�wݱ�H������g�3�;�Z�֍Ս)k����ΪM>z�������oz��y���o��E��7��n�C��^��	<b')<3���N����z�����t��;Z|�W�=l��x�v�_��K^n�_،������]��u�UN��i�=�w���p�����0�&)�a�y��k����Pl�r�ˎ.z�S���²aj���8 �G�R��\���͋����]hS�bZ�����u�*$���jq���"�S{�7\��w�fm��}�G�Rh�O�#>��iǣt��]68�56�M�����3R�|r�����v���=`A�����0O�z,i#θ��Tݮy;���^��5���&#�i�VX9V�j.�3z��� �1����/�EY��6p$`��'[��缅���0m�8����a�v1�6*fl��	�ӛ`���8������L�b�>6��b؏��xv(�){���3� �Ok�j�]xf�$��[�����>�����@x`�)��y���s����(����q?��}G��]L|��*`�
�X��v8����Ƥ6��*Ũ<��z�m�4
�5�]z��0k���x#�A�������>k�������>������a���u��]��a��CL�ʴ|A��pϰu^�Z�������$t������p�X��509�X���2]���=VRǈxcB`Q�����^�>��uq~))��	Z)�?G,�_�"����|��39%��s�UkK��~��U7������[kT�F��'����	K�k����X �W<�]���-߉p8|2׿�)�9c�C�z�������Z����	-��S�'<
��LǊx]<��~��aE�&�N#�T\-�%)��b��~�G9��pF�-��n.�c.���^��_�V\7wL�/e�
S�92p�_�[�á�KxS��S�pP�;8���m��]�{�����u�f�8��2���k�� ,�j�nkܭ^�����h�-�S>��|?��-��?�>�`���|	4j����
��g���fD����px����w@�?��{nwl� $��@_�J$��FR�z��+�#��� us5b�0�~�m�p�f���}��C�'fBJ���d+b'qzVpf�~{��f�`�xMn�j*4"�a�ڲׂ1�5J޵�X|�������a����x���04*5_��f<�����Ȗ�[�K�(��6��??m��m��b���C��Z`ʨ�wO�{DO�V+���9	c�uKl�9�C�U�����i�`/Z¾7�V�?�Υ���&��sy��ZY �V��}�I��ϊޅ���2q�s��V3����&��Epp9�ѳ:�6���2o��d�����o��Nl��m��5�v���92|~9TT���#�x��&x�P�^!���Zy�9�0-��������_��n��G��ʎ�M�;[X�x��p��4`�.>$dx��3��1j>�bi�������AB�KO�	Op'�"`@&?~=ND��c�~���g%X��_���N?dv |X"�|���c��V,����n��G�v@�A� f��a����a�����9�*����Ȑ.��/q���h�#�k�d��/��6 * ����<r��;Z��_n�]���� 3��h���>��z���
���k����M
k�������6�7@5�q���˰��$�A8Hp�Sx������P�h�= �#L�??�����O�9��˚���1	�:CE��V/6xt�<02DtR]�&���D�Dc,�>G����W#kI��%�"2&r��c�Py��q��Ə�z���G�a@��ԝ�fZ����X��tQ�O�B:EX�VWc?�]6n��`a����r�����j�y�?����U�'��������7��rn��Apo�i����~xh�AP��M�}&S�:AL���`�%Vno��B��;"�7�6IY`(l��=|8� >JV��{�䤓�5V
�X�J:�s�zI7(�������p��Ҁ/me�#S0��vf*�<Urx5���xt$��80E>�|��k��v�&^�<��O�'��"�Ӫ�%X���M�[A8������\�x �Ŗܜ��}
���3��<��+¤ c�B���ooa;�LX��{Ư%���q�$���^��ŮW��p��+����A�V�o�2��qm$�ic�һ�� R�ۼ�^���Om1l,`�!(�I����e�	����U����̂�b�4�m���z z1�O�����V*@�| f�B6_E� ��Н��zN�z��3ᥰT9��o��g���G�k�Tv�d\�N]�ۙUdV��,`&£��^��~���g�̻�sh*I9�lIe<@dɭ�r�Fx��"��\�> a7#w�iC��_�'h�n9B��Ne�k�KV��_�b�"]0�5^�x��b�g���݈d�?�&XE�Q�Fֺ�K0_�	9N<ym���6v��̓���{䑂��i^�O���8<�x��5�4�'a� �0OM���$��s�n��[�
ԯ@v����/*��̋��ۄ/��ҕ��7�pJ��1�m^2�H�/F;y�ݜ� �D����,����Y��k�N�-���X�/�������	��8Y3Q`M�7��h�� ������zg�*p @ipq̙~��\/�9MA?�!�rE��<���9N0�C�@�_�SbK[��nl
��kp���r��=�/]�/.AH	}��/'#�����.�>�]9�8Oǈ���� �}��u�s8��;�\p�X^�)���J	^i���	���)�.�q����O �jW=���5���� @���o��vu�����L���㩃Sa��z��tӾ?�����K��ڀ���� �%����>��C�g��� е�8��o�~�-��w���(����g]�|`���x�j"�9ƈS��������8'xmZ����Zk��(O6.��İ���Q�����C�3`�p�y���O?���]���t�?ξ���晑�0qaג���.��y����>x:��0�oY�����JU18�l�I®B)`R��`�8�<�wX����1�g�u!X��V~<|�Ǳ|�ᶜK�[�:�G�8����u��"Dv���a�=����
�,l���;~��.���8x6 ��O��-X��qʍ�*��|�I3;I&���o�
Fu)Yfj���L��G���<����xG�B�+��0_ohV_6�f_!I$�}?�D�]R��q�� �����S�����X��U)��1:A&��î�V���+=x,< ��j| <���c��32�q����#-�%�W��������K�ߌ�͟�z}n.nN��e�����H
�"��3�    6�����^�$�6�o�}.�O8/��Xk�e�'���K@�l�����Ol*��(0�e%����;��?n���G/�<2ǎh��̕+:|-骶����Nߺ��	~�T��O�7�B8|���<
�����s�aJ:�dI�?H�j��-����Z9�e��k�����t45�R�ɱ ���ķG#�'d j����a����1s��m�-�, �$�[��� Pp��tS��$6XnY2���/�}X0������U0����=��&G���������5�'yi8>��q7S�{�Ȋc9��� �hjk� �ŎH��9�fB��Ag�v�@N�:�R���Ñ����!�y�T��ʍ�H����8�\��,+�F*V!W���{�?�kp�A
���Iy�v��"�����=�P� �b� O`�I�����o���܁��cz�ݎ7�˻ns����W87�:�0*�dT��[�R�]�����
J��	0'�o�8��d��z�v	NM�����\A	�`"jE8,ꡩ�x>/*��Jm����5���q��Y��
�]Z���r����Z�����}���DG�:R9�7�]���Ч�	m9Ds��S�s��K{�!V�O@����py/|`ރ�:V,Ss)GI���q���Te�
�Z�6R�� s*(��g����C%��m�������iuM5<yG�E)N���Ca'��C� �pL�E����t�F�Z��wb�mU�d?�`���U����G����rp�� PÀz&��x<6����lM�C�
�*��*���\�PL�M���:"S�8m-�%��0�ޟaƻ��|v�.X��T6�	�b���\+4\���/�+e�GHa/�x�N���8�E����f3p�`�8)y�T(�-�6@ݾU66��;o������(T˘�ܶ,���(x&�df�۬����$�VŤ�nܮR��b�f�-HX�AX�~����[��U4c��[���
��X�)���{$O�s�FSLZ%�НK����l�u'��
1���v��D�v���K9;	��C��4pƁ���a�$�?L��eD m���m��ڞV�ҧ0q|=vI�ۋ*+X45]�j�T�����˓�����׿�cde �rQ�rNB��8��ߥ�1�~e���J�oo�ͩ�pΕt��
�\gс1K0e�$��"�cos]�N�[xFOg��;������i/��_��-�xg��&a&��0�z"����kc��= �8˾_VCAB�a�rƯ:��)AN
�r����(y0إ��@��QB�I��|_�?ZNwc��؅I���i��ik�,��R{�.���,9O�Z�,X�Ԥ����E�"���\]w��f�����u�����a���F�u,�����zj��L4��E՞ad}%r�z�*~�Raa��)4�_����g�?�=��Ĭk���ô�3is:O�pi�7��o��	\�w,ιU`� 3�[�/H�/h���WqyT�y] +��[C�KQ���b�La
P�P;G�<�� R����A]r�dxO!�&����H�*R2L��e�6�>��|��=�b�ΤB�"8R���gI�q��?�Ԕf�D�ɥqČ�d���7��4e�)�Wj�L�$�D�>�wŪ�$A3��FI�5_��	[���UEuT�er<��(���j�k�p�^I����`)>���=��}�z���,_0!=�
���VdY�oB\(��'BP�c)��	@dE���l���)�S�ԹP,�E���lig>V X���������58*y����77�Nē�5?'��� )W���,S♲3�'R��zu��z7}�B�W�����Ⰰ� zV}��d9'�~y ��Ϋ�y�T���k��B|�Wr���g�zr�m)1�l��)��`��!���JH��<H��˸;��cpqr9LxeĔ��� K`���L)�߄82��U+e��4���+n~�H�m�x3X�j����/X뻧�R=�6��qC�F��>�߿#$�ŢC~��)#�K�	��
N�������)ѽx"�!S>��������G����!�Ş6�J66��4@=����*�m,���&Z�i������XS�'3{�}��ℳ�C _�q��}���v ��`�����	#]�Փ�eK� 	���Ⴖ>�E|���1�l~�iD�3O9X�4�J�����2�[k%S�=0-�/xT�l
p��l��f=,m��Q3~��m�����8�<�Fb�$�Q(:H��Тw����"�Џ|*S����)����[� �b$���cm��癊M-!�9��B���Or��^�Ksړ���8��)���a�?1��V.�<=5�q��+pHRV4e�N�M!r��(�o��3T[J����v���n��ے.ͩ���5q^�iI1"Ŭe��x����� c�^~���,w�E��ǒO�O�mѷ8J�?��m���I���G�� |o
[��-V��ǉ�)�A�\ �݋��ҳ6��?D��� ������/��>����V:]�Z�$�,��EB_��\}��9�k���j�6�.@��+����@񏦔L->�V���GS7W	~����u�6��xj�0KX<?����\3�<�Si���dh�-����g�u8�?�æ��y �p��Xv4o���m(��qR�esO\C�t���fVG��X�a�ۉ#��I�iP��GԀ��>�y��c9Kќ� 8�|6Y��������G�԰*n(~�KM-��������R��C�j@�K N�}�;2s���Y����:�[O˹�t,<�� �C���������jE��_�2��C��cjL�# ����N����Y*��d?Ve:�v��([@��n	�$�X��t?: ��H���`�����ݟ����v��5e`sq�ZZkm����%���m'��C�i��Z�SYG:۷��}Ϻ���d�sW�p��w.ˉ�"����?�7v���NI9Ж�%�!.���^cw{��4��;Sw� �ɓ�*��uQ���aa2W���b�w�4I1�����Y eMI���̽�f6&¤,I�4�K�w:���k��OXd���q��e���1~�2�D�m��L��������h4e(�hE�d��r_�Ι㉡�%<�O�A���P��@Fۍ���(c'gv��4����|��\b������O�vpB��PH�x/�|v"}����3�2���,da�?��M��	@K��f��QB�:I���x��g�EY>(���[fs��`|�TI*�pGA�i�#��sON��M�`�ܶE�
���b��ֺf�w�.�E5)V���c�?�3��q	l�!���\\�Qz�t�a�dk
R 
]��R��b�������E{�I��Y�π�.	(�}����,)���:��e����s��~�b%Gd,���GU��0�J����Z���2��=����~��G,D���P� SV���\��,���h��:���Q��R%�8}9;�
�v�JT1?���ZQl'i��Ł��D�Ed[U_YYV�X��#'��j��W��-��Ͱ]�w���[�V�l@�.��6S���*����H�����N4@Z��Ç�����L���ÕP`���,�[�h1e|�U���,�ϖ:�G���4��(9�'H���"G43g�ܥ�Wϱ��iـ�<�E�ZZ��(���xː��'i�)��Lp��nJ&K4���Z'Ibay���$��K�v��J���7^�)�f>�����%��wI�
�4Q�DɊ�XH��Q@R�pxK[�oF��$vi����yD{��}�LME��=0l�a����C<l�Ifr��B��gү��3���e�U���@L�eGN�f���p��g��&V���!TQ���1H<����Vo���Kf�[L3�A��ˏ���q� _<��|=��=K�	�V��@A��6�-�Y��g�    ����['�[�w,0��2L�!G�a"�R���2�����-SSے'1�I	,�Ҥ�Y�����|M{S��W�Ys�S�j&bU�����]�-�t\9��?�z��P9�h��%�:L>gFÎC���� �q�Z�,0���v��!PUl�b�t�goGJu����U�E�
� �~^<	�x�ԦE�]P(bu�!��� ��l;�3�QMK2>@�p�m�Jd摉��Iwb�L���X0v�_)i왃�ӧ:���rL�(Ɏ��R�᫿���v.���9�tV�`.x���"����Z�7�#�
@E���x"RS�:�m~sW���68]Թ�8����S�;�`��{�',̾��ſ�J�/PK��bvQ��,�P8Al�Ch�;v8D/�u�?{�|b��L��d���%�pMA9���(�b��m
b��0��Q��GX��7�v�~�B���KP���l�+#t��э12�j��K�ݨĂ �+)W��4ƫ~�KB���GAEБO-+��� ңH�R��8Mx�	�D13CC��U�Ѓ�I��z��O�ck������\_F�Tahگ��nkM0zJ��?U�8���/��FJ�ir� w��ڕ"Y&f:BZ�9����X4���Q���<��޼��a�c��"���K�sr�=H�-)�%Q ���3�S?�H_1�D�����p��c��� 3"�ɭA��T�q�o�������ݪĒ�F��}�-0��f��̀��2��LzT��
�5��8�d�-��o?�%v�o�۞����( ���4k�;��Z���m�r�|��Ox>4�����+���ؓz��T���s��fj:�t$l��S�� bRlr�!&��� p��Tk�3��$[n!*d���J�b;<���f�&A�ƃ|6���hG�g��<0��`Z$m����22[E �pf�Yq�pgX{i��؈+,���}DLJ��6B����D[TM.|�I�nJfL���	�ľ�����L�i�J�"s�����L-��~ϱ���mEY.�Rhh�."'�� �Q��	�]���o9�C�w��㜟B�&�H*�?t߷�����q7 �l\}9[��<�D�&�^�+'z�b��N�q�H��u�t#7���ֲ~5�/��U���(������*�f�&Z�	he��o�yQvE�D�X)�7���g����D����B����%��;���}��M�(Km�pd	��
0Qe)�O����Su��i�)���,�)	��[����f'����l�fƯe�>H��<L�9j/:#E��&�fV(�B��&��2��zꔰZ�b�ѹ��n�#ϑ��\K����T2%N�؁r��"pV$�nl���үN��t8F��m����o*g�PUW,[�,;�<�y�;6(��E�9�� �J!�}����M�]�E��9wb�M7d�,Ƴ�0��e��-( UZ�x�FQ`M}.J�,��l�����*ᢐ-Q�7QocX��|!#����ٴ'q��=Abss�O��19�c��(Ѳ
�A4����Vl^�$G�цߐ`�i�L��)јS���x;O7R��w�:�c���+	��̚��!���֊�O�A���#��/�ulsh���H��s� ��m��D9B#^ ���s|���26�����@���d���o���]�~��;����������س[�MI��38Ό�2����������a%�9#_�B ����]��SǞ(��KVܗ�8��c1Ƥ�V�x�q���/�׮�oѥ|���}N#(�:�d��J���a�f�h�*8~��!"KN�5V_g) ?d��ێ���Q��f�oB�疳�a)�n��Ն���-Hf��8���V�� ����q�5\����2	 ���@�����0N�9�2X�k��INs�A6����qUx[ޒ��"	���� J�k�ܜ�mYB�2���w5"����E�$�,l�u�=��� �juN(�~RJz����S+p48��ZN�`��~�����o*$��~ 8�����ĩMf�����7�$�w��<?w�����r���>�=��l�HQ�݄㔘�Cr�G1Q%�ѐ�ݮ1�+��[�������@�G�U2�V4�ds���?�R�U��xB�6&�7�Kq��{����o���� -x`P�r�6�����Bs��`	�bc���S�| /o7�@�KO��b��� �3Y����2�f��:0p�E����xԧ�s�2z��.�.�����cn���
�.a���m��Esl��K���{;��d����Z5�?�����t�r��XB:Z�	(�'�@+֞K���~Xc?���rq�4�4��Y�=)����f�´)��B��JB�؛�1 �X�po��㯟Jh���t��"��t�.&��5�]]u�2�C�����,�'p�E3/��SM{���(
��ya)���ތ#��M���s��{"e�t<�#�MK[��V%��o\t`Ӕ�C�L�5�WZ���4�C��oX�x7|�E��ʹ��M����\�%��/ ��gHI���d��$N�|A����<1m¨q1���F�ԡ��٠�A���βX߲�qN���Ra�x#]Jf1$����k�<KZ�̇kZ�4����.pd΁���X'����#l�4�j#���J�lS56�[a������	

�oJt>�d:$��2��a���AeN�=E���~ ��rѪ�]��D*xn�������))�6�x�AX�[�ξHI��,xA�H&$d�bd������o9��Jʂ��ϯD�$'O>���4&H���V��� ��3�$���,*��s�Ɂ��>�E������2��J*�EP/���h-:W��9M����5X��8�=;v��+�C'�Nͬ�Y��j/`��Hf���]�����w��N�foa-{�]�a��I׍�ҕ,�,��g��y�?���8���W+��e1�%"%�c�YP({.�Z���7T�R�ƙ8͗�����Nɫ�7y�t`��RrRE���Z�����R?F4��`6�Y��?���yAWE�jfs�/l�;,*���=Ufu�'ᘣf�4CQBJX9�+�VM�?��fae�$JD��Ǜ���%pZ g�r��`�/��i�T����	$6*����8
���b���w#'��6r�d�![o���I�RB~]$��a���Vb����M�1wY~=2��(�jٲ3�:�]��=ק6{~��?����5��%����8erQ��߈ i�'"zp���a`C��B����"C��m�)V��p �>�))�^�T�K���$r���7J]߁W1��,Z�BXQ�"��*C`[/�'��q ,��=��i6�rR&�@f}�����kK)@N)�3^J)]G��9�1���[h�~sl�R2��J؁�+T�t�F�Qc���Ҋ�Hb�"��ԤTj�z`
�-�Li�(C���y���l��ӕE3s�f�6{J%ׇc�rzv!�� >�&�K,d�X�˭��������-��ܛ{���N��W���®8@[r͗l�S�:��8���$!����!�]]�6%^���ה� ���y����{�MC�j��c��c�OTpe�DIW"媣H_S�8�)Q�����
���Y�u'�0K�:9��
���=mˬ5�E�¤��0�v1�+Py�%N�^���	̃K�5�+��V|��]�F����(�8��ksp����^|������iZ>�>�����c�'�	��nũ���ҍ��,���3iƲq�o?K:(��Mb�F��h��fqg�	_���p9��jXql�q�	3��<�\���8򇨧�&8�_�2��ÙlE�H��'ѭ�m6[�|�Ӯ�G8�����	�F�[�����D)#3�����%E䕒����=���|�������Av�� ������t�cė�||?]�"|vu�~���X_`��a��%�x�m�'��<���h+�+�k�#��"�n�Y2+�5���n)T�ސ�-�2��O�_������/��>��ՖIx%�Hi2�    ��,��̵�#r0��~wn�{�)bf��_Q5qx|�몛�|��3yhM�=�۰|Ɇf���������=�)�\'���TLױ����3����A�h�$?3��5���ZƦS�!"�2?���R�&`��ki��Ǝ�h����N�����_���&�ㅭ�<��PY �m*�I�D�v`$c�{�D�t�|ٟȲ�d��'���J�@[g6��P��@�y�DB�q�D�	�&P��u8rh���s���cB���s��L�b�Z"N;�ufj�*I7�/�,|�7�X9[��A���
�9�>@�G�C���$��#2f�aбa������|�o7�8M��E"�|>³M/����e��v~<���P8%�� �����p�gq����bZ��K�p��Y� �4g�9��[��D � f_J�3n��y,�e�~ _��{e�-�8�Yi\]�v��u�=�N�k`T����V�J���'��jf�27��dD�cp"B�l����/"�p�q��^�ݷ�Я9�pkY���I�Y�k}�9�ن"3��a*MVv�}w7Z�����#X��p>ܕ3M��R�H:y���e�Vy�\%��uC�V<9i|~�x�w�UqA���z����|��oe,.@���ߎ�;`�q�Y�ǘu^C��Q{��*�8�R�C�l�ɨ��O�.��C9�H�9��rL���j8��T����=�]3��"+�!�HҒ��2��%b�c7q/�sa�d��ðy�� :��~�,H�B� �r��3R^Mry:�}���X,��3{�z�����'��	�j��S�i
�������/ۿ/H�?����=8���O�>��k��,	>��?'ݷ����J:�����7�H.�0�RcKL{]!:�ߝP����`n�"4��-��y���^}��䀽� �t�ǊQ�)GqW��+N9�ngG8�z��/&]�������(���rdC�b=�sg6ݖ��X�!��R�[��R����Շ�(.�(����Xc������ݗ�]�IX��IQ��b��Gy�bL��hKbgO��o.b�Y����c^.�qJ���[�`����K(��*��{���֪�N湷�[��L�x)w]߹G�d**xǓb�"�)*�/k���߇ً"?V�"erWP�~�u���n��b����uI4-�i*r�O�qO�� D��ʒc�#����0�v.kW{�K�;��Ĥx�k �s+i9l��\ ���v�0���GFFK����<�}CY�|��]iΒ	\���r�:VD�(���N�Ҭ��HQy�-�E�"i�B�o^vb��}j3{�bM�x����f��mi�j��Y�|��C߼�ͅ�g���<5Գ�3�� �$�x,��f�^�IS?¾8K#��YUG��&L��\�Ō���!�R.�IBP��/cc��i��&��"�=����H�L���8߲� ڊ /�E	TŸ�>q��pwN��@��a�)�\OAt���Y��M�
�<G��Z�Q���b�#���Is��%+'��d�e;�YJX_�Q� �P�ȋ���X���yOD�<�#2Wƺ����+qbi�6�	�Lt9�(����H:�9b3��DD�[z�0��yX�wZ˗��a�ϘT��4@����V��X��G,���VN����:�Ԇ�s�ij.�_Ož�x�Z$��r�k��"��y��O���p1�F'�kA�����/��V�"=��9Wߢ�Tm�����gh]G����Y��B��.n#���>�f�u�%q��3W�sP� z�z���L�RT�s&$g2F�2�2h���ȑ+҉%;�ꓥ˚:E�i�e�A��
QFR)k8�!O帒6^����9̘!h&t���K��(=�� 8���d6�eB�K�^��t��S��+������z>����ph+�����h&������P�9!���1�7ݫk� <�
)Ǟ�'�譲@)��W>R�w�$
��WT�y�95���C���S�p���Ō��@��� �\$�" z��˭�|�/��7�	��5IƬްx�ٌ�P.X�-�a���<0��3`ey�`=S��sI+��y��9e|/i��d�#M��)��z܌[v a�N4�6�&
Y�30Ka�:2_��/��w���0�! d�@
�"Iċ.gK��z�ԷʼK�
�k�f��l@:u����|'�T�4UW��n��d��}"+��j���W��"�����:���ySN�0��@ā܈��(jD7by$��S:���m[��A���> �2دQ�����p��� ]2�+]���	�Hܤ>j}��bh#�!02����m�3�d ) �:�vx�t�H�����U��*l[iV�Xa�����Wx)l7�ä���p����\U|�(L��
F0HۖY�Lʹ:�����,A��h�8�Vq\~F��x.8kx�If���Ԧ�� �
�G�|g���l �����ɜK"�4A>0���H�R��-�#�Yz�ǧjIa�z��Q�U�L��9@�9��r��RO���8*#��2���b?�HTCne��W�k����E8 p�g���R�.�4^<�� sbg|l�i#����\e��Om9����T��7�;&.�ufGt-��v�,�`n�,�(A`�3��v����%�,���S����<��΃�&X^�?U���t��*j�vsX�����T��
��<�olgQ��i�b%�u�ؕ�pM�����v�r֍	�e/|3\� ���"ag�Z}�tSb��^@bD��y��T�O��R#X�8E��nX_��Zϒ�<��EOEO��]��ƛ/噪�o��w.������m�r���l��G�
=Nh�+Ut�7v�
T�s���خ�`��7�j=Oj*��6����-�y�m���*�E�e:v����`��CO��'����)|�	�t&�T�Θ'��։W��!�>Gޞ۝�g@���7��Y���Mݍ�,T�7U�de&�Ҁ�?)i�Y��<�8c�ăAqC)��߶;n#t|���n)0�$'�+2zu�yq�jϙn�:�� �+��cyK��r-nO׋G�w�`J��<�B���7����]/7gY��͖���0Y��5����'O���&����j˷e�+aK�9zC�8<+%���K�@�Nr;���5�f�A(��gy� 9�#>w;6�A+��,�p&��\F��~��=�yh�N?J-o��ˬ��R�"dRETZRk�E=P3̆*.\Ll��n�v;�-y�ٳ�o�c�2�u�aD\�[g��6D72��X��إ̃� �/���J���~��qM�;'-:�P�r$�"��f�$���Z�R����6���u���f��;�v�x�G�Z0{�+��ގ�/���,�ۊ��圧LD-���֐sZ�c�Ƌ�["�k�x��~����?p��%LxDث��v��a2.�&�z�q[8h������\󯽈���18��((=�S���m��%����{O;���~�X0�L��9�p����[ғ�ϝ(��J$�L�) E
�<�ۚ��Ex}2�ǣ~&ʨ�|��0-Y��Q��F CjK��Tt�?~teZ�0d��+�� g�W���%�(��	Ղ�V�HI��Mѓ��Ie�Imr��GУBX�w�\��-)�;N9��7X�D�Ȏ#����J8�O��(��@9k����Z'�>���=�'�3Q��	�"�Pm�NH��xyq�Ԍ^�ql����b��ưZ�H�p�Q�/2�eMw��K9��s�/�\��ߟ���4֫y�	[?Ҧs��.o���4�̫�R�!W��c.�9%�#��m�	�s96����d��R�5�]�m8�_�"���FiעAR�	Ђ��l/x{���?��)�D(�
�����U����7f_=ߞ��s	qT씄V��@J�8�; ���)���d��$\d���\�}GWtl,���M�e"��a��p)Oix�E�َ�Y��'a�����ƛz�����̰��28R�S��t�=�/[�x �
  ���nY-d�"H�X�S�,�T^�>�,"�
yr˛JErty�>�M��eO�
g�V���G䪘:�S4[���x�CƼ5�↛�,f�D��Js�/�˕� �F��?�9��L�{-�I���Ͼ���ad�a
��D�rՐ*�THظ���P���;����i&�%��l�'9K囅��C��"]D���~����k�]�B#��t��rSCw�e����S�ދ����a�!�Ѝk��~���>w��x�'>`��c������:�<�� ����i�6*D�MCѨ�?oE�C�F~��L��d(f)}_� o���f�9�	F�x�;El���Ҥ�V#�˹�-E�:v�9�X�\�	���KI�Q�#7��c౏u��Ր/�v��b��l�Lv��.���\�]VE��*vq��e���9guu~b̈́Nj]ح��r���m�+�)`�.בF�7���5�[����y��=�O��gh-g��aW���*�l!����A��v~��(�ߝ�h��h�W�>bE��˅CNX��6��N&��2� R2�GBv�8ۢ*Қ��6���<��k9IU���|�"gH*����mi�r�N&&�`Dri��^7b��j��T�)�?�1E�6�\7�r�)�XQt�<pv�D�z�r2���E<q�͵��ӋӋ���y�Y�e9d���H����?~������:i��&v��<K���3���
"���0]�(��G���?����SWx!=A�i��g�Km�d�S) �2���r�a�l�����vZ(�*��|�S�wC���?�*�a�N�`Gy<���v�F�3Q߀פ��u�؋�o����Je����ԅZ�N�J�[���_��y��z��n|�4�V�D�8N�$'����z����7�r-"�����2�;�i�4�P/�~�ɰ�U�Ar<�qv��{w1���[�ř�c5NF����?�!46L�<�+؂/�c���j���uM'&T"��H	<����X(���'-G��۽�S�������S���)��1�'�6v�Q,��"�n</D.s$�D�$����[&�p�U-gp�%���K�V�dO����א�*]�r��pH� լ�,�z%�Ԩp�>�	3cuD,Ý���*ޠ���`z��K��VW��$��{u�<|l6q��牌�¯��u>W�����S�J���~V����5s����uG�r�Q��TD""H����#����+�}�#,�.�8o*
<��b�b�U@X'�~��4w�ϭ)�S��TD�Y��IX��z �m����J�N���[�X�n�LL��5��9�\6�K6:��z�+/�*�p�#21s���ǩ8SKØ��Y4�&��H��\�Toh��L�p��t���Y�C�~�^����$���J���NZ������Ns��{�kP��®��w��a�4����L)w��0ߘ�Z\�[��W�#�nw6�|����c��f��b_`6y
g���Lg:����o�-ֳӟ��S��@��J��x�+�Tn��U����TS��j�����i}�ef�3yj�(!Z��Ǳ
t󝿔��踫����8]�b90��2�ל���Ρ�t
o�$T�_Z�d���7�BLWR�F�;��)�m'%%2����-�;N۸��m�枖%���5���FЦ�F��js�s��:%�by#S���|<��;�}�����iN�mI5ʀj^��
���f�Ϡ��nD1y�v>�>��ncU�%1�i���)�6:v�����s{6���S�?�.
���&�o'gC�B�`�$o��in{������ie�'	:�P��0�����/:�fb�X��1�z8�M��k�9�������t$I�8����~�bP8)�)8�$y<�#ƌ��<��P[U�c�\�B2��de�Ys��t���S�<�b��~���e1b�sDo�풯
�L^�Ȇ�իn�������ֈ��
r��-*�ZI��J�D�d���P�ROŒ�� ��WS�H��X)���)T�*_֪��l�����d�*�YkUz�^\�	�*��˭˞�\��S޶�\�R|�x��<�&PM����_<�BV�@^�B���Z+\H�?��w'�C�S�R*𥖐8Y&.��A��5k�|��Q^�gD޷�Ʃ��-�¢cJ����1��r�i!׮sj��m�����m噷,�p�{��2ٷT̕�@G�k�M|&��=�WRJ������Q*j�(z�0p���<~�WU�S��籎���r���'��@e0شX��9�T�q*��~\SS�ٟAh�x����Z��܃��)y����tR{qO�[��:Eޛ�� �0�ˇ�����T��UY���4}�9���H�� �<r�R�VBV�Y�3G�7"����.Db��Ϧ�1.7���ܖ*󰄅�� ,(&�T�� 3�����m�*U��[��_��"Tjk�(�ƞ�2L��1��	[�$�3�~e'�v�'�P���<����/����!��oN�_uB���9"i�ݳ�V�_�FZ>=��"%��&q�63��g��j\��!]|9=ʱ��?�a���.9���zʰ#^rW8�*�?����ȩYoR�L�������[6��9��C���N�B�g6�5���N�����v�W*S8���T8�oδ���� ��87�E[�Xhq>���T����o�>���92����$��5e�N-*a9tOEC^{�KJ�i�M����ߖ�Lx��-D$��=H���?��/�      S   4  x��UMo�@=�_1"RO�v�r$@HP�����`o�ѲK�6*�5�1�Z)ʭ�	����0vr�Y���޼�����}&B%a�����
�W4�O�5��0��$�6a��~|��TFX�+ �O}%�]	7B�0e񫤫�4@��hX�	��*A;	�X�9�+T^�)��)#2���x��#�nq��jƹH�I�j�ct}�b���8Ʈ�@�i�悡
�!\��`�.��,����H٧l�s�%��{v�o�_�9t��'�������mwM(�&O���	��	��ùB��$ �i.?�g�5c�_���L�[	7R��թ�"�&}r'O� =�+}�Z��@5`�*�%a$i��G=3�Jp�����֭���#\�$���/!���.Y�*]�)Mp�%|�4�iH��{lYUh�l��ict(&(h�φ��AU[oe����}	�z�-��B�t��3ː��Z���r
h�%SzR�=���R�H�/1�ivƚ��7���.e����� �<ҫ��0�#��?�, w����&��@*_���<,�ܭB�g>Ek�e��ǈn�E�!vggk�̀q��W�SrY>�4G����_Kp����r�Z�g���aa�ʄ��	m��<Yi�z�>�P�Cb�C����C������
��4�2���g"���ߓ����e����	�n�H���_=�ƾ���/s�����9[\��-k��I� B�3	�~���AZČ7O�VS6�"�=]ƿ�,��0��C�K�5�����M�gw�GpB�ӎY�.�����
炶�S1������k�j��ڗ3      O   �   x��M
�0��{���Q���
��nF*��b�.�M�Pz/V�n>fE��Oxm�Jtؾp�Q9��k���s*���M���BR͝^<>Gݱ�%�V��'|��.X��F$��1h�긫�yc�+��1�Z�f�Fz$��UF�g�ɩu�/�f��<�      K   �  x�mTMo�0=+�B��2�v�&GZ�=�$�@�݊����r���{�a>>=>>�Q`=�%���Emb.1�_������������U�Q�<C&�s8������X��d� ��'���w����(1y(�-%�L�JL�Hp>C�@�?(C�ǣ2�'�ɑ�{�B������%�������sݝ�Z�Fq,O�Eg�+�m�J��tj s�!���9�8r����V�W=d̺�+�.�q(�9��x�qMP&���,����PG�]��Ml���,�_ߣv��n=�If��b���фy)���޳&���Q$�YD��@���F�y׏h�|9�S1%����M&�Po����$�)��uJc�=(���M���%�s
��1`���Ek8��Ar|�H�ۓ�Wor7��7���S5@��m�0��$_�c?w��D��9�3��
�WI�~�p�M²NשL7��b�
�p�Nh�|��Ƿ�f�HEt�      Y      x�]\Y��6��>Y̅&��^�w�����H�y@$�>��b��'�>�o������������ߐs������{�^�����<������g�����~�}�o�5���������o�������7��d���O�>�g����g����w,�}�����ܧ=���m�{}���3~�N���88����{m���y�_�ӻSox���}t��w�9���ST��Ow���7_��w�p�W_���=�������)W���Mg�j�����x:�o���)���w�Ts��O}���{�����w��'r%�]���{��Z��g�����6.�a?����w�fn�����q�m>�_+�hwnwm.s���wJw0��Q�1b��������a��?q�G܇���>��kpw�_@��5�5�;x�t}7ݔp����ٿ�N�5�\��E��wx��3�|߫3���b<����ox�Z^׿�<���FC��_�w���,�f�����~r���������t�������ͼn�օ��Q���	���U�Wy��\W�o�x���{�2�:F�����n�i�[�ḓhO�׿������뾒��>��,E�E������)��)���]ߞ�h��/c��)�_���;��h|��X��S�ݾ|���nr�t�e���~��6�D�&���bg��Gk�P�eD������#���������_�F0���X곿;㑀�a�n�*����<�	��M����+��q��~ò{�:�ϴnܽ�b�#н��Jg�ܞk ��n��<�0��"�[�}`k/��[��n�zd>��/we�������f�a�^�-��[Y����Ͷ#������`uWz��2�R����q3���w�E�X0���ҍ�����a���nb�{���;�7��;��W�o�(x|0��2��L��݊��n���|���q�v4��u�h��w�����;f{���E'7ʇ��x�f�k�&p�����Ҽx�:�j�d�x����5R<���]ʙ`s᯿�r��'�]�a��m������͜�ݎ�C�аvҰ/�@*���1�D&����=8�$��Q^k�>��_���z�p�ｫ���!�@-37|����+<
�G��v�N$����9���^�|�k��__\�}���X�=���V�,�����S����\�H�݇��~��l_6�My}���Ȭs[.�͈|��ȟz` �s�����sz��?/�ar�����Z"�fDaRlק���F:�s΃ܳ{��c�,�����;�-��p0a¯��Y|��]��#�(}���Gz.�_���l�io7h�:��$�;8uw����R�Ŵ<�X��V|�B�4n�l�Ú|���܀Q����`�c&��딜��0j���� �Y:q�����k��/���7���1"3y������1��G�CJ�E���V�S?ݕY=�v�F}y@�\R�% ��5��.�/�|�npGI�(G�a[7��6S��_��W2�_�)�7h�����G�؂��-g��
{)�����x7������,�av�Ն_?����UT!]Q�u<Rj�b���g�: ��C��3]�fE|q��Z���)�ob���%�񺺣� X,���C:�כ׮~����-�"nE�+��	l��+$_��u���r^�2�t�8���X+�30 �BtƊɟ<Ë��8����6��VT������fa��էu���������.0�,�ƀ������K�$|GԞI��,�~�:�-�\�Zk��:�~�x�9�{�{o�������F0�g�i��p�S��cĝ ���ȋS_���Nz�p�����c�q]�-�x�������w&קt<�1R_i�ҖQJ�"�+���������U0��9�Fv�O�>�=�]n��������+�� ?������~�T�?�QG	n*&a��n�*K7�4���c~�2�g\/�/�ݴ��q�NZ�:\�ѐ��8�F���~+�<�%.�}�$D��,��Py~�z���_|�a����4|�=0:����s�zw�zV[�֯��_���/�bo?� �3��`��x�>2�k�yt�[%���fP�H�Q$"�:��3��S ����d�I��x����%2���#�ս�sD)�0}ܻ������?^�_��L��延~Q���
�wy~2$��1�Ӎ�)��b{��e�{1-r���`�"RN��0��܆�N`N��|�6���7��Ƀ7cq�Aq��G!�(��",[�oN2�nd� ���pK���a��ǜ�i;@�Hv2�XL�:������s�Ö4��x��He,D�ڌm��2.8�5���TF*�$�FF r���·
�
	��O#��^쥹8V��{��(��!OX�P%�����"��ft�z��=�}D|����@�ǖ�
Ӡ�p$�m@Bl�v��0�H�#��B�`����� �����|�CU�k��f�*�B�����z2AC���e�#í��Hk�h8cK��x��!EJD;\��ʂgW�I�を�`r0T�%�?��/���k�:P�l�rE��%as��X=�~��8��� �Su��驴"p��v��A[�q}����D�W��40�;��{}� ���������L�&������\��k+�"���������DRd~�[�:0�_�·m�U�'G����Np��ǫ)v:i���՝�N$�awV���?^�
d� hf,�L�l�<KW��G�����q�� ��D
%O��M�wwQ���,F��~g ��,8�W��z �M�n�M�.��7	��!*�wk*NZ��@c���n����5�$�P�RL�젂^*�}��x�%�Ct	�h:��pgh�2;ص����P�-��!��M�U�.nĐE�_����&��mAL�`5�D���$:T�u��RX��_�2/7U���U��,��9*j��v���������\j�jU�qӓ���#M`ɣ��' �3@�~�ٷ%��٭f���]3Vg��26��1�C�7�y��T����<?�4���d5���/|�#��CR����ѯѣ�8�:ϋ�C��eE�G|N��S}˛y�����?j�3��+-~{6����(��cʻbp����=�z�zg.�������	�v�h�꩑D"_b�C�	�(�/�I|ň;:��T��b���z.��>%`Hr��y�T種o�<w����|�p���T�lX�F��#���e
���M�m������?`10$�`C�q�I�y��K>�؟�Mgu �~�$�?E�^/����9R�1�
s�\��9�tĨ��Hؼ�-ؕ��7o�>n6i�^�e�@n�,��$.�=0^��7�%G�C4�-z�f���� �1&$�Vb�A�X9Pe<����֎�hܫ�O����#@H'!f0�X���k�`�{��E�4�iȓem����p��7��*�'�0�j���h�\�����sø��TBW߮�� ��'t:��@��٨������X$�,vS���
��w/�Q��3��^����* �F��,��nT����Ր�V��v���20W�7�z)��j��~�!T*�љ_�0��FV��2�r#q�-���/�n��G��\�w�t����� ��{�˨��{��e���X�M@�����4x������Qq<H���7{ ����$��ހ%0� �YP�8��I�qMt*L>9*��q��0tcI�I����� ���9�K�Zh��ݏ�h�!L-xSh�x?z�k@�b��	��5��XŖ0�Oxr�B��E���6�	pD�(��Xr�A��݆���tR$�-���0�#®����#K���2�\܁u[�V���_�jn�|z�v��+Z��[N�z;q�����V3��N̸x��ҬŐ��Z	}�7g�]���;��������|�    �Q�C ؋��>�n��5���ϖ�,M@-+��z�9�(TRaBF�C����";-Avj%�Vw�@m'���r�k��T�>.
�X�E,m|ܘA6�O�UNٸB� �c�R�M���˂j�H�/�!	�+Z`��p�7V�إ����	Cr��2�C}.^�i�EFTQ$��P��&��\�f*���y@� F�WR.Pt G�u�P�"V��_X+��mf����)�6�2�"#��� ��֞��,^��y�n9ξ�2A�E�;�>�h˜
�U:lV�+`�Xo��vX_?,;�e$yOdO�bB۠��>�cڃn^$��>x}����"�Q5�&m����T�I��;SU��+a����⽴:F{���e������y���o|B0�Ρ�ؾT#�s�v�F6)4� ����A�zU��]|ߪ7��:��|�,��[�-��Pk;K$��oЄ��T�40�s��d'ݖiŖ����O�h��D�y����T��
�6Y�(��"�|3���W(������V4�g��o���3���Z?p���ڧ����c�g�O�$UH~E��������7�@�H��Z�AMKҔBvJ'�����T<I��8� �J�7@�*�y(�%$�%&�F^��N�.�@���AE�e2:��#cfr	��E��K |d�+5��s��%<q$�[�r��f�<y�ef���9�ɠ�Q�#a9�*}�Дɘ�=Y4� E(�n��4B�|4�X
(��9b�H��d������ �2�Z�Rw���{��p����Q#�l�h���dv�y
t)�DP�(ɂ�@KJ�!��c4�Ƽ������l�ّ[Q�����9c�!�--�}Y��7& !�>�'ҩ!�/"�@����G��.D$ؘ,J~>
r��<���0��HX��J�SB]Tz^ټ�s��xb���v����;�o��O�����sE��X%+f�_}<�C+N4�����fA��]�ȴ<�^K����~��K�[M���+J͈�X8C�
������}B9з�/��� H��JR�+a�Q�Ձ�R�r�� J�IL?�f���;|���b�
4���hy��R�u�$�jq�+�fc���^�I��D�l�}2!�D�����!S֭���ŉ��ƪl�r��B����ыv��K]P�� �ؐ5��hp�����?�SжBƋ������7���� !
;�]k���AK}��3�B�$o�,DeT�T�� �0A�3��2��
Fȁv��@������$�"�z2�)w
���B�I��@��AMe"�y��_ǝP$j#I�է�A��s��|k�S�^)Cu��R��6):��)�6j�wisC	�P��wN1�,���%i8������؟oX��sB�M�&�i�$	!7_ ��e���s[	9ީ;�L����!m\-g����⯑�ʪ,�3�Ȓ�}��?��^U����E	@�N����)�d�z�y*4T���Ny��A�~��>�z�Fe�l���8:�؜�p������`�):���ߓ���:��2x�k���Z	0���i��7��"��NI��u�����!�ɮk��D+6Wu��d���g��w�t�.���e��E]P���YX��A}f��h隬Sw��#V�8�D�Kx���XUo�)θڔ��� ݐ��0- �]P�tƒ8�����	U�
(�|kj�����Z�9AB �wtDTx��A�����_�$��*%�Ov���Vs-�B�sfMu�oZ��s �P?��{Z`"N檢����	��|Xhq�'�(S��4퐦���x0m�"I��U�O�O��TŢ���3�_��iUP�=��s"!
ds��<�q�/]�f�Q����܍ևR�� %�
C��/�u�Ǝ�,0 S-��?��E��B���)��Z@Cu��ͧ��քn�#O�����Ш��xH�c�qڼ oS�;f������M��^(=u;��x�5\a�.#F��W#G�w������܈6��o5p8[��'h�)p��)d��'����/Ge����P[=F��}��buu*�9�J���Ѓ�T�R��>h�/h��hA�
�	|�~y�g�p���!��XつS���*�F�_��u|ɡ�"���.�,p��-���}�k"��n� �\u�b1��`ߓ> ��y7k��C=,�u�A~B��h�Z!�El$"dDN�y�8�[f��ߍx�6�(��D�9ŷ�g��x�Y�B�/%�:1�H�_� ���<ϛݷ���@�\*)
���q���_�{J�mD1�	�H<��#�="�p؀������p�8J�A1ihX�Ԙi�x~t���6x"|P�+?����l�cp�x?$���4�gw�+���a�]*�R:�?,b���F�&�;����&�6�rdOscdi�Y��͆�6	�a��q(�ؿ�Q���3a3{Z`�0�5���шm��`�9�`q���þ��4��=��<t���UqJ���,YO(Gm��W�h�>?(A�t����@�^�U�#���4j��ód\L&%���IM���j��m��GP��S��b	L[��o҃�C��I�T�	�g%:�cF��5�	~�e��e��g�6�}B)70��J3`砞����:�t�F�u6<9$JGvD��1un۪�����U�)j:S&JdX���F��q^�μ>�^<� �3f4ԥf�K���1Q��&�9fPD�y��5S~��C�5�r
��$,P�#ۧ����
7�ϥ��Ȳ~�s���={�a�8�N����QbXE�I�"G��g�۶�����g�m��W�h|$BV����s<b8چ��V�B{�}t�v��`�.Xr&D�bI��D-YP<���Y<��i�E| hR��y�G�n�L;�����|��-�˫2���S��8��`�*Z����Q��Ph�w��h�V�D����wc�+�/2��	՘������o�R�~ä�+����y�5O����[~P!JmlX��hy	����f|�����d���<f�@�q	oC<��a��1Y�GPB��!a��ڀ$wG��I��p�#9Kl��M1�l�ԃ!�dN"�0?�ɜj *��= Hگ��(�6���F3>������'� _��|�j(ӥ�yŇ��`v}v������p[r�O�pڀ/D6��s�}������>�8�N@��.��k�EM�''�G�?z	;�F�>ZRp�{��|h��0�]1'?E7����ɿ�/�PZ]�L�Q�E֓ ��ͽ|.R>T�{����ً�_%�(�7:�]�����%�G��R
|*ak��"a�>����(K��'_q ���&����^��oa��U����f=�a��[XEj������rb���,�&��!�l�����DX+upH��ЗN��lA�l��6����*E��W��N~1/O #*(��8o5��ԭ��5B�.
���VY;���T�
�7 I���ʏC�"�B:�������*[y\�ϷR���3�j�"aXdh
��j�%���8P�&!�Q�&aN�pN�H�&ܠ�4E|�p�2BΗRcG_m>O�����uPo[to�(H@���0����� b�����Ӡb�8^�"2�nԒ�}&'�ooM�L8?ޅI�+`�U�z{Se�ι��l�\�g�`�������K��O�B�[YL�@l��4��=;8�??�"j�}pʹ�J}�O����:���O_G ��b�c#�[fd�Ƨ���>�_˛����>�3
�����`���q�]��$�NYveOCmߌ��*��ڪW�5�:��(���E��:�5�q���I�4������4N���^_!����&Z��>�i��\CC	�yP������x�M���*�O����CCsҹ��확o�7?�;}>-�@>M1�K(?��>
X��^Ei������)�2���тe��w'NF��P�<:�\��B̓���5���d(#]�uT9� �  �����Ɍ���7S�Zp��3 ɇ>2�x����x��XC��S��	ǯO�&--)Bߙ<joL��M
˯"����(�A*~�"�F�J.84�=]��:�8&�y��L��,(:(%��3�Us]C�v��}�)R�Y�9�H
�PSR�9Qy������"�-]�X���r�̧�I:�"(U��䖱�]��Pmz����Mg�S$냱~�_Ҳj��ġh4(t�L��\�_�9�Q���ρ�w�Z$��1-�(O;q%si�_��С����AGv��7��!$�y���=Gq�h�ٙ���C�J��dQVJ�9Ј�l)U�<
����`�iL��G�,�Z�p̪��Q��O��C����94��x��IY�Z#5�ЙB���8�o���1~y�X=N�c�Z��1>�Ic���E�?9�Q�g�$�_��b��\�w��=e<(8�CYg��QF}B����l�٤�u�_ H/��g�������~���}���c�*���6�kH�C��8f��! E��}� �}���|���8�v�H/Ӕ4��0�/B,:��	�3qp/>�U�2%�A�s��*2Ο
����Q����>�PE���H��'��͛��� ��P��F!�ﰞ�~b������?���-_      Q   &	  x�mX�r9�ɯ`��l�d�ѡ^�H%Y\�v��6��0����f:p�������t�Io��s��}�{�󧠊'��-{���V��P�j�g0;�J9�.]Y�ma�?��JC�
ͤ7�����KX����mP�U�)�z���j�]��U�xU�*��^��o�J�̣��y]�tx��^y7X���&�ao�TExV/������Ҕ�Uo���+g�_Ei"���Em����(��Fmem2��28� ��e�Zo5� 6��K������󆻌��uP�Ke���޸?�k}�j�(���n�,΅+/��U�.Ń���U���+�#�����q`��N�� �a�U���s�G��{q��Lbw��G�-�� ���{��Ǹ��:��f,�Bٍ���﵉�	�j�)h[���?}���O�q�wA���������4+�"�K<<�J�����]i
Z�c��KB�Zl�����GWq�߸ft���Gb>��dQBe�8�����J��N��No$8��|w^�XnPNS��KU�h��9�����yjR6޺j��*U��fyWC׿�	?�OR��C�I�7�GO����q��оЫ�,����4sb�\#��BYJ{+3��V1�����Ud��χ<�=�UX����������XK�n�@��p�|�����ʂ�}�ƥ7U����8�z�mJ%Ev�j�F_�I��K~Q�6�&Y4k��C�(��Y�~����ް늕_(��|8��R2]X� pM�!���B۰4kҟ��(��M�&D�_@ɰ�h"ҵ-̓0���R� Ȱ�w����By��pC	ߚ"��y��Q�59���b���5��[%������D�@~�O�n@>kU��*��^ՈhE$y|��#���I�뗺��zN���I���II����`WNR����a�h�k��n9]^�]��~��0 �{���Ч����)+i;ڀ����늀؉K�~�4�\�1?�O���jx�j�zc�+�zx6<m6H�Rm��T�z`q�!� �"�wK�!�Y�cv,�JT�N_��~�}*��n�Qv�5������;�e��t�nF�T����9�M2D��G�;��	 ���~c��VYND�ӌ��FJؐ�	�Qm����z3 ��
��J���1��G�6q��T ����"!P��'n`�6 ��?��	��Me%�)g�:L����u��դ���j��)&p�X���Tef$V�^q��sn�sܦ�8�g-?�x�;���8M|FK)��<N�� ���<�6hĪ7�̦ǻ-�8���p�(�`:@Ǥ���5�Q�)MP��ʼ�J���k���y|��t���ճ�x����)�1��)�G(�P<��_� mmĦ� 	�~PI���@�����H���z;����ߢ��BO�,�T��&y����VcP��X�0�e��ĵ��$��h�$O���3��D�P�(�{�U�Y�L��-�B��a�ӢDJ�5N�@iR� �Yd2��1��YR�H�Ħ���f2d�����0����Y���
��)�%P��AjVoe����)P��[�߯"��~-�̲�ٌ�j���t�� �n�K�i��b�M�c����p��6��J����w9���9��A-G��P㝕hQPE�JKѭ1�F9K�Sa�P|o��"���V�{0��_�d#���9{�%�	�41w*[�[1OG�i�/�n���jyk2_����:����5#�.1542�&�q��p��ҕB���ZoT��!ဌ2�T�^v��΂QC��@��G���)n��_\�'��㓷4��r�IUy�NنW��`�v\E���f���&�Q�YC
��9*J��՟P[����`H���s�Y|D��#� o�N��%s����]`���.���m3R YW�=̏*��$���O}��1��n�/F-����������Ó�+)H}w�?�'�#	Mս��LP��;
��$�s�&�$E�˄"��b�'�{��b!Q��s�z�������ks���M��pۡWM|	�O��6>梶$�iWL��J�܉�m��T���TԵ�ME��#+�T�ѹ ;)JA��d����0�+^h�Cy$n4_���t���IU�hǄ3�@�A�A1���}P��ܡ�����-�H�⛋��6��'Yh���}S|ܨ�㗤�De �["��<���L \e���;1{��~����Ij/R�T�_���^����t�U/F��l��V�i��xNpzv\]�<ъT�p��U��Nȿ�����x�q      M   '   x�3�tL����,.)JL�/�2�t��/J���b���� �9
�      U   q   x�3�4�4�4���E��
Ωə9���.�
>��y
A@~^~1P��������)��1�sfn�	gbJnf�!g�IIE��aX^~�Kb���Sni�e��-g	��t#rM7�gz� <�5�     