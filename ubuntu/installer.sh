#!/bin/bash

## We need the current user name to setup the tools
export CURRENT_USER="$(whoami)"

## Update cache and install Git and Ansible
apt-get update
apt-get install -y ansible git

## Running Ansible
echo "Hello! It is time to install some packages.
It will take a long time, go take a coffee (a long one)."

ansible-playbook -i ubuntu/.ansible-hosts ubuntu/playbook.yml
