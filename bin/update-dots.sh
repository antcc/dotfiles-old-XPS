#!/bin/bash

GIT=`which git`
cd ~/.dotfiles
${GIT} add .
${GIT} commit -m 'update'
${GIT} push git@github.com:antcc/dotfiles.git master
