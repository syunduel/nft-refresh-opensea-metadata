# nft-refresh-opensea-metadata
script to reflesh opensea metadata

# 使い方

## 自分のPCに持ってくる

・git cloneなりファイルをダウンロードする等して、refresh.shを自分のPCに持ってきてください

## 設定の変更

### refresh.shをエディタで開きます

### 下記の値を、リフレッシュしたい対象に変更します

・URL_HEAD
0xで始まる部分を、対象のNFTのコントラクトアドレスに変更します
テストネットじゃない本番環境が対象の場合は「testnets-」を削除します

・for i in {120..200}
refleshしたいidの範囲に変更します

## 実行

・プロンプトで下記コマンドを実行します。パラメータはありません
./refresh.sh

・おかしくなったばあい
強制的にスクリプトを終了させてください
