FROM ubuntu:xenial

RUN apt update; apt install dnsutils bind9utils -y

ADD skydns /skydns

EXPOSE 53 53/udp
ENTRYPOINT ["/skydns"]
