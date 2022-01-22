FROM nginx

WORKDIR /app

RUN apt-get update && \
    apt-get install -y vim

COPY src/* /usr/share/nginx/html

ENTRYPOINT [ "/docker-entrypoint.sh" ]

CMD [ "nginx", "-g", "daemon off;" ]