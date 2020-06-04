#!/usr/bin/env bash

########################
#include the magic
########################

. ./magic-demo.sh

clear

DEMO_PROMPT="ubuntu@cli-vm-corp-local:~/scripts$ "

pe "kubectl vsphere login --server k8s.corp.local -u vray@vsphere.local"
#pe "kubectl config get-contexts" #kubectx where is supported
#pe "kuberctl config use-context svc"
pe "cat /scripts/deny-all.yaml"
pe "kubectl apply -f /root/scripts/deny-all.yaml"
pe "kubectl get netpol"
pe "kubectl describe netpol deny-all"
pe "kubectl detele networkpolicies deny-all"