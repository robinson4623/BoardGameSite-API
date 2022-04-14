#!/bin/sh

TOKEN="ad959f063c9c433f0487f27cfb9d2eec"

API="http://localhost:4741"
URL_PATH="/games"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
