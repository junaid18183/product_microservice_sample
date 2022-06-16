version="1.0.0"
repository="ghcr.io/junaid18183/product_microservice_sample"
tag="latest"
image="${repository}:${version}.${env.BUILD_NUMBER}"

podTemplate(label: 'dind', cloud: 'kubernetes', serviceAccount: 'jenkins',
  containers: [
    containerTemplate(name: 'buildkit', image: 'moby/buildkit:master', ttyEnabled: true, command: 'cat', privileged: true),
  ],
  volumes: []
) 

{
    node('dind') {
        stage('Prepare') {
            checkout scm
        }

        stage('Build Docker Image') {
            container('buildkit') {
                sh """
                  docker build -t ${image} .
                  buildctl build --frontend dockerfile.v0 --local context=. --local dockerfile=. --output type=image,name=${image},push=false
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