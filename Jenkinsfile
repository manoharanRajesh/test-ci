#!groovy

node() {
    stage('Checkout'){
        checkout scm
    }
    stage ('build'){
        echo 'TODO run the build'

    }

    parallel 'integration-tests':{
        echo 'TODO run the mvn test'

    }, 'functional-tests':{
        echo 'TODO run the mvn test'
    }

}
