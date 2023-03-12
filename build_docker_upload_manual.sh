
# TBD - put tags and clear versions to avoid overwrite

REGION="us-west-2"
IMG_VERSION="1.5"

# nodejs app
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/j1z0f1m9

docker build -t nodjs-web:$IMG_VERSION .

docker tag nodjs-web:$IMG_VERSION public.ecr.aws/j1z0f1m9/nodjs-web:$IMG_VERSION

docker push public.ecr.aws/j1z0f1m9/nodjs-web:$IMG_VERSION


# python web server test
#aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/j1z0f1m9
#
#docker build -t python-web:$IMG_VERSION .
#
#docker tag python-web:$IMG_VERSION public.ecr.aws/j1z0f1m9/python-web:$IMG_VERSION
#
#docker push public.ecr.aws/j1z0f1m9/python-web:$IMG_VERSION
#
#18743249.dkr.ecr.us-west-2.amazonaws.com/sagemaker-sparkml-serving:2.4