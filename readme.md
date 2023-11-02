# Minecraft for Docker
マイクラサーバーを簡単に建てるために作成しました。

### rcon
サーバーを遠隔で操作するツールとしてrconが使用できます。  
https://github.com/Tiiffi/mcrcon.git  
詳しい使い方は上記ページを参照してください。  
---
### 環境変数
"compose.yml"ファイル直下に".env"ファイルを作成し、以下の通り環境変数を設定してください。  
| 変数名 | 使用サービス | 目的 |
| MCRCON_HOST | webcon | MCRCONが接続先として使用するホスト名 |
| MCRCON_PORT | webcon | MCRCONが接続するポート番号 |
| MCRCON_PASS | webcon | MCRCONがログインに使用するパス |
| MYSQL_ROOT_PASSWORD | db | MySQLのルートパスワード |
| MYSQL_DATABASE | db | MySQLのデータベース名 |
| MYSQL_USER | db | MySQLのユーザー名 |
| MYSQL_PASSWORD | db | MySQLのユーザーパスワード |
| default_timezone | mcserver, webcon, db | MySQLコンテナのタイムゾーン |  

---

### 参考したソース
rconをマインクラフトで利用する  
https://qiita.com/h_tyokinuhata/items/85d855f88d5d33c21949  
  
