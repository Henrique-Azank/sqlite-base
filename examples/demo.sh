#!/usr/bin/env bash

# Small demo script that creates a database, loads tables, and queries them.
set -euo pipefail
DB_FILE="examples.db"

# remove old db if present
[ -f "$DB_FILE" ] && rm "$DB_FILE"

# create tables
sqlite3 "$DB_FILE" < examples/create_tables.sql

# load data
sqlite3 "$DB_FILE" < examples/load_data.sql

# show results
echo "People:"
sqlite3 "$DB_FILE" "SELECT id, name, age FROM people;"

echo "Demo messages:"
sqlite3 "$DB_FILE" "SELECT * FROM demo;"
