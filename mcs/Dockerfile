FROM alpine as builder
WORKDIR /work
RUN apk add --no-cache wget && \
    # Minecraft version 1.20.4
    wget https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar
RUN echo eula=true > eula.txt

FROM alpine
WORKDIR /work
COPY --from=builder ./work .
RUN apk add --no-cache openjdk17
CMD java -Xmx1024M -Xms1024M -jar server.jar
