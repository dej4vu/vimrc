set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'SirVer/ultisnips'
Plugin 'tagbar'
Bundle 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"execute pathogen#infect()
syntax on
filetype plugin indent on
"colorscheme molokai
colorscheme elflord
set shiftwidth=4
set tabstop=4
set ruler
set laststatus=2
set history=500
"set scrolloff=4
nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_disable_autoinstall = 0
let g:go_auto_type_info = 1

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:molokai_original = 1
let g:rehash256 = 1

let g:ycm_min_num_of_chars_for_completion = 1
let g:EclimCompletionMethod = 'omnifunc'
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"   "回车即选中当前项
let g:airline_powerline_fonts = 1

nmap <F5> :YcmForceCompileAndDiagnostics<CR>

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

"enable 256 colors when using xterm
"if &term =~ "xterm"
"        " 256 colors
"        let &t_Co = 256
"     " restore screen after quitting
"        let &t_ti = "\<Esc>7\<Esc>[r\<Esc>[?47h"
"        let &t_te = "\<Esc>[?47l\<Esc>8"
"        if has("terminfo")
"                let &t_Sf = "\<Esc>[3%p1%dm"
"                let &t_Sb = "\<Esc>[4%p1%dm"
"        else
"                let &t_Sf = "\<Esc>[3%dm"
"                let &t_Sb = "\<Esc>[4%dm"
"        endif
" endif
