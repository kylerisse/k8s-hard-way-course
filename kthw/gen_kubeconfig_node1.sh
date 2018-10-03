#!/bin/bash

cd /root/kthw/certs
  kubectl config set-cluster kubernetes-the-hard-way \
    --certificate-authority=ca.pem \
    --embed-certs=true \
    --server=https://hw-lb-priv:6443 \
    --kubeconfig=hw-node1.kubeconfig

  kubectl config set-credentials system:node:hw-node1 \
    --client-certificate=hw-node1.pem \
    --client-key=hw-node1-key.pem \
    --embed-certs=true \
    --kubeconfig=hw-node1.kubeconfig

  kubectl config set-context default \
    --cluster=kubernetes-the-hard-way \
    --user=system:node:hw-node1 \
    --kubeconfig=hw-node1.kubeconfig

  kubectl config use-context default --kubeconfig=hw-node1.kubeconfig

  kubectl config set-cluster kubernetes-the-hard-way \
    --certificate-authority=ca.pem \
    --embed-certs=true \
    --server=https://hw-lb-priv:6443 \
    --kubeconfig=kube-proxy.kubeconfig

  kubectl config set-credentials system:kube-proxy \
    --client-certificate=kube-proxy.pem \
    --client-key=kube-proxy-key.pem \
    --embed-certs=true \
    --kubeconfig=kube-proxy.kubeconfig

  kubectl config set-context default \
    --cluster=kubernetes-the-hard-way \
    --user=system:kube-proxy \
    --kubeconfig=kube-proxy.kubeconfig

  kubectl config use-context default --kubeconfig=kube-proxy.kubeconfig
cd /root/kthw
