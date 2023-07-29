echo "Install SFDX Scanner"
echo -e 'y/n' | sfdx plugins:install @salesforce/sfdx-scanner

echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >>~/.bashrc
echo "export PATH=$JAVA_HOME/bin:$PATH" >>~/.bashrc

echo "Running SFDX Scanner"
npx sfdx scanner:run --target "**/default/**" --format=junit -o "sfdxScannerAnalysis.xml" -s 1