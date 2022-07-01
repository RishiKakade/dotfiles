alias ll='ls -l'
alias la='ls -a'
alias l='ls -CF'
alias music='ncspot'
alias sx='startx'
alias please='sudo'
alias anime="cd /usr/local/bin && ./ani-cli"
alias vpn='sudo openconnect -v cn-vpn.uwaterloo.ca'
alias vim='nvim'

function cd --argument dir
    if [ "dir" = "" ]
        builtin cd $HOME
    else
        builtin cd $dir
    end
    ls 
end
