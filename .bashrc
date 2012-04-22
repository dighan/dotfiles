# colors
red='\[\033[31m\]'
green='\[\033[32m\]'
blue='\[\033[34m\]'
cyan='\[\033[36m\]'
nc='\[\033[00m\]'

# prompt
export PS1="${green}\u@\h${red}${get_current_git_branch}${cyan}:${blue}\w ${nc}"

# flex
export PATH=$PATH:/usr/local/Cellar/flex_sdk/4.6.0.23201/libexec/bin
export FLEX_HOME=/usr/local/Cellar/flex_sdk/4.6.0.23201/libexec

# aliases
alias ll='ls -laG'
alias ls='ls -G'
alias flog='tail -f ~/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt'
alias mflog='tail -f ~/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt | grep "#"'

# functions
function get_current_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \[.*\]/(\1)/'
}
