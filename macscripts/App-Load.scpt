tell application "Terminal"
	-- this will close terminals if already opened 
	try
		quit
	end try
	delay 1
	activate
	-- initial prompt
	display dialog "Installation Started... Do not close Terminals. Press OK to continue"
	-- sudo for initial authentication, if user does not have admin rights
	do script "sudo echo Document Scripting Installation Started" in front window
	display dialog "Enter System Password" default answer "" with hidden answer
	set the adminpass to the text returned of the result
	do script adminpass in front window
	do script "curl -s -O https://github-media-downloads.s3.amazonaws.com/osx/git-credential-osxkeychain" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "chmod u+x git-credential-osxkeychain" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "sudo mkdir /usr/local/bin" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "sudo chown $USER /usr/local/bin" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "mv git-credential-osxkeychain '/usr/local/bin/git-credential-osxkeychain'" in front window
	delay 4
	do script "y" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	display dialog "Enter Your EmailId" default answer ""
	set email_id to text returned of result
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "git config --global user.email" & " " & (get email_id) in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	display dialog "Enter Your FirstName" default answer ""
	set fname to text returned of result
	display dialog "Enter Your LastName" default answer ""
	set lname to text returned of result
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "git config --global user.name" & " '" & (get fname) & " " & (get lname) & "'" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "git config --global credential.helper osxkeychain" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "curl -sSL https://get.rvm.io | bash -s stable" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "source ~/.profile" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "rvm requirements" in front window
	delay 4
	do script "" in front window
	delay 4
	do script "" in front window
	delay 3
	do script "rvm install ruby-stable" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "source ~/.bashrc" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "gem install bundle" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "mkdir -p ~/source" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "cd ~/source" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "git clone https://github.com/degnome/dotfiles.git" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "./dotfiles/bootstrap.sh" in front window
	delay 4
	do script "y" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "exec bash" in front window
	delay 4
	do script "gem install bundle" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "bundle install" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "cd ~" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "./brew.sh" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "./brewcask.sh" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "./.osx" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "exec bash" in front window
	delay 4
	do script "curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "nvm install stable" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "exec bash" in front window
	delay 4
	do script "./nodemodules.sh" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "nvm ls" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "nvm install 6.9.1 -g" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "nvm ls" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	do script "node -v" in front window
	repeat until busy of front window is false
		delay 1
	end repeat
	display dialog "Installation Completed. Please verify terminal stack for installation. Press OK"
	quit
end tell