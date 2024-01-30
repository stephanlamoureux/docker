# syntax=docker/dockerfile:1

# Pull the Nginx image from Docker Hub
FROM nginx

# Install git and clean up the package list afterward
RUN apt update && \
    apt install git -y && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory to /app
WORKDIR /app

# Clone the repository into the working directory
RUN git clone https://github.com/chandradeoarya/2048.git .

# Copy the game files into the Nginx html directory
RUN rm -rf /usr/share/nginx/html/* && \
    cp -r * /usr/share/nginx/html/

# Documents that port 80 is accessible to the container
EXPOSE 80
