#!/bin/sh
cat > Dockerfile <<_EOF_
FROM alpine:3.3 
RUN apk update
RUN apk add --no-cache make
RUN apk add --no-cache linux-headers
RUN apk add --no-cache texinfo
RUN apk add --no-cache gcc
RUN apk add --no-cache g++

COPY . /src/myapp
WORKDIR /src/myapp
#RUN gcc -o hello hello.c
CMD ["./hello"]
_EOF_


