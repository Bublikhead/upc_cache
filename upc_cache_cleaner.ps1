<#

	.DESCRIPTION 
	
	Simple cache cleaner for Uplay. 

    	.VERSION

   	 0.0.1A
	
	.AUTHOR
	
	Oleksii Bublyk (Bublikhead)
	2019
	
#>

do { #start loop

	if ((Get-Process "upc" -ea SilentlyContinue) -eq $null) { #get process to check if Uplay is started. Will check every 5 seconds.
		"Process not found. Next check in 5 sec"
		Start-Sleep 5
		}
	
	else {
		"Process found. Starting the script"
		$upcid = (Get-Process upc).id 
		Wait-Process -Id $upcid # Wait till process ends
		Remove-Item -path "" -recurse # Uplay cache folder here  
		Write-Host "Cache Folder deleted" # Delete folder
		}
		
} until ($infinity)

