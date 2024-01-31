FROM python:3
WORKDIR /app
ENV SQL_DATABASE=SDAWitter \
    SQL_USER=admin \
    SQL_PASSWORD=edwin2023 \
    SQL_HOST=db \
    SQL_PORT=5432\
    DJANGO_ALLOWED_HOSTS=localhost
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8080
CMD [ "python","manage.py","runserver" ]