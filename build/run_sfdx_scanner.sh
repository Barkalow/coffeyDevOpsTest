echo "Installing JDK"
sudo apt-get install openjdk-8-jdk

# Setup JAVA_HOME -- useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

echo "Install SFDX Scanner"
echo -e 'y/n' | sfdx plugins:install @salesforce/sfdx-scanner

echo "Running SFDX Scanner"
npx sfdx scanner:run --target "**/default/**" --format=junit -o "sfdxScannerAnalysis.xml" -s 1