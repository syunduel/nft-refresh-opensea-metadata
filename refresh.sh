# reflesh.sh
URL_HEAD="https://testnets-api.opensea.io/api/v1/asset/0x90a3fba08fe9066ccbb4cab3e94301df7a4312c4/"; #接続先
URL_TAIL="/?force_update=true"
HEAD="Content-Type:text/xml"; #リクエストヘッダー
DIR="./out/"; #結果保存先ディレクトリ

for i in {120..200} # refleshしたいidの範囲
do
    SETDT=`date "+%Y%m%d%H%M%S"`
    echo ${URL_HEAD}${i}${URL_TAIL}
    curl -H ${HEAD} ${URL_HEAD}${i}${URL_TAIL} > $DIR/$SETDT.txt;
    sleep 1;
done
