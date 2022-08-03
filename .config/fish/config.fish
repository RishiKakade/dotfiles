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

function bt 
for option in $argv
    switch "$option"
        case -c --connect
             bluetoothctl -- connect 74:8F:3C:9E:A8:89
        case -d --disconnect
             bluetoothctl -- disconnect 74:8F:3C:9E:A8:89
        case -sc --connect
             bluetoothctl -- connect 28:FA:19:71:0D:75
        case -sd --disconnect
             bluetoothctl -- disconnect 28:FA:19:71:0D:75

        case \*
            printf "error: Unknown option %s\n" $option
    end
end

end

