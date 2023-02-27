pipeline {
    agent {
        docker {
            image '158.160.25.103:8083/build-cont'
        }
    }

    stages {
        stage('Copy from github') {
            steps {
                git 'https://github.com/boxfuse/boxfuse-sample-java-war-hello.git'
            }
        }

        stage('build project') {
            steps {
                sh 'mvn package'
                sh 'pwd'
            }
        }

        stage('create docker image') {
            steps {
                sh 'git clone https://github.com/elmcslay/DO_edu-HW11.git && cd DO_edu-HW11/'
                sh 'docker build -t dep .'
                sh 'docker tag dep 158.160.25.103:8083/dep && docker push 158.160.25.103:8083/dep'
            }
        }
    }
}