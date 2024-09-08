" Plugins Configuration
" =====================

" (1) coc.nvim

let g:coc_config_home = '~/.vim/myvimrcs/'

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" To get correct configure file comment highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+





" (2) airline
"     -------
" Enable the list of buffers
" Show just the filename
let g:airline#extensions#tabline#enabled = 1     
let g:airline#extensions#tabline#fnamemod = ':t' 


" (3) nerdcommenter
"     =============
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '//' , 'right': ''}}

" (4) LeaderF
"     =======
" Don't show preview window in 'file' mode
let g:Lf_PreviewResult = { 'File': 0 }
" let g:Lf_MaxCount = 1000
let g:Lf_RootMarkers = ['.git', '.svn', '.hg', '.project', '.root']
let g:Lf_DefaultExternalTool='rg'
let g:Lf_WindowHeight = 0.3
let g:Lf_WindowPosition = 'bottom'

