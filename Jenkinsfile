pipeline {
    agent {
        docker {
            image '158.160.25.103:8083/build-cont'
        }
    }

    stages {
        stage('Copy project from github') {
            steps {
                git 'https://github.com/boxfuse/boxfuse-sample-java-war-hello.git'
            }
        }

        stage('build project') {
            steps {
                sh 'mvn package'
                sh 'mkdir /tmp/boxfuse && cp ./target/hello-1.0.war /tmp/boxfuse'
            }
        }

        stage('stupid copy Dockerfile from github') {
            steps {
                git 'https://github.com/elmcslay/DO_edu-HW11.git'
            }
        }

        stage('create docker image') {
            steps {
                sh 'systemctl status docker'
                sh 'cd ./DO_edu-HW11 && docker build -t dep .'
                sh 'docker tag dep 158.160.25.103:8083/dep && docker push 158.160.25.103:8083/dep'
            }
        }
    }
}