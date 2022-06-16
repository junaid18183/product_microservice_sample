version="1.0.0"
repository="ghcr.io/junaid18183/product_microservice_sample"
tag="latest"
image="${repository}:${version}.${env.BUILD_NUMBER}"
namespace="demo"

podTemplate(label: 'demo-customer-pod', cloud: 'kubernetes', serviceAccount: 'jenkins',
  containers: [
    containerTemplate(name: 'docker', image: 'docker:dind', ttyEnabled: true, command: 'cat', privileged: true),
  ],
  volumes: [
]) {
    node('demo-customer-pod') {
        stage('Prepare') {
            checkout scm
        }

        stage('Build Docker Image') {
            container('docker') {
                sh """
                  docker build -t ${image} .
                """
                milestone(1)
            }
        }
    }
}

properties([[
    $class: 'BuildDiscarderProperty',
    strategy: [
        $class: 'LogRotator',
        artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '10']
    ]
]);