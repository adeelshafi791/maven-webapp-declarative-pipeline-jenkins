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
        stage('Deploy') {
            steps {
                script {
                    deploy adapters: [tomcat9(credentialsId: 'jenkins', path: '', url: 'http://20.2.87.78:8080/')], contextPath: '/', war: '**/*.war'
                    
                }
            }
        }
    }
    post {
        always {
            junit 'target/surefire-reports/*.xml'
        }
    }
}
