
MAKEFILE_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

all:

migrate_up:
	migrate -path=$(MAKEFILE_DIR)../internal/models/migrations/postgres/ -database "postgresql://admin:admin@localhost:55000/db?sslmode=disable" -verbose up

migrate_down:
	migrate -path=$(MAKEFILE_DIR)../internal/models/migrations/postgres/ -database "postgresql://admin:admin@localhost:55000/db?sslmode=disable" -verbose down

migrate_remake:
	migrate -path=$(MAKEFILE_DIR)../internal/models/migrations/postgres/ -database "postgresql://admin:admin@localhost:55000/db?sslmode=disable" -verbose down
	migrate -path=$(MAKEFILE_DIR)../internal/models/migrations/postgres/ -database "postgresql://admin:admin@localhost:55000/db?sslmode=disable" -verbose up

gen_crud:
	sqlc generate -f $(MAKEFILE_DIR)../internal/models/sqlc/sqlc.yaml

.PHONY: migrate_up migrate_down migrate_remake
