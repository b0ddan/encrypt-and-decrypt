#!/bin/bash
#
#Enkelt script för att decryptera en fil med cipher aes-256.cbc
#
#Erik Bodell 2017
#

FNAME=$1
FNAME2=$2


cat $FNAME | openssl enc -d -aes-256-cbc -in $FNAME
ret=$?

