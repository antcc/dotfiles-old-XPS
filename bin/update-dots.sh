#!/bin/bash

GIT=`which git`
#cd ~/.dotfiles
${GIT} add .
${GIT} commit -m 'update'
GIT_SSH_COMMAND='ssh -i /home/antcc/.ssh/id_rsa' ${GIT} push
