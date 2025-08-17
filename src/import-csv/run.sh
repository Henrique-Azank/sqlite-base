
#!/usr/bin/env bash
set -euo pipefail

# SQLITE is based on a file-based architecture
DB_FILE="/workspaces/sqlite-base/src/examples.db"

# Echo the database file name
echo "Using database file: $DB_FILE"

# remove old db if present
[ -f "$DB_FILE" ] && rm "$DB_FILE"

# create tables
sqlite3 "$DB_FILE" < "./create_and_load.sql"
