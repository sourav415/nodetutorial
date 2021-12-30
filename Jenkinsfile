pipeline {
  environment {
    
    dockerImage = ''
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
          sh 'docker run -d -p 8000:8000 --name reactapp node:10'
        }
      }
    }
  }
}
