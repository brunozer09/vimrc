" Calls the plugin manager
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'mhinz/vim-startify'

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'sakshamgupta05/vim-todo-highlight'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'nordtheme/vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

Plug 'rust-lang/rust.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

Plug 'tpope/vim-fugitive'

call plug#end()

" Airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'onehalfdark'

" Enable true terminal colors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Sets custom key bindings
let mapleader = ' '
nnoremap <leader>e :NERDTreeToggle<CR>

" Sets colorscheme
colorscheme onehalfdark

" Editor specific configurations
set tabstop=4
set shiftwidth=4
set softtabstop=4
syntax on
set number
set relativenumber
set wildmenu
nnoremap <leader>tt :term<CR>
nnoremap <leader>vc :e ~/.vimrc<CR>

" Vim-fugitive configuration
nmap <leader>gb :Git blame<cr>
nmap <leader>gs :Git status<cr>
nmap <leader>gc :Git commit -v<cr>
nmap <leader>ga :Git add -p<cr>
nmap <leader>gm :Git commit --amend<cr>
nmap <leader>gp :Git push<cr>
nmap <leader>gP :Git pull<cr>
nmap <leader>gd :Git diff<cr>
nmap <leader>gw :Git write<cr>

" Startify configuration
let g:startify_custom_header = [
				\ '          :k                                      ',
				\ '         dX0 :                                    ',
				\ '       .KXXXlo                    .;:c:;`.        ',
				\ '      .KXXXXXXkx:               oKX0xddkKX0o`     ',
				\ '      lXXX00KX0OXo             0Xx.      .cOX0;   ',
				\ '     ;XXXK0OdllxXXd           `XX.          ,0Xk  ',
				\ '    :XXXXXKxoodkk:             OXk`           kX0 ',
				\ '   .XXX0c..l.                   ;x0O.          KXo',
				\ '   kXXd  :XX;                                  oXX',
				\ '   XXO  :XXXXO:`.                              lXX',
				\ '  .XXo .XXXXXXXXXXKOkxoc:,.                    KXx',
				\ '  `XXk xXXXXXXXXXXXXXXXXXXXXKko:.            .OX0.',
				\ '   XXX`0XXXXXXXXXXXXXXXXXXXXXXXXXKo,.     .;xXXd  ',
				\ '   oXXKOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXK0O0XXX0l.   ',
				\ '    kXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX0ccc:;`.      ',
				\ '     dXXXXKXXXX0KOxddO0KXXXXXXXXXXXXXx            ',
				\ '      lXXKoXXXd      ,XXXXXXKKXXXXXXXXd           ',
				\ '       lX:kXX0        oXXXXXXO:0XXXXXXX0;         ',
				\ '        ::XXK.         ;KXXXXK  ,dKXXXXXXXkl:.    ',
				\ '        `XXK,`           cKXXXo    .:lxO0XXXXX.   ',
				\ '       .KXK,0K.            cKXXk.         .,OXO   ',
				\ '      .KXX`.0X0             lXXO`            KX:  ',
				\ '      OXX;   OXO          :OKo.              ;XK  ',
				\ '    o0XXo   .kXXc     :X0KO;                 kXX; ',
				\ '.`;lXXXXxxxkOXKKkxxddddkxdc:;,`...            `.  ',
				\ ]

" COC especific configurations
inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1) :
	\ CheckBackspace() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col-1] =~# '\s'
endfunction
