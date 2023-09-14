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
                script {
                    def buildCmd = 'npm run build'
                    node {
                        sh script: buildCmd, label: 'npm run build'
                    }
                }
            }
        }
    }
}
