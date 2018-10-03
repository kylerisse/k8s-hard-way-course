#!/bin/bash

cd /root/kthw/certs/

scp hw-node1.kubeconfig kube-proxy.kubeconfig hw-node1:~/
scp hw-node2.kubeconfig kube-proxy.kubeconfig hw-node2:~/

scp admin.kubeconfig kube-controller-manager.kubeconfig kube-scheduler.kubeconfig hw-master1:~/
scp admin.kubeconfig kube-controller-manager.kubeconfig kube-scheduler.kubeconfig hw-master2:~/
scp admin.kubeconfig kube-controller-manager.kubeconfig kube-scheduler.kubeconfig hw-master3:~/

cd /root/kthw/
