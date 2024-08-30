
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


all:

migrate_up:
	migrate -path=$SCRIPT_DIR/../internal/models/migrations/postgres/ -database "postgresql://admin:admin@localhost:55000/db?sslmode=disable" -verbose up

migrate_down:
	migrate -path=$SCRIPT_DIR/../internal/models/migrations/postgres/ -database "postgresql://admin:admin@localhost:55000/db?sslmode=disable" -verbose down

migrate_remake:
	migrate -path=$SCRIPT_DIR/../internal/models/migrations/postgres/ -database "postgresql://admin:admin@localhost:55000/db?sslmode=disable" -verbose down
	migrate -path=$SCRIPT_DIR/../internal/models/migrations/postgres/ -database "postgresql://admin:admin@localhost:55000/db?sslmode=disable" -verbose  up

.PHONY: migrate_up migrate_down migrate_remake
