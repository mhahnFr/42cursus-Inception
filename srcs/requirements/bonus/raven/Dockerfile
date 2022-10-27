FROM alpine:edge

EXPOSE 4242

RUN apk update && apk upgrade && apk add build-base git make gcc

RUN git clone https://github.com/nijakow/raven /home/admin/raven

RUN make -j -C /home/admin/raven/src

ENTRYPOINT ["/home/admin/raven/src/raven.exe", "/home/admin/melian/src"]
