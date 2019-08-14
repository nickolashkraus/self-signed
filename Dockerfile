FROM golang:alpine

ARG HUGO_VERSION=v0.55.4

RUN apk add --no-cache git

RUN mkdir $HOME/src \
      && cd $HOME/src \
      && git clone https://github.com/gohugoio/hugo.git \
      && cd hugo \
      && git checkout ${HUGO_VERSION} \
      && go install

RUN hugo new site /self-signed

WORKDIR /self-signed

RUN git clone https://github.com/NickolasHKraus/black-and-light-2.git themes/black-and-light-2

COPY config.toml .

COPY content content

EXPOSE 1313

ENTRYPOINT hugo serve --appendPort=false --bind 0.0.0.0
