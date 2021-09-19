#!/bin/bash

GIT=`which git`
cd ~/.dotfiles
${GIT} add .
${GIT} commit -m 'update'
${GIT} push
