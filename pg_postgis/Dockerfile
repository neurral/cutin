FROM mdillon/postgis
#** Build: SQL file for seeding, using host file name
ARG SQL_SEED_FILE 
#** Run: 
ENV PG_MAJOR=10.4 \
  POSTGIS_MAJOR=2.5 \
  POSTGIS_VERSION=2.5.2 \
  # Override this with your build env values
  POSTGRES_DB=cutin-db \
  POSTGRES_USER=root \
  POSTGRES_PASSWORD=cut1n_d8
# TODO make seed copy optional
COPY SQL_SEED_FILE /docker-entrypoint-initdb.d/
EXPOSE 5432