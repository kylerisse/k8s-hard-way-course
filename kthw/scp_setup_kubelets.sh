#!/bin/bash

scp setup_kubelet_node1.sh hw-node1:~/
ssh hw-node1 "./setup_kubelet_node1.sh"
scp setup_kubelet_node2.sh hw-node2:~/
ssh hw-node2 "./setup_kubelet_node2.sh"
