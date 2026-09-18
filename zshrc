fpath=(
    ~/.zsh/functions/zsh-jump
    ~/.zsh/functions/prompt
    $fpath
)

autoload -Uz \
    add-zsh-hook \
    set_prompt \
    jump_save_list \
    jump \
    jump_go \
		update_key \
		help_menu 

add-zsh-hook precmd set_prompt
add-zsh-hook chpwd jump_save_list
