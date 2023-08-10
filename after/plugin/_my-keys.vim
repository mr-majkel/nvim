" inoremap <c-Space> <c-x><c-o>

" Use <TAB> to select the popup menu:
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" ins-complete file
" inoremap <C-f> <c-x><c-f>

" change windows backslashes
nnoremap <silent> <leader>/ V:s/\\/\//g<cr>
vnoremap <leader>/ :s/\\/\//g<cr>
" Map keys to exit terminal mode
tnoremap <C-n><C-n> <C-\><C-n>

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
" nnoremap <Leader>nn :call NetrwToggle()<CR>

" Switch buffers
nnoremap <silent> <leader>gj :bprevious<cr>
nnoremap <silent> <leader>gk :bnext<cr>
nnoremap <silent> <leader>gq :bdelete<cr>
" close all other buffers
nnoremap <silent> <leader>gQ :%bd\|e#<cr>

" Switch windows
nnoremap <silent> <leader>h :wincmd h<cr>
nnoremap <silent> <leader>j :wincmd j<cr>
nnoremap <silent> <leader>k :wincmd k<cr>
nnoremap <silent> <leader>l :wincmd l<cr>

" List terminal job id
nnoremap <silent> <leader>tt :call Termbinds()<CR>

function Termbinds() abort
  if &buftype ==# 'terminal'
    let s:job_id=b:terminal_job_id
    echo 'The job id is'
    echo s:job_id
  else
    SlimeConfig
  endif
endfunction

" mute Q
nnoremap <silent> Q :q

" paste from clipboard
nnoremap <silent> <leader>p "+p
nnoremap <silent> <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
" yank to clipboard
nnoremap <silent> <leader>y "+y
vnoremap <leader>y "+y

" enter command mode
nnoremap <silent> z; :

" quicker switch
nnoremap <silent> <c-s> <c-^>

" python debugging
tnoremap <C-n><C-p> python -m unittest discover tests -v
