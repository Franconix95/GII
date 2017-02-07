node{
	stage ('DEPLOY_VERSION') {
		input 'Do you approve deployment?'
		node('GII_INTALL'){	
			echo '***** Begin --> Get Latest Version *****' 	
			git url: 'https://github.com/Franconix95/GII.git'
			echo '***** End   --> Get Latest Version *****' 
			
			echo '***** Begin --> Kill All GlinttHS.Tools.ConfigDeployIIS.exe *****' 			
			bat "\"${workspace}\"\\killSession.bat"
			echo '***** End   --> Kill All GlinttHS.Tools.ConfigDeployIIS.exe *****' 

			echo '***** Begin --> Copy Latest Version To Destination *****' 
			bat "xcopy \"${workspace}\" D:\\GLINTTHS_IIS\\GII_SETUP_S /s /e /Y "
			echo '***** End   --> Get Latest Version *****' 
		}
	}
}