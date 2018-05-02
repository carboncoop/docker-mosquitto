FROM arm32v6/alpine

RUN apk update && \
apk upgrade && \
apk add openssl && \
apk add ca-certificates && \
apk add mosquitto 

RUN mkdir mosquitto
RUN cd /mosquitto
WORKDIR /mosquitto

CMD ["/usr/sbin/mosquitto","-c","/mosquitto/mosquitto.conf"]
