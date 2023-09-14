pipeline {
    agent any
    stages {
        stage('Install Dependencies') {
            steps {
                script {
                    def npmHome = tool name: 'nodejs', type: 'Tool'
                    def npm = "${npmHome}/bin/npm"
                    sh "${npm} install"
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
    }
}
