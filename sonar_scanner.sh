echo Installing Sonar Scanner CLI
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip
unzip sonar-scanner-cli-4.6.2.2472-linux.zip
export PATH=$(pwd)/sonar-scanner-cli-4.6.2.2472-linux/bin:$PATH

echo Sonar Scanner installed!
echo Running Sonar Scanner

# We add here the command that runs Sonar Scanner
sonar-scanner \
  -Dsonar.projectKey=edgar-mora-sast-lab-1 \
  -Dsonar.sources=. \
  -Dsonar.host.url=https://sq.semanticsecurity.org \
  -Dsonar.login=$SONARCUBE_LOGIN

echo Done!
