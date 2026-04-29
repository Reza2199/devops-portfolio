pipeline {
    agent any
    stages {
        stage('Code Pull') {
            steps {
                checkout scm
            }
        }
        stage('Test') {
            steps {
                echo 'Testing HTML existence...'
                bat 'if not exist index.html exit 1'
            }
        }
        stage('Image Build') {
            steps {
                bat 'docker build -t themartiantourist/portfolio-cv:latest .'
            }
        }
        stage('Push Image') {
            steps {
                bat 'docker push themartiantourist/portfolio-cv:latest'
            }
        }
        stage('Deploy') {
            steps {
                bat 'kubectl apply -f deployment.yaml'
                bat 'kubectl apply -f service.yaml'
            }
        }
    }
}