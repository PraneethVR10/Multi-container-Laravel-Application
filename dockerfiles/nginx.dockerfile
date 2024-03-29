FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.D

COPY nginx/nginx.conf .

RUN mv nginx.conf default.conf

WORKDIR /var/www/html

COPY src . 
