#!/bin/bash

response=`cat newfile | jq '.routes[0].legs[0].steps[0].html_instructions'  | sed 's/<[^>]*>//g'`

bash ./say.sh "$response"
