# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

# End of lines added by compinstall
# My custom stuff
export VISUAL="/usr/bin/vim -p -X"
export EDITOR="vim"
export USE_CCACHE=1
# end
# User specific aliases and functions
alias ls="ls -a -G --color"
alias ll="ls -lah -G --color"
alias la="ls -alh -G --color"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias mount='mount |column -t'

bindkey -e
bindkey "[C" emacs-forward-word
bindkey "[D" emacs-backward-word

# Colored man pages
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}
# end

