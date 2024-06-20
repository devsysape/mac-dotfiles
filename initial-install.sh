#!/bin/bash

echo "Initial Mac Development - configuration and installation"

# Symlink in .zprofile under the .config/zsh path (non-standard)
ln -s ~/.config/zsh/.zprofile ~/.zprofile

# make specific home directories
echo " -> making other homedir directories"
mkdir -p ~/bin
mkdir -p ~/tmp
mkdir -p ~/workspace

# Install Homebrew
echo " -> installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# (the ~/.zprofile already has the path add for this) once git cloned, but add the path in for this script
eval "$(/opt/homebrew/bin/brew shellenv)"

echo " -> adding Homebrew package"

# add basic packages 
brew install git
brew install npm
#brew install iterm2 (switched to alacritty)
brew install alacritty
brew install nvim
brew install ripgrep
brew install git-lfs
brew install asciidoctor
brew install min          # Min(imal) browser for screenshots and sharing w/o any favorites or browser clutter

# CLI Productivity tools
brew install tmux
brew install thefuck
brew install timewarrior   # https://timewarrior.net, very cool way to track time

# CLI Troubleshooting and network tools
brew install htop
brew install iperf3
brew install wireshark
brew install --cask wireshark
brew install --cask wireshark-chmodbpf

# Add X11
brew install --cask xquartz

# add VLC player
brew install --cask vlc

# install espanso for text expansion
echo " -> installing espanso for text expansion"
brew tap espanso/espanso
brew install espanso
espanso service register
echo "--------------------------------------------------------------------------------"
echo " WARN: must turn off default Apple keyboard setups by:"
echo ""
echo "      1)  Settings -> Privacy & Security -> Accessibility -> Espanso (enable)"
echo ""
echo "--------------------------------------------------------------------------------"

# Elixir installation
echo " -> installing Elixir and dependencies"
brew install elixir

# Install Elixir language server
echo " -> installing Elixir Language Server"
curl -L "https://github.com/elixir-lsp/elixir-ls/releases/download/v0.20.0/elixir-ls-v0.20.0.zip" -o ~/tmp/elixir-ls.zip \ 
	&& unzip ~/tmp/elixir-ls.zip -d ~/bin/elixir-ls \
	&& chmod +x ~/bin/elixir-ls/language_server.sh \
	&& rm ~/tmp/elixir-ls.zip

# Download Nerd Fonts
echo " -> installing Nerd Fonts"
font_urls=(
	   "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Cousine.zip"
           "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/BitstreamVeraSansMono.zip"
           "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/DejaVuSansMono.zip"
           "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/InconsolataGo.zip"
          )

for f in ${font_urls[@]} ; do

	# Download, unzip and store the fonts
	curl -L "${f}" -o ~/tmp/font.zip \
		&& unzip -o ~/tmp/font.zip -d ~/Library/Fonts/ \
		&& rm ~/tmp/font.zip

done
