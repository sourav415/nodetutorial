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
  }
}
