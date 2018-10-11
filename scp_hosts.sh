#!/bin/bash

scp hosts hw-master1:~/
ssh hw-master1 "sudo cp -v hosts /etc/hosts"
scp hosts hw-master2:~/
ssh hw-master2 "sudo cp -v hosts /etc/hosts"
scp hosts hw-master3:~/
ssh hw-master3 "sudo cp -v hosts /etc/hosts"
scp hosts hw-node1:~/
ssh hw-node1 "sudo cp -v hosts /etc/hosts"
scp hosts hw-node2:~/
ssh hw-node2 "sudo cp -v hosts /etc/hosts"
scp hosts hw-lb:~/
ssh hw-lb "sudo cp -v hosts /etc/hosts"
