let g:slime_target = "neovim"
" let g:slime_python_ipython = 1
let g:slime_no_mappings = 1
let g:slime_dont_ask_default = 1
let g:slime_paste_file = '~/.slime_paste'

function! SlimeTermV() abort
  vsplit
  enew
    terminal bash
  let l:cur_dir = "cd " . getcwd()
  let l:repl_job_id = b:terminal_job_id
  " Go to previous split.
  execute 'normal!' . "\<c-w>p"
  "let buffer's REPL be the one we just entered.
  let b:slime_config = {'jobid': l:repl_job_id}
  " Go back to terminal window
  execute 'normal!' . "\<c-w>p"
endfunction

nmap <silent> <Leader>st :call SlimeTermV()<CR>
nmap <silent> <Leader>ss <Plug>SlimeLineSend
" defined for python use in Windows
nmap <silent> <Leader>sf <Plug>SlimeLineSend <bar>:call slime#send("\r")<cr>
nmap <silent> <Leader>sa <Plug>SlimeParagraphSend
xmap <silent> <Leader>ss <Plug>SlimeRegionSend

