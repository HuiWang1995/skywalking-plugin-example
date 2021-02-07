#!/usr/bin/env sh

PRG="$0"
PRGDIR=`dirname "$PRG"`
OAP_EXE=stopOapService.sh
WEBAPP_EXE=stopWebappService.sh

"$PRGDIR"/"$OAP_EXE"

"$PRGDIR"/"$WEBAPP_EXE"
