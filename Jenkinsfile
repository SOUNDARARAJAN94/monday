pipeline {

    agent any

    stages {

        stage('Clone') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t companyapp .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f company-container || true
                docker run -d --name company-container -p 80:80 companyapp
                '''
            }
        }

    }

}
