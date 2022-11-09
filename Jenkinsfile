pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'echo "Starting ROS environment..."'
                sh '''echo ${WORKSPACE}
                    echo "Executing multiple lines..."
                    '''
                sh 'sudo chmod +x test_shell_script.sh'
                sh 'sudo chmod +x timeout_script.sh'
                retry(3){
                    sh "./test_shell_script.sh"
               		 }
                timeout(time:10, unit:'SECONDS'){
                    sh './timeout_script.sh'
               					 }

           	 }
	post{
		always{
		echo 'Process completed.'
		}
		success{
			echo 'Catkin Build is successful.'
			mail to: 'ftb.chirag.modi@htwsaar.de',
             			subject: "Pipeline Successful: ${currentBuild.fullDisplayName}",
             			body: "Success with ${env.BUILD_URL}"
		       }
		failure{echo 'Catkin build is unsuccessful.'}
	    }
        }
    }
}
