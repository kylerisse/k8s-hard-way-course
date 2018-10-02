#!/bin/bash

{

cat > /root/kthw/certs/admin-csr.json << EOF
{
  "CN": "admin",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "US",
      "L": "Portland",
      "O": "system:masters",
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
  -hostname="admin" \
  /root/kthw/certs/admin-csr.json | cfssljson -bare admin

cd /root/kthw

}

