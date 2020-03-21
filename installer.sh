#!/bin/bash

## Update cache and install Git and Ansible
apt-get update
apt-get install -y ansible git

## Install all packages with Ansible
ansible-playbook -i ansible-hosts playbook.yml
