version 10.0
" ===================================================================
" Structure of this file:
" Lines starting with an inverted comma (") are comments.
" Some mappings are commented out.Remove the comment to enable them.
"
" There are three kinds of things which are defined in this file:
" Mapping ("map"), settings ("set"), and abbreviations ("ab").
"Settings affect the behaviour of commands.
"Mappings maps a key sequence to a command.
"Abbreviations define words which are replaced
"right *after* they are typed in.
" ===================================================================

let bash_is_sh = 1
set shell=/bin/bash


"autowrite: Automatically save modifications to files
"when you use critical (rxternal) commands.
set autowrite
"
"backup:backups are for wimps;-)
set nobackup
"
"background:Are we using a "light" or "dark" background?
set background=dark 
"
"compatible:Let Vim behave like Vi?Hell, no!
set nocompatible

set showmatch

"
"cpoptions you should get to know - source of many FAQs!;-)
"cpoptions:"compatible options" to match Vi behaviour
" setcpoptions="aABceFs""default!
"FAQ:Do NOT include the flag '<' if you WANT angle notation!
"
"dictionary: english words first
"set dictionary=/usr/dict/words,/local/lib/german.words
"
"digraph:required for those umlauts
"set digraph
"
"errorbells: damn this beep!;-)
set noerrorbells

" visualbell:
set visualbell

"esckeys:allow usage of cursor keys within insert mode
set esckeys
"
"formatoptions:Options for the "text format" command ("gq")
"I need all those options (but 'o')!
"setformatoptions=cqrt
"
"helpheight: zero disables this.
set helpheight=0
"
"hidden:
set hidden
"
" highlight=8b,db,es,hs,mb,Mn,nu,rs,sr,tb,vr,ws
" set highlight=8r,db,es,hs,mb,Mr,nu,rs,sr,tb,vr,ws
"
"hlsearch :highlight search - show the current search pattern
"This is a nice feature sometimes - but it sure can get in the
"way sometimes when you edit.
set hlsearch
"
" icon:...
set noicon
"
" seticonstringfile of icon (Sven doesn't use an icon)
" seticonstring
"
"ignorecase:ignore the case in search patterns?NO!
set noignorecase
"
"insertmode:
" FAQ:Q: How can I quit insertmode when using this option?
"A: The option "insertmode" was not meant for "start Vim in
"insert mode" only; the idea is to *stay* in insert mode.
"Anyway, you can use the command |i_CTRL-O| to issue commands.
" set noinsertmode
"
"keywordprg:Program to use for the "K" command.
" set keywordprg=man\ -s
"
"laststatus:  show status line?Yes, always!
"laststatus:Even for only one buffer.
set laststatus=2
"
" [VIM5]lazyredraw:do not update screen while executing macros
set lazyredraw
"
"magic:use some magic in search patterns?Certainly!
set magic
"
"modeline:...
"Allow the last line to be a modeline - useful when
"the last line in sig gives the preferred textwidth for replies.
"set modeline
"set modelines=1
"
"number:...
set number
"
"path:The list of directories to search when you specify
"a file with an edit command.
"Note:"~/.P" is a symlink to my dir with www pages
""$VIM/syntax" is where the syntax files are.
"setpath=.,,~/.P/vim,~/.P/vim/syntax,~/.P/vim/source,$VIM/syntax/
"set path=.,../,../*/
"
"report: show a report when N lines were changed.
"report=0 thus means "show all changes"!
set report=0
"
"ruler:show cursor position?Yep!
set ruler
"
"shiftwidth:Number of spaces to use for each
"insertion of (auto)indent.
set shiftwidth=2
"
"shortmess:Kind of messages to show.Abbreviate them all!
"New since vim-5.0v: flag 'I' to suppress "intro message".
set shortmess=at
"
"showcmd:Show current uncompleted command?Absolutely!
set showcmd
"
"showmatch: Show the matching bracket for the last ')'?
set showmatch
"
"showmode:Show the current mode?YEEEEEEEEESSSSSSSSSSS!
set showmode
"
"suffixes:Ignore filename with any of these suffixes
"when using the ":edit" command.
"Most of these are files created by LaTeX.
set suffixes=.aux,.bak,.dvi,.gz,.idx,.log,.ps,.swp,.tar
"
"startofline:no:do not jump to first character with page "commands, ie keep the cursor in the current column.
set nostartofline
"
"tabstop
let curDir = matchstr($PWD, "wolf-int")
if curDir == "wolf-int"
  set tabstop=8
  set softtabstop=8
  set noexpandtab
