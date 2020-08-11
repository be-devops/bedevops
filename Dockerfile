FROM nginx:alpine
ADD . /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN cp /usr/share/nginx/html/nginx.conf /etc/nginx/conf.d/default.conf