FROM ubuntu as builder
WORKDIR /work
RUN apt update && \
    apt install -y git && \
    apt install -y gcc && \
    apt install -y make
RUN git clone https://github.com/Tiiffi/mcrcon.git
WORKDIR /work/mcrcon
RUN cc -std=gnu99 -Wpedantic -Wall -Wextra -Os -s -o mcrcon mcrcon.c
RUN make install

# rconでマイクラサーバーへログインする
# IPアドレスに接続先のホスト名を指定しても可能
# マイクラサーバーが起動する前にコマンドを実行するとエラーとなるため注意
# CMD mcrcon -H 172.22.0.2 -P 25575 -p test -t
# CMD mcrcon -H mcserver -P 25575 -p test -t

# FROM alpine
# WORKDIR /mcrcon
# COPY --from=builder /work/mcrcon .
# RUN apk add make
# RUN make install
# 172.22.0.2

