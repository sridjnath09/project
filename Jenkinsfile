pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                docker build -t sridjnath09/javawebapp .
                docker container run -dt  -p 1020:8080 sridjnath09/javawebapp 
                
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
