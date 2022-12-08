pipeline {
    agent any
    stages{
        stage('build'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/newApplication2']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/veerprashant/CICD-Docker.git']]])
            }

        }
        stage('build docker image'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerUser', variable: 'UserID')]){
                    sh 'docker build -t ${UserID}/application2 .'
}
                }
            }
        }
        stage('push docker image to docker hub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerUser', variable: 'UserID'), string(credentialsId: 'dockerhub-pwd', variable: 'Password')]) {
                    sh 'docker login -u ${UserID} -p ${Password}'
                    sh 'docker push ${UserID}/application2'
}
                }
            }
        }
    }
}