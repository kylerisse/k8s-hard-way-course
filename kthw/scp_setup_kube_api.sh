#!/bin/bash

scp setup_kube_api.sh hw-master1:~/
ssh hw-master1 "./setup_kube_api.sh"
scp setup_kube_api.sh hw-master2:~/
ssh hw-master2 "./setup_kube_api.sh"
scp setup_kube_api.sh hw-master3:~/
ssh hw-master3 "./setup_kube_api.sh"

