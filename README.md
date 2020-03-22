# ANSIBLE UBUNTU DATASCIENCE
This is a repository to install a stack on Ubuntu enviroment for data scientists.

## HOW TO
1. Install ansible: `apt-get install ansible`.
2. Clone this repository.
3. Execute `ansible-playbook -K -i hosts/ansible-hosts playbook.yml`.

## INSTALLED PACKAGES
The follow packages will be installed after run ansible:
- DBeaver
- Docker
- Git
- Python
- Python3
- Pip packages: `beautifulsoup4, boto3, flask, jupyterlab, keras, matplotlib, numpy, pandas, requests, scipy, scikit-learn, seaborn, tensorflow`
- R
- RStudio
- VSCode

## INSPIRATION
This repository is strongly inspired in [this repository](https://github.com/wesleyit/debian_workstation_devops) created by [Wesley](https://github.com/wesleyit)
