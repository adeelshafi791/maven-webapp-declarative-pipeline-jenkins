pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                
                git url: 'https://github.com/adeelshafi79/java-hello-world-webapp.git', branch: 'master'
            }
        }
        stage('Build') {
            steps {
                script {
                    
                    sh 'mvn clean package'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    sh 'mvn test'
                }
            }
        }
        stage('Archive Artifacts') {
            steps {
                archiveArtifacts artifacts: 'target/*.war', allowEmptyArchive: true
            }
        }
 
}
