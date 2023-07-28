echo "Installing JDK"
apt-add-repository 'deb http://security.debian.org/debian-security stretch/updates main'
apt-get -y update 
apt-get -y upgrade
apt-get install -y openjdk-8-jdk

echo "Install SFDX Scanner"
echo -e 'y/n' | sfdx plugins:install @salesforce/sfdx-scanner

echo "Running SFDX Scanner"
npx sfdx scanner:run --target "**/default/**" --format=junit -o "sfdxScannerAnalysis.xml" -s 1