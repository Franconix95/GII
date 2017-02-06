node{
	stage ('Build') {
		node('GII_INTALL'){
			echo '***********************'
			echo 'Begin Deploy Slave'
			echo '***********************'
			
			git url: 'https://github.com/Franconix95/GII.git'
			bat "xcopy \"${workspace}\"@script D:\\GLINTTHS_IIS\\GII_SETUP_S /s /e /Y "
						
			echo '***********************'
			echo 'End Deploy Slave'
			echo '***********************'
		}
	}
	stage ('Development') {
		echo '***********************'
		echo 'Begin Development Stage'
		echo '***********************'
		
		def username = 'Jenkins'
		echo "I said, Hello Mr. ${username}"
				
		echo '***********************'
		echo 'END Development Stage'
		echo '***********************'
	}
	stage ('Quality') {
		echo 'do qual'
	}
	stage ('Production') {
		echo 'do prod'
	}
}