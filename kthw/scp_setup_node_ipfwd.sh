#!/bin/bash

scp setup_node_ipfwd.sh hw-node1:~/
ssh hw-node1 "./setup_node_ipfwd.sh"
scp setup_node_ipfwd.sh hw-node2:~/
ssh hw-node2 "./setup_node_ipfwd.sh"
