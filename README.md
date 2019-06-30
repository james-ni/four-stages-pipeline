This is a demo application to create a four stages pipeline, which automate the deployment of a Spring Boot application. The idea of this demo comes from AWS article:
https://docs.aws.amazon.com/codepipeline/latest/userguide/tutorials-four-stage-pipeline.html

What this demo will do?
- Create a GitHub repo
- Once there is new commit pushed to GitHub repo, the deployment pipeline will be triggered
- Jenkins will listen to GitHub and build Spring Boot jar file as new commit detected
- After completing build stage, Jenkins will call AWS CodeDeploy, transferring the jar file to S3 and triggering a CodeDeploy deployment
- CodeDeploy will copy the jar file to my EC2 instance, stop the tomcat service, and start a new tomcat service with new jar file
- After starting new application successfully or not, CodeDeploy will send an email notification.