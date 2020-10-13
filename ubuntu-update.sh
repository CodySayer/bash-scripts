#!/bin/bash

RED='\033[0;31m'
BLUE='\033[0;36m'
GREEN='\e[32m'
NC='\033[0m'
set -m

# TODO: #1 break out each update into a function (see https://github.com/CodySayer/net-provisioning/blob/ansible/Kickstart%20Install/service_setup.sh)

echo
echo -e [${BLUE}STARTING UPDATES{NC}]
    echo
    echo -e --${BLUE}updating APT repos${NC}
    sleep 2
    echo
    sudo apt-get update
    sleep 2
    echo
    echo -e --${GREEN}repo update complete${NC}
    echo
    echo -e --${BLUE}updating APT packages${NC}
    sleep 2
    echo
    sudo apt-get upgrade
    sleep 2
    echo
    echo -e --${GREEN}package update complete${NC}
    echo
    echo -e --${BLUE}updating SNAP packages${NC}
    sleep 2
    echo
    sudo snap refresh
    sleep 2
    echo
    echo -e --${GREEN}SNAP update complete${NC}
