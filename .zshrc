fpath=(
    $HOME/.zsh/hooks/zsh-jump
    $HOME/.zsh/hooks/zsh-jump/functions
    $HOME/.zsh/hooks/zsh-jump/utils
    $fpath
)

autoload -Uz \
    add-zsh-hook \
		jump_save_list \
		update_key \
		update_file \
		remove_file \
		search_directory \
		help_menu \
    jump \
    jump_go \
		jump_clear \
		jump_remove

add-zsh-hook precmd set_prompt
add-zsh-hook chpwd jump_save_list
