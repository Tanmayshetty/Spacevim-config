function! myspacevim#before() abort
  let g:neoformat_try_formatprg = 1
  let g:ale_fix_on_save = 1
  let g:spacevim_enable_neomake = 0
  let g:spacevim_enable_ale = 1
  let g:neoformat_enabled_javascript = ['prettier']
  let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'css': ['prettier'],
\   'scss':['stylelint','prettier']
\}
  let g:ale_fix_on_save = 1
  let g:neoformat_typescriptreact_prettier = {
    \ 'exe': 'prettier',
    \ 'args': ['--stdin', '--stdin-filepath', '"%:p"', '--parser', 'typescript'],
    \ 'stdin': 1
    \ }
  let g:neoformat_enabled_typescriptreact = ['tsfmt', 'prettier']

endfunction
