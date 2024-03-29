-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public."Drivers"
(
    driver_number character varying(255) COLLATE pg_catalog."default" NOT NULL,
    team_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    country character varying(255) COLLATE pg_catalog."default" NOT NULL,
    age integer NOT NULL,
    experience integer NOT NULL,
    CONSTRAINT "Drivers_pkey" PRIMARY KEY (driver_number)
);

CREATE TABLE IF NOT EXISTS public."Teams"
(
    team_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    team_country character varying(255) COLLATE pg_catalog."default" NOT NULL,
    engine_manufacturer character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Teams_pkey" PRIMARY KEY (team_name)
);

CREATE TABLE IF NOT EXISTS public."WCC"
(
    team_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    points integer DEFAULT 0,
    CONSTRAINT "WCC_pkey" PRIMARY KEY (team_name)
);

CREATE TABLE IF NOT EXISTS public.team_principal
(
    team_name character varying COLLATE pg_catalog."default" NOT NULL,
    tp character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT team_principal_pkey PRIMARY KEY (team_name, tp)
);

CREATE TABLE IF NOT EXISTS public.gp_results
(
    gp_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    driver_number character varying COLLATE pg_catalog."default" NOT NULL,
    format character varying(255) COLLATE pg_catalog."default" NOT NULL,
    fastest_lap_point boolean NOT NULL,
    "position" integer NOT NULL,
    CONSTRAINT gp_results_pkey PRIMARY KEY (gp_name, format, driver_number)
);

CREATE TABLE IF NOT EXISTS public."GP"
(
    gp_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    track_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "GP_pkey" PRIMARY KEY (gp_name)
);

CREATE TABLE IF NOT EXISTS public."Track"
(
    track_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    track_length integer NOT NULL,
    lap_record integer DEFAULT 0,
    CONSTRAINT "Track_pkey" PRIMARY KEY (track_name, track_length)
);

CREATE TABLE IF NOT EXISTS public."track country"
(
    track_name character varying COLLATE pg_catalog."default" NOT NULL,
    track_country character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "track country_pkey" PRIMARY KEY (track_name)
);

CREATE TABLE IF NOT EXISTS public.gp_points
(
    gp_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    driver_number character varying COLLATE pg_catalog."default" NOT NULL,
    format character varying(255) COLLATE pg_catalog."default" NOT NULL,
    points integer NOT NULL,
    CONSTRAINT gp_points_pkey PRIMARY KEY (gp_name, format, driver_number)
);

CREATE TABLE IF NOT EXISTS public."WDC"
(
    driver_number character varying COLLATE pg_catalog."default" NOT NULL,
    points integer DEFAULT 0,
    CONSTRAINT "WDC_pkey" PRIMARY KEY (driver_number)
);

CREATE TABLE IF NOT EXISTS public."driver name"
(
    driver_number character varying COLLATE pg_catalog."default" NOT NULL,
    driver_name character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "driver name_pkey" PRIMARY KEY (driver_number)
);

ALTER TABLE IF EXISTS public."Drivers"
    ADD CONSTRAINT "Drivers_team_name_fkey" FOREIGN KEY (team_name)
    REFERENCES public."Teams" (team_name) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."WCC"
    ADD CONSTRAINT "WCC_team_name_fkey" FOREIGN KEY (team_name)
    REFERENCES public."Teams" (team_name) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS "WCC_pkey"
    ON public."WCC"(team_name);


ALTER TABLE IF EXISTS public.team_principal
    ADD CONSTRAINT team_principal_team_name_fkey FOREIGN KEY (team_name)
    REFERENCES public."Teams" (team_name) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.gp_results
    ADD CONSTRAINT gp_results_driver_number_fkey FOREIGN KEY (driver_number)
    REFERENCES public."Drivers" (driver_number) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.gp_results
    ADD CONSTRAINT gp_results_gp_name_fkey FOREIGN KEY (gp_name)
    REFERENCES public."GP" (gp_name) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."GP"
    ADD FOREIGN KEY (track_name)
    REFERENCES public."track country" (track_name) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."Track"
    ADD FOREIGN KEY (track_name)
    REFERENCES public."track country" (track_name) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.gp_points
    ADD CONSTRAINT gp_points_driver_number_fkey FOREIGN KEY (driver_number)
    REFERENCES public."Drivers" (driver_number) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.gp_points
    ADD CONSTRAINT gp_points_gp_name_fkey FOREIGN KEY (gp_name)
    REFERENCES public."GP" (gp_name) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."WDC"
    ADD CONSTRAINT "WDC_driver_number_fkey" FOREIGN KEY (driver_number)
    REFERENCES public."Drivers" (driver_number) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS "WDC_pkey"
    ON public."WDC"(driver_number);


ALTER TABLE IF EXISTS public."driver name"
    ADD CONSTRAINT "driver name_driver_number_fkey" FOREIGN KEY (driver_number)
    REFERENCES public."Drivers" (driver_number) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS "driver name_pkey"
    ON public."driver name"(driver_number);

END;