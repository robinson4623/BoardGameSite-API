#!/bin/sh

TOKEN="36bb4b13ce5350ade6824d233291fe45"

API="http://localhost:4741"
URL_PATH="/games"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
