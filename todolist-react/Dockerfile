FROM node:14-alpine

# copy the package.json separately to utilize caching
COPY package*.json ./

COPY . .

RUN npm install

EXPOSE 3000

CMD npm start

# Build Image
# docker build -t todolist-react .

# Create the frontend
# docker run -itd --network todo --name todo-react-frontend -p 3000:3000 todolist-react
