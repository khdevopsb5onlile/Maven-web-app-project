node
{

   echo "git branch name: ${env.BRANCH_NAME}"
   echo "build number is: ${env.BUILD_NUMBER}"
   echo "node name is: ${env.NODE_NAME}"


   // /var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven3.9.9/bin
   def mavenHome=tool name: "maven3.9.9"
    try
    {

  stage('git checkout')
  {
    notifyBuild('STARTED')
    git 'https://github.com/khdevopsb5onlile/Maven-web-app-project.git'
  } 

    stage('COMPILE')
  {
    sh "${mavenHome}/bin/mvn clean compile"
  }

  stage('Build')
  {
    sh "${mavenHome}/bin/mvn clean package"
  }

    stage('SQ Report')
  {
    sh "${mavenHome}/bin/mvn sonar:sonar"
  }

      stage('Upload Artifact')
  {

    sh "${mavenHome}/bin/mvn clean deploy"
  }

    stage('Deploy to Tomcat') 
    {
      
      sh """

      curl -u mahesh:password \
--upload-file /var/lib/jenkins/workspace/jio-scripted-way-PL/target/maven-web-application.war \
"http://3.108.237.200:8080/manager/text/deploy?path=/maven-web-application&update=true"
          
        """
    }

    }  //try ending

    catch (e) {
   
       currentBuild.result = "FAILED"

  } finally {
    // Success or failure, always send notifications
    notifyBuild(currentBuild.result)
  }
  
} // node ending


def notifyBuild(String buildStatus = 'STARTED') {
  // build status of null means successful
  buildStatus =  buildStatus ?: 'SUCCESS'

  // Default values
  def colorName = 'RED'
  def colorCode = '#FF0000'
  def subject = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
  def summary = "${subject} (${env.BUILD_URL})"

  // Override default values based on build status
  if (buildStatus == 'STARTED') {
    color = 'YELLOW'
    colorCode = '#FFFF00'
  } else if (buildStatus == 'SUCCESS') {
    color = 'GREEN'
    colorCode = '#00FF00'
  } else {
    color = 'RED'
    colorCode = '#FF0000'
  }

  // Send notifications
  slackSend (color: colorCode, message: summary, channel: '#jio-devteam')
  slackSend (color: colorCode, message: summary, channel: '#jio-devops')
}
