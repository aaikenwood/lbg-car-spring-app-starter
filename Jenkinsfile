pipeline {
    agent any

    stages {
        stage('Checkout repos') {
            steps {
                scm: [ $class : 'GitSCM', branches: [[name: '*/main']], extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: 'backend']], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/aaikenwood/lbg-car-spring-app-starter.git']]])]
            }
        }
    }
}