#!/bin/bash
PRODUCT_ID=83202;
while true
do
  RESULT=`curl -s 'https://servicos-nos.nos.pt/api/EcommerceServices/CheckResumeStock?productIds='$PRODUCT_ID -X POST -H 'Content-Length: 0' | jq -r | jq '.[0].value'`;
  echo "---$(date +%T)---";
  echo $RESULT;
  if [ $RESULT != '0'  ]
  then
   echo "DISPONÍIIIIIIIIIIIIIIIIIIIIIIIIVEL!!";
   exit 0;
  fi
  sleep 15;
done