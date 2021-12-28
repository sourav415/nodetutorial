pipeline {

  
  agent any


  tools {nodejs "nodejs"}

  stages {
    stage('Example') {
      steps {
        sh 'npm install'
        sh 'npm run build'
      }
    }
    stage('Initialize'){
        def dockerHome = tool 'docker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
  
          
        }
    }
  }
}
