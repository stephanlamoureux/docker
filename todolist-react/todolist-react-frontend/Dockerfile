FROM node:alpine as build
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx as product
WORKDIR /usr/share/nginx/html
COPY --from=build /app/build .
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]

# Build Image
# docker build -t todolist-react .

# Create network
# docker network create todo

# Create database
# docker run --name todo-database-server -itd -p 3306:3306 -v todolist-flask-mysql:/var/lib/mysql -v todolist-flask-mysql-config:/etc/mysql --network todo -e MYSQL_USER=chandra -e MYSQL_PASSWORD=Chandra@123 -e MYSQL_DATABASE=todo_db -e MYSQL_ROOT_PASSWORD=Alpha@2023 mysql

# Run the backend
# docker run --rm -itd --network todo --name todo-flask-server -p 80:80 -e MYSQL_DATABASE_HOST=todo-database-server -e MYSQL_DATABASE_USER=chandra -e MYSQL_DATABASE_PASSWORD=Chandra@123 -e MYSQL_DATABASE_DB=todo_db -e MYSQL_DATABASE_PORT=3306 todolist-flask

# Create the frontend
# docker run -itd --network todo --name todo-react-frontend -p 3000:3000 todolist-react
