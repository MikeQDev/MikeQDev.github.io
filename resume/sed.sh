#!/bin/bash

if [ $# -ne 7 ]; then
  echo "Usage: $0 <your name> <your email> <your linkedin user url> <company name> <file name>"
  exit 1
fi

sed -i "s/YOURNAMEHERE/$1/ ; s/YOURGMAIL@gmail.com/$2/ ; s/YOURLINKEDIN/$3/ ; 0,/COMPANYNAME/s//${4}/ ; 0,/COMPANYNAME/s//${5}/ ; 0,/COMPANYNAME/s//${6}/" "$7"
