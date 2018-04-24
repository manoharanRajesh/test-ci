#!groovy

node() {
    stage('Checkout'){
        checkout scm
    }
    stage ('build'){
        sh 'mvn clean install'

    }

    parallel 'integration-tests':{
        sh 'mvn test'

    }, 'functional-tests':{
        sh 'mvn test'
    }

}
