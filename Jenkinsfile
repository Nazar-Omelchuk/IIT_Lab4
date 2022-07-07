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
        stage('2-Build') {
            steps {
                sh 'docker build -t botlab4 .'
                sh 'docker run -p 8778:8778 -t botlab4'
            }
        }
    }
}
