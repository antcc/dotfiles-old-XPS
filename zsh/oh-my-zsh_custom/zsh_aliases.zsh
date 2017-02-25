# Building PKGBUILD in /tmp
alias makepkgt='mkdir -p /tmp/makepkg && BUILDIR=/tmp/makepkg makepkg -si'

# Cower download to a specific dir
alias cowerd='cower -t ~/Descargas/AUR'

# Custom diff
alias diff='diff --color -y --suppress-common-lines'

# Emacs on terminal mode
alias edit='emacs -nw'

# Compile latex files while editing
alias mlatexmk='latexmk -shell-escape -pdf -pvc ; latexmk -C'
