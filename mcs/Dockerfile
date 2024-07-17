FROM alpine as builder
WORKDIR /work
RUN apk add --no-cache wget && \
    # Minecraft version 1.21
    wget https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar
RUN echo eula=true > eula.txt

FROM alpine
WORKDIR /work
COPY --from=builder ./work .
RUN apk add --no-cache openjdk17
CMD java -Xmx1024M -Xms1024M -jar server.jar
