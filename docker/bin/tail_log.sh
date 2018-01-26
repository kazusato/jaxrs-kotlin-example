#!/bin/sh
docker exec -it \
  jaxrs-kotlin-example \
  tail -F /var/log/payara/payara-micro.log.0

