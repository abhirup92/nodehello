#create unique application version
foldername="deployment-"${BUILD_NUMBER}
appversion="v-"${BUILD_NUMBER}
aws elasticbeanstalk create-application-version --application-name node-hello \
    --version-label $appversion \
    --source-bundle S3Bucket="node-hello-docker-eb",S3Key=$foldername.zip \
    --auto-create-application \
    --region us-east-1