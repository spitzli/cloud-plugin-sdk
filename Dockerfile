FROM docker.io/library/rust:1.98.1-slim-trixie@sha256:4cd829461bd5c4d511c32e269da9cb8929223b666519d8004e35fc8d1d771ab7 AS check
RUN apt-get update && apt-get install -y --no-install-recommends protobuf-compiler pkg-config ca-certificates && rm -rf /var/lib/apt/lists/*
WORKDIR /src
COPY . .
RUN --mount=type=cache,id=spitzli-sdk-check-registry,target=/usr/local/cargo/registry,sharing=locked --mount=type=cache,id=spitzli-sdk-check-target,target=/src/target,sharing=locked cargo test --workspace --locked --jobs 3
