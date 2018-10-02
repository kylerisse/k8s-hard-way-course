#!/bin/bash

{

cat > /root/kthw/certs/kube-proxy-csr.json << EOF
{
  "CN": "system:kube-proxy",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "US",
      "L": "Portland",
      "O": "system:node-proxier",
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
  -hostname="kube-proxy" \
  /root/kthw/certs/kube-proxy-csr.json | cfssljson -bare kube-proxy

cd /root/kthw/
}
