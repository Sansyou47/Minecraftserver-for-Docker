#!/bin/bash

# チェックする内容
check_content="rcon.port=25575\nrcon.password=test"

# ファイルに内容が存在しないかチェック
if ! grep -Fxq "$check_content" server.properties; then
    # ファイルの末尾に内容を追記
    echo -e "$check_content" >> server.properties
    echo "内容を追記しました。"
else
    echo "ファイルには既に内容が記述されています。処理をスキップします。"
fi
