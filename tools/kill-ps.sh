#!/bin/sh

if [ $# -eq 0 ]; then
    printf "Usage: . kill-ps.sh process-name\n"
else
    status="$(ps aux | grep $1 | grep -v grep)"
    echo $status
    if [ -z "${status}" ]; then
        printf "No process found!\n"
    else
        printf "\nThe above processes are going to be killed. "

        read -r -p "Are you sure? [y/N]" response
        if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
        then
          ps aux | grep $1| grep -v grep | awk '{ print "kill -9", $2 }' | sh
        fi
    fi
fi
