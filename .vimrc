"
" Let the good options roll
"
set autoindent sw=2 ts=2 et                         " autoindent with 2 spaces, set tabstop to 2, always expand tabs
"set background=dark                                " 'dark' or 'light', used for highlight colors
set backspace=indent,eol,start                      " influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode
set backupdir=~/tmp,.,~/                            " list of directories for the backup file
set clipboard=unnamed                               " use the clipboard register '*' for all operations which would normally go to the unnamed register
"set colorcolumn=130                                " highlight column 130
set completefunc=syntaxcomplete#Complete
set diffopt=filler,vertical                         " options for using diff mode
set directory=~/tmp,.,/var/tmp,/tmp                 " list of directory names for the swap file
set encoding=utf-8                                  " encoding used internally
set fileencodings=ucs-bom,utf-8,sjis,default,latin1 " automatically detected character encodings
set hidden                                          " hide buffers when they are abandoned
set history=1000                                    " number of command-lines that are remembered
set hlsearch                                        " highlighting of search matches
set ignorecase                                      " do case insensitive matching
set incsearch                                       " incremental search
set laststatus=2                                    " always show the status line
set list                                            " show <Tab>, <EOL>, and trailing spaces, as defined by listchars option
"set listchars=tab:▸\ ,trail:·,eol:¬                " characters for displaying in list mode
set listchars=tab:»\ ,trail:▫︎                       " characters for displaying in list mode
set mouse=a                                         " enable mouse usage (all modes) in terminals
set ruler                                           " show cursor line and column in the status line
set scrolloff=3                                     " minimum nr. of lines above and below cursor
set showcmd                                         " show (partial) command in status line
set showmatch                                       " show matching brackets
set smartcase                                       " do smart case matching
set splitbelow                                      " splitting a window will put the new window below the current one
set splitright                                      " splitting a window will put the new window right of the current one
set tags=./tags,tags,tmp/tags                       " filenames for the tag command, separated by spaces or commas
set timeoutlen=500                                  " time out time in milliseconds
"set title                                          " let Vim set the title of the window
set ttyfast                                         " indicates a fast terminal connection
set wildmode=list:longest                           " when more than one match, list all matches and complete till longest common string

