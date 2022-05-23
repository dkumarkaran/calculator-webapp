pipeline {
    agent none
    environment {
        DOCKERHUB_CREDENTIALS=credentials('dockerpass')
    }
    stages {
        stage('github pull') {
            agent { 
                label 'aws-agent'
            }
            steps {
                echo 'Hello World'
                git 'https://github.com/dkumarkaran/calculator-webapp.git'
            }


        }
        stage('docker login and docker image build from dockerfile') {
            agent { 
                label 'aws-agent'
            }
            steps {
                echo 'docker stage'
                sh 'sudo apt-get update && sudo apt-get install docker.io -y'
                sh 'sudo docker build /home/ubuntu/calculator-webapp/ -t devopsintellipaat/application-img1-pipeline'
                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
                sh "sudo docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
                }
                sh 'sudo docker push devopsintellipaat/application-img1-pipeline '
            }


        }

    }
    
}
