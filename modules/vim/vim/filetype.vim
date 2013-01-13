" Vim support file to detect file types

if exists("did_load_filetypes")
 finish
endif

" markdown filetype file

augroup markdown
 au! BufRead,BufNewFile *.mkd setfiletype mkd
augroup END

" detect puppet filetypes

augroup filetypedetect
    au! BufRead,BufNewFile *.pp setfiletype puppet
augroup END

" detect drupal modules

augroup filetypedetect
    au! BufRead,BufNewFile *.module setfiletype php
augroup END
