#!/bin/bash

scp setup_rbac_kublet.sh hw-master2:~/
ssh hw-master2 "./setup_rbac_kublet.sh"
