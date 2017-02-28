String commitId = 'unknown'

node('maven') {
  stage('Checkout source') {
    checkout scm

    commitId = sh(returnStdout: true, script: 'git rev-parse HEAD').trim()
    println 'Using git commit id: ' + commitId
  }

  // Maven build will compile and execute any defined tests that produces
  // a deployable jar file as the output.
  stage('Maven Build and Test') {
    sh "/usr/bin/mvn clean package"
  }
}
