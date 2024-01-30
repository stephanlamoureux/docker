# Build Stage
FROM python:3.9 as build

WORKDIR /app

# Set environment variables
ENV MYSQL_DATABASE_HOST="todo_react" \
    MYSQL_DATABASE_USER="todo" \
    MYSQL_DATABASE_PASSWORD="todo" \
    MYSQL_DATABASE_DB="todo_db" \
    MYSQL_DATABASE_PORT="3307"

# Copy only the necessary files for dependency installation
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY todo.py .

# Final Stage
FROM build

WORKDIR /app

# Copy only the necessary files from the build stage
COPY --from=build  /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages
COPY --from=build /app/* .

EXPOSE 80
# Set the command to run the application
CMD ["python3","todo.py"]

# Build image
# docker build -t todolist-flask .

# Create network
# docker network create todo

# Create database
# docker run --name todo-database-server -itd -p 3306:3306 -v todolist-flask-mysql:/var/lib/mysql -v todolist-flask-mysql-config:/etc/mysql --network todo -e MYSQL_USER=chandra -e MYSQL_PASSWORD=Chandra@123 -e MYSQL_DATABASE=todo_db -e MYSQL_ROOT_PASSWORD=Alpha@2023 mysql

# Run the backend
# docker run --rm -itd --network todo --name todo-flask-server -p 80:80 -e MYSQL_DATABASE_HOST=todo-database-server -e MYSQL_DATABASE_USER=chandra -e MYSQL_DATABASE_PASSWORD=Chandra@123 -e MYSQL_DATABASE_DB=todo_db -e MYSQL_DATABASE_PORT=3306 todolist-flask

# Create the frontend
# docker run -itd --name todo-frontend -p 8080:80 -v $(pwd)/html:/usr/share/nginx/html nginx