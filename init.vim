" __  ____   ____     _____ __  __ ____   ____
" |  \/  \ \ / /\ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| |\ V /  \ \ / / | || |\/| | |_) | |
" | |  | | | |    \ V /  | || |  | |  _ <| |___
" |_|  |_| |_|     \_/  |___|_|  |_|_| \_\\____|
"
" author:ysx



" ===
" === Auto load  vim-plug for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


let mapleader=" "
" set cmdheight=2
" syntax on
" syntax enable
" set list lcs=tab:\|\
set autochdir
set autoindent
set cursorline
set encoding=UTF-8
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set nobackup
set noswapfile
set notimeout
set nowritebackup
set foldenable
set foldlevel=9999
set number
set relativenumber
set scrolloff=10
set shiftwidth=4
set softtabstop=4
set tabstop=4
set shortmess+=c
set showcmd
set signcolumn=yes
set smartcase
set splitbelow
set splitright
set termguicolors " enable true colors support
set textwidth=0
set updatetime=100
set wildmenu
set wrap
set ttyfast
exec "nohlsearch"
noremap <LEADER><CR> :nohlsearch<CR>

"open file on last line
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Open the vimrc file anytime
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>

nmap s <nop>
nmap S :w<CR>
nmap Q :q<CR>
" nmap R :source $MYVIMRC<CR>

""禁用方向键位
"map <UP>  <nop>
"map <down> <nop>
"map <left> <nop>
"map <right>  <nop>

map sh :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

noremap <m-up> :res +5<CR>
noremap <m-down> :res -5<CR>
noremap <m-left> :vertical resize-5<CR>
noremap <m-right> :vertical resize+5<CR>


" terminal behaviors
let g:neoterm_autoscroll = 1
" autocmd termopen term://* startinsert
tnoremap <c-n> <c-\><c-n>
tnoremap <C-O> <C-\><C-N><C-O>



call plug#begin('~/.config/nvim/plugged')

"---------------dress my vim------------
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine' , {'on':'IndentLinesToggle'}
Plug 'hardcoreplayers/spaceline.vim'
Plug 'bagrat/vim-buffet'
Plug 'glepnir/dashboard-nvim'
Plug 'itchyny/calendar.vim', {'on':'Calendar'}
Plug 'morhetz/gruvbox'
" --------------awesome tool-------------
Plug 'andrewradev/splitjoin.vim'
Plug 'mg979/vim-visual-multi'
Plug 'liuchengxu/vista.vim'
" Plug 'puremourning/vimspector',{'do': './install_gadget.py --enable-c --enable-python --enable-go','for':['cpp','c','python','go']}
Plug 'voldikss/vim-floaterm',{'on':['FloatermToggle','FloatermNew']}
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'easymotion/vim-easymotion', { 'on':['<Plug>(easymotion-s2)'] }
Plug 'tpope/vim-repeat'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'pechorin/any-jump.vim'
"-----------------editEnhancement----------------------------
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular',{'on':'Tabular'}
Plug 'tomtom/tcomment_vim'
Plug 'chiel92/vim-autoformat',{'on':'Autoformat'}
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'
"-----------------databaseTools----------------------------
" Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'tpope/vim-dadbod',{'on':'DB'}
"-----------------gittools----------------------------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"-----------------highlight----------------------------
Plug 'luochen1990/rainbow'
"-----------------find && place -----------------------------
Plug 'brooth/far.vim',{ 'on': ['F', 'Far', 'Fardo'] }
"-----------------json,html,javascript-------------------
Plug 'yuezk/vim-js' ,{ 'for': ['php', 'html', 'javascript', 'css'] }
Plug 'elzr/vim-json' ,{'for':'json'}
Plug 'turbio/bracey.vim',{'for':'html'}
Plug 'mattn/emmet-vim',{'for':'html'}
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase','on': 'HexokinaseToggle'}
Plug 'herringtondarkholme/yats.vim',{'for': 'typescript'}
"----------------markdown----------------------
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() },'for':[ 'vim-plug','markdown'] }
"----------------go----------------------
Plug 'fatih/vim-go',{'for': ['go']}
"----------------python------------------
Plug 'vim-python/python-syntax',{'for':'python'}
"----------------cpp or c------------------
Plug 'jackguo380/vim-lsp-cxx-highlight',{'for':['cpp','c']}
"----------------my plug ---------------
" Plug 'sinsheep/vim-tzoj',{'for':['cpp','c']}
call plug#end()

