# capstone-eks
Capstone Project for the Udacity cloud DevOps Engineer Nanodegree

###### prerequisites 
* AWS account
* github account
* ec2 instance with jenkins with Blue ocean plugin, docker, tidy , hadolint,eksctl, kubectl and awscli  

###### How to run
* create pipline in blue ocean by linking this github repo
* create_cluster.sh -- wait for 10 - 15 minutes until eks cluster is ready on AWS
* access the app via https://loadbalancer-external-ip-address/colorGame.html


###### Files and folders
* colorgame - html app folder
* k8s - deployment and service configuration files for k8s cluster
* Dockerfile : Dockerfile for creating nginx image and copying colorGame app files used with k8s cluster
* Jenkinsfile : Jenkinsfile for creating a pipeline
* Makefile : for docker container and image cleanup
* cluster_create.sh : bash script to create AWS EKS cluster
