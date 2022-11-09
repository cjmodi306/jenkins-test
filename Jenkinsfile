pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'echo "Starting ROS environment..."'
                sh '''echo ${WORKSPACE}
                    echo "Executing multiple lines..."
                    '''
                retry(3){
                    sh "./test_shell_script.sh"
                }
                timeout(time:10, unit:'SECONDS'){
                    sh './timeout_script.sh'
                }

            }
        }
    }
}
