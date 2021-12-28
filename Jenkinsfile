pipeline {
  agent any

  tools {nodejs "nodejs"}
  tools {docker "docker"}

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

         sh 'docker build -t node:1.0 .'
          
        }
    }
  }
}
