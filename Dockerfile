# --- Build Stage ---
FROM eclipse-temurin:17-jdk-jammy AS builder
WORKDIR /work
ENV MC_VERSION=1.20.1
ENV FORGE_VERSION=47.4.23
RUN FORGE_FULL="${MC_VERSION}-${FORGE_VERSION}" && \
    curl -sSL -o installer.jar "https://maven.minecraftforge.net/net/minecraftforge/forge/${FORGE_FULL}/forge-${FORGE_FULL}-installer.jar" && \
    java -jar installer.jar --installServer && \
    rm -f installer.jar installer.jar.log
RUN echo "eula=true" > eula.txt && mkdir -p mods

# --- Final Stage ---
FROM eclipse-temurin:17-jre-jammy
WORKDIR /work
COPY --from=builder /work .
ENV JAVA_OPTS="-Xms8G -Xmx8G"
# CMD ["sleep", "infinity"]
CMD ["sh", "-c", "ARGS_PATH=$(find libraries/net/minecraftforge/forge -name 'unix_args.txt') && exec java $JAVA_OPTS @user_jvm_args.txt @$ARGS_PATH \"$@\""]