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
               tools {docker "docker"}               
               sh 'docker build -t node:1.0 .' 
                }
          
          }

  
          
        }
    }
  }
}
