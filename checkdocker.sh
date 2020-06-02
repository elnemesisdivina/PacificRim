#!/usr/bin/env bash

########################
include the magic
########################

. ./magic-demo.sh

clear

DEMO_PROMPT="ubuntu@cli-vm-corp-local:~/scripts$ "

pe "which docker"
pe "systemctl status docker"
pe "docker version"
