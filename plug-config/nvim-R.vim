" nvim-R options
let R_path = "~/Documents/R/R-4.0.1/bin/x64"
let R_hi_fun_globenv=2 "
let R_app = "Rterm.exe"
let R_cmd = "R"
let R_hl_term = 0
let R_args = []  " if you had set any
let R_bracketed_paste = 1
let R_nvim_wd = 1 " R's working directory to be the same as Vim's working directory
" Shortcut for R's assignment operator: 0 turns it off; 1 assigns underscore; 2 assigns two underscores
let R_assign=2
" start R with F2 key
nmap <F2> <Plug>RStart 
imap <F2> <Plug>RStart
vmap <F2> <Plug>RStart

" Send selection or line to R with space bar, respectively.
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>REDSendParagraph

"let R_hl_term=1 " Syntax highlight terminal as rout file type
hi rGlobEnvFun ctermfg=117 guifg=#87d7ff cterm=italic gui=italic
