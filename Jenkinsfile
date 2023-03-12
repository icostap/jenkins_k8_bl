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
			}
		}
		stage('Run 2') {
		    agent {
		        kubernetes {
		            idleMinutes 5
		            yamlFile 'deployment.yaml'
		            defaultContainer 'docker'
		            namespace 'kubernetes-plugin'
		        }
		    }
			steps {
			    container('docker') {
    				sh 'Stage of run k8 deployment which will pull image from repository and deploy to k8 cluster'
			    }
			}
		}
	}
}
