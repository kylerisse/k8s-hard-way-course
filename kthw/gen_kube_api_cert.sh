#!/bin/bash

CERT_HOSTNAME=10.32.0.1,<controller node 1 Private IP>,<controller node 1 hostname>,<controller node 2 Private IP>,<controller node 2 hostname>,<API load balancer Private IP>,<API load balancer hostname>,127.0.0.1,localhost,kubernetes.default

{

cat > /root/kthw/certs/kubernetes-csr.json << EOF
{
  "CN": "kubernetes",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "US",
      "L": "Portland",
      "O": "Kubernetes",
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
  -hostname=10.32.0.1,hw-master1,hw-master1-priv,hw-master2,hw-master2-priv,hw-master3,hw-master3-priv,hw-lb,hw-lb-priv,127.0.0.1,localhost,kubernetes.default \
  -profile=kubernetes \
  /root/kthw/certs/kubernetes-csr.json | cfssljson -bare kubernetes

cd /root/kthw/

}
