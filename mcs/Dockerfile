FROM alpine as builder
WORKDIR /work
RUN apk add --no-cache wget && \
    # Minecraft version 26.1
    wget https://piston-data.mojang.com/v1/objects/3872a7f07a1a595e651aef8b058dfc2bb3772f46/server.jar
RUN echo eula=true > eula.txt

FROM alpine
WORKDIR /work
COPY --from=builder ./work .
RUN apk add --no-cache openjdk25
CMD java -Xmx8192M -Xms4096M -jar server.jar
