:imap jk <Esc>
syntax on
filetype indent plugin on
set background=dark
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set hlsearch
set incsearch
set undolevels=1000
set ls=2

cmap w!! w !sudo tee > /dev/null %
