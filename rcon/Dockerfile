FROM alpine as builder
WORKDIR /work
RUN apk add --no-cache git && \
    apk add --no-cache gcc && \
    apk add --no-cache make && \
    apk add --no-cache build-base
RUN git clone https://github.com/Tiiffi/mcrcon.git
WORKDIR /work/mcrcon
RUN cc -std=gnu99 -Wpedantic -Wall -Wextra -Os -s -o mcrcon mcrcon.c

FROM alpine
WORKDIR /work
COPY --from=builder /work/mcrcon .
COPY rcon.sh .
RUN apk add --no-cache make
RUN make install
RUN chmod 755 rcon.sh
# CMD sh rcon.sh

# alpine linuxベースで作成
# build-baseはコンパイル後不要になるためマルチステージビルドで破棄する
# イメージサイズ ubuntu:362.35MB >>>>> alpine:7.8MB まで縮小に成功