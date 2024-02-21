#!/bin/bash

command=/usr/bin/htop

## Alternative:
## 'command' checks if a command exist, -v checks if executable by command line

#command=htop
#if command -v $command

if [ -f $command ]
then
    echo "$command is available, let's run it..."
else
    echo "$command is NOT available, installing it..."
    sudo apt update && sudo apt install -y htop # -y is to avoid asking (yes/no)
fi

$command
