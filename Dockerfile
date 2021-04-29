FROM ubuntu

LABEL maintainer victor@victor.fr

RUN apt update && apt upgrade -y

RUN apt install -y nginx

ADD . /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
