####################################################################################################
## Builder
####################################################################################################
 FROM rust:bullseye AS builder

 RUN rustup target add x86_64-unknown-linux-musl \
     &&  apt-get update && apt-get install -y musl-tools=1.2.2-1 musl-dev=1.2.2-1 --no-install-recommends \
     && update-ca-certificates && rm -rf /var/lib/apt/lists/*


 WORKDIR /app

 COPY ./ .

 RUN cargo build --target x86_64-unknown-linux-musl --release

####################################################################################################
## Final image
####################################################################################################
FROM alpine:3.15

WORKDIR /app

# Copy our build
COPY --from=builder /app/target/x86_64-unknown-linux-musl/release/slack-message ./


ENTRYPOINT [ "/app/slack-message" ]
