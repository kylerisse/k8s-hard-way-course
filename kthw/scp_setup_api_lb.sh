#!/bin/bash

scp setup_api_lb.sh hw-lb:~/
ssh hw-lb "./setup_api_lb.sh"
