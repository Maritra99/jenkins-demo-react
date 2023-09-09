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
    }
}
