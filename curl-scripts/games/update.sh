#!/bin/bash

ID="6255aee5dbed9078f98c8610"
TOKEN="36bb4b13ce5350ade6824d233291fe45"
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
