#!/bin/bash

## We need the current user name to setup the tools
export CURRENT_USER="$(whoami)"

## Update cache and install Git and Ansible
apt-get update
apt-get install -y ansible git

## Installing Ansible and Git
cd /tmp/
git clone https://github.com/wesleyit/debian_workstation_devops.git
cd debian_workstation_datascience

## Running Ansible
echo "Hello! It is time to install some packages.
It will take a long time, go take a coffee (a long one).
We will ask you the root password in a few momments..."

ansible-playbook -i .ansible-hosts debian-workstation-datascience.yml --extra-vars "main_user=$CURRENT_USER"
