node {
    def app
    def registry = 'ghcr.io/junaid18183/product_microservice_sample'
    def registryCredential = 'ghcr'

    stage('Clone repository') {
        checkout scm
    }

    stage('DemoStage') {
        sh """
            ls -l 
        """
    }

    stage('DemoStage1') {
        sh 'echo "Hello World"'
    }

    stage('Build image') {
        docker.withRegistry( 'https://' + registry, registryCredential ) {
		    def buildName = registry + ":$BUILD_NUMBER"
			app = docker.build buildName
        }
	}

    // stage('Build image') {
    //     /* This needs Docker Pipeline plugin */
    //     app = docker.build("junaid18183/sampleimage")
    // }

    // stage('Test image') {
    //     app.inside {
    //         sh 'echo "Tests passed"'
    //     }
    // }

    stage('Push image') {
        docker.withRegistry( 'https://' + registry, registryCredential ) {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
