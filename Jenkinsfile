pipeline {
  agent {
    docker {
      image 'maven:3.6-alpine'
    }

  }
  stages {
    stage('build') {
      steps {
        sh '''cd ./ssm
mvn -B -DskipTests clean package'''
      }
    }

  }
}