pipeline {
    agent { label 'SlaveNode' } // Adjust to your Jenkins slave label
    stages {
        stage('Pull Code from Git') {
            steps {
                // Specify the branch you want to pull from
                git branch: 'patch-1', url: 'https://github.com/edureka-devops/projCert.git' // Change to the correct branch
            }
        }
        stage('Build Docker Container') {
            steps {
                sh 'docker build -t php-webapp .' // Build the Docker image using the Dockerfile
            }
        }
        stage('Deploy Docker Container') {
            steps {
                sh '''
                # Stop any running container with the same name
                # docker stop php-webapp || true
                # docker rm php-webapp || true
                
                # Run the new Docker container
                docker run -d --name php-webapp -p 80:80 php-webapp
                '''
            }
        }
    }
    post {
        failure {
            sh '''
            # Cleanup if something goes wrong
            docker stop php-webapp || true
            docker rm php-webapp || true
            '''
        }
    }
}
