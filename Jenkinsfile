pipeline {
    agent {
        kubernetes{
            label 'jenkins-slave'
        }

    }
    environment{
        DOCKER_USERNAME = credentials('DOCKER_USERNAME')
        DOCKER_PASSWORD = credentials('DOCKER_PASSWORD')
        NEXUS_USERNAME = credentials('NEXUS_USERNAME')
        NEXUS_PASSWORD = credentials('NEXUS_PASSWORD')

    }
    stages {
        stage('docker login') {
            steps{
                sh(script: """
                    docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
                """, returnStdout: true)
            }
        }

        stage('git clone') {
            steps{
                sh(script: """
                    git clone https://github.com/Ankitchandre/test-app.git
                """, returnStdout: true)
            }
        }

        stage('docker build') {
            steps{
                sh script: '''
                #!/bin/bash
                cd $WORKSPACE/test-app/python
                docker build . --network host -t achandre/python:${BUILD_NUMBER}
                '''
            }
        }

        stage('docker push') {
            steps{
                sh(script: """
                    docker push achandre/python:${BUILD_NUMBER}
                """)
            }
        }
}
}
