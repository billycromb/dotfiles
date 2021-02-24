set nocompatible
"dein Scripts-----------------------------
set runtimepath+=~/dein_plugins/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/dein_plugins')
  call dein#begin('~/dein_plugins')

  " Let dein manage dein
  call dein#add('~/dein_plugins/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
	call dein#add('dense-analysis/ale')
  call dein#add('tpope/vim-fugitive')

  " typescript things
  call dein#add('pangloss/vim-javascript')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('maxmellon/vim-jsx-pretty')
  call dein#add('jparise/vim-graphql')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

filetype indent plugin on
syntax on
set hidden

if has('mouse')
	set mouse=a
	if has('mouse_sgr')
		set ttymouse=sgr
	else
		set ttymouse=xterm2
	endif
endif

set belloff=all

set completeopt+=noinsert
set completeopt+=noselect

" TODO backups

set ww=b,s,<,>,[,]
set backspace=2

set wildmode=longest:full,full

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Colors
set showmatch
set cursorline

if $TERM_PROGRAM =~ "iTerm"
	let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical Bar in Insert
	let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal
endif

set splitright
set shortmess+=I
set laststatus=2

set diffopt=vertical,algorithm:patience

colorscheme xoria256

set number
set relativenumber

map <Space> <Leader>
nnoremap <Leader>r :ALEFindReferences<CR>
nnoremap <Leader>d :ALEGoToDefinition<CR>
nnoremap <Leader>h :ALEHover<CR>
nnoremap <Leader>j :ALENextWrap<CR>
nnoremap <Leader>k :ALEPreviousWrap<CR>
nnoremap <Leader>l :ALELint<CR>
