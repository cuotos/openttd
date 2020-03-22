FROM alpine

WORKDIR /openttd

RUN apk --no-cache add -X http://nl.alpinelinux.org/alpine/edge/testing openttd openttd-opengfx

COPY start.sh /
COPY openttd.cfg .

CMD [ "/start.sh" ]
