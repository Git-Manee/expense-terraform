#!/bin/bash

dnf install pytho3.11-pip -y
pip3.11 install boto3 botocore
ansible-pull -i localhost, -U https://github.com/Git-Manee/infra-ansible main.yml -e role_name=${role_name}
