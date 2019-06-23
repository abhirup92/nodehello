pipeline {
  agent any
    
  stages {
        
    stage('Cloning Git') {
      steps {
        git 'https://github.com/saikatdas/node-hello.git/'
      }
    }
        
    stage('Install dependencies') {
      steps {
        sh 'npm install'
      }
    }

    stage('Sonar Code Quality') {
      steps {
         echo 'Sonar'
      }
    }
     
    stage('Create Bundle and upload to S3')
     {
      steps {
         sh './uploadtos3.sh'
      }
    } 
     stage('Create Unique Application Version')
     {
      steps {
         sh './appver.sh'
      }
    } 
     stage('Deploy to Dev Env')
     {
      steps {
         sh './deploy2Dev.sh'
      }
    }     
  }
  post {
    always {
        emailext body: 'Hi Team,Node-Hello-App CI-Master Build is completed', recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']], subject: 'Build Status : Node-Hello-App CI-Master Build'
    }
}
  }