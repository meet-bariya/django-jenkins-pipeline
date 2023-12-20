pipeline{
    agent any

    stages{
        stage('virtual env setup'){
            steps{
                sh '''
                chmod +x env-setup.sh
                ./env-setup.sh
                '''
            }
        }
        stage('gunicorn setup'){
            steps{
                sh '''
                chmod +x gunicorn-setup.sh
                ./gunicorn-setup.sh
                '''
            }
        }
        stage('nginx setup'){
            steps{
                sh '''
                chmod +x nginx-setup.sh
                ./nginx-setup.sh
                '''
            }
        }
    }
}