function! bootstrap#after() abort
  let g:neomake_javascript_eslint_maker =  {
        \ 'exe': 'npx',
        \ 'args': ['--quiet', 'eslint', '--format=compact'],
        \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
        \   '%W%f: line %l\, col %c\, Warning - %m,%-G,%-G%*\d problems%#',
        \ 'cwd': '%:p:h',
        \ 'output_stream': 'stdout',
        \ }
  let g:neomake_javascript_jsx_enabled_makers = ['eslint']

  let g:neomake_javascriptreact_jsx_enabled_makers = ['eslint']
  "let g:neoformat_enabled_javascript = ['npxprettier']
  let g:neoformat_enabled_javascript = ['npxprettiereslint']

  let g:neoformat_enabled_javascriptreact = ['npxprettiereslintreact']


  let g:ale_fixers = {}
  let g:ale_fixers['javascript'] = ['prettier']
  let g:ale_fix_on_save = 1
  let g:ale_javascript_prettier_options = '--stdin --single-quote --trailing-comma es5 --print-width 80'
  let g:spacevim_enable_neomake = 0
  let g:spacevim_enable_ale = 1
  let g:neoformat_enabled_javascript = ['prettier']
  augroup fmt
    autocmd!
    autocmd BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
    autocmd FileType javascript setlocal formatprg=prettier\ --single-quote\ --trailing-comma\ es5
    autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
    autocmd FileType scss
    " Use formatprg when available
    let g:neoformat_try_formatprg = 1
  augroup END
endfunction
