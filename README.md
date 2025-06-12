# System Administration Final Project

**Background**  
  
The provisioning will be done with Terraform. The terraform commands will connect to your AWS account and create a new EC2 instance that is capable of hosting a MC server.  
  
The configuration will be done with Ansible. The playbook will connect to the instance, install dependencies and the server, and finally set up systemctl to automatically start the service.   
  

**Requirements**  
  
- Installed tools: Ansible, Terraform, AWS CLI  
- Copy credentials from AWS details page and paste them into a new file at `~/.aws/credentials`

**Use**  

- Clone the repository to your local system  
- Allow execution of a script with `chmod +x main.sh`  
- Execute the script and follow prompts when given: `./main.sh`  
  
**Connecting to Minecraft Server**  

After running the main script wait approximately 3 minutes for the instance to be configured.  
- Open your Minecraft launcher and go to Multiplayer.  
- Click on 'Add Server' and paste in the IPv4 address that was printed by `main.sh`  
- Double click on the new server to join.  
