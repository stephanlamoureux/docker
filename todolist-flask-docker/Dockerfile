FROM python:alpine

ENV MYSQL_DATABASE_HOST=todo-database-server
ENV MYSQL_DATABASE_USER=chandra
ENV MYSQL_DATABASE_PASSWORD=Chandra@123
ENV MYSQL_DATABASE_DB=todo_db
ENV MYSQL_DATABASE_PORT=3306

RUN apk update && \
    apk add --no-cache build-base libffi-dev openssl-dev
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 80
CMD python ./todo.py

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