FROM alpine as builder
WORKDIR /work
RUN apk add --no-cache wget && \
    wget https://piston-data.mojang.com/v1/objects/5b868151bd02b41319f54c8d4061b8cae84e665c/server.jar
RUN echo eula=true > eula.txt
RUN echo enable-rcon=true > server.properties && \
    echo rcon.port=25575 >> server.properties && \
    echo rcon.password=test >> server.properties && \
    echo hogehoge=fugafuga >> server.properties

FROM alpine
WORKDIR /work
COPY --from=builder ./work .
COPY properties.sh .
RUN apk add --no-cache openjdk17
CMD java -Xmx1024M -Xms1024M -jar server.jar

# 11001111 10111111 10100100 11100000 10100100 11000100 10101101 11101001 
# 10000000 11110000 10000080 10100100 11011101 10000000 11101001 10000000 
# 11110000 10000080 10000080 10101101 10000000 11101001 10000000 11110000 
# 10000080 10000080 10101000 10000000 11101001 10000000 11110000 10000080 
# 10000080 10000010 10100100 11011101 10000000 11101001 10000000 11110000 
# 10000080 10000080