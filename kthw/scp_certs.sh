#!/bin/bash

cd /root/kthw/certs/

scp ca.pem hw-node1-key.pem hw-node1.pem hw-node1:~/
scp ca.pem hw-node2-key.pem hw-node2.pem hw-node2:~/
scp ca.pem ca-key.pem kubernetes-key.pem kubernetes.pem \
    service-account-key.pem service-account.pem hw-master1:~/
scp ca.pem ca-key.pem kubernetes-key.pem kubernetes.pem \
    service-account-key.pem service-account.pem hw-master2:~/
scp ca.pem ca-key.pem kubernetes-key.pem kubernetes.pem \
    service-account-key.pem service-account.pem hw-master3:~/

cd /root/kthw/
