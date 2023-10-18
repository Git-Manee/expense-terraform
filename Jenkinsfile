pipeline {
    agent { label 'workstation'}

    options {
        ansiColor('xterm')
    }

    parameters {
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Choose Environment')
        choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Choose Action')
    }

    stages {
        stage('terraform plan') {
            steps {
                sh 'terraform init -backend-config=env-${ENV}/state.tfvars'
                sh 'terraform plan -var-file=env-${ENV}/inputS.tfvars'
            }
        }
        stage('terraform apply') {
            steps {
                sh 'terraform ${ACTION} -var-file=env-${ENV}/inputs.tfvars -auto-approve'
            }
        }
    }


}