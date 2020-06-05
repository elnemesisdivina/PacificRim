#!/usr/bin/env bash

########################
#include the magic
########################

. ./magic-demo.sh

clear

DEMO_PROMPT="ubuntu@cli-vm-corp-local:~/scripts$ "

pe "kubectl vsphere login --server k8s.corp.local -u administrator@vsphere.local"
pe "kubectl config get-contexts" #kubectx where is supported
pe "kuberctl config use-context svc"
pe "cat nginx-loadbalancer.yaml"
pe "kubectl apply -f nginx-loadbalancer.yaml"
pe "kubectl get services"
pe "kubectl get pods,svc"
