PGDMP     7                    {           DMQL_F1    15.2    15.2     K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            N           1262    25796    DMQL_F1    DATABASE     �   CREATE DATABASE "DMQL_F1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "DMQL_F1";
                postgres    false            �           2606    25803    Drivers Drivers_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Drivers"
    ADD CONSTRAINT "Drivers_pkey" PRIMARY KEY (driver_number);
 B   ALTER TABLE ONLY public."Drivers" DROP CONSTRAINT "Drivers_pkey";
       public            postgres    false            �           2606    25837 
   GP GP_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public."GP"
    ADD CONSTRAINT "GP_pkey" PRIMARY KEY (gp_name);
 8   ALTER TABLE ONLY public."GP" DROP CONSTRAINT "GP_pkey";
       public            postgres    false            �           2606    25810    Teams Teams_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Teams"
    ADD CONSTRAINT "Teams_pkey" PRIMARY KEY (team_name);
 >   ALTER TABLE ONLY public."Teams" DROP CONSTRAINT "Teams_pkey";
       public            postgres    false            �           2606    25843    Track Track_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Track"
    ADD CONSTRAINT "Track_pkey" PRIMARY KEY (track_name, track_length);
 >   ALTER TABLE ONLY public."Track" DROP CONSTRAINT "Track_pkey";
       public            postgres    false            �           2606    25816    WCC WCC_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."WCC"
    ADD CONSTRAINT "WCC_pkey" PRIMARY KEY (team_name);
 :   ALTER TABLE ONLY public."WCC" DROP CONSTRAINT "WCC_pkey";
       public            postgres    false            �           2606    25865    WDC WDC_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."WDC"
    ADD CONSTRAINT "WDC_pkey" PRIMARY KEY (driver_number);
 :   ALTER TABLE ONLY public."WDC" DROP CONSTRAINT "WDC_pkey";
       public            postgres    false            �           2606    25872    driver name driver name_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."driver name"
    ADD CONSTRAINT "driver name_pkey" PRIMARY KEY (driver_number);
 J   ALTER TABLE ONLY public."driver name" DROP CONSTRAINT "driver name_pkey";
       public            postgres    false            �           2606    25857    gp_points gp_points_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.gp_points
    ADD CONSTRAINT gp_points_pkey PRIMARY KEY (gp_name, format, driver_number);
 B   ALTER TABLE ONLY public.gp_points DROP CONSTRAINT gp_points_pkey;
       public            postgres    false            �           2606    25830    gp_results gp_results_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.gp_results
    ADD CONSTRAINT gp_results_pkey PRIMARY KEY (gp_name, format, driver_number);
 D   ALTER TABLE ONLY public.gp_results DROP CONSTRAINT gp_results_pkey;
       public            postgres    false            �           2606    25823 "   team_principal team_principal_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.team_principal
    ADD CONSTRAINT team_principal_pkey PRIMARY KEY (team_name, tp);
 L   ALTER TABLE ONLY public.team_principal DROP CONSTRAINT team_principal_pkey;
       public            postgres    false            �           2606    25850     track country track country_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."track country"
    ADD CONSTRAINT "track country_pkey" PRIMARY KEY (track_name);
 N   ALTER TABLE ONLY public."track country" DROP CONSTRAINT "track country_pkey";
       public            postgres    false            �           2606    25873    Drivers Drivers_team_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Drivers"
    ADD CONSTRAINT "Drivers_team_name_fkey" FOREIGN KEY (team_name) REFERENCES public."Teams"(team_name) NOT VALID;
 L   ALTER TABLE ONLY public."Drivers" DROP CONSTRAINT "Drivers_team_name_fkey";
       public          postgres    false    3218            �           2606    25898    GP GP_track_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."GP"
    ADD CONSTRAINT "GP_track_name_fkey" FOREIGN KEY (track_name) REFERENCES public."track country"(track_name) NOT VALID;
 C   ALTER TABLE ONLY public."GP" DROP CONSTRAINT "GP_track_name_fkey";
       public          postgres    false    3230            �           2606    25903    Track Track_track_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Track"
    ADD CONSTRAINT "Track_track_name_fkey" FOREIGN KEY (track_name) REFERENCES public."track country"(track_name) NOT VALID;
 I   ALTER TABLE ONLY public."Track" DROP CONSTRAINT "Track_track_name_fkey";
       public          postgres    false    3230            �           2606    25878    WCC WCC_team_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."WCC"
    ADD CONSTRAINT "WCC_team_name_fkey" FOREIGN KEY (team_name) REFERENCES public."Teams"(team_name) NOT VALID;
 D   ALTER TABLE ONLY public."WCC" DROP CONSTRAINT "WCC_team_name_fkey";
       public          postgres    false    3218            �           2606    25918    WDC WDC_driver_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."WDC"
    ADD CONSTRAINT "WDC_driver_number_fkey" FOREIGN KEY (driver_number) REFERENCES public."Drivers"(driver_number) NOT VALID;
 H   ALTER TABLE ONLY public."WDC" DROP CONSTRAINT "WDC_driver_number_fkey";
       public          postgres    false    3216            �           2606    25923 *   driver name driver name_driver_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."driver name"
    ADD CONSTRAINT "driver name_driver_number_fkey" FOREIGN KEY (driver_number) REFERENCES public."Drivers"(driver_number) NOT VALID;
 X   ALTER TABLE ONLY public."driver name" DROP CONSTRAINT "driver name_driver_number_fkey";
       public          postgres    false    3216            �           2606    25908 &   gp_points gp_points_driver_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gp_points
    ADD CONSTRAINT gp_points_driver_number_fkey FOREIGN KEY (driver_number) REFERENCES public."Drivers"(driver_number) NOT VALID;
 P   ALTER TABLE ONLY public.gp_points DROP CONSTRAINT gp_points_driver_number_fkey;
       public          postgres    false    3216            �           2606    25913     gp_points gp_points_gp_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gp_points
    ADD CONSTRAINT gp_points_gp_name_fkey FOREIGN KEY (gp_name) REFERENCES public."GP"(gp_name) NOT VALID;
 J   ALTER TABLE ONLY public.gp_points DROP CONSTRAINT gp_points_gp_name_fkey;
       public          postgres    false    3226            �           2606    25888 (   gp_results gp_results_driver_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gp_results
    ADD CONSTRAINT gp_results_driver_number_fkey FOREIGN KEY (driver_number) REFERENCES public."Drivers"(driver_number) NOT VALID;
 R   ALTER TABLE ONLY public.gp_results DROP CONSTRAINT gp_results_driver_number_fkey;
       public          postgres    false    3216            �           2606    25893 "   gp_results gp_results_gp_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gp_results
    ADD CONSTRAINT gp_results_gp_name_fkey FOREIGN KEY (gp_name) REFERENCES public."GP"(gp_name) NOT VALID;
 L   ALTER TABLE ONLY public.gp_results DROP CONSTRAINT gp_results_gp_name_fkey;
       public          postgres    false    3226            �           2606    25883 ,   team_principal team_principal_team_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.team_principal
    ADD CONSTRAINT team_principal_team_name_fkey FOREIGN KEY (team_name) REFERENCES public."Teams"(team_name) NOT VALID;
 V   ALTER TABLE ONLY public.team_principal DROP CONSTRAINT team_principal_team_name_fkey;
       public          postgres    false    3218           