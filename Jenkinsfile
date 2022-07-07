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
       
        stage('3-Build') {
            steps {
                sh 'docker build -t botlab4 .'
                sh 'docker run -d botlab4'
            }
        }
    }
}
