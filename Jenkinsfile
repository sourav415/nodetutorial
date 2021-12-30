pipeline {
  environment {
    
    dockerImage = ''
    DOCKERHUB_CREDENTIALS=credentials('dockerhub-cred')
    
  }
  tools {dockerTool "mydocker"}

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
          sh 'docker build -t node:10 .'
        }
      }
    }
    stage('dockerhub login'){
      steps{
         
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR'
        
        
      }
    }
  }
}
