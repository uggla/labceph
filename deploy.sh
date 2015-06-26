#!/bin/bash

ansible-playbook deployCephVM.yml -i ansiblehost
sleep 10s
ansible-playbook configureOsd.yml -i ansiblehost
sleep 10s
ansible-playbook installCeph.yml -i ansiblehost
