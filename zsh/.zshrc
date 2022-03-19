# =========== Powerlevel10k ===========

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# =========== configurações personalizadas ===============

# busca fuzzy
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# habilitar asdf
#. $HOME/.asdf/asdf.sh
source /opt/asdf-vm/asdf.sh

# desabilita abrir em outra janela o git log, por exemplo
PAGER=

# key bindings
bindkey '\e[1;5C' forward-word
bindkey '\e[1;5D' backward-word
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "^H" backward-delete-word

# =========== Matchfiles ===============

export ZDOTDIR=$HOME/.config/zsh
HISTFILE=~/.zsh_history
setopt appendhistory

# beeping is annoying
unsetopt BEEP

# Colors
autoload -Uz colors && colors

# Useful Functions
source "$ZDOTDIR/zsh-functions"

# Normal files to source
zsh_add_file "zsh-exports"
zsh_add_file "zsh-aliases"
##### zsh_add_file "zsh-vim-mode"
##### zsh_add_file "zsh-prompt"

# Plugins
zsh_add_plugin "romkatv/powerlevel10k"
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
##### zsh_add_completion "esc/conda-zsh-completion" false
# For more plugins: https://github.com/unixorn/awesome-zsh-plugins
# More completions https://github.com/zsh-users/zsh-completions

# =========== Powerlevel10k ===========

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# ocultar msgs de erro 
##### typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
##### typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
