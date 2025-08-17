#!/usr/bin/env bash
set -euo pipefail

# Small demo script that creates a database, loads tables, and queries them.
DB_FILE="examples.db"

# Go to the path of the example
cd "$(dirname "$0")"

# Get the current path
CURR=$(pwd)

# Echo the database file name
echo "Using database file: $DB_FILE"

# remove old db if present
[ -f "$DB_FILE" ] && rm "$DB_FILE"

# # create tables
sqlite3 "$DB_FILE" < "$CURR/create_tables.sql"

# # load data
sqlite3 "$DB_FILE" < "$CURR/load_data.sql"

# # show results
echo "People:"
sqlite3 "$DB_FILE" "SELECT id, name, age FROM people;"

# echo "Demo messages:"
sqlite3 "$DB_FILE" "SELECT * FROM demo;"
