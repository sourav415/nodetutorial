pipeline {
  environment {
    
    dockerImage = ''
  }
  tools {docker "mydocker"}

  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/sourav415/nodetutorial'
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build ":$BUILD_NUMBER"
        }
      }
    }
  }
}
