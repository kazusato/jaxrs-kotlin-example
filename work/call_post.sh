#!/bin/sh
echo POST:tablet
curl -X POST -H "Content-type: application/json" \
  -d '{"category": "tablet"}' \
  http://localhost:8080/jaxrs-kotlin-example/api/product
echo
echo POST:phone
curl -X POST -H "Content-type: application/json" \
  -d '{"category": "phone"}' \
  http://localhost:8080/jaxrs-kotlin-example/api/product
echo
echo POST:pc
curl -X POST -H "Content-type: application/json" \
  -d '{"category": "pc"}' \
  http://localhost:8080/jaxrs-kotlin-example/api/product
echo

