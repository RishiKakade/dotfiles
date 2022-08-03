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

function bluetooth 
for option in $argv
    switch "$option"
        case -c connect 
             bluetoothctl -- connect 74:8F:3C:9E:A8:89
        case -d disconnect 
             bluetoothctl -- disconnect 74:8F:3C:9E:A8:89
        case \*
            printf "error: Unknown option %s\n" $option
    end
end

end


function dictate
for option in $argv
        switch "$option"
                case -s --start
                        /home/rkakade/Debs/nerd-dictation/nerd-dictation begin --vosk-model-dir=/home/rkakade/Debs/nerd-dictation/model &
                case -e --end
                        /home/rkakade/Debs/nerd-dictation/nerd-dictation end
                case \*
                        printf "error: Unknown option %s/n" $option
        end
end
end
