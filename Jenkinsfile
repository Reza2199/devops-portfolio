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
                sh 'test -f index.html'
            }
        }
        stage('Docker Build & Push') {
            steps {
                sh 'docker build -t themartiantourist/portfolio-cv:latest .'
                sh 'docker push themartiantourist/portfolio-cv:latest'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
            }
        }
    }
}