pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/shazib96/test.git'
            }
        }
        stage('Deploy on prod server'){
            steps {
                 sshagent(['agent-key']) {
                   sh 'ssh -o StrictHostKeyChecking=no admin1@95.216.107.123'
                   sh 'scp /var/lib/jenkins/workspace/test-deployment/* admin1@95.216.107.123:/home/admin1'
            }
          }
        }
    }
}
