#!/bin/bash

echo "Enter full path of key file (ex. ~/.ssh/key.pem)"
read key_path

echo "Enter Public IPv4 address of instance"
read IP

mkdir -p ansible/inventory

cat > ansible/inventory/hosts.ini <<EOF
[web]
$IP ansible_user=ec2-user ansible_ssh_private_key_file=$key_path
EOF
