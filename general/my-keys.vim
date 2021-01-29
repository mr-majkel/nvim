inoremap <c-Space> <c-x><c-o>

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Map Esc to exit terminal mode
tnoremap <Esc> <C-\><C-n>

" open Netrw window
function NetrwToggle() abort
  if exists("g:my_netrw_winid")
    " echo g:my_netrw_winid
    let l:winid = g:my_netrw_winid
    if nvim_win_is_valid(l:winid)
      let l:buff_in_window = nvim_win_get_buf(l:winid)
      " echo l:buff_in_window
      let l:netrw_toggle_buffer = getbufvar(l:buff_in_window, "my_netrw_var")
      " echo l:netrw_toggle_buffer
      if l:netrw_toggle_buffer
        call nvim_win_close(l:winid, 1)
        return 
      endif
    endif
  endif
  vsplit
  let g:my_netrw_winid = win_getid()
  wincmd H
  40 wincmd |
  set winfixwidth
  e .
  let b:my_netrw_var=1
endfunction 

" Open default editor for file browsing
nnoremap <Leader>nn :call NetrwToggle()<CR>

" Switch buffers
nnoremap <leader>gj :bprevious<cr>
nnoremap <leader>gk :bnext<cr>
nnoremap <leader>gq :bdelete<cr>

" Switch windows
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>p :wincmd p<cr>

" List terminal job id
nnoremap <silent> <leader>tt :call Termbinds()<CR>

function Termbinds() abort
  if &buftype ==# 'terminal'
    echo 'The job id is'
    echo b:terminal_job_id
  else
    echo b:slime_config
  endif
endfunction

" mute Q
nnoremap Q :q
