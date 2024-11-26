FROM golang:alpine3.20 AS builder
WORKDIR /build
ADD go.mod .
COPY . .
RUN GOPROXY=off go build -o rag-server -mod=vendor .

FROM alpine
WORKDIR /app 
COPY --from=builder /build/rag-server /app/rag-server
CMD ["./rag-server"]