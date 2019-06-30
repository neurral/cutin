--
-- PostgreSQL database dump
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: tiger; Type: SCHEMA; Schema: -; 
-- http://www.census.gov/geo/www/tiger/
--
CREATE SCHEMA tiger;
ALTER SCHEMA tiger OWNER TO root;

--
-- Name: tiger_data; Type: SCHEMA; Schema: -; 
--
CREATE SCHEMA tiger_data;
ALTER SCHEMA tiger_data OWNER TO root;

--
-- Name: topology; Type: SCHEMA; Schema: -; 
--
CREATE SCHEMA topology;
ALTER SCHEMA topology OWNER TO root;

--
-- Name: SCHEMA topology; Type: COMMENT; Schema: -; 
--
COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; 
--
CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;

--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; 
--
COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';

--
-- Name: citext; Type: EXTENSION; Schema: -; 
--
CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;

--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; 
--
COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; 
--
CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;

--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; 
--
COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';

--
-- Name: postgis; Type: EXTENSION; Schema: -; 
--
CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;

--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; 
--
COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';

--
-- Name: postgis_tiger_geocoder; Type: EXTENSION; Schema: -; 
--
CREATE EXTENSION IF NOT EXISTS postgis_tiger_geocoder WITH SCHEMA tiger;

--
-- Name: EXTENSION postgis_tiger_geocoder; Type: COMMENT; Schema: -; 
--
COMMENT ON EXTENSION postgis_tiger_geocoder IS 'PostGIS tiger geocoder and reverse geocoder';


--
-- Name: postgis_topology; Type: EXTENSION; Schema: -; 
--
CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;

--
-- Name: EXTENSION postgis_topology; Type: COMMENT; Schema: -; 
--
COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';


SET default_tablespace = '';
SET default_with_oids = false;

-- end of seed
-- You can add other lines for initial data or create another Dockerfile with another COPY.