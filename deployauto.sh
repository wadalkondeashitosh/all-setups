stage('deploy') {
    steps {
    #deployment inputs called as deploy adapters
      deploy adapters: [
         tomcat9(
         # credentialsID of tomcat server where you want to deploy app
            credentialsId: '',
            path: ''
      # tomcat server url      
            url: ''
         )
          ],
          #contextPath is nothing but name of your application
          contextPath: '',
          war: ''
       }
}