"===
"=== colorscheme
"===
colors gruvbox
highlight link CocErrorSign GruvboxRed
let g:gruvbox_contrast_dark="medium"
let g:gruvbox_contrast_light="soft"
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" let g:gruvbox_hls_cursor='red'
" hi Quote ctermbg=109 guifg=#83a598"
" hi Normal ctermfg=222 ctermbg=none

"===
"=== dashboard
"===
let g:dashboard_default_executive ='fzf'
let g:dashboard_custom_shortcut={
      \ 'last_session'       : 'SPC s l',
      \ 'find_history'       : 'SPC f h',
      \ 'find_file'          : 'CTRL p',
      \ 'new_file'           : 'SPC n f',
      \ 'change_colorscheme' : 'SPC s c',
      \ 'find_word'          : 'SPC f a',
      \ 'book_marks'         : 'SPC f b',
      \ }
" let g:dashboard_default_header='pikachu'
source ~/.config/nvim/core-setting/dashboard.vim

"===
"===   hexokinase
"===

let g:Hexokinase_highlighters=['backgroundfull']
" let g:Hexokinase_highlighters = [
" \   'virtual',
" \   'sign_column',
" \   'background',
" \   'backgroundfull',
" \   'foreground',
" \   'foregroundfull'
" \ ]
let g:Hexokinase_ftEnabled = ['css', 'html', 'javascript']

" ===
" === vim-airline
" ===
" let g:airline_theme='dark_minimal'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts=1
let g:spaceline_custom_diff_icon = ['+', '-', '~']
let g:spaceline_diff_tool = 'git-gutter'
let g:spaceline_seperate_style= 'slant'
" let g:spaceline_scroll_chars = ['⎺', '⎻', '⎼', '⎽', '⎯']


"===
"=== vim-buffet
"===
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

noremap ]b :bn<CR>
noremap [b :bp<CR>
noremap <Leader>w :Bw<CR>
" noremap <Leader><S-Tab> :Bw!<CR>
" noremap <C-s> :tabnew split<CR>

" dracula colorscheme
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer    gui=NONE guibg=#50fa7b guifg=#282a36
  hi! BuffetActiveBuffer     gui=NONE guibg=#bd93f9 guifg=#282a36
  hi! BuffetBuffer           gui=NONE guibg=#282a36 guifg=#6272a4
  hi! BuffetModCurrentBuffer gui=NONE guibg=#8be9fd guifg=#282a36
  hi! BuffetModActiveBuffer  gui=NONE guibg=#ffb86c guifg=#282a36
  hi! BuffetModBuffer        gui=NONE guibg=#ff5555 guifg=#282a36
  hi! BuffetTrunc            gui=NONE guibg=#bd93f9 guifg=#282a36
  hi! BuffetTab              gui=NONE guibg=#bd93f9 guifg=#282a36
endfunction
" function! g:BuffetSetCustomColors()
"   hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#ffff00 guifg=#000000
"   hi! BuffetBuffer cterm=NONE ctermbg=5 ctermbg=8 guifg=#FFFFFF
" endfunction
let g:buffet_show_index = 1
let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"

" ===
" === fzf.vim
" ===
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nmap <Leader>nf :<C-u>DashboardNewFile<CR>
nnoremap <silent> <Leader>fh :History<CR>
nnoremap <silent> <Leader>sc :Colors<CR>
nnoremap <silent> <Leader>fa :Rg<CR>
noremap <c-p> :Files<CR>
noremap <leader>b :Buffers<cr>
noremap <leader>ag :Ag <cr>
nnoremap <silent> <Leader>fb :Marks<CR>
let g:fzf_preview_window = 'right:50%'


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
"md-snippets
source ~/.config/nvim/md-snippets.vim

" ===
" === vista.vim
" ===
noremap tg :Vista coc<CR>
noremap <c-t> :silent! Vista finder coc<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
"
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
" let g:vista_disable_statusline = 1
let g:vista_default_executive = 'ctags'
let g:vista_echo_cursor_strategy = 'floating_win'
" let g:vista#renderer#icons = {
"             \   "function": "\uf794",
"             \   "variable": "\uf71b"
"             \}

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

let g:coc_global_extensions =[
      \'coc-python'
      \,'coc-json'
      \,'coc-highlight'
      \,'coc-html'
      \,'coc-css'
      \,'coc-lists'
      \,'coc-vimlsp'
      \,'coc-translator'
      \,'coc-tsserver'
      \,'coc-explorer'
      \,'coc-yank'
      \,'coc-actions'
      \,'coc-diagnostic'
      \,'coc-prettier'
      \,'coc-snippets']


imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" use <c-j> for both expand and jump (make expand higher priority.)
imap <c-j> <Plug>(coc-snippets-expand-jump)
" use tab for trigger completion with characters ahead and navigate.
" note: use command ':verbose imap <tab>' to make sure tab is not mapped by
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
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
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
hi  CursorColumn  ctermfg=222


" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
vmap <leader>f  <Plug>(coc-format-selected)
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
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

nmap <Leader>t <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)

