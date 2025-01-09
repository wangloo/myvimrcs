" Plugins Configuration
" =====================

" (1) coc.nvim

let g:coc_config_home = '~/.vim/myvimrcs/'

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


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

" LeaderF gtags - 静态def/ref跳转
" 需要提前安装gtags
" let g:Lf_GtagsAutoGenerate = 1  " 打开工程自动生成gtags文件，缓存在用户目录下，
"                                 " 否则需要 :LeaderF gtags --update 手动生成
let g:Lf_Gtagslabel = 'native-pygments' " 生成gtags标签的引擎, 优先用pygments, 再用原生支持

" 在<当前光标处> 做跳转，要自行输入，只能用:Leaderf! gtags -r/-d
" fgr => search reference
" fgd => search definition
" fgg => grep
" fgn => jump to next reference
" fgp => jump to previsor reference
nmap <unique> <leader>fgd <Plug>LeaderfGtagsDefinition
nmap <unique> <leader>fgr <Plug>LeaderfGtagsReference
nmap <unique> <leader>fgs <Plug>LeaderfGtagsSymbol
nmap <unique> <leader>fgg <Plug>LeaderfGtagsGrep

vmap <unique> <leader>fgd <Plug>LeaderfGtagsDefinition
vmap <unique> <leader>fgr <Plug>LeaderfGtagsReference
vmap <unique> <leader>fgs <Plug>LeaderfGtagsSymbol
vmap <unique> <leader>fgg <Plug>LeaderfGtagsGrep

noremap <leader>fgo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fgn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fgp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>


" LeaderF rg - 文本搜索
nmap <unique> <leader>fr <Plug>LeaderfRgPrompt
nmap <unique> <leader>fra <Plug>LeaderfRgBangCwordLiteralNoBoundary
nmap <unique> <leader>frb <Plug>LeaderfRgBangCwordLiteralBoundary
nmap <unique> <leader>frc <Plug>LeaderfRgBangCwordRegexNoBoundary
nmap <unique> <leader>frd <Plug>LeaderfRgBangCwordRegexBoundary

vmap <unique> <leader>fra <Plug>LeaderfRgBangVisualLiteralNoBoundary
vmap <unique> <leader>frb <Plug>LeaderfRgBangVisualLiteralBoundary
vmap <unique> <leader>frc <Plug>LeaderfRgBangVisualRegexNoBoundary
vmap <unique> <leader>frd <Plug>LeaderfRgBangVisualRegexBoundary
