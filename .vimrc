" >_ Customizations for the vim editor. Read more at https://github.com/dawsbot/vimrc-builder

set number " Show absolute line numbers on the left.
set relativenumber " Show relative line numbers on the left. These change based upon where your cursor is.

syntax on " Turn syntax highlighting on

set tabstop=2 " Tab equal 2 spaces (default 4)
set shiftwidth=2 " Arrow function (>>) creates 2 spaces
set expandtab " Use spaces instead of a tab charater on TAB
set autoindent

set wrap

set scroll=5

set mouse=a

set tags=./tags;,/home/erynn/.config/nvim/tags
