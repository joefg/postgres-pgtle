# PostgreSQL + pg_tle

A PostgreSQL docker image with [pg_tle](https://github.com/aws/pg_tle) enabled.

## How to use

1. Build the container with `docker build --tag postgres-pgtle .`

2. Stand up the container with `docker compose up`.

3. Connect to the database with `psql -p postgres://0.0.0.0:5430 -U postgres`
   with your password set in the docker-compose file.

4. Inside `psql`, run `\dx`. You should see `pgtle` in there.
