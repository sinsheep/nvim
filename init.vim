" __  ____   ____     _____ __  __ ____   ____ 
" |  \/  \ \ / /\ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| |\ V /  \ \ / / | || |\/| | |_) | |    
" | |  | | | |    \ V /  | || |  | |  _ <| |___ 
" |_|  |_| |_|     \_/  |___|_|  |_|_| \_\\____| 

"
" author:ysx 
let mapleader=" "
syntax enable
syntax on
set rnu
set number
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
set noswapfile
set encoding=UTF-8
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set scrolloff=10
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
" set t_Co=256
" set guifont=DroidSansMono_Nerd_Font:h11
noremap <LEADER><CR> :nohlsearch<CR>

inoremap jk <esc>
map Q :q<CR>

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>


inoremap <C-l> <right>
""禁用方向键位
"map <UP>  <nop>
"map <down> <nop>
"map <left> <nop>
"map <right>  <nop>

map sh :set splitright<CR>:vsplit<CR>

map sl :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

noremap <right> :vertical resize-5<cr>
noremap <down> :res +5<cr>
noremap <left> :vertical resize +5<cr>
noremap <up> :res -5<cr>





call plug#begin('~/.config/nvim/plugged')

"---------------dress my vim------------
Plug 'luochen1990/rainbow'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
" --------------awesome tool-------------
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
" Plug 'Yggdroot/indentLine'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-repeat'
"Plug 'terryma/vim-multiple-cursors'
" Track the engine.
" Plug 'SirVer/ultisnips'
"-----------------code(auto compelte and syntax check)-------------------
Plug 'pangloss/vim-javascript'
Plug 'turbio/bracey.vim'
" Plug 'othree/html5.vim'
" Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'fatih/vim-go'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

call plug#end()
colorscheme gruvbox
let g:gruvbox_contrast_dark="soft"
highlight link CocErrorSign GruvboxRed
"colorscheme snazzy
""let g:solarized_termcolors=256
"colorscheme solarized
set background=dark
" hi Quote ctermbg=109 guifg=#83a598"
" hi Normal ctermfg=222 ctermbg=none
"vim-airline
" let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled = 1
nmap <leader><tab> :bn<cr>
set ambiwidth=double
" let g:airline_powerline_fonts=1

"fzf
noremap <c-p> :Files<CR>
noremap <leader>b :Buffers<cr>
noremap <leader>ag :Ag <cr>


"markdown-preview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
			\ 'mkit': {},
			\ 'katex': {},
			\ 'uml': {},
			\ 'maid': {},
			\ 'disable_sync_scroll': 0,
			\ 'sync_scroll_type': 'middle',
			\ 'hide_yaml_meta': 1,
			\ 'sequence_diagrams': {}
			\ }

let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
" markdown 快捷键
autocmd Filetype markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd filetype markdown inoremap ,m $$<Enter><enter>$$ <Esc>ki<tab>
autocmd Filetype markdown inoremap ,h ====<Space><++><Esc>F=hi
autocmd Filetype markdown inoremap ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,l --------<Enter>
autocmd FileType markdown setlocal spell spelllang=en_us,cjk
"autocmd Filetype makrdown inoremap ,n <<Br>><Space><Esc>A
"indentline
" let g:indentLine_color_term = 239 
" let g:indentLine_char = '¦'
" let g:indentLine_setConceal = 0
" let g:indentLine_showFirstIndentLevel = 1

	
""snips配置
"let g:UltiSnipsExpandTrigger="<c-e>"
"let g:UltiSnipsJumpForwardTrigger="<c-e>"
"let g:UltiSnipsJumpBackwardTrigger="<c-n>"
"let g:UltiSnipsEditSplit="vertical"
""let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]


