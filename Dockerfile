# FROM alpine as builder
# WORKDIR /work
# RUN apk add --no-cache wget && \
#     # Minecraft version 1.21
#     wget https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar
# RUN echo eula=true > eula.txt

# FROM alpine
# WORKDIR /work
# COPY --from=builder ./work .
# RUN apk add --no-cache openjdk21
# CMD java -Xmx1024M -Xms1024M -jar server.jar

# 1. ビルドステージ：Forgeインストーラーの実行とファイルの生成
FROM alpine AS builder
WORKDIR /work
ARG MC_VER=1.20.1
ARG FORGE_VER=47.4.23
RUN apk add --no-cache openjdk17-jre curl bash && \
    curl -sSL -o installer.jar "https://maven.minecraftforge.net/net/minecraftforge/forge/${MC_VER}-${FORGE_VER}/forge-${MC_VER}-${FORGE_VER}-installer.jar" && \
    java -jar installer.jar --installServer && \
    rm -f installer.jar installer.jar.log && \
    echo "eula=true" > eula.txt && \
    mkdir -p mods

# 2. 実行ステージ：不要なツールを排除した最小限の環境
FROM alpine
WORKDIR /work
# Forge起動に必要なパッケージのみを追加（Java 17、bash、glibc互換ライブラリ）
RUN apk add --no-cache openjdk17-jre bash gcompat
COPY --from=builder /work .
# メモリ割り当ての初期設定（必要に応じて調整）
ENV JAVA_ARGS="-Xms2048M -Xmx8192M"
# user_jvm_args.txt にメモリ割り当てを反映し、run.sh で起動
CMD ["sh", "-c", "echo $JAVA_ARGS > user_jvm_args.txt && ./run.sh"]