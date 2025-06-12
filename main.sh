#!/bin/bash

echo "Enter full path of key file (ex. ~/.ssh/key.pem)"
read key_path

IP=$(terraform -chdir=terraform output -raw instance_ip)

cat > ansible/inventory/hosts.ini <<EOF
[web]
$IP ansible_user=ec2-user ansible_ssh_private_key_file=$key_path
EOF