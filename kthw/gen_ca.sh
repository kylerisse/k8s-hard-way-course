#!/bin/bash
{

mkdir /root/kthw/certs

cat > /root/kthw/certs/ca-config.json << EOF
{
  "signing": {
    "default": {
      "expiry": "8760h"
    },
    "profiles": {
      "kubernetes": {
        "usages": ["signing", "key encipherment", "server auth", "client auth"],
        "expiry": "8760h"
      }
    }
  }
}
EOF

cat > /root/kthw/certs/ca-csr.json << EOF
{
  "CN": "Kubernetes",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "US",
      "L": "Portland",
      "O": "Kubernetes",
      "OU": "CA",
      "ST": "Oregon"
    }
  ]
}
EOF

cd /root/kthw/certs/

cfssl gencert -initca /root/kthw/certs/ca-csr.json | cfssljson -bare ca

cd /root/kthw

}

