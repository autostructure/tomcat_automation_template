powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/autostructure/tomcat_automation_template/master/hiera.yaml', 'hiera.yaml')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/autostructure/tomcat_automation_template/master/Jenkinsfile', 'Jenkinsfile')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/autostructure/tomcat_automation_template/master/Dockerfile', 'Dockerfile')"

md deploy
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/autostructure/tomcat_automation_template/master/deploy/application-deployment.yaml', 'deploy\application-deployment.yaml')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/autostructure/tomcat_automation_template/master/deploy/dev-application-db-secrets.yaml', 'deploy\dev-application-db-secrets.yaml')"

md data
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/autostructure/tomcat_automation_template/master/data/common.yaml', 'data\common.yaml')"
