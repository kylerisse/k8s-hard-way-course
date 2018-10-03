#!/bin/bash

cd /root/kthw/certs/

scp encryption-config.yaml hw-master1:~/
scp encryption-config.yaml hw-master2:~/
scp encryption-config.yaml hw-master3:~/

cd /root/kthw/
