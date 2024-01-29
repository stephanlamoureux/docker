FROM node:14 as builder
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 3000
CMD [ "npm", "start" ]

# docker build -t node_single .

# docker run -itd --rm --name clicky_single -p 8000:3000 node_single
