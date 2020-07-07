pipeline {
   agent {
       docker {
           image 'ruby'
           args '--network skynet'
        //    rede onde se tem acesso ao ambiente
       }
            
   }

   stages {
      stage('Build') {
         steps {
            echo 'Compilando e/ou baixando dependencias'
            sh 'bundle install'
         }
      }
      stage('Test') {
          steps {
              echo 'Executando testes'
              sh 'cucumber -p ci'    
          }
          post {
              always {
                  cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'logs', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
              }
          }
      }
      stage('UAT') {
          steps {
              echo 'Testes de aceitacao'
              input message: 'Podemos ir para producao'
          }
      }
      stage('Prod') {
          steps {
              echo 'App pronto para producao'
          }
      }
   }
}
