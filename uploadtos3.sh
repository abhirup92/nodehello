echo "Let's see Build Number"
echo ${BUILD_NUMBER}
#create unique folder
foldername="deployment-"${BUILD_NUMBER}
appversion="v-"${BUILD_NUMBER}
mkdir $foldername
cp -a /var/lib/jenkins/workspace/node-hello/. /var/lib/jenkins/workspace/$foldername
zip -r $foldername.zip .
#delete foldername
rm -rf $foldername
#send folder to s3
aws s3 cp $foldername.zip s3://node-hello-docker-eb --region us-east-1
# delete zip file
rm -rf $foldername.zip