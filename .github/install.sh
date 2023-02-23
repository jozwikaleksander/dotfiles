#!/bin/sh

USER = "user" 

# Dependencies
sudo pacman -Syu awesome alacritty rofi zsh zsh-syntax-highlighting xclip xdotool rofi-emoji lxappearance picom neovim starship nitrogen zathura clipman brave-browser pasystray pokemon-colorscripts unzip ninja python3 python-pip paplay

# Changing shell
chsh -s /usr/bin/zsh

# Font
curl -fLo "Iosevka.zip" https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Iosevka.zip
mkdir /usr/share/fonts/Iosevka
unzip Iosevka.zip -d /usr/share/fonts/Iosevka
fc-cache -fv

# Prefer dark mode
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# Neovim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
sudo npm i -g vscode-langservers-extracted typescript typescript-language-server emmet-ls
python3 -m pip install python-lsp-server
echo "#!/bin/bash
exec '/home/${USER}/.config/nvim/lua/lua-language-server/bin/lua-language-server' '$@' " > /home/USER/.local/bin/lua-language-server
chmod +x /home/${USER}/.local/bin/lua-language-server
