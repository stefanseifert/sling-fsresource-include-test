#!/bin/sh

error_exit()
{
  echo ""
  echo "$1" 1>&2
  echo ""
  read -n1 -r -p "Press any key to continue..." key
  exit 1
}


mvn clean install eclipse:eclipse

if [ "$?" -ne "0" ]; then
  error_exit "*** Build artifacts FAILED ***"
fi

cd launchpad
mvn slingstart:start
