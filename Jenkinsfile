pipeline {
  environment {
    
    dockerImage = ''
  }
  tools {dockerTool "docker"}

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
          sh 'docker build -t node:10'
        }
      }
    }
  }
}
