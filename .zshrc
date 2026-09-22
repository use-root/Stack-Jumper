#JUMP_Config
fpath=(
    $HOME/.zsh-hooks/zsh-jump
    $HOME/.zsh-hooks/zsh-jump/functions
    $HOME/.zsh-hooks/zsh-jump/utils
    $fpath
)

autoload -Uz \
    add-zsh-hook \
    jump_save_list \
    update_key \
    update_file \
    remove_file \
    search_directory \
		is_empty \
		help_menu \
    jump \
    jump_go \
		jump_clear \
		jump_remove \
		jump_edit 

add-zsh-hook chpwd jump_save_list
