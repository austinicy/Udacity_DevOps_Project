    
pipeline {
    agent any
    stages {
        stage('Lint HTML') {
            steps {
                sh 'tidy -q -e *.html'
            }
        }
        stage('Build Image') {
            steps {
                app = docker.build("zhengbill/hello")
            }
        }
        stage('Push Image') {
            steps {
                docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials'){
                    app.push("$(env.BUILD_NUMBER")
                    app.push("lastest")
                }
            }
        }
    }
}