function! neoformat#formatters#scss#npxprettier() abort
  return {
        \ 'exe': 'npx',
        \ 'args': ['--quiet', 'prettier', '--stdin', '--stdin-filepath', '"%:p"'],
        \ 'stdin': 1
        \ }
endfunction

function! neoformat#formatters#scss#npxprettiereslint() abort
  return {
        \ 'exe': 'npx',
        \ 'args': ['--quiet', 'prettier-stylelint', '--stdin', '--stdin-filepath', '"%:p"'],
        \ 'stdin': 1
        \ }
endfunction
