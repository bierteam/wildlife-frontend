FROM nginxinc/nginx-unprivileged:alpine
RUN rm -rf /etc/nginx/conf.d /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY ./static /usr/share/nginx/html
EXPOSE 8080