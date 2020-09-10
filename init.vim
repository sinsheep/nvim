" __  ____   ____     _____ __  __ ____   ____
" |  \/  \ \ / /\ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| |\ V /  \ \ / / | || |\/| | |_) | |
" | |  | | | |    \ V /  | || |  | |  _ <| |___
" |_|  |_| |_|     \_/  |___|_|  |_|_| \_\\____|
"
" author:ysx
let mapleader=" "
set autochdir
syntax enable
syntax on
set rnu
set number
set cursorline
set wrap
set textwidth=0
set splitright
set splitbelow
set showcmd
set wildmenu
set hlsearch
set noswapfile
set encoding=UTF-8
exec "nohlsearch"
set incsearch
set notimeout
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

" Open the vimrc file anytime
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>

nmap s <nop>
nmap S :w<CR>
nmap Q :q<CR>
nmap R :source $MYVIMRC<CR>



""禁用方向键位
"map <UP>  <nop>
"map <down> <nop>
"map <left> <nop>
"map <right>  <nop>

map sh :set splitright<CR>:vsplit<CR>

map sl :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

" noremap <c-right> :vertical resize-5<cr>
" noremap <c-down> :res +5<cr>
" noremap <c-left> :vertical resize +5<cr>
" noremap <c-up> :res -5<cr>

noremap <m-up> :res +5<CR>
noremap <m-down> :res -5<CR>
noremap <m-left> :vertical resize-5<CR>
noremap <m-right> :vertical resize+5<CR>




" terminal behaviors
let g:neoterm_autoscroll = 1
autocmd termopen term: startinsert
tnoremap <c-n> <c-\><c-n>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'


call plug#begin('~/.config/nvim/plugged')

"---------------dress my vim------------
Plug 'ryanoasis/vim-devicons'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'itchyny/calendar.vim'
" --------------awesome tool-------------
Plug 'mg979/vim-visual-multi'
Plug 'liuchengxu/vista.vim'
Plug 'puremourning/vimspector',{'do': './install_gadget.py --enable-c --enable-python --enable-go'}
Plug 'voldikss/vim-floaterm'
" Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-repeat'
"-----------------editEnhancement----------------------------
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-commentary'
Plug 'chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs' 
"-----------------gitTools----------------------------
Plug 'airblade/vim-gitgutter'
"-----------------highlight----------------------------
Plug 'luochen1990/rainbow'
"-----------------find && place -----------------------------
Plug 'brooth/far.vim'
"-----------------code(auto compelte and syntax check)-------------------
Plug 'pangloss/vim-javascript'
Plug 'turbio/bracey.vim',{'for': ['html' ,'vim-plug']}
" Plug 'othree/html5.vim'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color',{ 'for': ['vim-plug','css','html'] }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
"----------------go----------------------
Plug 'fatih/vim-go',{'for': ['go','vim-plug']}
"----------------python------------------
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
call plug#end()
colorscheme gruvbox
let g:gruvbox_contrast_dark="soft"
highlight link CocErrorSign GruvboxRed
" colorscheme snazzy
"let g:solarized_termcolors=256
"colorscheme solarized
set background=dark
" hi Quote ctermbg=109 guifg=#83a598"
" hi Normal ctermfg=222 ctermbg=none

" ===
" === vim-airline
" ===

" let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled = 1
" set ambiwidth=double
" let g:airline_powerline_fonts=1

" ===
" === fzf.vim
" ===
noremap <c-p> :Files<CR>
noremap <leader>b :Buffers<cr>
noremap <leader>ag :Ag <cr>
let g:fzf_preview_window = 'right:60%'

" ===
" === markdown-preview
" ===

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


" ===
" === vista.vim
" ===
noremap <LEADER>v :Vista coc<CR>
noremap <c-t> :silent! Vista finder coc<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
            \   "function": "\uf794",
            \   "variable": "\uf71b",
            \  }

" ===
" === tagbar
" ===

" let Tlist_Ctags_Cmd = '/usr/bin/ctags'
" let g:tagbar_ctags_bin = 'ctags'
" let g:tagbar_autofocus = 1
" let Tlist_Show_One_File = 1
" let Tlist_Exit_OnlyWindow = 1
" let Tlist_Use_Right_Window = 1
" nmap <leader>p :TagbarToggle<CR>


" ===
" === vim-emmet
" ===

let g:user_emmet_leader_key='<C-Y>'
let g:user_emmet_install_global = 0
autocmd FileType html,css,template EmmetInstall

