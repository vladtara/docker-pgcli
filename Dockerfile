FROM python:3.13.5-alpine3.22

WORKDIR /app

RUN wget -qO- https://astral.sh/uv/install.sh | sh

RUN source $HOME/.local/bin/env && \
    uv pip install --system \
        pgcli==4.3.0 \
        psycopg[binary] 

ENTRYPOINT ["pgcli"]

CMD ["--help"]
