#!/bin/bash

## We need the current user name to setup the tools
export CURRENT_USER="$(whoami)"

## Update cache and install Git and Ansible
apt-get update
apt-get install -y ansible git

## Installing Ansible and Git
cd /tmp/
git clone https://github.com/natansilva/ansible_datascience.git
cd ansible_datascience

## Running Ansible
echo "Hello! It is time to install some packages.
It will take a long time, go take a coffee (a long one)."

ansible-playbook -i debian/.ansible-hosts debian/playbook.yml
