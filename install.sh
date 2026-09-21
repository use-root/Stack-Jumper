#!/usr/bin/env zsh
# Create the config folder if it doesn't exist
mkdir -p "$HOME/.zsh-hooks/zsh-jump"
print -n "\n [*] Create the dir '.zsh-hooks/zsh-jump' for the tool \n"
# Copy files
cp -r .zsh-hooks/zsh-jump/* "$HOME/.zsh-hooks/zsh-jump/"
print -n "\n [*] Copying files from 'Repo/.zsh-hooks/zsh-jump' to '$HOME/.zsh-hooks/zsh-jump' for the tool \n"

if [[ ! -s "$HOME/.chpwd-recent-dirs" ]]; then 
	touch "$HOME/.chpwd-recent-dirs"
fi

grep -qF '# JUMP_CONFIGURATION' ".zshrc" || cat .zshrc >> "$HOME/.zshrc"

print "Installation complete!"
