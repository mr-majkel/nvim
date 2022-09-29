let g:startify_lists = [
    \ { 'type': 'files',     'header': ['   Recent files']            },
    \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
    \ { 'type': 'commands',  'header': ['   Commands']       },
    \ ]

let g:startify_files_number = 5

let g:startify_bookmarks = [{'c': '$MYVIMRC'}]
let g:startify_change_to_vcs_root = 1

let g:startify_skiplist = [
  \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc',
  \ escape(fnamemodify(resolve($XDG_CONFIG_HOME), ':p'), '\') . escape('\nvim\plugged\*\doc', '\')
  \ ]

" mappings
nnoremap S :SClose
