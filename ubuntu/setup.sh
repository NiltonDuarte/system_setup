
#!/bin/sh
sudo apt install -y python3-pip git curl zsh

# click on icon to minimize
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
alias pip pip3



chsh -s $(which zsh)
# usermod -s /usr/bin/zsh $USER

curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh

echo "Restart"
