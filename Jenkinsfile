    
node {
    def app
    stage('Clone repository') {
        checkout scm
    }
    stage('Lint HTML') {
        sh 'tidy -q -e *.html'
    }
    stage('Build Image') {
        app = docker.build("zhengbill/hello")
    }
    stage('Push Image') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials'){
            app.push("${env.BUILD_NUMBER}")
            app.push("lastest")
        }
    }
}
