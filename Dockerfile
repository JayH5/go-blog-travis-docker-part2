FROM golang:1.8 AS builder
WORKDIR /go/src/github.com/JayH5/go-blog-travis-docker-part2/
COPY . .
RUN go build -o bin/hello -i .

FROM scratch
WORKDIR /root/
COPY --from=builder /go/src/github.com/JayH5/go-blog-travis-docker-part2/bin/hello .
ENTRYPOINT ["/root/hello"]
CMD ["World"]
