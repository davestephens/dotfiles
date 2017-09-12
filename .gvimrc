set go-=T " Hide toolbar
set go-=r " Hide right scrollbar
set go-=L " Hide left scrollbar

if has('win32')
  " My favorite font!
  set guifont=M+_1m_for_Powerline:h12

  " Alt-[, ]: Buffer Navigation
  nmap <M-[> :bprev<CR>
  nmap <M-]> :bnext<CR>
  vmap <M-[> <Esc>:bprev<CR>
  vmap <M-]> <Esc>:bnext<CR>
  vmap <M-cr> <Esc>:set invfu<cr>gv
else
  let s:uname = system("echo -n \"$(uname -s)\"")
  if s:uname == "Linux"
    " My favorite font!
    set guifont=M+\ 1m\ for\ Powerline\ 13
  endif
endif
