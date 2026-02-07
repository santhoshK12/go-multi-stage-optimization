# STAGE 1: The Builder (The Kitchen)
FROM golang:1.22-alpine AS builder
WORKDIR /app
COPY . .
RUN go build -o calculator main.go

# STAGE 2: The Runner (The Plate)
FROM alpine:latest
WORKDIR /root/
# We ONLY copy the small binary from the builder stage
COPY --from=builder /app/calculator .

# Final command
CMD ["./calculator"]
