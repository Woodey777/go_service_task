#bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

docker run -d --rm \
	--name pgdb \
	-e POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
	-e POSTGRES_USER=$POSTGRES_USER \
	-e POSTGRES_DB=$POSTGRES_DB \
  -p 55000:5432 \
	-e PGDATA=/var/lib/postgresql/data/pgdata \
	-v $SCRIPT_DIR:/var/lib/postgresql/data \
	postgres
