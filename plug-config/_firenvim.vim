function! s:IsFirenvimActive(event) abort
  if !exists('*nvim_get_chan_info')
    return 0
  endif
  let l:ui = nvim_get_chan_info(a:event.chan)
  return has_key(l:ui, 'client') && has_key(l:ui.client, 'name') &&
      \ l:ui.client.name =~? 'Firenvim'
endfunction

function! OnUIEnter(event) abort
  if s:IsFirenvimActive(a:event)
    set guifont=UbuntuMono\ Nerd\ Font:h14
    set lines=20
    set columns=110
    set wrap
    set linebreak
    set breakindent
    nnoremap j gj
    nnoremap k gk
  endif
endfunction

augroup firenvim
  autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
augroup END

let g:firenvim_config = { 
      \ 'localSettings': {
        \ '.*':{
        \ 'takeover':'never',
        \}
        \},
        \}
