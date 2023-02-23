#!/bin/sh

# Dependencies
sudo pacman -Syu awesome alacritty rofi zsh zsh-syntax-highlighting xclip xdotool rofi-emoji lxappearance picom neovim starship nitrogen zathura clipman brave-browser pasystray pokemon-colorscripts unzip ninja

# Font
curl -fLo "Iosevka.zip" https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Iosevka.zip
mkdir /usr/share/fonts/Iosevka
unzip Iosevka.zip -d /usr/share/fonts/Iosevka
fc-cache -fv

# Neovim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
sudo npm i -g vscode-langservers-extracted typescript typescript-language-server emmet-ls
python3 -m pip install python-lsp-server
echo '#!/bin/bash \
exec "$HOME/.config/nvim/lua/lua-language-server/bin/lua-language-server" "$@"' > ~/.local/bin/lua-language-server
