String commitId = 'unknown'

node('maven') {
  container('maven') {
    stage('Checkout source') {
      checkout scm

      commitId = sh(returnStdout: true, script: 'git rev-parse HEAD').trim()
      println 'Using git commit id: ' + commitId
    }

    // Maven build will compile and execute any defined tests that produces
    // a deployable jar file as the output.
    stage('Maven Build and Test') {
      sh "cicd/scripts/build.sh"
    }

    stage('Deploy') {
      sh "cicd/scripts/deploy.sh"
    }

    stage('Acceptace Test') {
      sh "cicd/scripts/test.sh"
    }
  }
}
