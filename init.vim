" ===================== Keys =====================
" [s + d] #line22 toggle nerdtree ----- :NERDTreeToggle<>
" ===================== Keys =====================



" ===================== colorshceme settings =====================

" ===================== colorshceme settings =====================



" ===================== vim-airline settings =====================
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
" ===================== vim-airline settings =====================



" ===================== NERDTree settings =====================         
" open a NERDTree automatically when vim starts up if no files were specified    
autocmd StdinReadPre * let s:std_in=1    
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif    
                             
" open NERDTree automatically when vim starts up on opening a directory    
autocmd StdinReadPre * let s:std_in=1    
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" map a specific key or shortcut to open NERDTree
map sd :NERDTreeToggle<CR>

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Let NERDTree igonre files
let NERDTreeIgnore = ['\.pyc$', '\.swp$']
" ===================== NERDTree settings =====================      



" ===================== Plug =====================      
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'

call plug#end()
" ===================== Plug =====================  
