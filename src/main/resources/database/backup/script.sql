PGDMP                         x            ProyectoPrueba    12.2    12.2 E    \           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ]           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ^           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            _           1262    18009    ProyectoPrueba    DATABASE     �   CREATE DATABASE "ProyectoPrueba" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
     DROP DATABASE "ProyectoPrueba";
                postgres    false            �            1259    18088    alumno    TABLE     j  CREATE TABLE public.alumno (
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
    instituciondeprocedencia character varying(100) NOT NULL,
    nombredelpadre character varying(50) NOT NULL,
    nombredelamadre character varying(50) NOT NULL
);
    DROP TABLE public.alumno;
       public         heap    postgres    false            �            1259    18086    alumno_alumnoid_seq    SEQUENCE     �   CREATE SEQUENCE public.alumno_alumnoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.alumno_alumnoid_seq;
       public          postgres    false    215            `           0    0    alumno_alumnoid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.alumno_alumnoid_seq OWNED BY public.alumno.alumnoid;
          public          postgres    false    214            �            1259    18049    centroescolar    TABLE     �   CREATE TABLE public.centroescolar (
    centroescolarid integer NOT NULL,
    municipioid integer,
    centroescolarname character varying(100) NOT NULL,
    direccion character varying(300) NOT NULL,
    estado boolean NOT NULL
);
 !   DROP TABLE public.centroescolar;
       public         heap    postgres    false            �            1259    18047 !   centroescolar_centroescolarid_seq    SEQUENCE     �   CREATE SEQUENCE public.centroescolar_centroescolarid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.centroescolar_centroescolarid_seq;
       public          postgres    false    211            a           0    0 !   centroescolar_centroescolarid_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.centroescolar_centroescolarid_seq OWNED BY public.centroescolar.centroescolarid;
          public          postgres    false    210            �            1259    18028    departamento    TABLE     v   CREATE TABLE public.departamento (
    departamentoid integer NOT NULL,
    departamentoname character varying(50)
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            �            1259    18026    departamento_departamentoid_seq    SEQUENCE     �   CREATE SEQUENCE public.departamento_departamentoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.departamento_departamentoid_seq;
       public          postgres    false    207            b           0    0    departamento_departamentoid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.departamento_departamentoid_seq OWNED BY public.departamento.departamentoid;
          public          postgres    false    206            �            1259    18012    materia    TABLE     �   CREATE TABLE public.materia (
    materiaid integer NOT NULL,
    materianame character varying(50),
    estado boolean,
    descripcion character varying(300)
);
    DROP TABLE public.materia;
       public         heap    postgres    false            �            1259    18010    materia_materiaid_seq    SEQUENCE     �   CREATE SEQUENCE public.materia_materiaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.materia_materiaid_seq;
       public          postgres    false    203            c           0    0    materia_materiaid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.materia_materiaid_seq OWNED BY public.materia.materiaid;
          public          postgres    false    202            �            1259    18109    materiaxalumno    TABLE     �   CREATE TABLE public.materiaxalumno (
    id bigint NOT NULL,
    materiaid integer,
    alumnoid integer,
    anno smallint NOT NULL,
    ciclo smallint NOT NULL,
    nota real NOT NULL,
    resultado boolean NOT NULL
);
 "   DROP TABLE public.materiaxalumno;
       public         heap    postgres    false            �            1259    18107    materiaxalumno_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.materiaxalumno_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.materiaxalumno_id_seq;
       public          postgres    false    217            d           0    0    materiaxalumno_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.materiaxalumno_id_seq OWNED BY public.materiaxalumno.id;
          public          postgres    false    216            �            1259    18036 	   municipio    TABLE     �   CREATE TABLE public.municipio (
    municipioid integer NOT NULL,
    municipioname character varying(50),
    departamentoid integer
);
    DROP TABLE public.municipio;
       public         heap    postgres    false            �            1259    18034    municipio_municipioid_seq    SEQUENCE     �   CREATE SEQUENCE public.municipio_municipioid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.municipio_municipioid_seq;
       public          postgres    false    209            e           0    0    municipio_municipioid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.municipio_municipioid_seq OWNED BY public.municipio.municipioid;
          public          postgres    false    208            �            1259    18020    rol    TABLE     [   CREATE TABLE public.rol (
    rolid integer NOT NULL,
    rolname character varying(50)
);
    DROP TABLE public.rol;
       public         heap    postgres    false            �            1259    18018    rol_rolid_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_rolid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rol_rolid_seq;
       public          postgres    false    205            f           0    0    rol_rolid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rol_rolid_seq OWNED BY public.rol.rolid;
          public          postgres    false    204            �            1259    18062 	   useradmin    TABLE     �  CREATE TABLE public.useradmin (
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
       public         heap    postgres    false            �            1259    18060    useradmin_useradminid_seq    SEQUENCE     �   CREATE SEQUENCE public.useradmin_useradminid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.useradmin_useradminid_seq;
       public          postgres    false    213            g           0    0    useradmin_useradminid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.useradmin_useradminid_seq OWNED BY public.useradmin.useradminid;
          public          postgres    false    212            �
           2604    18091    alumno alumnoid    DEFAULT     r   ALTER TABLE ONLY public.alumno ALTER COLUMN alumnoid SET DEFAULT nextval('public.alumno_alumnoid_seq'::regclass);
 >   ALTER TABLE public.alumno ALTER COLUMN alumnoid DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    18052    centroescolar centroescolarid    DEFAULT     �   ALTER TABLE ONLY public.centroescolar ALTER COLUMN centroescolarid SET DEFAULT nextval('public.centroescolar_centroescolarid_seq'::regclass);
 L   ALTER TABLE public.centroescolar ALTER COLUMN centroescolarid DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    18031    departamento departamentoid    DEFAULT     �   ALTER TABLE ONLY public.departamento ALTER COLUMN departamentoid SET DEFAULT nextval('public.departamento_departamentoid_seq'::regclass);
 J   ALTER TABLE public.departamento ALTER COLUMN departamentoid DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    18015    materia materiaid    DEFAULT     v   ALTER TABLE ONLY public.materia ALTER COLUMN materiaid SET DEFAULT nextval('public.materia_materiaid_seq'::regclass);
 @   ALTER TABLE public.materia ALTER COLUMN materiaid DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    18112    materiaxalumno id    DEFAULT     v   ALTER TABLE ONLY public.materiaxalumno ALTER COLUMN id SET DEFAULT nextval('public.materiaxalumno_id_seq'::regclass);
 @   ALTER TABLE public.materiaxalumno ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    18039    municipio municipioid    DEFAULT     ~   ALTER TABLE ONLY public.municipio ALTER COLUMN municipioid SET DEFAULT nextval('public.municipio_municipioid_seq'::regclass);
 D   ALTER TABLE public.municipio ALTER COLUMN municipioid DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    18023 	   rol rolid    DEFAULT     f   ALTER TABLE ONLY public.rol ALTER COLUMN rolid SET DEFAULT nextval('public.rol_rolid_seq'::regclass);
 8   ALTER TABLE public.rol ALTER COLUMN rolid DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    18065    useradmin useradminid    DEFAULT     ~   ALTER TABLE ONLY public.useradmin ALTER COLUMN useradminid SET DEFAULT nextval('public.useradmin_useradminid_seq'::regclass);
 D   ALTER TABLE public.useradmin ALTER COLUMN useradminid DROP DEFAULT;
       public          postgres    false    213    212    213            W          0    18088    alumno 
   TABLE DATA           �   COPY public.alumno (alumnoid, centroescolarid, municipioid, firstname, lastname, carnet, birthdaydate, edad, direccion, telefonofijo, telefonomovil, instituciondeprocedencia, nombredelpadre, nombredelamadre) FROM stdin;
    public          postgres    false    215   �U       S          0    18049    centroescolar 
   TABLE DATA           k   COPY public.centroescolar (centroescolarid, municipioid, centroescolarname, direccion, estado) FROM stdin;
    public          postgres    false    211   ��       O          0    18028    departamento 
   TABLE DATA           H   COPY public.departamento (departamentoid, departamentoname) FROM stdin;
    public          postgres    false    207   >�       K          0    18012    materia 
   TABLE DATA           N   COPY public.materia (materiaid, materianame, estado, descripcion) FROM stdin;
    public          postgres    false    203   ��       Y          0    18109    materiaxalumno 
   TABLE DATA           _   COPY public.materiaxalumno (id, materiaid, alumnoid, anno, ciclo, nota, resultado) FROM stdin;
    public          postgres    false    217   �       Q          0    18036 	   municipio 
   TABLE DATA           O   COPY public.municipio (municipioid, municipioname, departamentoid) FROM stdin;
    public          postgres    false    209   ��       M          0    18020    rol 
   TABLE DATA           -   COPY public.rol (rolid, rolname) FROM stdin;
    public          postgres    false    205   ��       U          0    18062 	   useradmin 
   TABLE DATA           �   COPY public.useradmin (useradminid, centroescolarid, municipioid, rolid, nombre, apellido, birthdaydate, edad, direccion, username, passwordencripted, estado) FROM stdin;
    public          postgres    false    213   �       h           0    0    alumno_alumnoid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.alumno_alumnoid_seq', 400, true);
          public          postgres    false    214            i           0    0 !   centroescolar_centroescolarid_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.centroescolar_centroescolarid_seq', 23, true);
          public          postgres    false    210            j           0    0    departamento_departamentoid_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.departamento_departamentoid_seq', 14, true);
          public          postgres    false    206            k           0    0    materia_materiaid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.materia_materiaid_seq', 34, true);
          public          postgres    false    202            l           0    0    materiaxalumno_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.materiaxalumno_id_seq', 1000, true);
          public          postgres    false    216            m           0    0    municipio_municipioid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.municipio_municipioid_seq', 262, true);
          public          postgres    false    208            n           0    0    rol_rolid_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rol_rolid_seq', 2, true);
          public          postgres    false    204            o           0    0    useradmin_useradminid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.useradmin_useradminid_seq', 2, true);
          public          postgres    false    212            �
           2606    18096    alumno alumno_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_pkey PRIMARY KEY (alumnoid);
 <   ALTER TABLE ONLY public.alumno DROP CONSTRAINT alumno_pkey;
       public            postgres    false    215            �
           2606    18054     centroescolar centroescolar_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.centroescolar
    ADD CONSTRAINT centroescolar_pkey PRIMARY KEY (centroescolarid);
 J   ALTER TABLE ONLY public.centroescolar DROP CONSTRAINT centroescolar_pkey;
       public            postgres    false    211            �
           2606    18033    departamento departamento_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (departamentoid);
 H   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pkey;
       public            postgres    false    207            �
           2606    18017    materia materia_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.materia
    ADD CONSTRAINT materia_pkey PRIMARY KEY (materiaid);
 >   ALTER TABLE ONLY public.materia DROP CONSTRAINT materia_pkey;
       public            postgres    false    203            �
           2606    18114 "   materiaxalumno materiaxalumno_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.materiaxalumno
    ADD CONSTRAINT materiaxalumno_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.materiaxalumno DROP CONSTRAINT materiaxalumno_pkey;
       public            postgres    false    217            �
           2606    18041    municipio municipio_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (municipioid);
 B   ALTER TABLE ONLY public.municipio DROP CONSTRAINT municipio_pkey;
       public            postgres    false    209            �
           2606    18025    rol rol_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (rolid);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    205            �
           2606    18070    useradmin useradmin_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.useradmin
    ADD CONSTRAINT useradmin_pkey PRIMARY KEY (useradminid);
 B   ALTER TABLE ONLY public.useradmin DROP CONSTRAINT useradmin_pkey;
       public            postgres    false    213            �
           2606    18097 "   alumno alumno_centroescolarid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_centroescolarid_fkey FOREIGN KEY (centroescolarid) REFERENCES public.centroescolar(centroescolarid);
 L   ALTER TABLE ONLY public.alumno DROP CONSTRAINT alumno_centroescolarid_fkey;
       public          postgres    false    211    215    2748            �
           2606    18102    alumno alumno_municipioid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_municipioid_fkey FOREIGN KEY (municipioid) REFERENCES public.municipio(municipioid);
 H   ALTER TABLE ONLY public.alumno DROP CONSTRAINT alumno_municipioid_fkey;
       public          postgres    false    215    2746    209            �
           2606    18055 ,   centroescolar centroescolar_municipioid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.centroescolar
    ADD CONSTRAINT centroescolar_municipioid_fkey FOREIGN KEY (municipioid) REFERENCES public.municipio(municipioid);
 V   ALTER TABLE ONLY public.centroescolar DROP CONSTRAINT centroescolar_municipioid_fkey;
       public          postgres    false    211    209    2746            �
           2606    18120 +   materiaxalumno materiaxalumno_alumnoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materiaxalumno
    ADD CONSTRAINT materiaxalumno_alumnoid_fkey FOREIGN KEY (alumnoid) REFERENCES public.alumno(alumnoid);
 U   ALTER TABLE ONLY public.materiaxalumno DROP CONSTRAINT materiaxalumno_alumnoid_fkey;
       public          postgres    false    2752    217    215            �
           2606    18115 ,   materiaxalumno materiaxalumno_materiaid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materiaxalumno
    ADD CONSTRAINT materiaxalumno_materiaid_fkey FOREIGN KEY (materiaid) REFERENCES public.materia(materiaid);
 V   ALTER TABLE ONLY public.materiaxalumno DROP CONSTRAINT materiaxalumno_materiaid_fkey;
       public          postgres    false    217    203    2740            �
           2606    18042 '   municipio municipio_departamentoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_departamentoid_fkey FOREIGN KEY (departamentoid) REFERENCES public.departamento(departamentoid);
 Q   ALTER TABLE ONLY public.municipio DROP CONSTRAINT municipio_departamentoid_fkey;
       public          postgres    false    207    209    2744            �
           2606    18071 (   useradmin useradmin_centroescolarid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.useradmin
    ADD CONSTRAINT useradmin_centroescolarid_fkey FOREIGN KEY (centroescolarid) REFERENCES public.centroescolar(centroescolarid);
 R   ALTER TABLE ONLY public.useradmin DROP CONSTRAINT useradmin_centroescolarid_fkey;
       public          postgres    false    213    211    2748            �
           2606    18076 $   useradmin useradmin_municipioid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.useradmin
    ADD CONSTRAINT useradmin_municipioid_fkey FOREIGN KEY (municipioid) REFERENCES public.municipio(municipioid);
 N   ALTER TABLE ONLY public.useradmin DROP CONSTRAINT useradmin_municipioid_fkey;
       public          postgres    false    213    2746    209            �
           2606    18081    useradmin useradmin_rolid_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.useradmin
    ADD CONSTRAINT useradmin_rolid_fkey FOREIGN KEY (rolid) REFERENCES public.rol(rolid);
 H   ALTER TABLE ONLY public.useradmin DROP CONSTRAINT useradmin_rolid_fkey;
       public          postgres    false    213    2742    205            W      x���ɒI�,x��
�w�!]MU��%�Ē@��颹X�"셇�/@y��P�i�s�fQ��#ܑA4�MݔU	���"�"�¢+_�d����]����f�W�}�]]וQ����/FU:Tz��]߶���y�޵�*��%�Ag�����y�jo�~�ov�������n����ۮ�0�1���M���>5�ݦ��
I�k���/��bReb�����}�^<��g��M��q�[W��j���������f��7����-��n~Yvͺ������w�~�O�\ow�ܺJ1�Uͧ�_��E�ʄ�-޷Ͳ����Y��'{_�����r5�e|>�i�7����n�}��9,�u���t�W}��[~��Y#Vx�/�UVU�h�x����v�[�*㣍���\J��=t����ş�j�V��͏�_V��I����'�7[��66F�P���:VXPg���U�^|l6wx�dcr��X�:Esj����ݪz�lVms{QW�q�~�T��5�_��^;-o½��`)��֤���{�m�Wm�%pQ),��~�4>�E�^<��}��W]�_����Z��K�m���]�ס��%�3����vx��vۻ�q0h���3���]w���6��;]U����ׇ�վ�1��U��\��K}�5\%��ȕ��pn|U�)�8�;��]�Z�}*�Xc�j���X�G�|��X}�o�u��5��}�������iѩ��B�q2+l�������a+��]}4����6`�O��n�}��xr?��M��	j.���<��U�o��ū��׸/��N�j����V��+[�F���pgt}�<|����%���mv��/.źY/�@|l���������"�ŗ�Gc�x�__�:� ���i��U**����?����M}���
4����ǣ���ovص�Y��˛��/�q��Z�l�;޸�Ǿ[�*�,:^.�h��+��=؅��
;����5����eu��3���.OS��Ƿ����{OY�h��0AF�:��X�2b'Xq���]��0xv�����?^��m���4�5�����ss3���n�Nl���2��3r�=]����K�..7w�z�l��f�ka������ʙ�m���,��t�߱�m�|����]_h_>{tC�<zcL_D��d�Cc�o�������ý�X'�6>[�+U�F���{��뿯��u����_�$����۷^���~��c�_�q�T>�*���s^��g����%�����d:C�^n�q��qכ��C��a��Vxd.5>~�}�O\��U��r�;]��F��,N��ú�,.qU��h�XL\9��ၿ�񩸅�m��g�+w�˯�ͲY�����'9_Lf�A��L��=�=d�U±��᫃O�<v�\��5+�M�s��Ե[|1�L�o��1����e�a���y�i=knp4��Z���U��p*¤kC�O������q5���YW����fY�;�b�����!�K�� ��;�_6M���h��M��B�������-^�Oz��� ���5�|�R����������.�|�qup�p9���х<�J���G)�f�^���vv|���g�ry��S��#�g����oXZ�4��D,��k���]�曣�TpѸ=���~��npT�7x�`�����&&�_Eͯ�v�p%��ѽ�'� �j.HJp��k)q��e�k�__�O=��p	�MO���A�mX�H��M5��x8�s��m&�;��MG�{��b?����pA����g�	���h��3��?ò��mqZh�S�����4�gx���_���m���� ���l�-NT=���a�U���W�Hx+('h~&�*�z�� />�`��'+B��e|�����߈��p��9��/G�����¯2*ڈ����xi����94��8ɀA�+�m�ؓg�Y|a�2�ñ�����'�Q�G�+�%�5�c���]s� ���:�F�{�?� Lҩ���~��U/@%xk�'�0 9e4 }*�&��OX��3����fF˩ s�`��O�>��Q�����jp�/W�_����n���wq;�"������<� Z;o�:	l��Kx�����l��j$��W�W�mŏ���(��z���k完�jj )`N�6 .��ˋ��\"ⱦCē�8��ʗz-v	�P!���l�o�� *��_�,�@ψ)��o�,���V��������]��-����w�����ۿ�{s���-I�ta�p��}���+ٮ�$6 3X���͖�fq��]�[�!�M���y�a�} ���5c�5��g��f{���������A/5Y�c�uP
�#���x"����]K'�c
�S3���x���;Å���΄?��
Pf��y��Up]V/��XE��Uss����ux��5At�;�Wa�k�⧟���U�YW���=l���]a�P}�vӇcͱ犇'8~8o!#��K�e8��P~~�L�>��?�,��|�o����k ��I��߶�{�)�rà�����r���L��*���->�߾���}��O� 㸆>Y�s
m��??_������S���;_�3n�γV�#�	1ݦ.Q��!�	�~���)`�[� ���@�
ɩ��,�@�>����m��X�mo�տ��j�:�a�R��C�%�l#O࿩���Z���w��[��e��b=N)¬'-C�="�W�8xz�����=�W�B��ƫq�������(��E��gvp�i��n��ջ�|\���!_�'��x`0
܎�"�#ш��9n/6�'�������i�?�PX���~�/�h3����_�Ǚ��K��ʧ�I�4���˛v�qDK�p�E�	}"t����.h��싧�X��&�4m�]�*�蒗oOp��&~Dj���c���a����k�b�]�����0��#�@�:��VB+�a���d?�qC<�����������e�6�׭��D5�(�.X�b�P��>
N\|�֮�D9MoU8=� �/c̳��ٯ���F+^07���NQ%>`>�x�d�X@�f��(a��ӵ@��	��s�����: 3ݶ۵.>���c�Z)
h��� �a�(�����a�p��ـV���1.���w}��Jވ!�q�j@�vKpdb�E�x*�&6rJ-;ciX�<A8�Z���[��Å�e��Z�`'���I	��|��XO����(h�	Sg�.7�%���ڃ��V��͒@ I���_|iV�ou�D��ɟL<eQ�ʰ�I<����^x=>�ٞ��\��2cX�k���Pq{����gx8� S��q$��Y���|2~w��!]a���$hxd$�|��g[���NN+i��[Di5�տνhp	sp�/�����'w�̗
܅k�D���ſhD�.*���D����͏nM�r�g�v��i_�&�#Qx09)�q�P혩E��.�;�$�y�K���j��7}�$�V>⿮�D�����cS�O��]1��m�jFZؔ�8�K�pZ�{:�=s3S�4 �<�5A,��5p��_w[@~0�˗��~P��ߴؠx��b<��\��`�ķD'�xu������p������8��/Ո2ps���_ޯ$	pॏ���pP��l*�;IiG�_20^�.cj�\W@����F�6ר�q�SY��>���bJΗڊg&�u3�pm$��Íp�Q���Ǟ�3���ͮ��os��^_0�l�b�)��lm�Rg����R��*Sr��8A�,�1o	��B���e$�Y�oB�euV��Nq�!-.���~9��X)C�f;=��w�l�n6>�T�PR�T[Yo/i	��^��ˊ_r�F;�C�h��Λs�����C4Ӗ�;�`��C��
Ŵ�dL�W�w���v]p�#H���_Y�ʱ��n�nUGg]�1h���L&o�"�~1[�8���g�}��!)�Y���    �×��X�g�z���z��q|�c�}�[��`��>���]f
���,%L�b�0⬶���\.��ۆ�Z��,.W	?�x?Jb"� G�U�@�t���b�d�(./�%|��l�������h�~Y��^��#��"&X-���0��Gc��uގpTV�	�����a�b���W���o�͖��ʖ�(;s��Z�'�f�n����F��"�c�{�㹃��i�p}��6s:6�� ��N;�S@A��t��)�\0]�w��HFa����; ��#�\���-���r���.��+�� ~!�r���v�'��$l��Y|d�M�̠�#���!�`lu�?�a
9�n��-V3�8�$�<�J�ū~����Q��xC��!�V�>��3y��� �#���ǀ��_`�!_/X�1���Y	Q�������\��?��+����ps�&�ԇd��6͋d�`^,�K��۵�E��-a⽆�N�'ػ��V���eys�p$�Z2,b[�&�B;�ݦ?/�<"%�>�6 ��ܙѬL��%	���J���r�`Gq�$srI$�nw;8��5|�qC���I;���n/AW�XYgq�p�v~��ym�OA�4�	��}`K�|��P���~�z~X#,�����mLnt��<���_�Nk���i�'��y� �T�O�S��O��7®�>C��%m�r��3N�J�	�)9�"IK &Ă@�>R��y/���7D��v����o�'���1���_�13�)]�7��@/>i�7(�k�
�J�[�,��8{��mj<a҆8�2��4f� M��<`i��{��r��-8^���>�p|>xn�1�{�ĒɊL���R�I R��z!�|�@j'ca�<л��(yR���d�1v�q�5ws��0y3&���X�a��^���˜�L"�4qL��J��o��N�i��t�t�x)\�R��Y��g�����~n3Mx�H�>Jd�R�PSw�E�\|�V0�� �`�	�����������5�U�b���=2���Q2�v����� x�->���r�K����_���y~Z*ɑ,�a�� ������8l��.q�d�-�5 #��j�4�,�<�f��)�3ĉ��7�k��q�a.�H7�!�%�a:]=BsV3�u#�bb#��&x��Z�H-������|�m�C�g�w9ЌބdUa�0o�4A��z��!��a��p�X����}�]]U��w��4@ők6d�k��2XԿ'�����nJia]��m��R�B��\�w�%N1��YM�wx+&eR�K �J �Ώ�cX�\ ����T���鶑T����ζqȌm��o��F�	����@K�l1�:<�>gP�4�{�~x���8�\�/����������Z�c������`��g)��;+$��C����Z�UG�-��Y��٢��}�Xa��%A��%�������FP����prK_~?�sA��:R�5a-��*��h�I,~��v����K�"#|�7��̈pm��$Kd¤D&c��ړ^�ɚ�����`G�oNX��Am�|�)��6�͗\�vW,A�0����p��d�K� ��z�M�8ê�A��|���Дqٞ���R���^����N�g�(e���ȓS�y��0��hJ��� ��i���I��.O���u��E�Ԃf��<H�
��I�2��`MB:)#��L�����p����#�@�1��$w�dMŢS��w�TR�	_�E<ׅ(��Ks=�*j���vlQ����O%��
�F�t׌8F2����-ieՙCƛĘ����+B�.�x���ds7
w���o5�$?�ԏ��NCz��+�Z�mC`��x1p�r*��q�eb=l\�"\�����ɩ���?j*Rv�Kp6��r ֫��u[��=��­��K�ɳ愫lN<V�^jf��e�����i!���W͞������*�`c2�I)`,����zÜ7�E�@��y1q��
vf#�CH��x2����,�3X[���$��E����+�l�ۜmpā����j.>m��_��׏��D�)L(ܺ+ M����d	���v�8t4pv�π0�'��G�쌮�՗	�{�S�R&��H��r�~���kn� V#��p`�z\|�mk`�|n,{�7b,���!�3������(���s�7��J��Y��c_�x�zӯ��i�G9�)��G��/9�k��`f/W�k�����r�=�g��#��kwM��H��
1�u��Y��Vk3�G����c鵄���2�U�T�s��<ۦ��~�9 y����D�VPg�4��T��R��/96A8��%�C�Gg�c'�e�c)�ms�r�u��zJE�`<k~*#�ȧz�+FO!���j���`6
��c��{����z��\pU�q���Y�2�-�q"t��i,�~��b�]�  ��$��y��S����mo��?�
��;�
�J�0
��d`p�En�l����8p���(*�6D�'?�CӸ
��#��i(�p,�\�*F.0��Ӌ��^	�`$��V�b�ã{lS߶��%�BV������P"[1<��\'2�x� YR��o��a�p)��H�� ����'�B����Zvx~P�eK��4������d��A����~�Ea�k��p֔�7�'V���
�dS���{��}a��Q�[��KnC��ŗ����L�����3�iO�,�Y��|��m �ͩ��ЁVa�@�7��X|X-�9�	@��b���Y
�_���a���cfO㌤�>zT�\r����&i��v��ߴCH!Ԉ��L!�gZ�^��xW���3�:��f�8
�T̊_.E��HT׶�nkv�&�k:ٍr	c��|�]���YVe�dz��l�Y�V�N�\���}A�w�Y\S��~|�>u׷�A�qǽS@Bt����Vk-sM$��|�Ґ��@����ɫ=��,���n���H	_ǂQB�ȍ�^�LGc�������,��k1O��� hcFn�0��'�q����`H&EA����Fl�Y�1V���C������)^	X�l{3뼃��a)"L�ke���kx}=��jzݬ�Tİr��Q�r��(�۲��r�|4��q�̋�x9MJ>9[6�h['�\�nS=[�L�6c��jc���:�ǌ��R�k)���fd �ov=�9I����������\��(�7��ܼ��>��&g�����wA�&ր�X�1K�M�׸�Ls���x����9�ơ����l�mI�f溝Z���owc;��v%��Opۋ�ɯ\$���~�ܺ��d�I%9=�Uǧ-p3�.���pӃ�ޙ\�>_�����A������T�5.�nL qO(r��l}/�	�:� 8
fౕ}�nafy���^[�Zi��tg[�CJ6�&E������G|&��w"�16������5C
��@��X����Kq�tR�|*�ﵒ�\̕�� ];8�����,�bJ�!N�t�u�g��d�NիU��`CY��W��-u� ] ,R�ln��''#5�:��x�������;'1���3F���Q0���MS���^�ux�^�
APf�� �jd!�ۑ�{T��^�� X��j�{<���;�/Y��Y`�@��?yf-.���+��y҇��|҇�|
 ���f��171�P~?k�͓�0�5����3��]�F��,�Y��R�4���c�K�@Ԗt��\�P��q����ṕ��~�8��(�Zz\Ȥ��jj��1�
����,w�&Of*�ΟX���-j�S��~���S�)�r�?˄"��˛z��H|a�S]�A��G2�� ��/�lLA8sܽ7�I5?J,n�F�H�6��]�f=I75�BE�O�T�+#3�.~�"�X���1<-��,:;ו��T:p�Fm�,��{�S�
��b��"���m��    W �ǜ���Ȋ�����@j6�����n��� �t>1�~Sl�|4�^�5��b+�l�`�F�d�ْ�H�$��Ⱦx�_�Z���ME
֎����n��	K��![�֙�	�ѝ1R����C�����q���f�_������ZwR�S� ��6~	�r�un�l��
3X]�����ȋX�f.ؘ3w��}N}m�����9�CnB��P�NR,�����M��fU���Q���Y�Y����oT��������V��83��N.=�O""]\"���c���[�8���2�DK0��x�~K��M�0�C���[b�ˏ��3!�(Ź��p��Y'�EsSSj�-��>>ݗ�}ǋ��a���r�sd���Ee\! ����d�*6TFXqxs�r8�|l�$m�|�m�@y󰢓�@f��9�'�8��8��&���
FA�aZ���Y���mvr��P8-j��Hv�K몑���@'A���D* �;�@��	��׏���9,6��/����"^�,�s��$���rXN�\>oң������c߶���0ݡRCa9���B���iRR��j7~yLĳ������S�����z��lK�_�>*��M	�\3���c��ı=����s;;���0|�V�@o\w���;̓�%���չ]9�~Dr������@gi
M�K�}����Z>w?Wߑ�M�I=W�i�P�3��
�f��V~�04=0���F�]��OBiﻻv%N�o��PzR�����Ւ�`%��I8no���Q/&E��j�*����ֻ"ա롌���R�QI�y��9f��D����(=�J���˩'?����M��^>Z�A�&H�P�� fλH�1W�����6�ׯ0���x���(�Tʺ7L�8��i]$���l����>aM+ťبy*.����W즁�#Ein�ĺK�_�}�+abbWf�&MOE b�QG�q��=���������6��u�hZ���GraMKk�#ّt"&i *e��c��;�9�x����j?�fJH���M΍j����!2J�K�'��p�0��Q]N(d���I��ZD�8"|�XJ���5��OR} ~5���o�1�%��F!�g
��|�S��W��↼]��0jʌ�Z��r�'�Ok����5�<w�;x�!X�tЊ��6<k7���ڢ��������V���h"x�x���]u��S���qF,�X��}���5o����:M�T x7Y
r�}�(�=���1�<`���x��������B���¨"�s�\l<��-�1�_�9����R��.��D��b�TxLe�GK�����F�G�!�i��"���# R	k��8	�6�Y2-�'��Ǡ��:�JN�Ԭ��>��jX�PK�3�.�c�1U0��DA��J��9[���,��ڜ.�Qv��Y��i��c�H��t��ENd���k8@\M�aZ��s���_��;�9�Y0G���c��$A4c�J$�DZ�5��-|�!��ϟ�F��l�-�7��k��ϻ%�K9*�lI�Nl&��� �$�"�k)�����O��Zw|\�(M"�hDTxd�
yi݄��,�n�o_����h	��ǽ?����u��E/��!n*��3�Af4C֍�V��6���6���6$�M����I���o��b�Jvk8�0"���0M��i�х�bS��T����gv�>��+�Tt�4F`��é�E�(�0�-�gv��ry0ہ{j�Fj���f����Y@������RqN�lۇQ*C����|i���1+�e� ��w�Հ�:�������������-�x%kT^�@"�E�,^�J%+�!��4לڧOp���u�-"�"h�r�g��P�£��(��1� �$��5�b�G7%v��~�'H�I�_�K�g.����̀e�Pk����b{�v��u�w��!�'Eoz&���?� �c��XvU,�&/jx\;��|<cj���<�g/޻0��P6Nk�Ç�}���*mzf�1,:��D���AH�O�����ƕ*y@x�S��'�#Ѝ�R��m�J���������F�@�7vI��q���=P_�m#s���)�I7�n|e=���L)������б��	H,�[*����KĹ�º�N�G����"� �X��l�)�WG�^�*Df���f�U�.���.�gGEɱ�����J��DEe�~�֢0���5�[��ѡ���ži��g�\I:W;�z)<�R&��e�����Fd��Q���r�8;
� ��x��R:����|2�����׉���Y����=��1"	�I#֕�~>�Z8�����@ji�?ִ�0�.7���&)2�keL�M*�!���,��'���MV�����}@R�kzY,(Y�VFhJL�jJ�t��I&���^Z�U��| ln��ݣ>�������f�ʭ)q���E{�5��,�A"p�Y�fa[�;���t-T�9^��ң\���_3����ʪ��]?�a�`hK�����=��/�E�7��﹯�- ó'�Դ��km��Wt�4�#و{���.�Z#���tr����V��z�)����ME�88XW6�Kg1�^kl��ң�p�L)��=?%�h� r��{�4�Dj�r�(s%�3e�'�1i�S�����t 4���<@��U��;/�`J�a�Ȕa�6���d��2 ���U�}(�mq<�����7�l�h�W�wQ
�o/��~�<&yV#�N�$��NKX�O0q2�-[ɤ($M:�Bθ��; ���R6��=y����F�#36K�v��%��K �{�b��W�\��H��tѧ��mçv>ҔJ;O�f�O���\|�p�$��D�
W%FJY��y�p���p ����L}k��ٴ77Շ��.LFo�'���g;Y	��L���������p#�VXf��'
�l��_I��F<����L��ʗ佒�>�*�ş����`�Z3d����b1���,��x-Ɋ��,�g�Rs&��M�v=�%q��?���)A�#ɞ���A�y��|��<g�d��]��:I>C_uK|>ܢ��^Pv��[�V�<�r�s�yM��!r�_qv�}��D�
�����/,R\�����/RK������99�O͚�n���i��>���#8���mRB��G~��j�b*�,h�]�ج���]ss�r��5w7M���~�3L��=gQ&��3���j�i��~�#�_9�l��=���Sww�U��l��k$����\�C�fsF�j�'*��:����w�!A�ł�9���{���63G?VCp)�5�]�)|��ݎ=$�P׊0�Sg�y{-|S�����P��,\āwL9��5�I��	X�d�Y"���Bѡ'�d�=�|R	I��.�����&���m�AaWU��T��\M��y�[��zș!�Ѱ
6�*0�n6?�gWճ~݉Z�2�T��ѯK��}���4"E������}��/�Ny��Q�(N=MS��^.��~&p99L����U������îaQh̷#�p
��%�>>RS#����� �i�J��=�Ce������?D�#���#��M����}�o�,���5��F�z"��)��f$=��Ih`w�q�a�|CE�rA.��@һÐ�7�Vjv�2H�ߵu;�5�<[���ﴻe��}�p��5��O��_�0�ki�(��������dڴ���[���&˒枒?',G`��HaR���'
��2l�߻;NP�X��3�B:
/<�X�� nty�!���H�q�.%>��.}���r���̛�+�MO�_|8.�sF�=)w�qJѹn�wC$cqU)e%b�&�㞅՟�ɻ�6K7^�J�gg�&9�D־��T�*�_���m�iC�ʾ1��f�t&Y>t��A͉�����劣���8`��R-�@}��`�����Ȳ�o���2݄����,}N�8Z���F�aҥ%>�1x����@���H�o�L �>�@կ��@Ir��O1^�yG�ڭ�@�    �5�������/�E��p����y��9g�U�o��}�3�}�<�++�2}�Zq�cӔ���G\fR���Hfx����z��U�N�v!�e������+�����Y�]�x����gm�� =�&�̜�z���"�٭�x��~�(���295g
o�������%�YW��T�h���o�����_�<��ȁ�����B=\!g�/�p����� ���S���ɪg��V[5�M�̚�TD;��.�X�+ɉ�Hl�J�r|��F?�H�����[�qB1�%b�ɻ�2MQJ���HC~����;n�P� ��B�Y��l��W����QUE>?ˢ2�;b8�|(�XM�V�G���qS֎`X6]����T��3�w�I99��?��.�De*�0�I0
#�&�>Ԗ�J���������]��+W�ɑL��i�B�CG �9~�Oj <(67o"D��F�+'��0w���j��	��ŒI<!��G�%-�'J
M�L�ŋ�( 3Y�@ح�͉�;V�v	GWW<s	��82ZPA�r�6�tE]���2��Td�5��i=��Ϸ��<m���0x��U��c�#<�Ti�d+B��i�-<���e�H��@i�Y��\;QX��_s���W���ڂ�̡Y�*����a��:�+�{ZvR�H���jc_6{������<sG��s����j�$���rgN�E�C�=ft'ߝ�������t#�)����X[.j�͡W��_���x�H`��pN�û�����-Nn� ���w�C9��;��9k�*)���Q��kƜ=U��ȁn��N�W���Zf#q�Q�$��\���b�k����m��'�����"rw�
ʲ������e�_.I��ƃ�wG6�R�wb�7�)S���L��9Q)���:���k�_ݭ�n;���nO�R�&(_�RxޥX��C�&(�\"	3E>8���e�)�kw4c��c��x}�:��h��c��ݮ��ɴ8s�����yC���l�?PbWָ�<r�&��s�q���zy�=�WJ�I�|��V��g[��ob:Q�}�q ��Y� �.L��1�\����e<��Y\�'wC�a_P�5�s(��;��ѐ?7)�1�XL��ٵp�F%H��fp��'0���Ǉ�YO;.�f>s�0D0S��r�G�Y�Lc��{_&Trl���:U���e2b= i6<�#�1S��bq�X��R<�,�)^h>E82��V2M!b��̃\2�:&l��Gc�ы��v�d��	J/�0MO.�)�Y�ca��s�Oe����2� m�D$��M����j3`ʒ7 �Md��������D{�-��y�XcwҘ�32���Fۘ/!����u�5�Kn�5Y27��+��a9�`�x�ɮi���tM-�gmh	,�����٭����X��v�D�Ó�����ି�:�q�C���(�X3GX}NFbR����d��3O��7�]��L�����
��yQͤ¥�K�[Q�2$�"�L�*�ų'�#���M{+��OH��/��3eˊ)5ì�E��r3�4r4�������c󖽏��^��>��e��Ҁ�q�*�vle+�
�� KX��ܩfxګ^�ʻ��9L�#��{���t=�M��ji��[�6z��$��������?OdjKώuѿ��������A%��~W�J�M>��V4Ò:S]�#U]�w;�z��%�	bntɝE�
ԉ�R�9�n��,{�GY�����5�^i��f,�Yz4$�r��.ڡ���8�Zhs�43�J�&�g�<>/W���T�bB�=���S�)L�C>IH6�&g�̶R���9Q.���XH_��s��j�2S�&��b���Y&1˳;֙|f�O��[�p�pt���G2ꎗOY�(�H�|����f�d�9àq|�(#�����"�˩�q�m�UG`2�X���( �΁�Q�0+WƓ�2k�����ҍN}�X�����% �vӖ-b��Ȱ�LC��;�����E�IK�:�7L|�j^�xvT�NtS}lv,WӌeD�2N�֣"��f|rҁW�x�D��E2q,k��R�7�S���bU�#�ӑ���� F�U��*c�O֏5�vż*_S:�0��?a��n@��_����J᧎��|�i���8���S_	�=�Xi ����,`D���9y��7�M�c����̊�)��t]qx����]ɳE��,��,�Op��Q�j�T0GիY��#�Qr���������=�"EI)��s|��F��gv�V�"I���O~~�rC1y�)���o���~���hy6�0lO*jN��y.a>/�\��T�Ş�#��얳��5gn���V*vC}<��GK��wNq���,>�Y-e'�����Q@Y�0��߭�z��} \i�ß�L~�Qb҉%�E���8�ʕl�+�I`lfU�I���O��$���:g��z2���L��m��,���qh��ǜ�p�O�D�D^�6�����/a$�?zJ���W�	f2r�e� �F�� P�xf;��m-�!"�Km�s�4�KFaj�q
�XWT�s�K���ձ�^/�n�(]��uB����yy�2���~ݴK���;�ǰc��U��Ih,��#��� ���Ѭ�X�X��%G&�y��^�˧������%��dZa�`�INmYdQq��p����n޷��B�;v#�d��b��:9�) IS��<���)� ~fv<���D�K�Y�W��c∯���sblfM�{�L桢�BZ���)�%3xBf6��<�\Y�j��o�3m�z�N��<�1[q2��fh��n�-�	8�5EZ��P��tұ�[�8tԏ���d�]rY���Y�21�^��!Z.} ̩Rn����9������̕�+ڍ���6s`CKLC0#
�T�r���=��Ŧ�Ӽ>�\�m��o�̰�a��m��XI+k�
C'}��Lـ����׬�}�9"KtE1r�M�\�b�7��� ��O.ah`s��
Z�HLD�ԃ�#ߓ��!��g2�S����!�G~x:.����ib���B$1Bi�~`á�����Xx���>�i���c����%��I�c;)�%ɐaIɤ��^˶���X$W�E;��O]��}��g�7�m3���j��D�!yیL������E^��,'�Z�YqB��D哇��c�>�u��U����~���[ ��0@�Q��ډ���(z�3.q7�N��7�3(Ji]��'[W����'ii5��V��9��#x���=�M�<�0���aRґ2{�Y�y��:�2	��2zjKh*�����uO�KŀD;���ƴ�$:O�E�ٓ�+WE��S���s:������4�2�g���:*�d��(�*=�ET�_�)���е��~5h?;���gj�Az��<�H�*8?�jl}(��I��ߣ�0�AbXopq.Q"g��쿤�"�g5ƛ�+!��!�F����3_	V4duN�~S��F*��9w#v���9/Z8����#?7?�TtW��5(�=nu�Ɣ���ԃy���.\E	���m�e�FL��9�SO@�8pw>�L͘��P{W"���
�N^���	����, ;s�N%�?7{�R:���,%]fm��Ĩ�X��ba� �,��Ո�$��O������d�6��d��Σ=	�#�u�J8 L����n� K��7�����/L�B�̦��Qt	�jؼS�(�V���Dc~x�Q�T��nĔ%i�WX�*��ǪAb<��\�p���X"�<O���� ���:*����NɫXub�����j�=a�=�u�Ĕ#�4��cѻ�H"x�YiE�$���QB������}U�Y}S��\@�
��9BEGi�Y��Q��p+���0uR�ru����t ;���6�rbT}���&��}:��]d�� p$ �:j�x p�߈�D+0ժ��*{�iNc(L��KYT�Ո��q~���?B�`�`qzA�D��Ј^�-�������8/"Q�]�ZVgu�.>u7kDepB`K71��Z�<B��L�    �;�q���!q4�4�*H��R��k*ɔL6D�jsvZ���;�L{�O6:����)j��ږ!{�H��da�%;�l=�.̖���r�O�(4��w@g~�H����9�-;�ģ����/�wC�q�C���iN���/W��@�ղ9�U���[li�P���k��3��!C��<�L(/(j�O�j�R�N��G�6��b�aЬ�-&� ��s(w$`��Zf��!�}?`�{���g���|9��N]|)�71L������]�Y%;�'����q;�V��3�����Mr�e�tKaX6�Z���6�u2Y��=��0#	^7���ѥŧE �nY~OvnW����CU'��,%A�Rw�{�׿��~wa���{SZ���Ӡ�*yLؠyiu�{�9�������t66��p7z��v�h2�d���L4�����
Oz���F3��^E��F��r����uwa�AG�Bsº��$��ef;���D^�_+�h�Ċu�*B�ɑ�,���3�(�Y+.Sg=';L�&DJ��>Hϐu@"����:����Ќ������喩�*�v@%6ϣ3���:&r/e,q�[K: s��s�Ŭ��8���Y���R�aIoF�!{=��4����a!s�I �Z�m�u�|�L��������틮���ˀy�E?��N�B�����2�AZ�&�fqE��,��`��OX��b�{y��mR'Ȧ�TW5�!%8E�#	�<�H2I��8+��M��Kw/��7�>���6�r�/s�F�TŐ���S�f�c9���X9�����S����~�m��c��A����#̔P��N:��w�چ�Q1���)F0��Sоk�Q�2���flM5��d1dx���~��-�@�nX�QQu:Nܲ7��]RrG��en�5�C>�/ee|���^�H��m<�-2@�sp�\�r󝗼cv�,��I�td̙��1�<$Y� .LNm��R ��$���Iͺ鸽hW�Y�����c��|y�d�fp��t�
v{���;ӞLA0��������aN�A��`[�tH��D$�ln
-$����Q��q�"c%���H,��]L{~��>؞~AM8=7��Y�� Ur�z��ؗO��]�����7�ˊnƘ@%�S5�?��m��r�B(���%�ˑ~�SZ$eI4X�}� r*-�0���OB֗�Ѕ�Y�D����e���\���	�(�Ur\8T�^*$E�$s� Xs/��3���cd7
8:N�ʭ������}���v�<`��&L̿�P�j���2UL&Wv�v׀]��Ц�K�5+��O*��b6&�BW{=��>l%���^8�$V��B�E"+/��e���lr9�lͦ�O%ƻ��e�̇Uw�����e����Bb���L�H��w�a���)T�e��-u��v����z����!���9 ���L#6E���Y)%��9���q�pl��
Ó�����2�K1O�2גʄ�`IB%v�vc����������I���rbn��o���nd�Ԙ��h8��H9�A�R��-�77Kr/�QT�iQ�ZT�3������9�L�8;�*�x'�ns2��G%�/���rN�H�aO�q|j��sQ��\��<f2�!!���#'���Q�Yj@�|��j��1T��������OK&�l��VᓧT�趆�O{��?&�h�ߕ/��1@�H�]��ƥ��2GV���Rr��֍�ǅ� K+��Yl���d���G��v�<w��p(5$�5�߫ϷS���z)��`x�����,[�%��0K�ĝA�/ͱ���nR��6ǋ�g��$Un~�I���z��ke�x�~� GJ�8j#��ԩcUD���μ c�j)��@��^H�p �R��LXg��e�WtTUəf�o�}�}��{K4߁1�c\�ʸ=\��>N)����x�C?��G�2�ۮ�`��h��ɫ�HB�����B+��xMY{�$��L�IX}��(�u�dξ� ?J�1Pc��B�e�$�����)�b(����1��y�-�+[�<s&U6����U�CיL>ŝ
'�G���tL�?��3��KJO�wx�7���!�������P!�O9m$ ɞ�8Q�ʾ�4ڊ�yG�?�?h������M��#�X�e��[����Up���'~�U�?����1� �!�?�2�X��g��4�s,c��q8^ 5�>��,U:!>�M̂^����x_I�GF2R3�q@,6������ ��8t�l��S3Q��r��dt���o�K��)�ˤ�$�B�]L�m����wD�d?X���>W���a��578=���-��U%L%�X�8x��W�i2��˳�ڒ�8�Ջ�~��]�YՖM��hk��Q�c�I��a�w	�ce0u� �Ӆ�/��
�E��	~?/A��M�"t3Ӹ#�K��ZP�Le���X�-ɓ�l���%|F����A�s����8�L�!��\!�����c(k�u�naj���\��w
�h���k������>QD�s��x�(�D90Lta��<TD޳᤿���̱X�Dǜ$Iq���J0�x����O��H�0)�&�()���G	�����F]����ςV>sF�:�cf�-^t߻m7�>DN|�B&k�Cg�_�
�4<^�i��Q�E�;;� ��D�;̭��lzؿ�Mj���$4+��s���T�T�R0qv�8oCe{2��1���$�{��y���4FAB)(Fk}V�{jQ��z.�edM�M�QXy錅z�oD ��eɄM��#��#��T�.5&�#��@�u�5Ǽz����ݿ+%T��
w�X�e8A��n�1")Qx�8���d+��#���x��ݐ�3�a�%�2�]p:J�����fK?|�B4��ǲ�Y�6�=e�EW�}�Y�>ȱL#lG|ڒ�d6��^e��i�+�Z�vF�3ù�U�t�{b�m��]�i�B1k~k�NWDA��m��V��Gvfc����X$zS�������s\G�L�}���)7?���%��z��p�����b#���� {J({���ۉ���D�Ⲋ�C�I�s�aV�$�bK�l�j�E�R8s��rgC"�<��V��x�꣚K�䅸&Ǖ��o��Az6QXp���s�=Y<Q�S@���}���K��`O���TC6��dL��y ݠ̹������KR8:�P���Xɭ���g�HC�ǖd�͢=L���0�
�&K����)&�T"��y��QP��Z
��y�3a�
�Ri%�,&���Ea�(k�����'�O�Aw":��h.�Ը��f�1ǖ�,: )f&Ra����>/�3�?T��,7�����	�����M�GMl�b�R9s��T�Cd�IDR?�u"0=������S��Y���0j! C�b���l�f�+S:�a���)C�����)�=����{�/�T�Z�;z�2��s)r�J4Nb�<���e���@a
�in���W�����͐P`�쌡0k)c��eܠ��	�ئH�s���Q3%lÖ�5^e4x�i¾n���(9��kQ�yhq�9L��#%[N
aC4KJ��4E�Q���>![�����7�-cL�a�"$J��]&O�(���pV?��2�d�gY����� an������W�s�܅%�iMJ;�Oʒr
b�Z�ȓ�NTQ�ɨT*��,���q����jX�gRq����f�Br��-�B�]E�h<�ڳ<τ�W��ӓ�4֯�cH��k�N� {n�~�������	,�ɓ���AO��%J��E���Ǧ\+{���g��ʴl��S.� ;Ҕ.�* j�b)��Xx�����P1�@�#��d�b�<���k��i�x,n�	�0�uaA&�CX��
P�>�����z�9:����?��;N��^es�;��um�l�����SM (X��Wd���	�AK��2Լ����6��.����+��:���,�$��3��uݯ� I�dq
3�*^��U>��7��M +  I%?:6t�y�<&����Y~�K�'�9L�Z2��	�1��_��1��W|f=R/b���bԐ�����HZ6��A-�7���"T�^%�O��ȠQ�*�@��oK��C�W�&��e(x]TGy��l�B�+��c��5a<��*p0)��Qj�p�iH����s��%�ɑ}dN��=t^�w6���q��P�S�.FJ;
{��A�՘.��r(�:S�y,����wC� �o<��m�%�<#&�b"���7��̀b��~(8p&�ϩ�0���f�k�6���qqq��:�n>      S   4  x��UMo�@=�_1"RO�v�r$@HP�����`o�ѲK�6*�5�1�Z)ʭ�	����0vr�Y���޼�����}&B%a�����
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
�      U   Y   x�3�4�4�4���E��
Ωə9���.�
>��y
A@~^~1P��������)��1�sfn�	gbJnf�!��,�2�eD�QFp�b���� ��)�     