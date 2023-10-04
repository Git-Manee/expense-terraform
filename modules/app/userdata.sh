#!/bin/bash

dnf install pytho3.11-pip ansible -y | tee -a /opt/userdata.log
pip3.11 install boto3 botocore | tee -a /opt/userdata.log
ansible-pull -i localhost, -U https://github.com/Git-Manee/infra-ansible main.yml -e role_name=${role_name} | tee -a /opt/userdata.log
