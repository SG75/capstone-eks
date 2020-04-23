eksctl create cluster -r ap-south-1 -n capstone -t t2.micro
kubectl apply -f k8s/cg-deploy.yml
kubectl apply -f k8s/cg-service.yml