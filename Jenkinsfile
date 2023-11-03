pipeline {
    agent any

    stages {
        stage('Checkout repos') {
            steps {
                git branch main: 'main', url: 'https://github.com/aaikenwood/lbg-car-spring-app-starter.git'
                git branch main: 'main', url: 'https://github.com/aaikenwood/lbg-car-react-starter.git'
            }
        }
    }
}