# Allow aliases with sudo
alias sudo="sudo "

# Manage aliases
alias aliase='edit ~/.oh-my-zsh/custom/zsh_aliases.zsh'
alias aliass='source ~/.oh-my-zsh/custom/zsh_aliases.zsh'

# Building PKGBUILD in /tmp
alias makepkgt='mkdir -p /tmp/makepkg && BUILDIR=/tmp/makepkg makepkg -si'

# Custom diff
alias diff='diff --color -y --suppress-common-lines'

# Cisco VPN
alias vpn='/opt/cisco/anyconnect/bin/vpn'

# Edit on terminal mode
alias edit='vim'

# Custom cat command
alias cat='bat'

# Compile latex files while editing
alias mlatexmk='latexmk -shell-escape -pdf -pvc -interaction=nonstopmode'

# Suspend system
alias suspend='systemctl suspend'

# Start R in quiet mode
alias R="R --quiet"

# Update AUR packages
alias aur-update="yay -Pu"

# Pacman remove orphans
#alias pacrmph="pacman -Rns $(pacman -Qtdq)"

# Edit i3 config
alias i3config="gedit ~/.config/i3/config &"
alias i3configs="gedit ~/.config/i3status/config &"

# Connect & disconnect external monitor
alias connect-one="xrandr --output DP1 --auto --output eDP1 --off"
alias disconnect-one="xrandr --output eDP1 --auto --output DP1 --off"
alias connect="xrandr --output DP1 --auto --right-of eDP1"
alias disconnect="xrandr --output DP1 --off"

# Better safe than sorry
alias rm="rm -I --preserve-root"

# Open file with default application
alias open="xdg-open"

# Load VirtualBox kernel modules
alias vboxl="sudo modprobe vboxdrv && sudo modprobe vboxnetflt && sudo modprobe vboxpci && sudo modprobe vboxnetadp"

# Activate python virtual environment
alias pyactivate="source venv/bin/activate"

# Find replacement
alias find='fd'

# ls replacement
alias ls='exa'
alias lsg='exa -al --header --icons --git'

# Wine
alias wine32='WINEPREFIX=~/.wine32 WINEARCH=win32 wine'
alias wine64='WINEPREFIX=~/.wine WINEARCH=win64 wine'

# Jupyter 
alias jupstart="jupyter notebook &> /dev/null &"
alias jupstop="jupyter notebook stop"

# Change steam family shared library
alias sfs-select="mv /home/antcc/.local/share/Steam/config/config.vdf /home/antcc/.local/share/Steam/config/config-temp.vdf && mv /home/antcc/.local/share/Steam/config/config-2.vdf /home/antcc/.local/share/Steam/config/config.vdf && mv /home/antcc/.local/share/Steam/config/config-temp.vdf /home/antcc/.local/share/Steam/config/config-2.vdf"

# Clear git objects
alias git-clear="git reflog expire --expire=now --all && git gc --prune=now --aggressive && git repack -Ad && git prune"

# Make default gitignore
alias make-gitignore="echo '.ipynb_checkpoints\n__pycache__' >> .gitignore"

# Alias for ssh-ing into CCC UAM (+VPN)
alias ccc_uam="echo $(secret-tool lookup vpn uam) | sudo vpnc uam && ssh ccc_uam && sudo vpnc-disconnect"

# Alias for keyboard battery
alias keyboard-battery="upower -d | grep keyboard -A 7 | grep percentage | cut -f 2 -d':' | cut -d' ' -f11"

# Silent steam
alias steam="steam -silent"

# Weather report
alias weather="curl 'wttr.in/Madrid?lang=es'"
