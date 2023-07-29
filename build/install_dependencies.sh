#This installs the sfdx cli

echo "Installing Salesforce CLI"
sudo npm install -global sfdx-cli
RUN export JAVA_HOME=$(readlink -f $(which java) | sed "s:/bin/java::")