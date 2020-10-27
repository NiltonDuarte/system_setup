.DEFAULT_GOAL := copy

copy:
	cp ~/.zshrc ./zsh/.zshrc
	cp ~/.config/Code/User/settings.json  ./vscode/.config/Code/User/settings.json
	cp ~/.config/Code/User/keybindings.json  ./vscode/.config/Code/User/keybindings.json
	code code --list-extensions --show-versions | xargs -L 1 echo > ./vscode/installed_extensions.list
	code --list-extensions | xargs -L 1 echo code --install-extension > ./vscode/installed_extensions.sh