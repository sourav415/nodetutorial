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
    stage('Docker build')
    {
        steps{
          
          script{
            
          
               def dockerHome = tool 'myDocker'
               env.PATH = "${dockerHome}/bin:${env.PATH}"
               sh 'docker build -t node:1.0 .' 
                }
          
          }

         sh 'docker build -t node:1.0 .'
          
        }
    }
  }
}
