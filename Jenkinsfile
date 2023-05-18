pipelineJob('crudspringboot-jenkinsfile') {
    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        url('https://github.com/BrayanDanielTiqueHernandez23/devops.git')
                        credentials('tokengithub')
                    }
                    branch('*/master')
                }
                scriptPath('Jenkinsfile')
            }
        }
    }
}
