#! /usr/local/bin/fish

function transfer --description 'Upload a file to transfer.sh'
    if [ $argv[1] ]
        # write to output to tmpfile because of progress bar
        set -l tmpfile ( mktemp -t transferXXXXXX )
        cat "$argv[1]" | gpg -r hello@zonito.com -aes -o- | curl --progress-bar --upload-file "-" -H "Max-Downloads: 1" -H "Max-Days: 1" https://transfer.sh/(basename $argv[1]) >> $tmpfile
        cat $tmpfile
        command rm -f $tmpfile
    else
        echo 'usage: transfer FILE_TO_TRANSFER'
    end
end

funcsave transfer
