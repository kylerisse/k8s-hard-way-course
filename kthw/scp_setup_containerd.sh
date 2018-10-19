#!/bin/bash

scp setup_containerd.sh hw-node1:~/
ssh hw-node1 "./setup_containerd.sh"
scp setup_containerd.sh hw-node2:~/
ssh hw-node2 "./setup_containerd.sh"
