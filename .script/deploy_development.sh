#!/usr/bin/env bash

curl -s https://raw.githubusercontent.com/BigWigsMods/packager/master/release.sh | bash -s -- -g 9.0.1

curlfiles=""
for file in "/home/travis/build/iMintty/wow-sub-popup-blocker/.release"/*
do
    if [ ${file: -4} == ".zip" ]
    then
        curlfiles="$curlfiles -F $(basename $file)=@$file"
    fi
done

curl $curlfiles $DISCORD_WEBHOOK
echo $curlfiles