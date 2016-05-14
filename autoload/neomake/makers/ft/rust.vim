" vim: ts=4 sw=4 et

function! neomake#makers#ft#rust#EnabledMakers()
    return ['rustc']
endfunction

function! neomake#makers#ft#rust#rustc()
    " https://github.com/rust-lang/rust.vim/issues/31847
    return {
        \ 'args': ['-Z', 'no-trans'],
        \ 'errorformat':
            \ '%-G%f:%s:,' .
            \ '%f:%l:%c: %trror: %m,' .
            \ '%f:%l:%c: %tarning: %m,' .
            \ '%f:%l:%c: %m,'.
            \ '%f:%l: %trror: %m,'.
            \ '%f:%l: %tarning: %m,'.
            \ '%f:%l: %m',
        \ }
endfunction
