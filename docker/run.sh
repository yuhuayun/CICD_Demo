#!/bin/bash
cd ${WORKSPACE}/docker

docker build -t 172.16.0.193:5000/cloud/cicd:v${BUILD_NUMBER} .

docker push 172.16.0.193:5000/cloud/cicd:v${BUILD_NUMBER}

docker run -d --restart=always -p 8080:8080 --name cicd 172.16.0.193:5000/cloud/cicd:v${BUILD_NUMBER}
