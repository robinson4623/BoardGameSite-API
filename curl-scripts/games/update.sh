#!/bin/bash

ID="625753b811f873f6e3608fa0"
TOKEN="41bb3821a195de9f69121829a2fad82d"
NAME="Updated Game Name"
GAMETYPE="Worker Placement"
NUMOFPLAYERS="2-5"
RATING="10"


API="http://localhost:4741"
URL_PATH="/games"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "games": {
      "name": "'"${NAME}"'",
      "gameType": "'"${GAMETYPE}"'",
      "numOfPlayers": "'"${NUMOFPLAYERS}"'",
      "rating": "'"${RATING}"'"
    }
  }'

echo
