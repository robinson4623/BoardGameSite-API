#!/bin/bash

ID="6255a18b469b0574b41efb90"
TOKEN="fcbe8bde222596ca0afc0df7b4290d4e"

API="http://localhost:4741"
URL_PATH="/games"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
