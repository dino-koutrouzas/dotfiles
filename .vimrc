:set autoread
:set shiftwidth=2

:nmap <S-Enter> O<Esc>j
:nmap <CR> o<Esc>k

:autocmd BufWritePre * %s/\s\+$//e
