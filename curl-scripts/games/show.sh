#!/bin/sh

ID="625586a9e730d56fdc8db573"
TOKEN="b938d969bb8fd228b9a54deb269a38e2"


API="http://localhost:4741"
URL_PATH="/games"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
