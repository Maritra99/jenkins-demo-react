pipeline {
    agent any
    stages {
        stage('Install Dependencies') {
            steps {
                script {
                    def installCmd = 'npm install'
                    node {
                        sh script: installCmd, label: 'npm install'
                    }
                }
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
        stage('Deploy to Localhost') {
            steps {
                script {
                    def deployCmd = 'npm start'  // Replace with your deployment command
                    node {
                        sh script: deployCmd, label: 'npm start'
                    }
                }
            }
        }
    }
}
