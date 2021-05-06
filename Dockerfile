FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
  entr

COPY --from=mattipaksula/reflex /reflex /usr/bin

WORKDIR /app
COPY app .

ENTRYPOINT [ "/app/entrypoint.sh" ]
