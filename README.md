# Webdock plugin SDK

Shared Rust protocol, native transport, mTLS, authorization, storage and mail contracts. Core owns the catalog, customer metadata, provider connections and BYOK credentials. No runtime credentials are included.

Pin consumers to an immutable Git revision. Install protobuf-compiler before building. Generate Cargo.lock, then run `cargo test --workspace --locked`.
