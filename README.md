# SQLite Examples & Tutorial

This repository contains small scripts and examples for learning how to manage and use SQLite. It also includes a Dev Container configuration so you can develop and run the examples inside an isolated environment that provides bash and sqlite.

## What this repo is for

- Hands-on SQLite examples and short tutorial scripts.
- A simple, reproducible development environment using VS Code Dev Containers.

## Dev Container

A devcontainer is provided at `.devcontainer/devcontainer.json`. It uses an Ubuntu base and installs `sqlite3`. The container is configured to use `bash` as the integrated terminal shell.

How to open the repo in the devcontainer (VS Code):

1. Install Docker and VS Code.
2. Install the "Dev Containers" (Remote - Containers) extension in VS Code.
3. In VS Code open this folder and run the command: "Dev Containers: Reopen in Container" (from the Command Palette).

Inside the container you will have `bash` and `sqlite3` available. The devcontainer runs a check after creation to print the SQLite version.

## Quick start (inside the devcontainer)

Create a new database and a table, insert data, and query it:

```bash
# create/open a database file
sqlite3 examples.db

# inside sqlite3 prompt (or run with -cmd / -batch)
CREATE TABLE people (id INTEGER PRIMARY KEY, name TEXT, age INTEGER);
INSERT INTO people (name, age) VALUES ('Alice', 30), ('Bob', 25);
SELECT * FROM people;
.quit
```

Or run commands non-interactively from the shell:

```bash
sqlite3 examples.db "CREATE TABLE demo(id INTEGER PRIMARY KEY, msg TEXT);"
sqlite3 examples.db "INSERT INTO demo (msg) VALUES ('hello'),('world');"
sqlite3 examples.db "SELECT * FROM demo;"
```

## Where to add examples

Place example SQL scripts or small shell scripts in a directory such as `examples/` or `scripts/`. Example files could be named `examples/create_tables.sql`, `examples/load_data.sql`, and so on.

## Extending the environment

If you want additional tools (sqlite CLI extensions, python, node, etc.), add them to the devcontainer configuration in `.devcontainer/` (for example by using additional features or by adding a Dockerfile).

## License & notes

This repo is intended for learning and demonstration. Feel free to copy and adapt the examples.
