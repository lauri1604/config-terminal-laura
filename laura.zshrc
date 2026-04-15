
# >>> conda initialize >>>
# Oh My Zsh config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(git)
# Prompt personalizado en azul celeste
autoload -U colors && colors

# Código ANSI para azul celeste: %F{cyan}
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "%F{red}(${ref#refs/heads/})%f"
}

PROMPT="%F{cyan}➜ %F{white}%~ %F{red}$(git_prompt_info)%f %F{cyan}laura%f %# "


source $ZSH/oh-my-zsh.sh

# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/laura/micromamba/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/laura/micromamba/etc/profile.d/conda.sh" ]; then
        . "/Users/laura/micromamba/etc/profile.d/conda.sh"
    else
        export PATH="/Users/laura/micromamba/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# 💙 Saludo motivador al iniciar la terminal
print -P "%F{cyan}💙⚽ ¡Hala Celta, Laura! ¡Hoy se gana!%f"
