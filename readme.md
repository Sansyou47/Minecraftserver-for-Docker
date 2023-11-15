# Minecraft for Docker
マイクラサーバーを簡単に建てるために作成しました。
### Webブラウザからサーバーをコントロールする
　サーバーを遠隔で操作するツールとして[RCON(Remote Controll)](https://github.com/Tiiffi/mcrcon.git)を使用しています。Webブラウザから指定されたコマンドがPythonスクリプトからRCONを通してサーバーへ送信されるようになっています。
詳しい使い方は上記リンクGithubリポジトリを参照してください。  
### 環境変数
必要な環境変数を追加するために、compose.ymlファイル直下にenvファイルを作成し、以下の通り環境変数を設定してください。値は各環境に合ったものを設定してください。
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

> [!NOTE]
> envファイルは外部に公開するとセキュリティ上の問題があるためリポジトリに含まれていません。必ずクローン後に自身の環境に合わせて作成してください。  
> [!WARNING]  
> envファイルを配置しないままコンテナを起動した場合、各コンテナが正常に起動しません。必ず配置してからコンテナを起動してください。

### 参考したソース
[RCONをマインクラフトで利用する](https://qiita.com/h_tyokinuhata/items/85d855f88d5d33c21949)  


  
