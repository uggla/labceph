#!/bin/bash

#ansible-playbook  prepareHost.yml -i labhost -u lab3 -k -K
ansible-playbook prepareHost.yml -i labhost
sleep 10

echo "Now you should have labhosts properly configured"
exit 0

