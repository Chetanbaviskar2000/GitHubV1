# Use the latest Ubuntu 18.04 as the base image
FROM ubuntu:18.04

# Install necessary packages (customize as needed)
RUN apt-get update && \
    apt-get install -y \
    curl \
    git \
    python3

# Set environment variables (optional)
#ENV MY_ENV_VAR=my_value

# Create a working directory inside the container
WORKDIR /app

# Copy your code file (e.g., entrypoint.sh) from your action repository to the container
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint.sh script executable
RUN chmod +x /entrypoint.sh

# Specify the code file to execute when the container starts up
ENTRYPOINT ["/entrypoint.sh"]

