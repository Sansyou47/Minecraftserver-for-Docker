FROM alpine as builder
WORKDIR /work
RUN apk add --no-cache wget && \
    wget https://piston-data.mojang.com/v1/objects/5b868151bd02b41319f54c8d4061b8cae84e665c/server.jar && \
    echo eula=true > eula.txt

FROM alpine
WORKDIR /work
COPY --from=builder ./work .
RUN apk add --no-cache openjdk17
CMD java -Xmx2048M -Xms2048M -jar server.jar