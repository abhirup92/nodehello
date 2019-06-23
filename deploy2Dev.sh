#Deploy to Dev env
foldername="deployment-"${BUILD_NUMBER}
appversion="v-"${BUILD_NUMBER}
aws elasticbeanstalk update-environment --application-name node-hello \
    --environment-name devenv \
    --version-label $appversion --region us-east-1