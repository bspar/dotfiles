#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '


#zshrc copy stuff
export JAVA_HOME=/opt/java6
export OUT_DIR_COMMON_BASE=/home/bspar/caci/aospOut
export VISUAL="/usr/bin/vim -p -X"
export PATH=$JAVA_HOME/bin/:$PATH:/opt/altera/altera/12.1sp1/quartus/bin/
export EDITOR="vim"
export CHROME_BIN=/usr/bin/chromium
export USE_CCACHE=1
# User specific aliases and functions
alias logisim="nohup logisim </dev/null &>/dev/null &" 
alias ls="ls -a --color=auto 2>/dev/null"
alias ll="ls -lh --color=auto 2>/dev/null"
alias la="ls -alh --color=auto 2>/dev/null"
alias lla="/usr/bin/ls -a 2>/dev/null"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias mount='mount |column -t'
alias qsim='quartus_sh --qsim'
