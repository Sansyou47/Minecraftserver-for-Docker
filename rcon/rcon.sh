#!/bin/bash

#マイクラサーバーが起動するまで15秒ほど停止

cmd="mcrcon -H mcserver -P 25575 -p test -t"
sleep 15
while ! $cmd; do
    sleep 2
done