FROM elixir:1.14.1

RUN apt-get update
RUN apt-get install -y \
    build-essential \
    curl

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"

WORKDIR /opt/rustler_tarpaulin

RUN cargo install cargo-tarpaulin

COPY . .

RUN mix local.hex --force
RUN mix deps.get

RUN mix tarpaulin
