						when { 
						    expression { 
                    GIT_BRANCH = 'origin/' + powershell(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
                    return GIT_BRANCH == 'origin/develop' }
			}
