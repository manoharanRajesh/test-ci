#!groovy

node() {
    stage('Checkout'){
        checkout scm
    }
    stage ('build'){
        sh 'mvn clean install'
        //pushToCloudFoundry cloudSpace: 't-space', credentialsId: 'pcf', organization: 'g-org', target: 'https://api.run.pivotal.io'
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