" ===
" === rainbow
" ===

let g:rainbow_active = 1

" ===
" === coc.nvim
" ===

" TextEdit might fail if hidden is not set.
set hidden

" " Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" " Give more space for displaying messages.
" set cmdheight=2

" " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" " delays and poor user experience.
set updatetime=300

" " Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" " Always show the signcolumn, otherwise it would shift the text each time
" " diagnostics appear/become resolved.

set signcolumn=yes
let g:coc_global_extensions =[
            \'coc-python'
            \,'coc-json'
            \,'coc-highlight'
            \,'coc-html'
            \,'coc-css'
            \,'coc-lists'
            \,'coc-vimlsp'
            \,'coc-translator'
            \, 'coc-tsserver'
            \,'coc-explorer'
            \,'coc-yank'
            \,'coc-actions'
            \,'coc-snippets']

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

"coc-explorer
nmap tt :CocCommand explorer<CR>
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
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

nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>
nnoremap <silent><nowait> \a  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <leader>l  :<C-u>CocList<cr>
nnoremap <silent><nowait> <leader>c  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>

" ===
" === vim-go
" ===

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



" ===
" === vim-easymotion
" ===

nmap ss <Plug>(easymotion-s2)

" ===
" === python-mode
" ===

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

" ===
" === undotree
" ===

noremap <leader>ut :UndotreeToggle <cr>

" ===
" === ale
" ===

" let g:airline#extensions#ale#enabled = 1
" let b:ale_linters = {
"           \'go':'golint',
"           \'python':'pylint',
"             \'javascript':'eslint'}
" let g:ale_fix_on_save = 1

" let b:ale_fixers = {
"             \'javascript': ['eslint'],
"             \'html':['html-beautify']}

" ===
" === vim-javascript
" ===
" let g:javascript_plugin_jsdoc = 1

" ===
" === vim-polyglot
" ===

" let g:polyglot_disabled = ['javascript']

" ===
" === bracey
" ===

" let g:bracey_eval_on_save = 1

" ===
" === vim-indent-guides
" ===
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white ctermbg=white
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=red ctermbg=red

"vimspector
let g:vimspector_enable_mappings = 'HUMAN'
function! s:read_template_into_buffer(template)
	" has to be a function to avoid the extra space fzf#run insers otherwise
	execute '0r ~/.config/nvim/sample_vimspector_json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
			\   'source': 'ls -1 ~/.config/nvim/sample_vimspector_json',
			\   'down': 20,
			\   'sink': function('<sid>read_template_into_buffer')
			\ })
noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
noremap <leader>dr :VimspectorReset<cr>
" ===
" === vim-autoformate
" ===

noremap \f :Autoformat<CR>
" let g:autoformat_verbosemode=1
" au BufWrite *.html :Autoformat
" let g:formatdef_my_html = '"html-beautify -s 2"' 设置变量my_html
" let g:formatters_html = ['my_html'] 使用自定义的

" ===
" === calendar.vim
" ===
nnoremap \\ :Calendar -view=clock<cr>
nnoremap \c :Calendar<cr>

" ===
" === yank-key-set
" ===

vnoremap Y "+y

" ===
" === vim-floaterm
" ===
hi FloatermBorder guibg=orange guifg=cyan
hi FloatermNC guibg=skyblue
let g:floaterm_keymap_new = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
nmap <leader>ft :FloatermToggle<cr>
nmap <leader>fc :FloatermKill<cr>
"===
"=== tab management
"===
noremap tu :tabe<CR>
" Move around tabs with tn and ti
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>
noremap <LEADER>q <C-w>j:q<CR>

"===
"=== gitgutter
"===
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '░'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
" autocmd BufWritePost * GitGutter
nnoremap <LEADER>gf :GitGutterFold<CR>
nnoremap \h :GitGutterPreviewHunk<CR>
nnoremap [h :GitGutterPrevHunk<CR>
nnoremap ]h :GitGutterNextHunk<CR>
nmap <leader>hs <Plug>(GitGutterStageHunk)
nmap <leader>hu <Plug>(GitGutterUndoHunk)
"------------------function-------------------
map <leader>R :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ -Wall % -ggdb -o %<"
        :sp
        :res -15
        :term ./%<
    elseif &filetype == 'cpp'
        set splitbelow
        exec "!g++ -std=c++11 % -Wall -ggdb -o %<"
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
