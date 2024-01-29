FROM ubuntu

RUN apt update -y
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN pip3 install flask

COPY . /app

WORKDIR /app

CMD python3 ./devops_dockerfile_flask.py

EXPOSE 80

# Build command:
# docker build -t "devops_dockerfile_flask:1.0" .

# Run command:
# docker run -d --name flaskdemo -p 9876:80 devops_dockerfile_flask:1.0