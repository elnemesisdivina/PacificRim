#!/usr/bin/env bash

########################
#include the magic
########################

. ./magic-demo.sh

clear

DEMO_PROMPT="ubuntu@cli-vm-corp-local:~/scripts$ "

pe "docker images"
pe "docker pull nginx:1.16"
pe "docker images"
pe "docker run -d -p 8080:80 nginx:1.16"
pe "docker ps"
pe "docker rm -f $(docker ps -q)"
