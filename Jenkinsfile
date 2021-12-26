pipeline {
  agent {
    docker {
      image 'maven:3.6-alpine'
    }

  }
  stages {
    stage('cd') {
      steps {
        dir(path: './ssm')
      }
    }

    stage('build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
      }
    }

  }
}