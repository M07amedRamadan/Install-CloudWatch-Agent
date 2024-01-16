# Install-CloudWatch-Agent
This repo contains a script that can run at the user data terminal while creating an EC2 instance at AWS to install docker and AWS CLI and install CloudWatch agent to send Logs to the Cloudwatch service.
You need to create an IAM role with the following policies:
 - SSM policy so you can connect to instances from the system manager.
 - CloudWatch Full access.
 - EC2 Read Only Access so can use the instance ID and The name in the Configuration file.
Don't forget to provide the script file the execute permission so you can run the script. 