if has('statusline')
  set statusline=%-2.2n\                            " buffer number
  set statusline+=%f\                               " file name
  set statusline+=%h%m%r%w\                         " flags
  set statusline+=%{strlen(&ft)?&ft:'none'},        " file type
  set statusline+=%{(&fenc==\"\"?&enc:&fenc)},      " encoding
  set statusline+=%{&fileformat}                    " file format
  if exists('g:loaded_fugitive')
    set statusline+=\ %{fugitive#statusline()}      " http://github.com/tpope/vim-fugitive
  endif
  set statusline+=%=                                " separation point between left and right aligned items
  set statusline+=%-9.(%l,%c%V%)\ %P                " cursor position/offset
endif


"
" Custom key mappings (see also under Plugins)
"

" change the <leader> key from the default '\' to ','
"let mapleader = ","

" swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

" don't use Ex mode, use Q for formatting
nnoremap Q gq

" remap 'Y' to be consistent with 'C' and 'D'
nnoremap <silent> Y y$

nnoremap <silent> <F2> :set hls!<CR>
nnoremap <silent> <F5> :ls<CR>

" Command-] jumps to tag in a new tab
nmap <D-]> :tab split<CR>:exec("tjump ".expand("<cword>"))<CR>

" Option-] jumps to tag in a vsplit window
nmap <M-]> :vsp <CR>:exec("tjump ".expand("<cword>"))<CR>

" left indent in Insert mode
imap <S-Tab> <C-O><<


"
" Plugins
"
" List of currently used plugins:
" - ack.vim : Plugin for the Perl module / CLI script 'ack' (http://www.vim.org/scripts/script.php?script_id=2572)
" - Command-T : Fast file navigation for VIM (http://www.vim.org/scripts/script.php?script_id=3025)
" - fugitive.vim : A Git wrapper so awesome, it should be illegal (http://www.vim.org/scripts/script.php?script_id=2975)
" - Haml and Sass (http://www.vim.org/scripts/script.php?script_id=1433)
" - html5.vim : HTML5 omnicomplete funtion and syntax for Vim (http://www.vim.org/scripts/script.php?script_id=3236)
" - LustyExplorer : Dynamic filesystem and buffer explorer (http://www.vim.org/scripts/script.php?script_id=1890)
" - NERD tree : A tree explorer plugin for navigating the filesystem (http://www.vim.org/scripts/script.php?script_id=1658)
" - pathogen.vim : Easy manipulation of 'runtimepath', 'path', 'tags', etc (http://www.vim.org/scripts/script.php?script_id=2332)
" - ragtag.vim : A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more (http://www.vim.org/scripts/script.php?script_id=1896)
" - rails.vim : Ruby on Rails: easy file navigation, enhanced syntax highlighting, and more (http://www.vim.org/scripts/script.php?script_id=1567)
" - snipMate : TextMate-style snippets for Vim (http://www.vim.org/scripts/script.php?script_id=2540)
" - surround.vim : Delete/change/add parentheses/quotes/XML-tags/much more with ease (http://www.vim.org/scripts/script.php?script_id=1697)
" - Syntastic : Automatic syntax checking (http://www.vim.org/scripts/script.php?script_id=2736)
" - taglist.vim : Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc) (http://www.vim.org/scripts/script.php?script_id=273)
" - ZenCoding.vim : vim plugins for HTML and CSS hi-speed coding (http://www.vim.org/scripts/script.php?script_id=2981)

" Pathogen
execute pathogen#infect()

" taglist
let Tlist_Exit_OnlyWindow = 1                       " Close Vim if the taglist is the only window
let Tlist_Show_One_File = 1                         " Show tags for the current buffer only
let Tlist_Compact_Format = 1                        " Remove extra information and blank lines from the taglist window
let Tlist_Enable_Fold_Column = 0                    " Show the fold indicator column in the taglist window
let Tlist_Use_Right_Window = 1                      " Open the window on the right hand side
nnoremap <F9> :TlistToggle<CR>

" LustyExplorer
let g:LustyExplorerSuppressRubyWarning = 1

" NERD tree
nnoremap <F8> :NERDTreeToggle<CR>
nnoremap <F7> :NERDTreeFind<CR>

" Command-T
let g:CommandTMaxFiles = 20000

" Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1

" Textile
let g:TextileBrowser="Google Chrome"

" ZenCoding
let g:user_zen_settings = {
\  'indentation' : '  '
\}


"
" Commands
"

" Jump to the last position when reopening a file
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Delete trailing white space when saving certain file types
autocmd FileType css,eruby,html,java,javascript,perl,php,python,rake,rhtml,ruby,sql,vim,xml,yaml autocmd BufWritePre <buffer> :%s/\s\+$//e

" Command-line commands
command Clr %s/^>*\s*//e  " Clean reply - for getting rid of the pesky '>>> ' and/or unwanted whitespace when replying to an email
command Cwd cd %:p:h      " Change working directory to the file in the current window
command SCR %s/\r/\r/e    " Strip Carriage Returns (^M)
command STS %s/\s\+$//e   " Strip Trailing Spaces


"
" Syntax and colors
"
syntax enable                " enable syntax highlighting
filetype plugin indent on    " enable filetype-specific indenting and plugins
runtime macros/matchit.vim   " load matchit (% to bounce from do to end, etc.)

"colorscheme solarized  " Nice on both 'light' and 'dark'. From github.com/altercation/vim-colors-solarized
colorscheme vividchalk  " Best on 'dark'. From github.com/tpope/vim-vividchalk

" Highlight meta and special keys listed with :map, also for text used to show unprintable characters in the text, 'listchars'.
highlight SpecialKey ctermfg=LightGreen guifg=LightGreen
highlight NonText ctermfg=LightGreen guifg=LightGreen

