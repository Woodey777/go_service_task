#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
migrate -path=$SCRIPT_DIR -database "postgresql://admin:admin@localhost:55000/db?sslmode=disable" -verbose up