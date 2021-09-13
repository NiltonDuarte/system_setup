.DEFAULT_GOAL := copy

copy:
	cp ~/.zshrc ./zsh/.zshrc
	cp ~/.config/Code/User/settings.json  ./vscode/.config/Code/User/settings.json
	cp ~/.config/Code/User/keybindings.json  ./vscode/.config/Code/User/keybindings.json
	code code --list-extensions --show-versions | xargs -L 1 echo > ./vscode/installed_extensions.list
	code --list-extensions | xargs -L 1 echo code --install-extension > ./vscode/installed_extensions.sh

install:
	sh ./ubuntu/setup.sh
	cp ./zsh/.zshrc ~/.zshrc
	# cp ./vscode/.config/Code/User/settings.json ~/.config/Code/User/settings.json
	# cp ./vscode/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json
	# sh ./vscode/installed_extensions.sh

gcp:
	echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
	sudo apt-get install apt-transport-https ca-certificates gnupg
	curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
	sudo apt-get update && sudo apt-get install -y google-cloud-sdk