FROM golang:1.12.5-alpine3.9 as build

WORKDIR /go/src/app

COPY . .

RUN go build -o app

FROM alpine:3.7

COPY --from=build /go/src/app/app /usr/local/bin/app

ENTRYPOINT ["/usr/local/bin/app"]