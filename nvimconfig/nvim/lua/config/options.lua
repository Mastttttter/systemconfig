-- vim.g.mapleader = ","
vim.opt.clipboard = ""

vim.cmd([[
set encoding=utf-8
set mouse=a
set mousemodel=extend
set updatetime=300
set nu rnu ru ls=2
" set laststatus=2
" set et sts=0 ts=4 sw=4
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
set clipboard+=unnamedplus
set switchbuf=useopen
"set switchbuf=usetab
set exrc
" about folding
" set fdm=syntax fdl=100
set foldtext='+--'
set bri wrap
"set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set timeout nottimeout ttimeoutlen=10
" set virtualedit=all
set undofile
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set shortmess+=c
set bg=dark
" hi LineNrAbove guifg=#cc6666 ctermfg=red
" hi LineNrBelow guifg=#66cc66 ctermfg=green
" hi Normal ctermbg=none
" hi SignColumn ctermbg=none
set termguicolors
]])

vim.cmd([[
augroup disable_formatoptions_cro
autocmd!
autocmd BufEnter * setlocal formatoptions-=cro
augroup end
]])

vim.cmd([[
augroup disable_swap_exists_warning
autocmd!
autocmd SwapExists * let v:swapchoice = "e"
augroup end
]])

-- vim.cmd [[
-- augroup neogit_setlocal
-- autocmd!
-- autocmd FileType NeogitStatus set foldtext='+--'
-- augroup END
-- ]]

-- vim.g_printed = ''
-- vim.g_print = function(msg)
--     vim.g_printed = vim.g_printed .. tostring(msg) .. '\n'
-- end
-- vim.g_dump = function()
--     print(vim.g_printed)
-- end

vim.lsp.set_log_level("warn")

require("config.settings")
require("config.custom")
