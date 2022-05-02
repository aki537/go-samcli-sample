FROM golang:1.18.1-alpine

RUN apk update && \
    apk upgrade && \
    apk --update add bash 
    
# Install awscli and aws-sam-cli
RUN apk --update add git python3 python3-dev py3-pip make 

RUN apk add --no-cache --virtual build-deps build-base gcc && \
    pip3 install awscli && \
    pip3 install aws-sam-cli && \ 
    apk del build-deps

WORKDIR /var/task