pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t demoapp:1.0 .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker rm -f demoapp_container || true
                docker run --name demoapp_container demoapp:1.0
                '''
            }
        }
    }
}
