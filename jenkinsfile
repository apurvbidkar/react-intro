pipeline {
    agent any
    stages{
        stage('git'){
            steps{
                git credentialsId: 'github', url: 'https://github.com/apurvbidkar/react-intro.git'
            }
        }
        stage('dependancy install'){
            steps{
                sh 'npm i'
            }
        }
        stage(build){
            steps{
                sh 'npm run build'
            }
        }
        stage(deploy){
            steps{
                sh 'cp -r build  /var/www/html/'
            }
        }
    }
}
