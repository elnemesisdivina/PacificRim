# PacificRim
just a bunch fo sritps for demo v7+K8s whitout typing anything:
  run a docker container on jump vm
  run docker container on vSphere K8s pod
  run anything else more complex on TKG on top of vSphere.
  
You can scale, add network policies to check the effct on NSXT, create services, averything you need to make a fancy demo.


# Requirements
vSphere 6.7 or 7.0 and NSX-T 3.0 up and running.

root, admin, administrator@vsphere.local, and administrator@corp.local passwords.

jump vm with docker and Kubectl.

the vSphere Cluster Already prepared for K8s natively and TKG.

Namespaces one for native K8s on vSphere and one for K8s on vSphere TKG.

when runing first script apt install pv will be necesary.


