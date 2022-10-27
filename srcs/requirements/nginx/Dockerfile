FROM alpine:3.16.2

RUN apk update && apk upgrade && apk add nginx openssl

COPY ./nginx.conf /etc/nginx/http.d/nginx.conf

RUN openssl req -x509 -days 365 -nodes -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key \
                                                        -out /etc/ssl/certs/nginx.crt -sha256 -subj "/CN=mhahn.42.fr"

ENTRYPOINT ["nginx", "-g", "daemon off;"]
