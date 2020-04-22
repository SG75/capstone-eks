pipeline {
    agent any
    stages {
        stage('Lint HTML & Dockerfile'){
            steps {
                sh 'tidy -q -e blue-green/blue/*.html'
                sh 'tidy -q -e blue-green/green/*.html'
                sh 'hadolint blue-green/blue/Dockerfile'
                sh 'hadolint blue-green/green/Dockerfile'
            }
        }
        stage('Build and Publish Docker Image'){
                    steps {
                        sh 'docker build -t sg75/blue-image -f blue-green/blue/Dockerfile blue-green/blue'
                        sh 'docker build -t sg75/green-image -f blue-green/green/Dockerfile blue-green/green'
                        sh 'docker push sg75/blue-image'
                        sh 'docker push sg75/green-image'
                        sh 'docker rmi -f sg75/green-image'
                        sh 'docker rmi -f sg75/blue-image'
                    }
                }
    }
}
