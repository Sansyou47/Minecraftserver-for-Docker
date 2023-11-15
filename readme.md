# Minecraft for Docker
マイクラサーバーを簡単に建てるために作成しました。
### Webブラウザからサーバーをコントロールする
　サーバーを遠隔で操作するツールとして[RCON](https://github.com/Tiiffi/mcrcon.git)が使用できます。  
詳しい使い方は上記リンクGithubリポジトリを参照してください。  
### 環境変数
 compose.ymlファイル直下に.envファイルを作成し、以下の通り環境変数を設定してください。
| 変数名 | 使用サービス | 目的 |
| --- | --- | --- |
| MCRCON_HOST | webcon, mcserver | RCONが接続する接続先ホスト名 |
| MCRCON_PORT | webcon, mcserver | RCONの接続先ポート番号 |
| MCRCON_PASS | webcon, mcserver | RCONのログインに使用するパスワード |
| MYSQL_ROOT_PASSWORD | db | MySQLのルートパスワード |
| MYSQL_DATABASE | db | MySQLのデータベース名 |
| MYSQL_USER | db | MySQLのユーザー名 |
| MYSQL_PASSWORD | db | MySQLのユーザーパスワード |
| default_timezone | db | MySQLコンテナのタイムゾーン |

> [!WARNING]  
> envファイルを配置しないままコンテナを起動した場合、各コンテナが正常に起動しません。必ず配置してからコンテナを起動してください。

### 参考したソース
[RCONをマインクラフトで利用する](https://qiita.com/h_tyokinuhata/items/85d855f88d5d33c21949)  


  
