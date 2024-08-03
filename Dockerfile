# Use the official Go image with version 1.18 on Alpine Linux as the base image
FROM golang:1.18-alpine

# Set the working directory inside the container to /app
WORKDIR /app

# Copy all files and directories from the current directory on the host to /app in the container
COPY . .

# Build the Go application from the source file located at ./server/main.go
# The output executable will be named 'main'
RUN go build -o main ./server/main.go

# Set the default command to run when the container starts
# This will execute the 'main' binary
CMD ["./main"]