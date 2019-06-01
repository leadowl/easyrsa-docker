FROM alpine:latest

RUN apk add --no-cache --update easy-rsa

ENV EASYRSA /usr/share/easy-rsa
ENV EASYRSA_PKI /data/pki

ENTRYPOINT [ "/usr/share/easy-rsa/easyrsa" ]