# Dev Container Dockerfile for SQLite examples
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install sqlite3 and common utilities
RUN apt-get update \
    && apt-get install -y --no-install-recommends sqlite3 ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Ensure bash is available as the login shell
SHELL ["/bin/bash", "-lc"]