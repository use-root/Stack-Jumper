#!/usr/bin/env zsh

# Create the config folder if it doesn't exist
mkdir -p "$HOME/.zsh-hooks/zsh-jump"
print -n "\n [*] Create the dir '.zsh-hooks/zsh-jump' for the tool \n"
# Copy files
cp -r .zsh-hooks/zsh-jump/* "$HOME/.zsh-hooks/zsh-jump/"
# Copy .zsh configuration
touch "$Home/.chpwd-recent-dirs"
cat .zshrc >> "$HOME/.zshrc"
print "Installation complete!"
