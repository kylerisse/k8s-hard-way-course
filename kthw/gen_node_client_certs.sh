#!/bin/bash

{
cat > /root/kthw/certs/hw-node1-csr.json << EOF
{
  "CN": "system:node:hw-node1",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "US",
      "L": "Portland",
      "O": "system:nodes",
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
  -hostname=hw-node1,hw-node1-priv \
  -profile=kubernetes \
  /root/kthw/certs/hw-node1-csr.json | cfssljson -bare hw-node1

cd /root/kthw/

cat > /root/kthw/certs/hw-node2-csr.json << EOF
{
  "CN": "system:node:hw-node2",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "US",
      "L": "Portland",
      "O": "system:nodes",
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
  -hostname=hw-node2,hw-node2-priv \
  -profile=kubernetes \
  /root/kthw/certs/hw-node2-csr.json | cfssljson -bare hw-node2

cd /root/kthw/

}
