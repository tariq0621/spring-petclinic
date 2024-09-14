pipeline {
    agent any
    stages {
        stage("Git Checkout") {
            steps {
                git branch: 'main', credentialsId: 'githubtoken', url: 'https://github.com/tariq0621/spring-petclinic.git'
            }
        }
        stage('Build Stage') {
            environment { 
                JAVA_HOME = "/usr/lib/jvm/java-17-openjdk-amd64"
                PATH = "${JAVA_HOME}/bin:/opt/apache-maven-3.9.9/bin:${env.PATH}"
            }
            steps {
                sh "
                    mvn clean package
                   "
            }
        }
        stage('Deploy Stage') {
            steps {
                sshagent(credentials: ['sshid']) {
                    
                    sh '''
                        ssh -o StrictHostKeyChecking=no ubuntu@172.31.42.161 
                        docker build -t spc .
                        docker run -d --name spccontainer -p 8000:8080 spc
                        
                    '''
                }
            }
        }
    }
}