pipeline {
  agent none
  stages {
      stage("Build") {
        agent any
        steps {
          sh 'python3 -m py-_ompile sources/add2vals.py sources/calc.py'
          stash(name: "Compiled-files", includes: 'sources/*.py')
        }
      }
  }
}
