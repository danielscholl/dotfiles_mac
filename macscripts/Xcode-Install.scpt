tell application "Terminal"
	-- this will close terminals if already opened 
	try
		quit
	end try
	delay 1
	activate
	-- sudo for initial authentication, if user does not have admin rights
	do script "sudo echo Document Scripting Installation Started" in front window
	display dialog "Enter System Password" default answer "" with hidden answer
	set the adminpass to the text returned of the result
	do script adminpass in front window
	-- applescript posts all the commands to terminal at the same time
	-- this delay will checks the business of terminal and once it is ideal it will post next command (accuracy 80%)
	-- eventhough it posts all commands togather, it doesn't have any affect on the execution. 
	repeat until busy of front window is false
		delay 1
	end repeat
	delay 4
	-- installing Xcode
	do script "xcode-select --install" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	quit
end tell