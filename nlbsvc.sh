#!/usr/bin/env bash

########################
include the magic
########################

. ./magic-demo.sh

clear

DEMO_PROMPT="ubuntu@cli-vm-corp-local:~/scripts$ "

pe "kubectl vsphere login --server 192.168.124.1 -u vray@vsphere.local"
pe "kubectl config get-contexts" #kubectx where is supported
pe "kuberctl config use-context satdemo"
pe "cat /scripts/nginx-loadbalancer.yaml"
pe "kubectl apply -f /root/scripts/ngnix-loadbalancer.yaml"
pe "kubectl get services"
pe "kubectl get pods,svc"
