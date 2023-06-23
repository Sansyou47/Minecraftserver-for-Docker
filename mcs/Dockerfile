FROM alpine:latest
RUN mkdir /var/server20
RUN echo "@community http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    echo "@community http://nl.alpinelinux.org/alpine/edge/repositories" >> /etc/apk/repositories && \
    apk add --no-cache openjdk17 && \
    apk add --no-cache wget
WORKDIR /var/server20
CMD wget https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar && \
    echo eula=true > eula.txt && \
    java -Xmx2048M -Xms2048M -jar server.jar