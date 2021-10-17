#! /usr/local/bin/fish

function ip
    if [ $argv[1] ]
        curl -H 'Accept: application/json' "ifconfig.co/?ip=$argv[1]" --silent | jq
    else
        curl -H 'Accept: application/json' ifconfig.co --silent | jq
    end
end

funcsave ip
