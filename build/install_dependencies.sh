#This installs the sfdx cli

echo "Installing Salesforce CLI"
sudo npm install -global sfdx-cli
echo "export JAVA_HOME=/usr/lib/jvm/java-7-oracle" >>~/.bashrc
echo "export PATH=$JAVA_HOME/bin:$PATH" >>~/.bashrc