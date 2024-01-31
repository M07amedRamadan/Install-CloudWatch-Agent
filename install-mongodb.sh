#Installing MongoDb and its configuration on ubuntu.
#Download the GnuPG and CURL utility
sudo apt-get install -y gnupg curl
#Import the MongoDB public GPG key to retrieve the installation package.
sudo curl -fsSL https://pgp.mongodb.com/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor
#Create a list file for installation
sudo echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
#Refresh the APT repository to synchronize the local package database.
sudo apt-get update
#Tnstall the latest stable version of MongoDB
sudo apt-get install -y mongodb-org
#Start and Enable the mongoDB
sudo systemctl start mongod
sudo systemctl enable mongod
