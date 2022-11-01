pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git 'git@github.com:shazib96/test.git'
            }
        }
        stage('Deploy on prod'){
            steps{
                sh 'echo "${BUILD_ID}"'
            }
        }
    }
}
