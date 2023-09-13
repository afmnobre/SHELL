#!/usr/bin/env bash
#
#
listagem=$(ls)

echo "$listagem"

listagem=`ls -la`

echo "$listagem"

(ls ; ls ; ls)
