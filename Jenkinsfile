pipeline {
    agent any
    tools{
        nodejs "nodejs"
    }
    stages {
        stage('Docker Image Creation') {
            steps {
                bat "docker image build -t react-app-image ."
            }
        }
        stage('Docker Image Containerization') {
            steps {
                bat "docker run -dp 8000:3000 --name react-app-container react-app-image:latest"
            }
        }
    }
}
