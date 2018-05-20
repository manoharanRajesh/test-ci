#!groovy

node() {


    stage('Checkout'){
        checkout scm
    }
    stage ('build'){
        sh 'mvn clean install'
        sh 'mvn sonar:sonar   -Dsonar.organization=manoharanrajesh-github   -Dsonar.host.url=https://sonarcloud.io   -Dsonar.login=4e458cb33786b8a3ec76f5de96ed68acb24023d7 -Dsonar.branch=sample'
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
