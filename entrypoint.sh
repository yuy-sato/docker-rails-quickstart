#!/bin/bash
set -e # setコマンド---シェルの設定を確認、変更するコマンド, errexitオプション（省略形 -e）---パイプやサブシェルで実行したコマンドが1つでもエラーになったら直ちにシェルを終了する

# server.pidが存在している場合は削除する
rm -f /myapp/tmp/pids/server.pid

# コンテナのメインプロセスで実行する
exec "$@"
