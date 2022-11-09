pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'echo "Starting ROS environment..."'
                sh '''echo ${WORKSPACE}
                    echo "Executing multiple lines..."
                    echo "Ending build process..."
                    '''

            }
        }
    }
}
