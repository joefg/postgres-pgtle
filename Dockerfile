FROM postgres:15

RUN apt-get update
RUN apt-get install -y -qq postgresql-server-dev-15
RUN apt-get install -y -qq git gcc make flex libsasl2-modules-gssapi-mit

COPY ./pg_tle /pg_tle
RUN cd pg_tle && PG_CONFIG=/usr/bin/pg_config make
RUN cd pg_tle && PG_CONFIG=/usr/bin/pg_config make install

RUN mkdir -p /docker-entrypoint-initdb.d
