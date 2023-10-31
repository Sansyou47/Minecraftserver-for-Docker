FROM ubuntu as builder
WORKDIR /work
RUN apt update && \
    apt install -y git && \
    apt install -y gcc && \
    apt install -y make
RUN git clone https://github.com/Tiiffi/mcrcon.git
WORKDIR /work/mcrcon
COPY rcon.sh .
RUN cc -std=gnu99 -Wpedantic -Wall -Wextra -Os -s -o mcrcon mcrcon.c
RUN make install
CMD [ "./rcon.sh" ]
# rconを使用してマイクラサーバーへログインする
# IPアドレスに接続先のホスト名を指定しても可能
# ホスト名はcomposeに記述しているサービス名を使用する
# CMD mcrcon -H 172.22.0.2 -P 25575 -p test -t
# CMD mcrcon -H mcserver -P 25575 -p test -t

