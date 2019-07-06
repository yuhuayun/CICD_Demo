#!/bin/bash
docker build -t 172.16.0.193:5000/cloud/cicd:latest .
docker run -d --restart=always -p 8080:8080 --name cicd 172.16.0.193:5000/cloud/cicd:latest
