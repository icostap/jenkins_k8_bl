pipeline {
	agent none
	stages {
		stage('Run 1') {
		    agent {
		        dockerfile {
		            filename 'Dockerfile'
		            args '-v /tmp:/tmp'
		        }
		    }
			steps {
				    sh 'echo stage of build docker and push to ECR'
//                     script{
//                         docker.withRegistry('https://797335142126.ecr.us-west-2.amazon.com', 'public.ecr.aws/j1z0f1m9/nodjs-web:ecr_credentials') {
//                         app.push("${env.BUILD_NUMBER}")
//                         app.push("latest")
//                         }
//                     }
                }
			}
		}
		stage('Run 2') {
		    agent {
		        kubernetes {
		            idleMinutes 5
		            yamlFile 'deploy-pod.yaml'
		            defaultContainer 'docker'
		            namespace 'default'
		        }
		    }
			steps {
			    container('docker') {
    				sh 'Deploy pod to k8 cluster'
			    }
			}
		}
	}
}
