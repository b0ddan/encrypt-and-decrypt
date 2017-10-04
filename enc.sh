#!/bin/bash
#
#Enkelt script för att kryptera en fil med chiper aes-256-cbc
#
#Erik Bodell - 2017
#


TEXT=$1
FNAME=$2




echo "$TEXT" > $FNAME


cat $FNAME | openssl enc -aes-256-cbc -salt -in $FNAME -out $FNAME.enc
ret=$?
rm $FNAME
echo "Krypterade filen till $FNAME.enc" 
