
#!/usr/bin/env bash

########################
#include the magic
########################

. ./magic-demo.sh

clear

DEMO_PROMPT="ubuntu@cli-vm-corp-local:~/scripts$ "

#login in native namespace
#pe "kubectl vsphere login --server k8s.corp.local --vsphere-username administrator@corp.local --insecure-skip-tls-verify"

#login in TKG cluster 

pe "kubectl vsphere login --server k8s.corp.local --vsphere-username administrator@corp.local --insecure-skip-tls-verify"

#change to context aka TKG namespace

pe "kubectl configure use-context tkg-cluster"

#apply the run as nonroot

#describe the sit

pe "kubectl describe managedcluster tkg-cluster"

#login in the cluster TKG itself

pe "kubectl vsphere login -u administrator@corp.local --server=k8s.corp.local --tanzu-kubernetes-cluster-namespace tkg --tanzu-kubernetes-cluster-name tkg-cluster --insecure-skip-tls-verify"

#change to context internal to the TKG cluster 

pe "kubectl configure use-context tkg-cluster"

#check is empty
pe "kubectl get pods"

#create the shit
pe "kubectl apply -f demo-app.yaml"
#check everything is being created
pe "kubectl get pods --watch"
#check services

pe "kubectl get services"

pe "kubectl get pods -o wide"





