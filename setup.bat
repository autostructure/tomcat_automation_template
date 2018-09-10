powershell -Command "(New-Object Net.WebClient).DownloadFile('https://code.fs.usda.gov/raw/automation/tomcat_automation_template/master/hiera.yaml?token=AAAAXJlGXqAbsVL-pBL4XISJmNhPH8hJks5boBPowA%3D%3D', 'hiera.yaml')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://code.fs.usda.gov/raw/automation/tomcat_automation_template/master/Jenkinsfile?token=AAAAXGeaYHVIGXxk__FBQcYnrt9TToBnks5boBQkwA%3D%3D', 'Jenkinsfile')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://code.fs.usda.gov/raw/automation/tomcat_automation_template/master/Dockerfile?token=AAAAXLVGD-NTKU6Tl5IPqjsOas29goJ8ks5boBRNwA%3D%3D', 'Dockerfile')"

md deploy
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://code.fs.usda.gov/automation/tomcat_automation_template/blob/master/deploy/application-deployment.yaml', 'deploy\application-deployment.yaml')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://code.fs.usda.gov/raw/automation/tomcat_automation_template/master/deploy/dev-application-db-secrets.yaml?token=AAAAXDGPddNi85xQ_6Ijcp9FmosnoXsJks5boBS-wA%3D%3D', 'deploy\dev-application-db-secrets.yaml')"

md data
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://code.fs.usda.gov/raw/automation/tomcat_automation_template/master/data/common.yaml?token=AAAAXN8bQl_EIs7T5o2k2OVBSJAeByP7ks5boBTqwA%3D%3D', 'data\common.yaml')"
