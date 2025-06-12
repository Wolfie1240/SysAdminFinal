# System Administration Final Project

**Background**  
  
The provisioning will be done with Terraform. The terraform commands will connect to your AWS account and create a new EC2 instance that is capable of hosting a MC server.  
  
The configuration will be done with Ansible. The playbook will connect to the instance, install dependencies and the server, and finally set up systemctl to automatically start the service.   
  

**Requirements**  
  
- Installed the following tools: Ansible (core 2.18.6), Terraform (v1.12.1), AWS CLI (2.27.25) 
- Copied credentials from AWS details page and paste them into a new file at `~/.aws/credentials`
- Created an AWS key pair and saved private key to local device.

**Usage**  

- Clone the repository to your local system  
- Allow execution of a script with `chmod +x main.sh`  
- `cd terraform`
- `terraform init`
- `terraform apply`  Enter 'yes'
- Copy the IPv4 address that is pasted to console
- `cd ../`
- `./main.sh` Follow the prompts and enter the needed information.
- `ansible-playbook -i ansible/inventory/hosts.ini ansible/playbook.yml`
  
**Connecting to Minecraft Server**  

After running the ansible playbook wait around a minute for the instance to be configured.  
- Open your Minecraft launcher and go to Multiplayer.  
- Click on 'Add Server' and paste in the IPv4 address.
- Double click on the new server to join.



  *Sources*
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build
https://docs.ansible.com/ansible/latest/collections/amazon/aws/ec2_instance_module.html
https://www.geeksforgeeks.org/basic-ansible-commands/
