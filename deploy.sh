#!/bin/bash

ansible-playbook deployCephVM.yml -i vmlist
echo "Now you should have a working ceph cluster"
exit 0
