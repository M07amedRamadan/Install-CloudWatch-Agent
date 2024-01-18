!/bin/bash
sudo systemctl stop amazon-cloudwatch-agent
sudo dpkg -r amazon-cloudwatch-agent
sudo rm -rf /opt/aws/amazon-cloudwatch-agent/
