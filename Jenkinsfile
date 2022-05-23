pipeline {
    agent any

    stages {
        stage('github pull') {

            steps {
                echo 'Hello World'
                git branch: 'main', url: 'https://github.com/dkumarkaran/calculator-webapp.git'
                echo 'done-s1'
            }


        }
        stage('docker login and docker image build from dockerfile') {

            steps {
                echo 'docker stage'
                sh 'sudo apt-get update && sudo apt-get install docker.io -y'
                sh 'sudo docker build /var/lib/jenkins/workspace/pipeline/calculator-webapp -t devopsintellipaat/application-img1-pipeline'
                //dockerhub credentials: id: dockerhub
                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
                sh "sudo docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
                }
                sh 'sudo docker push devopsintellipaat/application-img1-pipeline '
                sh 'sudo docker run -itd -p 89:80 devopsintellipaat/application-img1-pipeline'
            }


        }

    }
    
}
