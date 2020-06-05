
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

pe "kubectl vsphere login --server k8s.corp.local -u administrator@vsphere.local --insecure-skip-tls-verify --tanzu-kubernetes-cluster-name tkg-cluster --tanzu-kubernetes-cluster-namespace tkg"

#change to context aka TKG namespace

pe "kubectl configure use-context tkg-cluster"

#describe the sit

pe "kubectl describe managedcluster tkg-cluster"

#check is empty

pe "kubectl get pods"

#download yaml of policy nonroot this is the alternative but we have it on the repo

#pe "wget https://github.com/mwest44/pacific/raw/master/authorize-psp-for-gc-service-accounts.yaml"

#apply the run as nonroot policy

"kubectl apply -f allow-runasnonroot-clusterrole.yaml" 

#create the app from github repo of google 
pe "git clone https://github.com/GoogleCloudPlatform/microservices-demo.git demo-app"

#move the app 

pe "cd /demo-app/release"

#check the app to be deployed manifest

pe "cat kubernetes-manifests.yaml"


#apply the manifesto

pe "kubectl apply -f kubernetes-manifests.yaml"

#check everything is being created

pe "kubectl get pods --watch"

#check services

pe "kubectl get services"

pe "kubectl get pods -o wide"

pe "kubectl get all"

#pe "kubectl delete -f kubernetes-manifests.yaml"



