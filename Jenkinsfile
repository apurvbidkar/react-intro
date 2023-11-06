pipeline {
    agent any
    stages{
        stage('git'){
            steps{
                git credentialsId: 'github', url: 'https://github.com/apurvbidkar/react-intro.git'
            }
        }
        stage('delete build folder'){
            steps{
                sh 'rm -rf build'
            }
        }
        stage('dependancy install'){
            steps{
                sh 'npm i'
            }
        }
        stage('build'){
            steps{
                sh 'npm run build'
            }
        }
        stage('delete'){
            steps{
                sh 'rm -rf /var/www/html/*'
            }
        stage('deploy'){
            steps{
                sh 'cp -r build/* /var/www/html'
            }
        }                
    }
}
