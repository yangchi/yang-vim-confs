set nu
set background=dark
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set showmatch
syntax on

if &term=="xterm"
	set t_Co=8
	set t_Sb=^[[4%dm
	set t_Sf=^[[3%dm
endif

"the following lines are used by omnicppcomplete plugin
set nocp
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++ .<CR>

set tags+=~/tags
set tags+=./tags
set tags+=~/.vim/tags/stl

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

filetype plugin on
filetype plugin indent on

"turn on matchit
source /usr/share/vim/vim73/macros/matchit.vim

"turn on highlight in search result (mainly for mac)
set hlsearch
