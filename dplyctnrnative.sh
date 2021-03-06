#!/usr/bin/env bash

########################
#include the magic
########################

. ./magic-demo.sh

clear

DEMO_PROMPT="ubuntu@cli-vm-corp-local:~/scripts$ "

pe "kubectl vsphere login --server k8s.corp.local -u administrator@vsphere.local"
pe "kubectl config get-contexts" #kubectx where is supported
pe "kubectl config use-context svc"#when use contexts check if the contexts corresponds to the login so it could be svc-x.x.x.x
pe "cat nginx-deployment.yaml"
pe "kubectl apply -f nginx-deployment.yaml"
pe "kubectl get deployment"
pe "kubectl get pods"
pe "kubectl describe deployment nginx-deployment"

