#!/bin/sh

gpg_fingerprint="EE6D536CF7DC86E2D7D56F59A178AC6C6238F52E"

key_servers="
ha.pool.sks-keyservers.net
pgp.mit.edu
keyserver.ubuntu.com
"

for key_server in $key_servers ; do
    $sh_c "apt-key adv --keyserver hkp://${key_server}:80 --recv-keys ${gpg_fingerprint}" && break
done
