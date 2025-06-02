parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}


if [ "$color_prompt" = yes ]; then
    # PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\H\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    # PS1='\[\e[0;35m\]\u\[\e[0m\]@\[\e[0;36m\]\h \[\e[0;33m\]\w \[\e[0;32m\]$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\e[0m\]\n   '

    # PS1='\[\e[0;35m\]\u \[\e[0;32m\]$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\e[0m\] \[\e[0;33m\]\w\[\e[0m\]\n   '

    if [ "$PS1" ]; then
        # Colors
        RED="\[\033[0;31m\]"
        GREEN="\[\033[0;32m\]"
        YELLOW="\[\033[0;33m\]"
        BLUE="\[\033[0;34m\]"
        PURPLE="\[\033[0;35m\]"
        CYAN="\[\033[0;36m\]"
        WHITE="\[\033[0;37m\]"
        RESET="\[\033[0m\]"

        PS1="${GREEN}\u ${RED}\$(parse_git_branch)${CYAN} \w\n${RESET}  "
    fi

else
    PS1='${debian_chroot:+($debian_chroot)}\u@\H:\w\$ '
fi
