set tags+=~/tags
set path+=~/code/yr
set path+=/media/volgrp/yr
set path+=/media/volgrp/myproject_copy/git/work/yr

"set nocp
set hlsearch
"set mouse=a
"设置帮助文件显示语言
set helplang=cn
"encoding
set encoding=utf8
set fileencodings=utf8,gbk,big5
"set noguipty

set backupdir=~/.vimswaps,/tmp
syntax on
set number
" 显示行数
"----------------------------------------------------------------------
" set ch=2
"---------------------------------------------------------------------- 
filetype plugin on
set expandtab
set shiftwidth=2
set tabstop=2
"let g:explVertical=1
"let Tlist_Use_Right_Window=1
"let g:winManagerWindowLayout = "FileExplorer|TagList"
"set foldmethod=syntax
map <silent> <F8> :TlistToggle<CR>
filetype indent on
"colorscheme torte

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
"if filereadable("cscope.out")
"  cs reset
"  cs add cscope.out
"endif
"auto load cscope.out
"if has("cscope")
"  set csprg=/usr/bin/cscope
"  set csto=0
"  set cst
"  set nocsverb
"  let n = 1
"  let s1 = "cscope.out"
"  let csout = "cscope add "
"  while n < 4
"    if filereadable(s1)
"      let csout = csout . s1
"      execute csout
"      unlet csout
"      unlet n
"      unlet s1
"      break
"    endif
"    let s1 = "../" .  s1
"    let n = n + 1
"  endw
"  set csverb
"endif
