FROM golang:latest

RUN go get github.com/justyntemme/justyneats
RUN go install github.com/justyntemme/justyneats
RUN cp -r /go/src/github.com/justyntemme/justyneats/justyneats/public /go/bin/
EXPOSE 8080
ENTRYPOINT ["justyneats"]

EXPOSE 8080

