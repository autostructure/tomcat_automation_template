# CI / CD conversion project

## Pre-requirement
* Application must be using Maven to build the project.
* You must have a Docker image repository already created. If you don't have one put in a service not ticket to have two created.
  * Every repository start with your team name. Examples: FIA or VIPR
  * One repository ends with your project name with the _development suffix added. For example: if your project is called tree counter the first repository will be: tree_counter_development
  * The second repository will not have a suffix. For the tree counter application the repo will just be: tree_counter

   > Example: You work for the CFO and you have an application called VIPR. You will request two repositories be created:
   > * cfo/vipr_development
   > * cfo/vipr
* For each port your application uses you must request a NodePort. Put in a ticket to receive your NodePort(s). This is the port the reverse proxy will use to serve up your application content. It will be assigned to you.

## Instructions:

1. Download or copy the setup.bat file to your project.

2. Execute the setup script.

3. In common.yaml add your service configurations for your tomcat server
   * The first key 'docker_tomcat_module::environment_vars' is an array of environment variables. These variables are used to configure the container differently in each application tier. Only add the environment variable names here. NOT the values.
   * Fill out the tomcat configurations as needed. Each entry is a hash. An example using environment variables is included in the context resources section.
   * The last entry are the deployment WAR files.

3. Go into the Jenkinsfile and change the Docker repository path to match their project.
   - It will be docker.fs.usda.gov/\<org>/\<project>_development in the container build section.
   - Using our previous example it would be docker.fs.usda.gov/cfo/vipr

4. Create Kubernetes files: (This likely requires help)
   * A secrets yaml file with an entry for each environment variable - in each tier (And deploy them)
   * A deployment file which contains a deployment and service object. The service file needs to be edited to reflect the assigned NodePort.
