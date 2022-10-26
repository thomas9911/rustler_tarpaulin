# RustlerTarpaulin

Minimal repo to reproduce tarpaulin with Rustler bug

## Local

install:

```sh
cargo install cargo-tarpaulin
```

run by:

```sh
mix tarpaulin
```

or

```sh
cd native/rustlertarpaulin/
cargo tarpaulin
```

## Docker

```sh
docker build -t rustler_tarpaulin .
```


## Error

see error linked in [dump.txt](./dump.txt)
