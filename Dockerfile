FROM elixir:1.10-alpine

ENV MIX_ENV prod

RUN mix local.hex --force && \
    mix archive.install hex phx_new 1.5.4 --force && \
    mix local.rebar --force

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN mix deps.get --only prod && \
    mix compile

CMD ["mix", "phx.server"] 
