node{
	stage 'Build'
		node('MASTER_MACHINE'){
			echo '***********************'
			echo 'Begin Build Stage'
			echo '***********************'
			
			bat "\"${tool 'MSBuild2014'}\" \"${workspace}@script\\GlinttHS.Tools.ConfigDeployIIS.csproj\" /p:Configuration=Release /p:ProductVersion=1.0.0.${env.BUILD_NUMBER}"
			
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