node {
    def app

    stage('Clone repository') {
        checkout scm
    }

    stage('Build image') {
        sh """
            docker build -t spring-petclinic-demo:$BUILD_NUMBER .
        """
}

    stage('Build image') {
        /* This needs Docker Pipeline plugin */
        app = docker.build("junaid18183/sampleimage")
    }

    stage('Test image') {
        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
