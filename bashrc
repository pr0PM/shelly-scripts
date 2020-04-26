# pr0PM's .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you dont like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


####################
#||Custom Aliases||#
####################

# Lazy aliases

alias la='ls -lah'
alias py='python3'
alias jnote='jupyter-notebook'
alias cpp='cd ~/Projects/cpp'
alias cl='clear'
alias vi='vim'
alias ..='cd ..'

# Give this an arg in the form of a link to download
alias ydl='youtube-dl -x --audio-format mp3 --audio-quality 0'

# Just to give one more chance InCaSE
alias rm='rm -i'

# My music script 
alias bajao='~/playMusic.sh' 

# Attach to new tmux session /give it a name
alias tmuxn='tmux new-s -t' 

#\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\

# Added a new prompt copied from _kunalnagar

git_prompt() {

    local branchName="";

    # Check if the current directory is in a Git repository.
    if git rev-parse --git-dir > /dev/null 2>&1; then
        branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
                git rev-parse --short HEAD 2> /dev/null || \
                    echo '(unknown)')";
        echo -e "(${branchName})";
    else
        return;
    fi;
}

PS1="\[\e[0;36m\]\u at \w \[\e[m\] \[\e[0;33m\]\$(git_prompt)\n\[\e[m\]";

#\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\

# D O N ' T    D E V I A T E    F R O M    T H E    P A T H
export PATH=$PATH:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/pr0PM/.local/bin:/var/lib/snapd/snap/bin:/home/pr0PM/s_ware/jdk-14/bin
