#!/bin/bash

sudo apt-get -y install ansible
sleep 10

ansible-playbook prepareHost.yml -i /home/lab3/labhost
sleep 10

echo "Now you should have labhost properly configured"
exit 0

