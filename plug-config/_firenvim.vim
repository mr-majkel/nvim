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
    set guifont=Hurmit\ NF:h13
    set lines=20
    set columns=110
    set wrap
    set linebreak
  endif
endfunction

augroup firenvim
  autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
augroup END

if exists('g:started_by_firenvim')
  set background=light
endif
