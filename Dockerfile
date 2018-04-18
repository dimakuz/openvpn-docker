FROM arm64v8/alpine:3.7
LABEL image=ficoos/znc:arm64v8
ENV ARCH armhf
MAINTAINER Saggi Mizrahi "saggi@mizrahi.cc"

RUN apk update && \
    apk add openvpn

ADD docker-entrypoint.sh /entrypoint.sh

VOLUME /server

ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
