# Microservices Project

A collection of microservices built with Go.

## Getting Started

### Prerequisites
- Go 1.16 or higher
- Docker (optional)

### Running the Application

The project includes a Makefile with the following commands:

```bash
# Start all containers in the background
make up

# Build all services and start containers
make up_build

# Stop all containers
make down

# Build individual services
make build_broker
make build_auth
make build_logger
make build_Mail
make build_front

# Frontend specific commands
make start    # Start frontend
make stop     # Stop frontend


## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request 