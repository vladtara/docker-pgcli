# docker-pgcli

A minimal Docker image for [pgcli](https://www.pgcli.com/), a command-line interface for PostgreSQL with auto-completion and syntax highlighting.

## Features

- Based on `python:3.13.5-alpine3.22` for a small footprint
- Installs `pgcli` and `psycopg[binary]` using [uv](https://github.com/astral-sh/uv) for fast dependency management
- Multi-architecture builds via GitHub Actions

## Usage

### Pull from GitHub Container Registry

```sh
docker pull ghcr.io/vladtara/docker-pgcli:latest