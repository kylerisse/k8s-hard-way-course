#!/bin/bash

scp setup_nginx.sh hw-master1:~/
ssh hw-master1 "./setup_nginx.sh"
scp setup_nginx.sh hw-master2:~/
ssh hw-master2 "./setup_nginx.sh"
scp setup_nginx.sh hw-master3:~/
ssh hw-master3 "./setup_nginx.sh"