xmap <leader>x  <Plug>(coc-convert-snippet)
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
let g:go_highlight_operators = 0
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_interfaces = 0
let g:go_highlight_variable_assignments = 1
let g:go_highlight_variable_declarations = 1


" ===
" === vim-easymotion
" ===
nmap ss <Plug>(easymotion-s2)

"===
"=== python
"===
let g:python_highlight_all = 1
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" ===
" === undotree
" ===
noremap <leader>ut :UndotreeToggle <cr>


" ===
" === bracey
" ===
let g:bracey_refresh_on_save=1
" let g:bracey_eval_on_save = 1

" ===
" === indentLine
" ===
noremap <leader>ig :IndentLinesToggle<cr>


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
" hi FloatermBorder guibg=orange guifg=cyan
hi FloatermNC guibg=skyblue
let g:floaterm_keymap_next   = '<F2>'
nmap <F1> :FloatermNew<cr>
nmap <leader>ft :FloatermToggle<cr>
nmap <leader>fc :FloatermKill<cr>

"===
"=== tab management
"===
" noremap tu :tabe<CR>
" " Move around tabs with tn and ti
" noremap tn :-tabnext<CR>
" noremap ti :+tabnext<CR>
" " Move the tabs with tmn and tmi
" noremap tmn :-tabmove<CR>
" noremap tmi :+tabmove<CR>
" noremap <LEADER>q <C-w>j:q<CR>

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
let g:Sitgutter_sign_modified_removed = '▒'
autocmd BufWritePost * GitGutter
nnoremap <LEADER>gf :GitGutterFold<CR>
nnoremap \h :GitGutterPreviewHunk<CR>
nnoremap [h :GitGutterPrevHunk<CR>
nnoremap ]h :GitGutterNextHunk<CR>
nmap <leader>hs <Plug>(GitGutterStageHunk)
nmap <leader>hu <Plug>(GitGutterUndoHunk)

"===
"=== any-jump
"===
" nnoremap <leader>j :AnyJump<CR>
" xnoremap <leader>j :AnyJumpVisual<CR>
" nnoremap <leader>ab :AnyJumpBack<CR>
" nnoremap <leader>al :AnyJumpLastResults<CR>
"
"===
"=== vimlsp
"===
let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]

"===
"=== vim-dadbod
"===
" let g:db_ui_use_nerd_fonts=1

"===
"=== vim-tzoj
"===
let g:tzoj_cookie = ''
let g:tzoj_compare_user='sxvtc181030249'
let g:tzoj_user='sz008'

"-----------------function----------
source ~/.config/nvim/core-setting/function.vim
