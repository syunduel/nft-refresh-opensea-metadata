ADDRESS="0xdd510ce28dfd085d9cf58f5402ca6d63985e83c0";
APIKEY=$1;

URL_HEAD="https://deep-index.moralis.io/api/v2/nft/"
URL_TAIL="/metadata/resync?chain=eth&flag=uri&mode=async"

for i in {1..1500} # refleshしたいidの範囲
do
    curl --request GET \
        --url "${URL_HEAD}${ADDRESS}/${i}${URL_TAIL}" \
        --header "Accept: application/json" \
        --header "X-API-Key: ${APIKEY}"
    sleep 1;
done
