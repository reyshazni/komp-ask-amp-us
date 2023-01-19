FROM golang:latest
EXPOSE 80
ADD /apps/back-end /app
WORKDIR /app
RUN go mod tidy
RUN go build -o main .
CMD ["./main"]