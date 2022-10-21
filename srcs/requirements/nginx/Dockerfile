FROM alpine:edge

RUN apk update && apk upgrade && apk add nginx

COPY conf         /etc/nginx/nginx.conf
COPY fastcgi_conf /etc/nginx/fastcgi_params

RUN nginx -t

ENTRYPOINT ["nginx"]
