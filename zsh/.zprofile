eval "$(/opt/homebrew/bin/brew shellenv)"


# Fix zsh history
alias history="history 1"
HISTSIZE=99999
HISTFILESIZE=99999
SAVEHIST=$HISTSIZE

# Basic auto/tab complete
WORDCHARS=${WORDCHARS/\/}
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)  # include the hidden files

# Elixir: enable history in IEX through Erlang(OTP)
export ERL_AFLAGS="-kernel shell_history enabled"

# Generic aliases
alias ls="ls -F --color"

# Editor set to NVIM, but CLI mode to be emacs
alias vi=nvim
alias vim=nvim
export EDITOR=nvim
set -o emacs

# Eval for thefuck
eval $(thefuck --alias)

# Kubernetes
#function unset_prompt {
#        export PROMPT="%n@%m %1~ %# "
#}
#
#function set_kprompt {
#        export PROMPT="%n@%m (%F{red}%1v%f) %F{blue}%~/%f %F{green}%#%f "
#        export KUBECONFIG=~/.kube/config
#}
# Aliases
#alias k-dev="set_kprompt ; kubectl config use-context k8s-dev"
#alias k-which="set_kprompt ; kubectl config get-contexts"

# Smart Prompt
#precmd() {
#	psvar[1]=$(kubectl config current-context | awk -F\- '{print $NF}')
#}

#alias k-none="unset_prompt"

export PROMPT="%n@%m (%F{red}%1v%f) %F{blue}%~/%f %F{green}%#%f "

#unset_prompt
