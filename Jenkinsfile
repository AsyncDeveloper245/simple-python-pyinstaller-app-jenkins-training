pipeline {
  agent none
  stages {
      stage("Build") {
        agent any
        steps {
          sh 'python3 -m py_compile sources/add2vals.py sources/calc.py'
          stash(name: "Compiled-files", includes: 'sources/*.py')
        }
      }

      stage("Test") {
        agent any
        steps {
          sh "cd sources && pytest"
        }
      }

      stage('Deploy') {
        agent any
        steps {
          sh "docker build -t asyncdeveloper/jenkins-test ."
        }
      }
  }
}
