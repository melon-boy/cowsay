FROM debian:latest

LABEL description="Cowsay docker" \
  author="M. Espinosa" \
  maintainer="hi@marcoespinosa.es"

RUN apt update \
  && apt -y install cowsay \
  && apt autoremove \
  && rm -Rf /var/cache/apt/* \
  && rm -Rf /var/lib/apt/lists/*

ENV PATH="/usr/games:${PATH}"

ENTRYPOINT ["cowsay"]
