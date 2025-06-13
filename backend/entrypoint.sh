#!/bin/sh

nexusVersion="0.12.3"
nexusFileName="NexusMods.App-$nexusVersion-1.linux-x64.zip"
nexusHash="d181d26196c612063c05b21780cc25e5"

set -e

echo "Container's IP address: `awk 'END{print $1}' /etc/hosts`"

cd /backend

wget -nc "https://github.com/Nexus-Mods/NexusMods.App/releases/download/v$nexusVersion/$nexusFileName"

checksum=$(md5sum NexusMods.App-0.12.3-1.linux-x64.zip)
[ "$checksum" != "$nexusHash  $nexusFileName" ] && exit 1

unzip -n "$nexusFileName" -d NexusMods.App

mkdir -p out
mv NexusMods.App out/

