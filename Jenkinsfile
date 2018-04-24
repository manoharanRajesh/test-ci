#!groovy

node() {
    stage('Checkout'){
        checkout scm
    }
    stage ('build'){
        sh 'mvn clean install'

    }

    stage('Parallel'){
        parallel 'integration-tests':{
            sh 'mvn test'

        }, 'functional-tests':{
           echo 'start functional test.'
            sleep(20)
            echo 'compleated functional test'
        }
    }
}
