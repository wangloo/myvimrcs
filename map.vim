" 用空格键来开关折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 

" 下方打开内部的terminal
noremap <leader>t :belowright terminal<CR>

" Delete but not fill default register
" (one of things I HATE about vim!
nnoremap <leader>d "_d
vnoremap <leader>d "_d








" nnoremap <silent> <F2> :lchdir %:p:h<CR>:pwd<CR>
" nmap <F4> :terminal<CR>ls<CR>

" nnoremap <silent> <F9> :terminal ++shell make clean && make && ./build/main<CR>
nnoremap <silent> <F9> :terminal ++shell make clean && make monitor && ./run-qemu-virt.sh<CR>
" nnoremap <silent> <F9> :terminal  ./run-qemu-virt.sh<CR>
" nnoremap <silent> <F9> :terminal ++shell make qemu-nox CPUS=4 <CR>
" nnoremap <silent> <F10> <C-w><C-w>make run-qemu<CR><C-a>xexit<CR>
nnoremap <F10> :q!<CR>
tnoremap <F10> <C-A>x
tnoremap <Esc> <C-W>N
