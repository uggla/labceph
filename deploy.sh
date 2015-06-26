#!/bin/bash

ansible-playbook deployCephVM.yml -i ansiblehost
sleep 10s
ansible-playbook configureOsd.yml -i ansiblehost
sleep 10s
ansible-playbook installCeph.yml -i ansiblehost
sleep 10s
ansible-playbook updateKeyringRight.yml -i ansiblehost

echo "Now you should have a working ceph cluster"
exit 0