" nerdtree
nmap <leader>nd :NERDTreeMirror<CR>
nmap <leader>nd :NERDTreeToggle<CR>
let g:NERDTreeIndicatorMapCustom = { 
			\ "Modified"  : "✹",
			\ "Staged"    : "✚",
			\ "Untracked" : "✭",
			\ "Renamed"   : "➜",
			\ "Unmerged"  : "═",
			\ "Deleted"   : "✖",
			\ "Dirty"     : "✗",
			\ "Clean"     : "✔︎",
			\ 'Ignored'   : '☒',
			\ "Unknown"   : "?"
			\ }
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '__pycache__']
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"let g:NERDTreeHighlightFolders = 1
"let g:NERDTreeHighlightFoldersFullName = 1
"let g:NERDTreeExtensionHighlightColor = {}  
"let g:NERDTreePatternMatchHighlightFullName = 1
"let g:webdevicons_enable_nerdtree = 1
"let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
"
"
"tagbar
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_autofocus = 1
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
nmap <leader>p :TagbarToggle<CR>


"vim-emmet
let g:user_emmet_leader_key='<C-Y>'
let g:user_emmet_install_global = 0
autocmd FileType html,css,template EmmetInstall
""rainbow
let g:rainbow_active = 1

""---------------------coc-nvim----------------------"
" TextEdit might fail if hidden is not set.
"set hidden

" " Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" " Give more space for displaying messages.
set cmdheight=2

" " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" " delays and poor user experience.
set updatetime=300

" " Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" " Always show the signcolumn, otherwise it would shift the text each time
" " diagnostics appear/become resolved.

set signcolumn=yes
let g:coc_global_extensions =['coc-python','coc-json','coc-highlight','coc-html','coc-css','coc-lists','coc-vimlsp','coc-translator', 'coc-tsserver']

imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
	" Use `complete_info` if your (Neo)Vim version supports it.
	inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
	imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(cnc-format-selected)

" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder.
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)


nmap <Leader>t <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)
nmap <Leader>e <Plug>(coc-translator-e)
nmap <Leader>e <Plug>(coc-translator-ev)
" replace
nmap <Leader>r <Plug>(coc-translator-r)
nmap <Leader>r <Plug>(coc-translator-rv)
""-----------------coc-nvim----------------------------"


"vim-go

let g:go_def_mode = 'gopls'
let g:go_doc_keywordprg_enabled = 0 "关闭K 进入goDoc  ，会于coc.nvim 冲突"
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0


"vim-easymotion
nmap ss <Plug>(easymotion-s2)

"python-mode
let g:pymode_syntax= 1
let g:pymode_python = 'python3'
let g:pymode_trim_whitespaces = 1
let g:pymode_doc= 0
"let g:pymode_doc_bind = 'K'
" let g:pymode_rope = 1
let g:pymode_rope_goto_definition_bind = "<C-[>"
let g:pymode_lint = 1
let g:pymode_indent = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8']    ", 'mccabe', 'pylint']
let g:pymode_options_max_line_length = 120
"let g:pymode_lint_on_write = 0
""let g:pymode_rope = 1
"let g:pymode_lint_on_fly = 0
"let g:pymode_lint_cwindow = 0
"""let g:pymode_lint_todo_symbol = 'WW'
"let g:pymode_lint_comment_symbol = 'CC'
"let g:pymode_lint_visual_symbol = 'RR'
"let g:pymode_lint_error_symbol = 'EE'
"let g:pymode_lint_info_symbol = 'II'
"let g:pymode_lint_pyflakes_symbol = 'FF'
""undotree
noremap <leader>ut :UndotreeToggle <cr>

"ale
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1
nmap <Leader>d :ALEDetail<CR>
let b:ale_linters = {
			\'go':'golint',
			\'python':'pylint'}
let g:ale_fix_on_save = 1

" vim-javascript
let g:javascript_plugin_jsdoc = 1

"vim-polyglot 
" let g:polyglot_disabled = ['javascript']

" bracey
" let g:bracey_eval_on_save = 1

"------------------function-------------------
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
        exec "Bracey"
		" exec "!google-chrome-stable %"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		CocCommand flutter.run
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc
