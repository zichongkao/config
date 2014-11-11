:set tags+=~/tags
:set statusline=%F%m%=col\ %c,\ row\ %l/%L,\ %P
:set laststatus=2

" tabs to spaces
:set smartindent
:set tabstop=4
:set expandtab
:set shiftwidth=4

" show whitespace
:set listchars=tab:>-,trail:~
:set list

" show linenumbers
:set number

"allow backspacing over everything in insert mode
:set backspace=indent,eol,start

:set ignorecase
:set smartcase
:set hlsearch
:set incsearch

" Pathogen
call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Syntax highlighting
:filetype on
:filetype plugin on
:syntax enable
:set t_Co=256
:colorscheme vividchalk
:let python_highlight_all=1

" Syntax checker
:let g:syntastic_python_checkers = ['qlint']

" Highlight 81st column
if exists('+colorcolumn')
    set colorcolumn=81
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Dont use vim to track changes
:set nobackup
:set noswapfile

" Enable pasting without rubbish
:set pastetoggle=<F2>

" Give a small buffer above and below
:set scrolloff=2

" Command T settings
:let g:CommandTMaxHeight=15

" source $MYVIMRC reloads the saved $MYVIMRC
:nmap <Leader>s :source $MYVIMRC<ENTER>

" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
:nmap <Leader>v :e $MYVIMRC<ENTER>

" note that <Leader> is \

" Show matching brackets when text indicator is over them
:set showmatch
" How many tenths of a second to blink when matching brackets
:set mat=2

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
:nmap <space> /
:nmap <c-space> ?

" Map r to Ctrl R since I'm always getting it wrong.
:nmap r <C-r>
" r replaced, but just use s instead
:nnoremap s r

" fg goes to the next g character
:nmap f <C-f>
" b used to be for going back to the previous word. Never used it much
:nmap b <C-b>
" move up on to same line when wrapped
:nnoremap k gk
:nnoremap j gj

" turn off annoying errorbell
:set noerrorbells visualbell

" quote word
:nnoremap 'w bi'<Esc>ea'<Esc>
:nnoremap "W bi"<Esc>ea"<Esc>

" common typos
:cmap WQ wq
:cmap Wq wq
:cmap W w
:cmap Q q

:set mouse+=a
