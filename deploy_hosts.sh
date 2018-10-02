#!/bin/bash

for i in `cat hosts | grep hw- | grep -v priv | cut -d " " -f 1`; do 
	scp -o StrictHostKeyChecking=no hosts user@$i:/tmp/hosts
	ssh -t -o StrictHostKeyChecking=no user@$i "sudo cp /tmp/hosts /etc/hosts"
done
