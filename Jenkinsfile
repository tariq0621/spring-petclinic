pipeline {
    agent any
    tools { 
        maven3.9 'Maven3.9' 
        jdk 'jdk17' 
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn -v'
            }
        }
    }
}