pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/shazib96/test.git'
            }
        }
        stage('Deploy on prod server over ssh'){
            steps{
                sshagent(['webserver-demo']) {
                   sh 'ssh -o StrictHostKeyChecking=no root@95.216.107.123'
                   sh 'scp /var/lib/jenkins/workspace/test-deployment/* root@95.216.107.123:/home/admin1'
	    }
          }
        }
    }
}
