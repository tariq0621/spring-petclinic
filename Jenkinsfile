pipeline {
    agent any
    tools { 
        Maven3.9 'Maven3.9' 
        jdk 'java17' 
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn -v'
            }
        }
    }
}