node{
	stage 'Build'
		node('MASTER_MACHINE'){
			echo '***********************'
			echo 'Begin Build Stage'
			echo '***********************'
			
			bat "xcopy \"${workspace}\" D:\GLINTTHS_IIS\GII_SETUP /s /e "
			
			echo '***********************'
			echo 'End Build Stage'
			echo '***********************'
		}
		node('GII_INSTALL'){
			echo 'Slave Machine'
		}
	stage 'Development'
		echo '***********************'
		echo 'Begin Development Stage'
		echo '***********************'
		
		def username = 'Jenkins'
		echo "I said, Hello Mr. ${username}"
				
		echo '***********************'
		echo 'END Development Stage'
		echo '***********************'
		
	stage 'Quality'
		echo 'do qual'
		
	stage 'Production'
		echo 'do prod'
}