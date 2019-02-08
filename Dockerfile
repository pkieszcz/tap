FROM golang:latest
ADD . /go/src/app
RUN go install app
FROM alpine:latest
COPY --from=0 /go/bin/app .
ENV PORT 8080
CMD ["./app"]
