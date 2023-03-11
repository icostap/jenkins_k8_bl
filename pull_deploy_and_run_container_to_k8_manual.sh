
#aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 246618743249.dkr.ecr.us-west-2.amazonaws.com
#docker pull 246618743249.dkr.ecr.us-west-2.amazonaws.com/sagemaker-sparkml-serving:2.4

#REGION="us-west-2"
IMG_VERSION="1.3"

#aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/j1z0f1m9 --region=$REGION
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/j1z0f1m9

# nodjs web server
docker pull public.ecr.aws/j1z0f1m9/nodjs-web:$IMG_VERSION

# python web server
#docker pull public.ecr.aws/j1z0f1m9/python-web:$IMG_VERSION

# switch to context
kubectl config use-context jenkins_deployment_job@demo-cluster.us-west-2.eksctl.io
kubectl config get-contexts

# run the docker image
#docker run -d --name python-web-app --publish 5000:5000 python-web:$IMG_VERSION
#docker run --rm -d -p 80:80 --name test-container  test-doc

docker run -d --name nodejs-web-app -p 80:80 nodjs-web:$IMG_VERSION