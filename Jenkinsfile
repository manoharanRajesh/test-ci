#!groovy

node() {


    stage('Checkout') {
        checkout scm
    }
    stage ('build') {
        sh 'mvn clean install'
    }

    stage ('Test') {
        echo "Integration Test"
    }

    stage ('Package') {
        echo "Move to Nexus"
    }

    stage ('Quality Report') {
        sh 'mvn sonar:sonar   -Dsonar.organization=manoharanrajesh-github   -Dsonar.host.url=https://sonarcloud.io   -Dsonar.login=4e458cb33786b8a3ec76f5de96ed68acb24023d7 -Dsonar.branch=sample'
    }

    stage ('Deploy to test'){
        pushToCloudFoundry cloudSpace: 't-space', credentialsId: 'pcf', organization: 'g-org', target: 'https://api.run.pivotal.io'
    }

    stage ('Deploy to prod'){
        pushToCloudFoundry cloudSpace: 't-space', credentialsId: 'pcf', organization: 'g-org', target: 'https://api.run.pivotal.io'
    }

}
