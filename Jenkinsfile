pipeline{
    agent any

    stages{
        stage('virtual env setup'){
            sh '''
            chmod +x env-setup.sh
            ./env-setup.sh
            '''
        }
        stage('gunicorn setup'){
            sh '''
            chmod +x gunicorn-setup.sh
            ./gunicorn-setup.sh
            '''
        }
        stage('nginx setup'){
            sh '''
            chmod +x nginx-setup.sh
            ./nginx-setup.sh
            '''
        }
    }
}