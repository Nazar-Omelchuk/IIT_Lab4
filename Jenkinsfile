pipeline {

    agent any

    stages {
         stage('1-Test') {
            steps {
                echo "Start"
                sh 'docker ps'
                echo "End"
            }
         }
         stage('2-Kill') {
            steps {
                sh 'docker kill $(docker ps -q)'
                sh 'docker rm $(docker ps -a -q)'
                sh 'docker rmi $(docker images -q)'
            }
         }
         stage('3-Build') {
            steps {
                sh 'docker build -t botlab4 .'
                sh 'docker run -d botlab4'
            }
        }
    }
}
