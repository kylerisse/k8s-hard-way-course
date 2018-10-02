#!/bin/bash

{

cat > /root/kthw/certs/kube-controller-manager-csr.json << EOF
{
  "CN": "system:kube-controller-manager",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "US",
      "L": "Portland",
      "O": "system:kube-controller-manager",
      "OU": "Kubernetes The Hard Way",
      "ST": "Oregon"
    }
  ]
}
EOF

cd /root/kthw/certs/

cfssl gencert \
  -ca=ca.pem \
  -ca-key=ca-key.pem \
  -config=ca-config.json \
  -profile=kubernetes \
  -hostname="controllerman" \
  /root/kthw/certs/kube-controller-manager-csr.json | cfssljson -bare kube-controller-manager

cd /root/kthw
}
