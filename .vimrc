set tags+=~/tags
set path+=~/code/yr
set path+=/media/volgrp/yr
set path+=/media/volgrp/myproject_copy/git/work/yr

set hlsearch
set helplang=cn
set encoding=utf8
set fileencodings=utf8,gbk,big5

set backupdir=~/.vimswaps,/tmp
syntax on
set number
filetype plugin on
set expandtab
set shiftwidth=2
set tabstop=2
map <silent> <F8> :TlistToggle<CR>
filetype indent on

function! CHANGE_CURR_DIR()
  let _dir = expand("%:p:h")
  exec "cd " . _dir
  unlet _dir
  if filereadable(".vimdc")
    source .vimdc
  endif
endfunction

autocmd BufEnter * call CHANGE_CURR_DIR()

autocmd BufReadPost * if line("'\"") > 0 && line ("'\"") <= line("$") | exe "normal! g'\"" | endif

source ~/.vim/plugin/cscope_maps.vim

