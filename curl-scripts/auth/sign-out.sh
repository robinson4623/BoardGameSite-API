#!/bin/bash

TOKEN="fcbe8bde222596ca0afc0df7b4290d4e"

API="http://localhost:4741"
URL_PATH="/sign-out"

curl "${API}${URL_PATH}/" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
