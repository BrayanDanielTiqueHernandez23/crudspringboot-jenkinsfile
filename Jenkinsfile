pipelineJob('crudspringboot-jenkinsfile-new') {
    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        url('https://github.com/BrayanDanielTiqueHernandez23/devops.git')
                        credentials('tokengithub')
                    }
                    branch('*/feature')
                }
                scriptPath('Jenkinsfile')
            }
        }
    }
}
