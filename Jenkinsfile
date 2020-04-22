pipeline {
    agent any
    stages {
        stage('Lint HTML & Dockerfile'){
            steps {
                sh 'tidy -q -e blue-green/blue/*.html'
                sh 'tidy -q -e blue-green/green/*.html'
                sh 'hadolint blue-green/blue/Dockerfile'
                sh 'hadolint blue-green/green/Dockerfile'
                sh 'id'
            }
        }
        stage('Build and Publish Docker Image'){
                    steps {
                        sh 'docker build -t sg75/blueimage -f blue-green/blue/Dockerfile blue-green/blue'
                        sh 'docker build -t sg75/greenimage -f blue-green/green/Dockerfile blue-green/green'
                        sh 'docker push sg75/blueimage'
                        sh 'docker push sg75/greenimage'
                        sh 'docker rmi -f sg75/greenimage'
                        sh 'docker rmi -f sg75/blueimage'
                    }
                }
    }
}
