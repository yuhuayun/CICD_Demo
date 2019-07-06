FROM java:latest

ADD $WORKSPACE/target/cicd-demo-1.0.jar /app.jar
#COPY /root/.jenkins/workspace/target/cicd-demo-1.0.jar /app.jar

EXPOSE 8080

CMD ["java","-jar","/app.jar"]
