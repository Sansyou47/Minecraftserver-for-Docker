# Minecraft for Docker
マイクラサーバーを簡単に建てるために作成しました。

### rcon
サーバーを遠隔で操作するツールとして[rcon](https://github.com/Tiiffi/mcrcon.git)が使用できます。  
詳しい使い方は上記リンクGithubリポジトリを参照してください。  
---
### 環境変数
"compose.yml"ファイル直下に".env"ファイルを作成し、以下の通り環境変数を設定してください。  
　
| 変数名 | 使用サービス | 目的 |
|:---|:---|:---|:---|
| MCRCON_HOST | webcon | MCRCONが接続先として使用するホスト名 |
| MCRCON_PORT | webcon | MCRCONが接続するポート番号 |
| MCRCON_PASS | webcon | MCRCONがログインに使用するパス |
| MYSQL_ROOT_PASSWORD | db | MySQLのルートパスワード |
| MYSQL_DATABASE | db | MySQLのデータベース名 |
| MYSQL_USER | db | MySQLのユーザー名 |
| MYSQL_PASSWORD | db | MySQLのユーザーパスワード |
| default_timezone | mcserver, webcon, db | MySQLコンテナのタイムゾーン |  

[!WORNING] 
envファイルを配置しないままコンテナを起動した場合、各コンテナが正常に起動しません。必ず配置してからコンテナを起動してください。
---

### 参考したソース
[rconをマインクラフトで利用する](https://qiita.com/h_tyokinuhata/items/85d855f88d5d33c21949)  
  
