node{
	stage ('DEPLOY_VERSION') {
		node('GII_INTALL'){
			echo '***********************'
			echo 'Begin --> Get Latest Version'
			echo '***********************'
			git url: 'https://github.com/Franconix95/GII.git'
			echo '***********************'
			echo 'End   --> Get Latest Version'
			echo '***********************'
			
			echo '***********************'
			echo 'Begin --> Kill All GlinttHS.Tools.ConfigDeployIIS.exe'
			echo '***********************'
			bat "\"${workspace}\"killSession.bat"
			echo '***********************'
			echo 'End   --> Kill All GlinttHS.Tools.ConfigDeployIIS.exe'
			echo '***********************'
						
			echo '***********************'
			echo 'Begin --> Copy Latest Version To Destination'
			echo '***********************'
			bat "xcopy \"${workspace}\" D:\\GLINTTHS_IIS\\GII_SETUP_S /s /e /Y "
			echo '***********************'
			echo 'End   --> Get Latest Version'
			echo '***********************'
		}
	}
}