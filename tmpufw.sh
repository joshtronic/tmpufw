#!/bin/bash

if [ $# == 0 ]
then
	echo 'Usage: ./tmpufw.sh [rule]'
	exit 2
else
	rule=$(printf ' %s' "$@")

	ufw $rule
	echo 'ufw delete $rule' | at NEXT MONTH
fi 
