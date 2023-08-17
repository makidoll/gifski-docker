FROM alpine:latest as download

ARG version

# ADD https://gif.ski/gifski-$version.zip /gifski.zip
# RUN apk add unzip && unzip /gifski

ADD https://github.com/ImageOptim/gifski/releases/download/${version}/gifski_${version}_amd64.deb gifski.deb

FROM debian:bullseye-slim

# COPY --from=download /linux/gifski*.deb /
# RUN \
# apt-get install -y /gifski*.deb && \
# rm -f /gifski*.deb && \
# rm -rf /var/lib/apt/lists/*

COPY --from=download /gifski.deb .
RUN \
apt-get install -y /gifski.deb && \
rm -f /gifski*.deb && \
rm -rf /var/lib/apt/lists/*

WORKDIR /root

ENTRYPOINT [ "gifski" ]