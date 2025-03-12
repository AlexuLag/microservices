FROM golang:1.21-alpine

RUN apk add --no-cache git gcc musl-dev

# Install Delve debugger
RUN go install github.com/go-delve/delve/cmd/dlv@latest

WORKDIR /app

# Copy the Go modules manifests
COPY go.mod go.sum ./
RUN go mod download

# Copy source code
COPY . .

# Build the application with debug information
RUN go build -gcflags="all=-N -l" -o authApp ./cmd/api

EXPOSE 80 2346

# Start the debugger
CMD ["dlv", "--listen=:2346", "--headless=true", "--api-version=2", "--accept-multiclient", "exec", "./authApp"] 