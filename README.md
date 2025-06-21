# docker-pgcli

A minimal Docker image for [pgcli](https://www.pgcli.com/), a command-line interface for PostgreSQL with auto-completion and syntax highlighting.

![Build Status](https://github.com/vladtara/docker-pgcli/actions/workflows/build_and_push.yml/badge.svg)

## Features

- Based on `python:3.13.5-alpine3.22` for a small footprint
- Installs `pgcli` **version 4.3.0** and `psycopg[binary]` using [uv](https://github.com/astral-sh/uv) for fast dependency management
- Automated builds and publishing via GitHub Actions

## Usage

### Pull from GitHub Container Registry

```sh
docker pull ghcr.io/vladtara/docker-pgcli:latest
```

### Run pgcli

```sh
docker run --rm -it ghcr.io/vladtara/docker-pgcli \
  -h <host> -p 5432 -U <user> <database>
```

Replace `<host>`, `<user>`, and `<database>` with your PostgreSQL connection details.

### Example

```sh
export HOSTDB="localhost"
export USERDB="postgres"
export DATABASE="postgres"
export PORTDB=5432

docker run --rm -it ghcr.io/vladtara/docker-pgcli \
  -h $HOSTDB -p $PORTDB -U $USERDB $DATABASE
```

For more details:

```
    $ docker run --rm -it ghcr.io/vladtara/docker-pgcli

    Usage: pgcli [OPTIONS] [DBNAME] [USERNAME]

    Options:
      -h, --host TEXT            Host address of the postgres database.
      -p, --port INTEGER         Port number at which the postgres instance is
                                 listening.
      -U, --username TEXT        Username to connect to the postgres database.
      -u, --user TEXT            Username to connect to the postgres database.
      -W, --password             Force password prompt.
      -w, --no-password          Never prompt for password.
      --single-connection        Do not use a separate connection for completions.
      -v, --version              Version of pgcli.
      -d, --dbname TEXT          database name to connect to.
      --pgclirc FILE             Location of pgclirc file.
      -D, --dsn TEXT             Use DSN configured into the [alias_dsn] section
                                 of pgclirc file.
      --list-dsn                 list of DSN configured into the [alias_dsn]
                                 section of pgclirc file.
      --row-limit INTEGER        Set threshold for row limit prompt. Use 0 to
                                 disable prompt.
      --less-chatty              Skip intro on startup and goodbye on exit.
      --prompt TEXT              Prompt format (Default: "\u@\h:\d> ").
      --prompt-dsn TEXT          Prompt format for connections using DSN aliases
                                 (Default: "\u@\h:\d> ").
      -l, --list                 list available databases, then exit.
      --auto-vertical-output     Automatically switch to vertical output mode if
                                 the result is wider than the terminal width.
      --warn [all|moderate|off]  Warn before running a destructive query.
      --help                     Show this message and exit.
```

## Build Locally

```sh
docker build -t docker-pgcli .
```

## Continuous Integration

Docker images are automatically built and published for the `linux/amd64` platform using [GitHub Actions](.github/workflows/build_and_push.yml) on every push to `main`.

## License

[MIT](LICENSE)
