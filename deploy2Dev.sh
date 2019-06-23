#Deploy to Dev env
aws elasticbeanstalk update-environment --application-name node-hello \
    --environment-name devenv \
    --version-label $appversion --region us-east-1