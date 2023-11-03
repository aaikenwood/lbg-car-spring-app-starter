pipeline {
    agent any

    stages {
        stage('Checkout source repos') {
            steps {
                checkout \
                    scm: [ $class : 'GitSCM', branches: [[name: '*/main']], extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: 'backend']], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/aaikenwood/lbg-car-spring-app-starter.git']]]
                checkout \
                    scm: [ $class : 'GitSCM', branches: [[name: '*/main']], extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: 'frontend']], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/aaikenwood/lbg-car-react-starter.git']]]
            }
        }
        stage('Test and build spring backend') {

        }
        stage('Test and build react frontend') {

        }
    }
}