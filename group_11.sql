PGDMP      *                }         
   Project_db    17.4    17.4 3    -           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            .           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            /           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            0           1262    16398 
   Project_db    DATABASE     ~   CREATE DATABASE "Project_db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Thai_Thailand.874';
    DROP DATABASE "Project_db";
                     postgres    false            �            1259    16489    Admin    TABLE     �   CREATE TABLE public."Admin" (
    employee_id integer NOT NULL,
    customer_id integer NOT NULL,
    revenue real NOT NULL,
    machine_id integer NOT NULL
);
    DROP TABLE public."Admin";
       public         heap r       postgres    false            �            1259    16526    Contact    TABLE     �   CREATE TABLE public."Contact" (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    subject text NOT NULL,
    message text NOT NULL
);
    DROP TABLE public."Contact";
       public         heap r       postgres    false            �            1259    16525    Contact_contact_id_seq    SEQUENCE     �   ALTER TABLE public."Contact" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Contact_contact_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    232            �            1259    16400    Customer    TABLE     �   CREATE TABLE public."Customer" (
    id integer NOT NULL,
    customer_name text NOT NULL,
    password text NOT NULL,
    phone integer NOT NULL,
    email text NOT NULL
);
    DROP TABLE public."Customer";
       public         heap r       postgres    false            �            1259    16399    Customer_cus_id_seq    SEQUENCE     �   ALTER TABLE public."Customer" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Customer_cus_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    218            �            1259    16424    Employee    TABLE     �   CREATE TABLE public."Employee" (
    id integer NOT NULL,
    first_name text NOT NULL,
    mid_name text,
    last_name text NOT NULL,
    password text NOT NULL,
    role text NOT NULL
);
    DROP TABLE public."Employee";
       public         heap r       postgres    false            �            1259    16423    Employee_employee_id_seq    SEQUENCE     �   ALTER TABLE public."Employee" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Employee_employee_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    220            �            1259    16482    Menu    TABLE     �   CREATE TABLE public."Menu" (
    id integer NOT NULL,
    menu_name text NOT NULL,
    price integer NOT NULL,
    category text NOT NULL
);
    DROP TABLE public."Menu";
       public         heap r       postgres    false            �            1259    16481    Menu_menu_id_seq    SEQUENCE     �   ALTER TABLE public."Menu" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Menu_menu_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    226            �            1259    16451    Requests    TABLE       CREATE TABLE public."Requests" (
    request_id integer NOT NULL,
    customer_id integer NOT NULL,
    employee_id integer NOT NULL,
    request text NOT NULL,
    status text NOT NULL,
    schdule_date date NOT NULL,
    vending_id integer NOT NULL,
    detail text NOT NULL
);
    DROP TABLE public."Requests";
       public         heap r       postgres    false            �            1259    16450    Requests_request_id_seq    SEQUENCE     �   ALTER TABLE public."Requests" ALTER COLUMN request_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Requests_request_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    222            �            1259    16518    Service_Dashboard    TABLE     �   CREATE TABLE public."Service_Dashboard" (
    id integer NOT NULL,
    service_name text NOT NULL,
    category text NOT NULL,
    stock integer NOT NULL,
    menu_id text NOT NULL
);
 '   DROP TABLE public."Service_Dashboard";
       public         heap r       postgres    false            �            1259    16517     Service_Dashboard_service_id_seq    SEQUENCE     �   ALTER TABLE public."Service_Dashboard" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Service_Dashboard_service_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    230            �            1259    16502    Service_provider    TABLE     y   CREATE TABLE public."Service_provider" (
    emloyee_id integer NOT NULL,
    phone integer NOT NULL,
    status text
);
 &   DROP TABLE public."Service_provider";
       public         heap r       postgres    false            �            1259    16469    Vending    TABLE     �   CREATE TABLE public."Vending" (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    address text NOT NULL,
    date date NOT NULL,
    revenue real NOT NULL,
    menu_id integer NOT NULL,
    cups_sold integer,
    status text NOT NULL
);
    DROP TABLE public."Vending";
       public         heap r       postgres    false            �            1259    16468    Vending_machine_vending_id_seq    SEQUENCE     �   ALTER TABLE public."Vending" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Vending_machine_vending_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    224            %          0    16489    Admin 
   TABLE DATA           P   COPY public."Admin" (employee_id, customer_id, revenue, machine_id) FROM stdin;
    public               postgres    false    227   S>       *          0    16526    Contact 
   TABLE DATA           F   COPY public."Contact" (id, name, email, subject, message) FROM stdin;
    public               postgres    false    232   �>                 0    16400    Customer 
   TABLE DATA           O   COPY public."Customer" (id, customer_name, password, phone, email) FROM stdin;
    public               postgres    false    218   �?                 0    16424    Employee 
   TABLE DATA           Y   COPY public."Employee" (id, first_name, mid_name, last_name, password, role) FROM stdin;
    public               postgres    false    220   y@       $          0    16482    Menu 
   TABLE DATA           @   COPY public."Menu" (id, menu_name, price, category) FROM stdin;
    public               postgres    false    226   {A                  0    16451    Requests 
   TABLE DATA           }   COPY public."Requests" (request_id, customer_id, employee_id, request, status, schdule_date, vending_id, detail) FROM stdin;
    public               postgres    false    222   C       (          0    16518    Service_Dashboard 
   TABLE DATA           Y   COPY public."Service_Dashboard" (id, service_name, category, stock, menu_id) FROM stdin;
    public               postgres    false    230   C       &          0    16502    Service_provider 
   TABLE DATA           G   COPY public."Service_provider" (emloyee_id, phone, status) FROM stdin;
    public               postgres    false    228   ;C       "          0    16469    Vending 
   TABLE DATA           h   COPY public."Vending" (id, customer_id, address, date, revenue, menu_id, cups_sold, status) FROM stdin;
    public               postgres    false    224   XC       1           0    0    Contact_contact_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Contact_contact_id_seq"', 5, true);
          public               postgres    false    231            2           0    0    Customer_cus_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Customer_cus_id_seq"', 10, true);
          public               postgres    false    217            3           0    0    Employee_employee_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Employee_employee_id_seq"', 10, true);
          public               postgres    false    219            4           0    0    Menu_menu_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Menu_menu_id_seq"', 36, true);
          public               postgres    false    225            5           0    0    Requests_request_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Requests_request_id_seq"', 1, false);
          public               postgres    false    221            6           0    0     Service_Dashboard_service_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Service_Dashboard_service_id_seq"', 1, false);
          public               postgres    false    229            7           0    0    Vending_machine_vending_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Vending_machine_vending_id_seq"', 5, true);
          public               postgres    false    223            �           2606    16532    Contact Contact_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Contact"
    ADD CONSTRAINT "Contact_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Contact" DROP CONSTRAINT "Contact_pkey";
       public                 postgres    false    232            u           2606    16406    Customer Customer_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Customer" DROP CONSTRAINT "Customer_pkey";
       public                 postgres    false    218            w           2606    16430    Employee Employee_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT "Employee_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Employee" DROP CONSTRAINT "Employee_pkey";
       public                 postgres    false    220            }           2606    16488    Menu Menu_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Menu"
    ADD CONSTRAINT "Menu_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Menu" DROP CONSTRAINT "Menu_pkey";
       public                 postgres    false    226            y           2606    16455    Requests Requests_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Requests"
    ADD CONSTRAINT "Requests_pkey" PRIMARY KEY (request_id);
 D   ALTER TABLE ONLY public."Requests" DROP CONSTRAINT "Requests_pkey";
       public                 postgres    false    222                       2606    16524 (   Service_Dashboard Service_Dashboard_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Service_Dashboard"
    ADD CONSTRAINT "Service_Dashboard_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."Service_Dashboard" DROP CONSTRAINT "Service_Dashboard_pkey";
       public                 postgres    false    230            {           2606    16473    Vending Vending_machine_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Vending"
    ADD CONSTRAINT "Vending_machine_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Vending" DROP CONSTRAINT "Vending_machine_pkey";
       public                 postgres    false    224            �           2606    16552    Admin Admin_customer_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT "Admin_customer_id_fk" FOREIGN KEY (customer_id) REFERENCES public."Customer"(id) NOT VALID;
 H   ALTER TABLE ONLY public."Admin" DROP CONSTRAINT "Admin_customer_id_fk";
       public               postgres    false    218    4725    227            �           2606    16547    Admin Admin_employee_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT "Admin_employee_id_fk" FOREIGN KEY (employee_id) REFERENCES public."Employee"(id) NOT VALID;
 H   ALTER TABLE ONLY public."Admin" DROP CONSTRAINT "Admin_employee_id_fk";
       public               postgres    false    220    227    4727            �           2606    16557    Admin Admin_machine_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT "Admin_machine_id_fk" FOREIGN KEY (machine_id) REFERENCES public."Vending"(id) NOT VALID;
 G   ALTER TABLE ONLY public."Admin" DROP CONSTRAINT "Admin_machine_id_fk";
       public               postgres    false    4731    227    224            �           2606    16456     Requests Customer_customer_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Requests"
    ADD CONSTRAINT "Customer_customer_id_fk" FOREIGN KEY (customer_id) REFERENCES public."Customer"(id);
 N   ALTER TABLE ONLY public."Requests" DROP CONSTRAINT "Customer_customer_id_fk";
       public               postgres    false    222    4725    218            �           2606    16474    Vending Customer_customer_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Vending"
    ADD CONSTRAINT "Customer_customer_id_fk" FOREIGN KEY (customer_id) REFERENCES public."Customer"(id);
 M   ALTER TABLE ONLY public."Vending" DROP CONSTRAINT "Customer_customer_id_fk";
       public               postgres    false    4725    224    218            �           2606    16461     Requests Employee_employee_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Requests"
    ADD CONSTRAINT "Employee_employee_id_fk" FOREIGN KEY (employee_id) REFERENCES public."Employee"(id);
 N   ALTER TABLE ONLY public."Requests" DROP CONSTRAINT "Employee_employee_id_fk";
       public               postgres    false    220    222    4727            �           2606    16512    Vending Menu_menu_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Vending"
    ADD CONSTRAINT "Menu_menu_id_fk" FOREIGN KEY (menu_id) REFERENCES public."Menu"(id) NOT VALID;
 E   ALTER TABLE ONLY public."Vending" DROP CONSTRAINT "Menu_menu_id_fk";
       public               postgres    false    224    226    4733            �           2606    16507 /   Service_provider Serviceprovider_employee_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service_provider"
    ADD CONSTRAINT "Serviceprovider_employee_id_fk" FOREIGN KEY (emloyee_id) REFERENCES public."Employee"(id);
 ]   ALTER TABLE ONLY public."Service_provider" DROP CONSTRAINT "Serviceprovider_employee_id_fk";
       public               postgres    false    228    4727    220            %       x�3�4�4500�4�2�4�41��b���� 4��      *   <  x�U��n� ����@��9mRUJ��R��^0^����,�����Ƿ	��ٽ;�<�C�%|�/�G�ʐ��m<�n('#��$����k��!�&����D9�<�:�6|��7b����ԋC���\7�y����H�´�N��9#�T>�?AD������5�����rZ�[��A�%���թ���gĶ�f�qG,�Y'˝�v�K1�c��+y'����u�jϢ�FM��CEjj�rHKf����_x���䙢���::���4af����W4}�F�߽����3}؊�@��.e���э+�����}J��         �   x�MΩBADQ]�1dz�q�c�XA^�G/��(uD�;E�\*Zϥ��{}~���oIM��f�r�;��d�f�ř��@�0#��LUS!d���45�d�hfr89��t!3��ٙ�f@HR3��ř�fBH6�8\��(�WL1�9�zlB�lU*         �   x�e��j�@�����4�K3c$��,�ɦ��D��rP�קDn�{OU�(����Dmn4M���BP7j#\�Z2
��u��~�a�I��Ӎ��;�"t`1�*��<Y�5�(^�ȩ��D-�A�8m�(N�n�ܪ'��I�d��n����8��dg�j ��BI��Ա��./j�?��U̜x�։�DC�z�4˽#�;�,+<K�ߵQ�['��U�=G7d�h���G�C
!� �	�G      $   v  x�u��N�@�����	L�Yh/mcԤ��M��f\�B�lQ�ۻ��e��p��w�왁�΃��YA��5�;u:E)�v���!��vx�x��HPM�A��)ec�B$l�A���4v����npT��Kx�T�<�)x��4�����04���xt.H������7/L�u���VR�h2����#Jrx��i[�����L�q���F��ҒS���q�.�-t�͹'����Y�F�h�ux�m��,���ޚ�>�����S�X������c��X7�g��(-`;e��`���/%�R3/8_�{��c��{M�/�g+`�Y��ؙ�A��0�R�S�z�r�j�e@�
ss7�Zx��;��馩h~M�Yi餯7Q��H:5             x������ � �      (      x������ � �      &      x������ � �      "   �   x�U��
�0Eד���$iS�V7nQ7����&Ĥ����;��*�͜s�	Re|�zۆ�K|��i��k�xPB鱐t�� %ܛ�w�f
��kF�&��,�#_�
��CSB@��+�2�`Z���⹣ފ�m�IN?�e?!��FI>7X�/�)�2��Ejʿb���*�<^M�����w��Yg�e�}�0ƞ�S�     