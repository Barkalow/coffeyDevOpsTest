echo "Installing JDK"
sudo apt-get install software-properties-common
sudo apt-get update
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jre

echo "Install SFDX Scanner"
echo -e 'y/n' | sfdx plugins:install @salesforce/sfdx-scanner

echo "Running SFDX Scanner"
npx sfdx scanner:run --target "**/default/**" --format=junit -o "sfdxScannerAnalysis.xml" -s 1