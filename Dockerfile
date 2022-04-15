# syntax=docker/dockerfile:1

##
## Build
##
FROM golang:1.18-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /gomoduleonesample

##
## Deploy
##
EXPOSE 3000

CMD [ "/gomoduleonesample" ]