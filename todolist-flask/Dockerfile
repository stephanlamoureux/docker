# Use an official Python runtime as a parent image
FROM python:3.9

# Set environment variables
ENV MYSQL_DATABASE_HOST="db" \
    MYSQL_DATABASE_USER="todo" \
    MYSQL_DATABASE_PASSWORD="todo" \
    MYSQL_DATABASE_DB="todo_db" \
    MYSQL_DATABASE_PORT="3306"

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed packages specified in requirements.txt
RUN apt update && \
    apt upgrade -y && \
    pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run todo.py when the container launches
CMD ["python", "todo.py"]