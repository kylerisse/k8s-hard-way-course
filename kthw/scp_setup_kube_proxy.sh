#!/bin/bash

scp setup_kube_proxy.sh hw-node1:~/
ssh hw-node1 "./setup_kube_proxy.sh"
scp setup_kube_proxy.sh hw-node2:~/
ssh hw-node2 "./setup_kube_proxy.sh"
