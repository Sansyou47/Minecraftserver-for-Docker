FROM alpine as builder
WORKDIR /work
RUN apk add --no-cache git && \
    apk add --no-cache gcc && \
    apk add --no-cache build-base
RUN git clone https://github.com/Tiiffi/mcrcon.git
WORKDIR /work/mcrcon
RUN cc -std=gnu99 -Wpedantic -Wall -Wextra -Os -s -o mcrcon mcrcon.c

FROM python:3.8-alpine
WORKDIR /work
COPY requirements.txt .
COPY --from=builder /work/mcrcon .
RUN apk add --no-cache make
RUN pip install --no-cache-dir -r requirements.txt
RUN make install
WORKDIR /app
CMD [ "python", "main.py"]

# alpine linuxベースで作成
# build-baseはコンパイル後不要になるためマルチステージビルドで破棄する
# イメージサイズ ubuntu:362.35MB >>>>> alpine:7.8MB まで縮小に成功