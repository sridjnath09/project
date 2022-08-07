pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "docker build -t sridjnath09/project ."
                sh "docker container run -dt -P sridjnath09/project"
              
}
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
