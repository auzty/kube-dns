#!/bin/sh
echo "$IP $APIDOMAIN" >> /etc/hosts

if [ -z "$VERBOSE" ]; then
  echo "Verbose is Empty"
  /kube-dns --dns-port $DNSPORT --domain $DOMAIN --kubecfg-file $KUBECFG
else
  echo "Verbose is $VERBOSE"
  /kube-dns --dns-port $DNSPORT --domain $DOMAIN --kubecfg-file $KUBECFG --v $VERBOSE
fi
