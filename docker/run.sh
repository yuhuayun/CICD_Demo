#!/bin/bash

cp ${WORKSPACE}/target/cicd-demo-1.0.jar ${WORKSPACE}/docker/app.jar
cd ${WORKSPACE}/docker
docker build -t 172.16.0.193:5000/cloud/cicd:v${BUILD_NUMBER} .
docker push 172.16.0.193:5000/cloud/cicd:v${BUILD_NUMBER}

sed -i 's/\$\$BUILD_NUMBER\$\$/'${BUILD_NUMBER}'/g' tomcat-test.yaml


#docker run -d --restart=always -p 8080:8080 --name cicd 172.16.0.193:5000/cloud/cicd:v${BUILD_NUMBER}
