Dockerの学習を目的として、Java版マインクラフトサーバーをコンテナとして
運用できるようにしてみました。以下に使用方法を記述します。

### 使い方 ###
***Ubuntu環境で使用する場合***
1.適当なディレクトリへクローン
2.カレントディレクトリを"compose.yml"ファイルがある場所へ移動
3."start.sh"を実行すればマイクラサーバーが起動します。
    ・"docker compose up"コマンドでも起動しますが、マイクラサーバーへのコマンド
    　入力が一切受け付けられなくなるため、サーバーへ指示を出さない場合のみ推奨。
    　ここらへんの違いはまだ理解が追いついていないため、勉強中です。

***Windows環境で使用する場合***
基本的な操作は上記2番まで同じ。シェルスクリプトを使用せずに、シェルスクリプトに記述されている
コマンドをターミナルに手入力して実行してください。

### 注意点 ###
・コンテナを停止する場合は、以下の点に注意してください。
    ・"docker compose stop"コマンドで停止： ワールドデータを保持したままコンテナを停止
    ・"docker compose down"コマンドで停止： ワールドデータを破棄してコンテナを停止
これはコンテナで生成されたワールドデータを"volumes"でマウントした場所へ保存しているため、
停止指示によっては作成したvolumeごとコンテナを破棄してしまうためだと思う。勉強します。