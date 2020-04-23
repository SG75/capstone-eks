pipeline {
    agent any
    stages {
        stage('Lint HTML & Dockerfile'){
            steps {
                sh 'tidy -q -e colorgame/*.html'
                sh 'hadolint Dockerfile'
            }
        }
        stage('Build, tag and Publish Docker Image'){
                    steps {
                        sh 'docker build -t simple-cg-image:v1 . '
                        sh 'docker tag simple-cg-image:v1 sg75/simple-cg-image:v1'
                        sh 'docker push sg75/simple-cg-image:v1'
                        sh 'docker rmi -f sg75/simple-cg-image:v1'
                        }
                }
    }
}
