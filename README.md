# kube-dns
kube-dns final image based on kube-dns v1.8
(gcr.io/google_containers/kubedns-amd64:1.8) using busybox images 


## Info
this kube2sky are using parameter from Environment Variable:

- **IP** : IP of Kube API Server
- **APIDOMAIN** : Domain name of Kube API Server
- **DOMAIN** : Kubernetes cluster domain (e.g. **cluster.local.**)
- **DNSPORT** : DNS Port (tied up with dnsmasq setting at yaml file, e.g.: 10053 )
- **KUBECFG** : kubernetes config location
- **VERBOSE** : set the verbosity level (optional, set for more logging
output)

the reason of using IP and APIDOMAIN to solve first run of SkyDNS to resolving APISERVER by domain name

## USAGE

```bash
docker run -e IP=apiserverIP -e APIDOMAIN=apiserverDomain -e
DOMAIN=cluster.local. -e DNSPORT=10053 -e
 -e KUBECFG=/etc/kubeconfig.cfg kube-dns
```
