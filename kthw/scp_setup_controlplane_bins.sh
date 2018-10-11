#!/bin/bash

scp setup_controlplane_bins.sh hw-master1:~/
ssh hw-master1 "./setup_controlplane_bins.sh"
scp setup_controlplane_bins.sh hw-master2:~/
ssh hw-master2 "./setup_controlplane_bins.sh"
scp setup_controlplane_bins.sh hw-master3:~/
ssh hw-master3 "./setup_controlplane_bins.sh"
