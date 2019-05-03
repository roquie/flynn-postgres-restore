FROM postgres:9.5

RUN apt-get update && \
    apt-get install -y \
    postgresql-contrib-9.5 \
    postgresql-9.5-pgextwlist \
    postgresql-9.5-plv8 \
    postgresql-9.5-postgis \
    postgresql-9.5-pgrouting
