#!/bin/bash

{

cat > /root/kthw/certs/kube-scheduler-csr.json << EOF
{
  "CN": "system:kube-scheduler",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "US",
      "L": "Portland",
      "O": "system:kube-scheduler",
      "OU": "Kubernetes The Hard Way",
      "ST": "Oregon"
    }
  ]
}
EOF

cd /root/kthw/certs

cfssl gencert \
  -ca=ca.pem \
  -ca-key=ca-key.pem \
  -config=ca-config.json \
  -profile=kubernetes \
  -hostname="kube-scheduler" \
  /root/kthw/certs/kube-scheduler-csr.json | cfssljson -bare kube-scheduler

cd /root/kthw

}
