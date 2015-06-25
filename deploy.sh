#!/bin/bash

ansible-playbook deployCephVM.yml -i ansiblehost
ansible-playbook configureOsd.yml -i ansiblehost
