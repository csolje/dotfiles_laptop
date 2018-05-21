function! wincent#debug#log(string) abort
  call writefile([a:string], '/tmp/psyq-vim-debug.txt', 'aS')
endfunction
