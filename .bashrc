# .bashrc

export USER=$(whoami)
export HOME="/c/Users/$USER"

export PS1='\[\033[31m\][\h: \w]\n\$\[\033[30m\] '
#export PS1='\u@\h:$(echo "\w" | sed -e "/^.\{30,\}$/s/^\(.\{15\}\).*\(.\{15\}\)$/\1...\2/")\$ '
export PATH="/c/Program Files/nodejs:$PATH"

alias e="exit"
alias l="ls -CF --color=auto"
alias ..="cd ../"
alias accn="acc n"
alias accs="acc s -- main.py --language=5078"
alias ojt="oj t -c \"py ./main.py\" -d ./tests/"
alias atcoder="cd /c/Users/eiji/Desktop/dev/Atcoder/ABC/"
