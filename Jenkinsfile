pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building Application... (Files are ready)'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing HTML existence...'
                bat 'if not exist index.html exit 1'
            }
        }
        stage('Docker Build & Push') {
            steps {
                bat 'docker build -t themartiantourist/portfolio-cv:latest .'
                bat 'docker push themartiantourist/portfolio-cv:latest'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                bat 'kubectl apply -f deployment.yaml'
                bat 'kubectl apply -f service.yaml'
            }
        }
    }
}