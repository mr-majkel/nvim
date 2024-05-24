open_terminal = function()
  source_window = vim.api.nvim_get_current_win()
  source_buffer = vim.api.nvim_win_get_buf(0)
  empty_buffer = vim.api.nvim_create_buf(true, true)
  term_window = vim.api.nvim_open_win(empty_buffer, false, {
    split = 'right',
    win = 0
  })

  term_job_id = vim.api.nvim_win_call(term_window, function() vim.api.nvim_exec2("term bash", {output=false}) return channel end)
  vim.api.nvim_buf_set_var(source_buffer, "slime_config", {job_id=term_job_id})
  vim.api.nvim_set_current_win(source_window)
end

return { 'jpalardy/vim-slime', 
init = function()
    vim.g.slime_target = "neovim"
    vim.g.slime_no_mappings = true
end,
config =  function()
    vim.g.slime_input_pid = false
    vim.g.slime_suggest_default = true
    vim.g.slime_menu_config = false
    vim.g.slime_neovim_ignore_unlisted = false
    -- options not set here are g:slime_neovim_menu_order, g:slime_neovim_menu_delimiter, and g:slime_get_jobid
    -- see the documentation above to learn about those options

    -- called MotionSend but works with textobjects as well
    vim.keymap.set("n", "st", open_terminal, { desc = "Slime open terminal"})
    vim.keymap.set("n", "sz", "<Plug>SlimeMotionSend", { desc = "Slime send motion"})
    vim.keymap.set("n", "ss", "<Plug>SlimeLineSend", { desc = "Slime send line"})
    vim.keymap.set("x", "ss", "<Plug>SlimeRegionSend", { desc = "Slime send selection"})
    vim.keymap.set("n", "sc", "<Plug>SlimeConfig", { desc = "Slime config"})
  -- vim.cmd [[
  -- let g:slime_target = "neovim"
  -- " let g:slime_python_ipython = 1
  -- let g:slime_dont_ask_default = 1
  -- " let g:slime_paste_file = '~/.slime_paste'

  -- function! SlimeTermV() abort
  -- vsplit
  -- enew
  -- terminal bash
  -- let l:cur_dir = "cd " . getcwd()
  -- let l:repl_job_id = b:terminal_job_id
  -- " Go to previous split.
  -- execute 'normal!' . "\<c-w>p"
  -- "let buffer's REPL be the one we just entered.
  -- let b:slime_config = {'jobid': l:repl_job_id}
  -- " Go back to terminal window
  -- execute 'normal!' . "\<c-w>p"
  -- endfunction

  -- nmap <silent> <Leader>st :call SlimeTermV()<CR>
  -- nmap <silent> <Leader>ss <Plug>SlimeLineSend
  -- " defined for python use in Windows
  -- nmap <silent> <Leader>sf <Plug>SlimeLineSend <bar>:call slime#send("\r")<cr>
  -- nmap <silent> <Leader>sa <Plug>SlimeParagraphSend
  -- xmap <silent> <Leader>ss <Plug>SlimeRegionSend

  -- ]]

end
}
