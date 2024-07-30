FROM ubuntu:latest

RUN apt-get update && apt install golang -y

ENV GO111MODULE=off

COPY . .

RUN CGO_ENABLED=0 go build -o /app .

ENTRYPOINT ["/app"]
