#!/bin/sh

# Shelly Report

R_ID=$(echo "$REPORT" | jq -r '.ID')
R_BATTERY=$(echo "$REPORT" | jq -r '.bat')
R_LUX=$(echo "$REPORT" | jq -r '.lux')
R_MOTION=$(echo "$REPORT" | jq -r '.motion')
R_TAMPER=$(echo "$REPORT" | jq -r '.tamper')
R_TEMP=$(echo "$REPORT" | jq -r '.temp')

DATA="shellyReport,sensor_id=${R_ID} battery=${R_BATTERY},lux=${R_LUX},motion=${R_MOTION},tamper=${R_TAMPER},temperature=${R_TEMP} $(date +%s)"

curl --request POST \
"${INFLUX_HOST}/api/v2/write?bucket=${INFLUX_BUCKET}&precision=s" \
  --header "Authorization: Token ${INFLUX_TOKEN}" \
  --header "Content-Type: text/plain; charset=utf-8" \
  --header "Accept: application/json" \
  --data-binary "${DATA}"
