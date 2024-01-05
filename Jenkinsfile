
pipeline {
    agent any

    stages {
        stage('Pull') {
            steps {
                checkout scmGit(branches: [[name: 'feature/shrikant']], extensions: [], userRemoteConfigs: [[credentialsId: '30206b7c-d2a2-49d0-a580-445757bd08b0', url: 'https://github.com/RaghavendraPrabhu/siddhatechtest.git']])
            }
        }
    }
}
