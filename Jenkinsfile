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
				sh 'aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/j1z0f1m9'
				sh 'docker build -t nodjs-web:1.3 .'
				sh 'docker tag nodjs-web:1.3 public.ecr.aws/j1z0f1m9/nodjs-web:1.3'
				sh 'docker push public.ecr.aws/j1z0f1m9/nodjs-web:1.3'
			}
		}
// 		stage('Run 2') {
// 		    agent {
// 		        kubernetes {
// 		            idleMinutes 5
// 		            yamlFile 'build-pod.yaml'
// 		            defaultContainer 'docker'
// 		            namespace 'kubernetes-plugin'
// 		        }
// 		    }
// 			steps {
// 			    container('docker') {
//     				sh 'python3 --version'
//     				sh 'python3 main.py'
// 			    }
// 			}
// 		}
	}
}
