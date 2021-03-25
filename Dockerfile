FROM debian:latest

RUN apt update && apt -y install cowsay && apt autoremove && rm -Rf /var/cache/apt/* && rm -Rf /var/lib/apt/lists/*
ENV PATH="/usr/games:${PATH}"


ENTRYPOINT ["cowsay"]
