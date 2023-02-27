pipeline {
    agent {
        docker {
            image ''
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
            }
        }

        stage('')    
    }
}