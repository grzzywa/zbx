#!/bin/sh

host=$1
res=`curl -s -k -I https://$host | grep HTTP/1.1 | awk {'print $2'} `


if [ -n "${res}" ]; then
        echo "$res"
else
        echo "0"
fi
