pipeline {
    agent {
        docker {
            image '158.160.25.103:8083/build-cont'
            args '--privileged -v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

    stages {
        stage('copy project from github') {
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

        stage('copy Dockerfile from github') {
            steps {
                git 'https://github.com/elmcslay/DO_edu-HW11.git'
            }
        }

        stage('create docker image') {
            steps {
                sh 'docker build --no-cache -t dep -f ./DO_edu-HW11/Dockerfile .'
                sh 'docker tag dep 158.160.25.103:8083/dep && docker push 158.160.25.103:8083/dep'
            }
        }

        stage('add&run container to demo-deploy') {
            steps {
                sshagent(['eb80a320-d4fe-43a8-9e0a-ff799ab20534']) {
                    sh 'ssh root@51.250.102.45'
                    sh 'docker pull 158.160.25.103:8083/dep'
                    sh 'docker run -it -p 8080:8080 158.160.25.103:8083/dep'
                }
            }
        }
    }
}