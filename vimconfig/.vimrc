set encoding=utf-8
set mouse=a
set mousemodel=extend
set updatetime=300
set nu rnu ru ls=2
" set laststatus=2
set et sts=0 ts=4 sw=4
set signcolumn=number
" set signcolumn=yes
" about search highlights
set hls is si
" set nohls
set listchars=tab:▸\ ,trail:⋅,extends:❯,precedes:❮
set cinoptions=j1,(0,ws,Ws,g0,:0,=0,l1
set cinwords=if,else,switch,case,for,while,do
set showbreak=↪
set list
" set clipboard+=unnamedplus
set switchbuf=useopen
"set switchbuf=usetab
set exrc
" about folding
" set fdm=syntax fdl=100
set foldtext='+--'
set bri wrap
"set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set timeout nottimeout ttimeoutlen=10
set virtualedit=all
set undofile
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set shortmess+=c
set bg=dark
hi LineNrAbove guifg=#cc6666 ctermfg=red
hi LineNrBelow guifg=#66cc66 ctermfg=green
hi Normal ctermbg=none
hi SignColumn ctermbg=none
set termguicolors

if has('nvim')
    set undodir=/tmp//,.
    set backupdir=/tmp//,.
    set directory=/tmp//,.
else
    set undodir=/tmp//,.
    set backupdir=/tmp//,.
    set directory=/tmp//,.
endif

syntax on
filetype on
filetype plugin on
filetype indent on

let g:mapleader = ' '
"let g:mapleader = ','
"let g:mapleader = 'g'

nnoremap <silent> gb :wa<CR>:bp<CR>
nnoremap <silent> gt :wa<CR>:bn<CR>
inoremap kj <ESC>
inoremap jk <ESC>
nnoremap Q q
nnoremap <silent> q :wq!<CR>
nnoremap <silent> <leader>q :q!<CR>
vnoremap q <ESC>
" nnoremap <silent> <leader>t :wa<CR>:sh<CR><CR>
nnoremap <silent> <leader>t :ter<CR>
vmap <leader>t <ESC><leader>t
nnoremap <silent><expr> gh (v:count == 0 ? '^' : '^^' . (v:count != 1 ? (v:count - 1) . 'l' : ''))
nnoremap <silent><expr> gl (v:count == 0 ? '$' : '^$' . (v:count != 1 ? (v:count - 1) . 'h' : ''))
xnoremap <silent><expr> gh (v:count == 0 ? '^' : '^^' . (v:count != 1 ? (v:count - 1) . 'l' : ''))
xnoremap <silent><expr> gl (v:count == 0 ? '$' : '^$' . (v:count != 1 ? (v:count - 1) . 'h' : ''))
tnoremap <ESC> <C-\><C-n>

augroup insert_curline
    autocmd InsertEnter,InsertLeave * set cul!
augroup end
autocmd SwapExists * let v:swapchoice = "e"
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" this is for wsl 
" let g:clipboard = {
"     \ 'name': 'WslClipboard',
"     \ 'copy': {
"     \   '+': 'clip.exe',
"     \   '*': 'clip.exe',
"     \ },
"     \ 'paste': {
"     \   '+': 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))', 
"     \   '*': 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
"     \ },
"     \   'cache_enabled': 0,
"     \ }
