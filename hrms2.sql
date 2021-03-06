PGDMP     3            
        y            hrms    13.2    13.2 $    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16563    hrms    DATABASE     a   CREATE DATABASE hrms WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE hrms;
                postgres    false            ?            1259    16647 
   candidates    TABLE     ?   CREATE TABLE public.candidates (
    candidate_id integer NOT NULL,
    first_name character varying(25) NOT NULL,
    last_name character varying(25) NOT NULL,
    identity_number character varying(11) NOT NULL,
    birth_date date NOT NULL
);
    DROP TABLE public.candidates;
       public         heap    postgres    false            ?            1259    16771    candidates_verification    TABLE     r   CREATE TABLE public.candidates_verification (
    id integer NOT NULL,
    is_verified_mernis boolean NOT NULL
);
 +   DROP TABLE public.candidates_verification;
       public         heap    postgres    false            ?            1259    16761    email_verification    TABLE     f   CREATE TABLE public.email_verification (
    id integer NOT NULL,
    is_verified boolean NOT NULL
);
 &   DROP TABLE public.email_verification;
       public         heap    postgres    false            ?            1259    16642 	   employees    TABLE     ?   CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    first_name character varying(25) NOT NULL,
    last_name character varying(25) NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            ?            1259    16575 	   employers    TABLE     ?   CREATE TABLE public.employers (
    employers_id integer NOT NULL,
    company_name character varying(50) NOT NULL,
    web_address character varying(50) NOT NULL,
    phone_number character varying(11) NOT NULL
);
    DROP TABLE public.employers;
       public         heap    postgres    false            ?            1259    16776    employers_verification    TABLE     o   CREATE TABLE public.employers_verification (
    id integer NOT NULL,
    is_verified_hrms boolean NOT NULL
);
 *   DROP TABLE public.employers_verification;
       public         heap    postgres    false            ?            1259    16791    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            ?            1259    16756 	   job_title    TABLE     f   CREATE TABLE public.job_title (
    id integer NOT NULL,
    title character varying(100) NOT NULL
);
    DROP TABLE public.job_title;
       public         heap    postgres    false            ?            1259    16564    users    TABLE     ?   CREATE TABLE public.users (
    email character varying(45) NOT NULL,
    password character varying(20) NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?          0    16647 
   candidates 
   TABLE DATA           f   COPY public.candidates (candidate_id, first_name, last_name, identity_number, birth_date) FROM stdin;
    public          postgres    false    203   E*       ?          0    16771    candidates_verification 
   TABLE DATA           I   COPY public.candidates_verification (id, is_verified_mernis) FROM stdin;
    public          postgres    false    206   b*       ?          0    16761    email_verification 
   TABLE DATA           =   COPY public.email_verification (id, is_verified) FROM stdin;
    public          postgres    false    205   *       ?          0    16642 	   employees 
   TABLE DATA           G   COPY public.employees (employee_id, first_name, last_name) FROM stdin;
    public          postgres    false    202   ?*       ?          0    16575 	   employers 
   TABLE DATA           Z   COPY public.employers (employers_id, company_name, web_address, phone_number) FROM stdin;
    public          postgres    false    201   ?*       ?          0    16776    employers_verification 
   TABLE DATA           F   COPY public.employers_verification (id, is_verified_hrms) FROM stdin;
    public          postgres    false    207   ?*       ?          0    16756 	   job_title 
   TABLE DATA           .   COPY public.job_title (id, title) FROM stdin;
    public          postgres    false    204   ?*       ?          0    16564    users 
   TABLE DATA           4   COPY public.users (email, password, id) FROM stdin;
    public          postgres    false    200   :+       ?           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
          public          postgres    false    208            H           2606    16760    job_title job_title_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.job_title
    ADD CONSTRAINT job_title_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.job_title DROP CONSTRAINT job_title_pkey;
       public            postgres    false    204            F           2606    16651    candidates pk_candidates 
   CONSTRAINT     `   ALTER TABLE ONLY public.candidates
    ADD CONSTRAINT pk_candidates PRIMARY KEY (candidate_id);
 B   ALTER TABLE ONLY public.candidates DROP CONSTRAINT pk_candidates;
       public            postgres    false    203            L           2606    16775 2   candidates_verification pk_candidates_verification 
   CONSTRAINT     p   ALTER TABLE ONLY public.candidates_verification
    ADD CONSTRAINT pk_candidates_verification PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.candidates_verification DROP CONSTRAINT pk_candidates_verification;
       public            postgres    false    206            J           2606    16765 (   email_verification pk_email_verification 
   CONSTRAINT     f   ALTER TABLE ONLY public.email_verification
    ADD CONSTRAINT pk_email_verification PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.email_verification DROP CONSTRAINT pk_email_verification;
       public            postgres    false    205            D           2606    16646    employees pk_employees 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT pk_employees PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employees DROP CONSTRAINT pk_employees;
       public            postgres    false    202            B           2606    16579    employers pk_employers 
   CONSTRAINT     ^   ALTER TABLE ONLY public.employers
    ADD CONSTRAINT pk_employers PRIMARY KEY (employers_id);
 @   ALTER TABLE ONLY public.employers DROP CONSTRAINT pk_employers;
       public            postgres    false    201            N           2606    16780 0   employers_verification pk_employers_verification 
   CONSTRAINT     n   ALTER TABLE ONLY public.employers_verification
    ADD CONSTRAINT pk_employers_verification PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.employers_verification DROP CONSTRAINT pk_employers_verification;
       public            postgres    false    207            @           2606    16740    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    200            Q           2606    16751    candidates fk_candidates_users    FK CONSTRAINT     ?   ALTER TABLE ONLY public.candidates
    ADD CONSTRAINT fk_candidates_users FOREIGN KEY (candidate_id) REFERENCES public.users(id);
 H   ALTER TABLE ONLY public.candidates DROP CONSTRAINT fk_candidates_users;
       public          postgres    false    203    200    2880            S           2606    16786 =   candidates_verification fk_candidates_verification_candidates    FK CONSTRAINT     ?   ALTER TABLE ONLY public.candidates_verification
    ADD CONSTRAINT fk_candidates_verification_candidates FOREIGN KEY (id) REFERENCES public.candidates(candidate_id);
 g   ALTER TABLE ONLY public.candidates_verification DROP CONSTRAINT fk_candidates_verification_candidates;
       public          postgres    false    203    206    2886            R           2606    16766 .   email_verification fk_email_verification_users    FK CONSTRAINT     ?   ALTER TABLE ONLY public.email_verification
    ADD CONSTRAINT fk_email_verification_users FOREIGN KEY (id) REFERENCES public.users(id);
 X   ALTER TABLE ONLY public.email_verification DROP CONSTRAINT fk_email_verification_users;
       public          postgres    false    205    2880    200            P           2606    16746    employees fk_employees_users    FK CONSTRAINT        ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_employees_users FOREIGN KEY (employee_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.employees DROP CONSTRAINT fk_employees_users;
       public          postgres    false    200    202    2880            O           2606    16741    employers fk_employers_users    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employers
    ADD CONSTRAINT fk_employers_users FOREIGN KEY (employers_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.employers DROP CONSTRAINT fk_employers_users;
       public          postgres    false    201    200    2880            T           2606    16781 :   employers_verification fk_employers_verification_employers    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employers_verification
    ADD CONSTRAINT fk_employers_verification_employers FOREIGN KEY (id) REFERENCES public.employers(employers_id);
 d   ALTER TABLE ONLY public.employers_verification DROP CONSTRAINT fk_employers_verification_employers;
       public          postgres    false    201    207    2882            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   7   x?3??O+)O,JUpI-K??/H-?2B:%gd??&?ps:'V&gr??qqq t      ?      x?????? ? ?     