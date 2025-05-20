FROM python:3.10.14-slim AS builder

# Set the working directory in the container
WORKDIR /app

# Copy the rest of the application code to the working directory
COPY ./requirements.txt ./requirements.txt

# Install the required system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends git

# Install the required dependencies
RUN python -m pip install --no-cache-dir -r requirements.txt

# Create a folder for the data
RUN mkdir -p /app/data

# Install Redis server
RUN apt-get update && apt-get install -y redis-server && apt-get clean

# Copy the rest of the application code to the working directory
COPY . .

# Expose the network port
EXPOSE 8081

# Specify the command to run when the container starts
# CMD cd /app/data && redis-server --daemonize yes && python ../demo_implementation.py
# JSON array syntax to ensure proper signal handling
CMD ["sh", "-c", "cd /app/data && redis-server --daemonize yes && python ../demo_implementation.py"]