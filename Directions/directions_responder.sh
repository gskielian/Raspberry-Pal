#!/bin/bash

response=`cat googlemaps_api_response.json \
| jq '.routes[0].legs[0].steps[0].html_instructions' \
| sed 's/<[^>]*>//g'` #removes html tags

bash ./say.sh "$response" #returns clear version of directions

#Todo: Rephrase the response from the Google Maps API
#       to sound less like a GPS Navigation robot
