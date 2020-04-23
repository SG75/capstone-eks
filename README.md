# capstone-eks
Capstone Project for the Udacity cloud DevOps Engineer Nanodegree

###### prerequisites 
* AWS account
* github account
* ec2 instance with jenkins with Blue ocean plugin, docker, tidy , hadolint,kubectl and awscli  

###### How to run
* create pipline in blue ocean by linking this github repo
* create_cluster.sh -- wait for 10 - 15 minutes until eks cluster is ready on AWS
* update your security group - inbound rules to allow TCP port 8080 and 31000 for your EC2 instance
* access the app via https://cluster-master-ip-address:31000/colorGame.html
