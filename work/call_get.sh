#!/bin/sh
echo GET:1
curl http://localhost:8080/jaxrs-kotlin-example/api/product/1 
echo
echo GET:2
curl http://localhost:8080/jaxrs-kotlin-example/api/product/2
echo
echo GET:3
curl http://localhost:8080/jaxrs-kotlin-example/api/product/3
echo
echo GET:4
curl http://localhost:8080/jaxrs-kotlin-example/api/product/4
echo

