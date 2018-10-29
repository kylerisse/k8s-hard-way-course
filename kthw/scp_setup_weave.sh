#!/bin/bash

scp setup_weave.sh hw-master1:~/
ssh hw-master1 "./setup_weave.sh"
