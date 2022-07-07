properties([pipelineTriggers([githubPush])])

pipeline {
    
    agent any

    stages {
        stage('1-Interapt') {
            steps {
                script {
                    def buildNumber = env.BUILD_NUMBER as int
                    if (buildNumber > 1) milestone(buildNumber - 1)
                    milestone(buildNumber)
                }
            }
        }
        stage('2-Stop') {
            steps {
                sh 'docker stop botlab4'
                sh 'docker rm botlab4'
                sh 'docker rmi botlab4'
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
