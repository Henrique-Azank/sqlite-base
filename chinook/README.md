
# SQLite tutorial

The following excerpts detail the lessons provided by the SQLite tutorial repository (available [here](https://www.sqlitetutorial.net))

By default, an SQLite session uses an in-memory database. It means that all the changes you make will be gone when the session ends.


## Connecting to the database

The following command connects to the provided database via the SQLITE interface (persistent database). 

```bash
# Connect to the local database
sqlite3 chinook.db
```

To list the available tables in the database we can use:

```bash
# List all tables in the database
sqlite> .tables
```

To quit the database connection we can use:

```bash
# Quit the session
sqlite> .quit
```

## Common operations

We can list some common operations to diagnose the current connected databases. Some common table operations are

```bash
# List tables based on pattern matching
sqlite> .table '%es'

# Display the schema of a certain table
sqlite> .schema table_name
```

**NOTE:** *sqlite_stat* tables are used to host table statistics, and are used internally for optmization of the query planner. They are used to estimate query costs, optimize joins and improve index usage.

To get a full overview of the database and the content of the stat tables we can use: 

```bash
# Detail the full database schema
sqlite> .fullschema
```

We can also show the indexes of the current database using the followng command. 

```bash
# Database indexes
sqlite> .indexes

# Particular table index
sqlite> .indexes table_name
```
SQLite indexes are database structures that dramatically improve query performance by allowing faster data retrieval. 

Indexes are stored as B-trees (balanced trees) in SQLite, allowing O(log n) search time. While they speed up reads, they slow down writes (INSERT/UPDATE/DELETE) since indexes must be maintained. 

## Formatting query outputs

We can format the output of queries using some commands

```bash
sqlite> .mode column # Sets output mode to column
sqlite> .header on # Show column names row on output
sqlite> .nullvalue NULL # Sets the string that represents NULL

# Query output will be formatted
sqlite> select * 
   ...> from table_name
   ...> order by column_name
   ...> limit 10
```

