" Fonctions et mappages
" Chargement des fonctions
" mappage pour plantuml (?)
nnoremap <F5> :w<CR>:make<CR>
inoremap <F5> <Esc>:w<CR>:make<CR>

" vu ici : https://stackoverflow.com/questions/12030965/change-the-mapping-of-f5-on-the-basis-of-specific-file-type
autocmd Filetype c,cpp  inoremap <buffer> <F5> <C-o>:update<Bar>execute !make .shellescape(expand(%:r), 1)<CR>
autocmd Filetype python inoremap <buffer> <F5> <C-o>:update<Bar>execute !python .shellescape(@%, 1)<CR>
autocmd Filetype java   inoremap <buffer> <F5> <C-o>:update<Bar>execute !javac .shellescape(@%, 1)<CR>
" autocmd Filetype plantuml   inoremap <buffer> <F5> <C-o>:update<Bar>execute !plantuml .shellescape(@%, 1)<CR>"

