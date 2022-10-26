pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Starting ROS environment..."'
                sh 'catkin_ws/ catkin_make'

            }
        }
    }
}
