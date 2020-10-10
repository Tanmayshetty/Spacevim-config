
function! neoformat#formatters#javascriptreact#npxprettierreact() abort
  return {
        \ 'exe': 'npx',
        \ 'args': ['--quiet', 'prettier', '--stdin', '--stdin-filepath', '"%:p"'],
        \ 'stdin': 1
        \ }
endfunction

function! neoformat#formatters#javascriptreact#npxprettiereslintreact() abort
  return {
        \ 'exe': 'npx',
        \ 'args': ['--quiet', 'prettier-eslint', '--stdin', '--stdin-filepath', '"%:p"'],
        \ 'stdin': 1
        \ }
endfunction
