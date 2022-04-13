#!/bin/bash

TOKEN="36bb4b13ce5350ade6824d233291fe45"
NAME="Dominion"
GAMETYPE="Card Drafting, Deck Building"
NUMOFPLAYERS="2-5"
RATING="10"



API="http://localhost:4741"
URL_PATH="/games"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
