    
pipeline {
    agent any
    stages {
        stage('Lint HTML') {
            steps {
                sh 'tidy -q -e *.html'
            }
        }
        stage('Build image') {
            steps {
                sh 'sudo ./run_docker.sh'
            }
        }
    }
}