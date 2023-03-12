

#REGION="us-west-2"
#IMG_VERSION="1.5"

#aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/j1z0f1m9

# nodjs web server
#docker pull public.ecr.aws/j1z0f1m9/nodjs-web:$IMG_VERSION

# python web server
#docker pull public.ecr.aws/j1z0f1m9/python-web:$IMG_VERSION

# raise EKS manage k8 cluster
#eksctl create cluster --name demo-cluster-bl --region us-west-2
#
# switch to context
#kubectl config use-context jenkins_deployment_job@demo-cluster-bl.us-west-2.eksctl.io
#kubectl config get-contexts
#kubectl apply -f deployment.yaml
#kubectl get deployment
#kubectl get pods
#kubectl apply -f service.yaml
#kubectl get services
#kubectl get all


# run the docker image
#docker run -d --name python-web-app --publish 5000:5000 python-web:$IMG_VERSION
#docker run --rm -d -p 80:80 --name test-container  test-doc

#docker run -d --name nodejs-web-app -p 80:80 nodjs-web:$IMG_VERSION