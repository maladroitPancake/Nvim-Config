"plugin loading
call plug#begin()

Plug 'SirVer/ultisnips', { 'for': 'tex'}
Plug 'lervag/vimtex', { 'for': 'tex'}
Plug 'cocopon/iceberg.vim'
Plug 'vim-airline/vim-airline'
Plug 'tmsvg/pear-tree'

call plug#end()

" Theme
"syntax enable
colorscheme iceberg

let mapleader = " "

"ultisnips keybinds + directory
let g:UltiSnipsExpandOrJumpTrigger = '<Tab>'
"let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'
let g:UltiSnipsSnippetDirectories=['~/.config/nvim/UltiSnips']

let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_autoclose_after_keystrokes = 30

let g:pear_tree_ft_disabled = ['tex']
"let g:pear_tree_pairs = {
"			\ '(': {'closer': ')'},
"			\ '[': {'closer': ']'},
"			\ '{': {'closer': '}'},
"			\ '\\{': {'closer': '\\}'}
"			\}
"This slows stuff down so I'm gonna try it disabled for a bit
"let g:pear_tree_smart_openers = 1
"let g:pear_tree_smart_closers = 1
"let g:pear_tree_smart_backspace = 1
"let g:pear_tree_timeout = 35

set noshowmode

"use enter to turn off highlighting
nnoremap <leader><CR> <cmd>noh<CR>
"refreshes snippets fast
nnoremap <leader>us <cmd>call UltiSnips#RefreshSnippets()<CR>
"Write files
nnoremap <leader>w <cmd>write<CR>
"Enter visual block
nnoremap <leader>v <c-v>
"Switch windows
nnoremap <leader>s <c-W>w

"Might want to enable for future? I maybe want this to be tab but it probably
"messes with snippets.
"imap <Tab> <Plug>(PearTreeJump)
