" let g:neovide_fullscreen=v:true
if exists("g:neovide")
  " let g:neovide_transparency=0.95
  set guifont=UbuntuMono\ NF:h14
  let g:neovide_refresh_rate = 60

  let g:neovide_scale_factor=1.0
  function! ChangeScaleFactor(delta)
    let g:neovide_scale_factor = g:neovide_scale_factor * a:delta
  endfunction
  nnoremap <expr><C-_> ChangeScaleFactor(1.25)
  nnoremap <expr><C--> ChangeScaleFactor(1/1.25)
endif

