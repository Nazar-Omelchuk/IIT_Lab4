properties([pipelineTriggers(githunPush())])

pipeline {
  
  agent any
  stages {
    stage('Interrupt') {
      steps {
        script {
          def buildNumber = env.BUILD_NUMBER as int
          if (buildNumber > 1) milestone(buildNumber - 1)
          milestone(buildNumber)
        }
      }
    }
    stage('Build') {
      steps {
        sh 'docker build -t botlab4 .'
        sh 'docker run -p 8787:8787 -t botlab4'
      }
    }
  }
}
