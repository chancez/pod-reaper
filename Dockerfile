FROM golang:1.14

WORKDIR /go/src/app
COPY ["go.mod", "go.sum", "main.go", "/go/src/app/"]
RUN go build -o /pod-reaper
CMD ["/pod-reaper"]