else
  set ts=4
  set sts=4
  set sw=4
  set expandtab
endif"

set nocp

"textwidth
set textwidth=100
"
" Display the file name in the titlebat
set title
"
"ttyfast:are we using a fast terminal?
"seting depends on where I use Vim...
set ttyfast
"
"ttybuiltin:
set ttybuiltin
"
"ttyscroll:turn off scrolling -> faster! (on a slow connection)
set ttyscroll=999
"
"ttytype:
"set ttytype=builtin_xterm
"
"viminfo:What info to store from an editing session
"in the viminfo file;can be used at next session.
set viminfo=%,'50,\"100,:100,n~/.viminfo
"
"
"t_vb:terminal's visual bell - turned off to make Vim quiet!
"Please use this as to not annoy cow-orkers in the same room.
" Thankyou!:-)
"set t_vb=
"
"whichwrap:
"set whichwrap=<,>
"
"wildcharthe char used for "expansion" on the command line
"default value is "<C-E>" but I prefer the tab key:
set wildchar=<TAB>
"
"wrapmargin:
set wrapmargin=1
"
"writebackup:
set nowritebackup

filetype plugin on
"filetype indent on

set cindent

set backspace=indent,eol,start

map K <NUL>

"Toggles highlight searching
map <F5> :set hls!<bar>set hls?<CR>

noremap <Leader>r ggg?G`` 

map ,/ :s#^#//#<CR>
map ;/ :s#^//##<CR>

map ;pa :set paste<CR>
map ,pa :set nopaste<CR>


map ;v <ESC>:so ~/.vimrc<ESC>

map ,bgl :set background=light<CR>
map ,bgd :set background=dark<CR>

" smart tab completion
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction

vmap ;imp <ESC>`<ye:let classname=@@<C-M><ESC>`>
nnoremap ;imp BvE;imp

noremap ;<TAB> :0<CR>vG=
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

map ,a :0<CR>VG

" for syntax highlighting
" for color in xterm
syntax clear
syntax on

let os = system('uname')

" set the terminal info on Sun only.
if system('uname') == "SunOS\n"
  if has("terminfo")
    set t_Co=16
    set t_AF=[%?%p1%{8}%<%t3%p1%d%e%p1%{22}%+%d;1%;m
    set t_AB=[%?%p1%{8}%<%t4%p1%d%e%p1%{32}%+%d;1%;m
    set t_Sf=[3%dm
    set t_Sb=[4%dm
  else
    set t_Co=16
    set t_Sf=m
    set t_Sb=m
  endif
endif

set makeprg=jc\ % 
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%# 

"set splitright
set ic

set tags=./tags,./../tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags,./../../../../../../tags,./../../../../../../../tags,./../../../../../../../../tags,./../../../../../../../../../tags,./../../../../../../../../../../tags,./../../../../../../../../../../../tags,./../../../../../../../../../../../../tags,./../../../../../../../../../../../../../tags,./../../../../../../../../../../../../../../tags,./../../../../../../../../../../../../../../../tags,./../../../../../../../../../../../../../../../../tags,./../../../../../../../../../../../../../../../../../tags,./../../../../../../../../../../../../../../../../../../tags,tags

highlight EOLWS ctermbg=red guibg=red
autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/

set list
set listchars=tab:»·,trail:·
syntax enable
colorscheme monokai
" set nocscopeverbose
"

set runtimepath^=~/.vim/bundle/ctrlp.vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-j> :NERDTree<CR>
set runtimepath^=~/.vim/bundle/ctrlp.vim

map <C-t> :tabn <CR>
map <C-r> :tabp <CR>
