pipeline {
    agent any
    tools{
        nodejs "nodejs"
    }
    stages {
        stage('Install Dependencies') {
            steps {
                bat "npm install"
            }
        }
        stage('Build') {
            steps {
                bat "npm run build"
            }
        }
    }
}
