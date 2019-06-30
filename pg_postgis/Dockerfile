FROM mdillon/postgis

#** Run: 
ENV PG_MAJOR=10.4 \
  POSTGIS_MAJOR=2.5 \
  POSTGIS_VERSION=2.5.2 \
  # Override this with your build env values
  POSTGRES_DB=cutin-db \
  POSTGRES_USER=root \
  POSTGRES_PASSWORD=cut1n_d8

#** Build: SQL file for seeding, using host file path name
# SQL_SEED_FILE is optional, while seed_setup.sql is always copied
ARG SQL_SEED_FILE
COPY seed_setup.sql $SQL_SEED_FILE* /docker-entrypoint-initdb.d/

EXPOSE 5432