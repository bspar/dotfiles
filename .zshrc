# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/bspar/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="rkj-repos"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# NOTE: zsh-syntax-highlighting must stay last - it wraps the ZLE widgets
plugins=(git pip python brew macos sublime git-flow command-not-found zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# --- inlined from the old .zshrc.old ---
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd

export VISUAL="/usr/bin/vim -p -X"
export EDITOR="vim"
export USE_CCACHE=1

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
# --- end inlined section ---

export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export ANDROID_SDK=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PYTHONSTARTUP="$HOME/.pythonrc"


# Google Cloud SDK - check the homebrew cask location first, then the old
# hand-unpacked one in ~/Downloads
for _gcloud in /opt/homebrew/share/google-cloud-sdk "$HOME/Downloads/google-cloud-sdk"; do
	if [ -d "$_gcloud" ]; then
		[ -f "$_gcloud/path.zsh.inc" ] && . "$_gcloud/path.zsh.inc"
		[ -f "$_gcloud/completion.zsh.inc" ] && . "$_gcloud/completion.zsh.inc"
		break
	fi
done
unset _gcloud

# replace bsd with GNU tools (e.g. sed)
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
export GOPATH=$HOME/go # don't forget to change your path correctly!
# export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:$ANDROID_HOME/build-tools/29.0.1
# export PATH=$PATH:$ANDROID_HOME/ndk-bundle
export PATH=$PATH:/Users/bspar/Documents/projects/android-ndk-r19c
export PATH=$PATH:/Users/bspar/Library/Python/3.7/bin
export PATH=$PATH:~/bin

androidOld () { hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android; cd /Volumes/android; bash } 
android () { hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android; cd /Users/bspar/Documents/projects/aosptest/docker-aosp; docker-compose up -d --build; docker exec -it docker-aosp_aosp_1 bash }

#export PATH="/usr/local/opt/python@3.8/bin:$PATH"

PATH="/Users/bspar/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/bspar/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/bspar/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/bspar/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/bspar/perl5"; export PERL_MM_OPT;

export RUST_BACKTRACE=1
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"
source ~/.profile



export JAVA_HOME=$(/usr/libexec/java_home 2>/dev/null)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# put uv's python at the front of PATH
export PATH="/Users/bspar/.local/bin:$PATH"

export K9S_CONFIG_DIR=$HOME/.config/k9s/


# opencode
export PATH=/Users/bspar/.opencode/bin:$PATH

# bun completions
[ -s "/Users/bspar/.bun/_bun" ] && source "/Users/bspar/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Added by Antigravity
export PATH="/Users/bspar/.antigravity/antigravity/bin:$PATH"

# private credentials live outside the repo - see .secrets.example
[ -f ~/.secrets ] && source ~/.secrets

# export TERM=xterm-256color
