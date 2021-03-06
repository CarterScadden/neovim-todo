let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

" command to run our plugin
command! NEO_VIM_TODO_OPEN_TODO lua require("neo-vim-todo").open_todo()
command! NEO_VIM_TODO_CLOSE_TODO lua require("neo-vim-todo").close_todo()
command! NEO_VIM_TODO_SAVE_TODO lua require("neo-vim-todo").save_todo()

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

augroup NEOVIM_TODO
  autocmd!
augroup END


