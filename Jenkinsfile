pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git 'https://github.com/shazib96/test.git'
            }
        }
        stage('Deploy on prod server over ssh'){
            steps{
                sshagent(['webserver-demo']) {
                   sh 'ssh -o StrictHostKeyChecking=no admin1@95.216.107.123'
                   sh 'scp /var/lib/jenkins/workspace/test-deployment/* admin1@95.216.107.123:/home/admin1'
	    }
          }
        }
    }
}
