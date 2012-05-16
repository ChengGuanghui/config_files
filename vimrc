":help vimrc Find out more about .vimrc/_vimrc"
":help tabstop to find out more about tabstop"
set bs=indent,eol,start
" use intelligent indentation for C"
set autoindent cindent cinoptions=g0 "
set backspace=indent,eol,start
"Force tabs to be displayed/expanded to 4 spaces (instead of default 8)."
"set tabstop=4"
"Make Vim treat key as 4 spaces, but respect hard Tabs"
set softtabstop=4
" shiftwidth of indent chars when you press >>, << or ==.
set shiftwidth=4
"Turn Tab keypresses into spaces."
"set expandtab"

"Linux programming have to apply this "
" Leave Tab keys as real tabs (ASCII 9 character)."
"set noexpandtab"


" wrap lines at 100 chars. 80 is somewaht antiquated with nowadays displays.
"set textwidth=100"
set formatoptions=tcqro
set hidden 
" highlight matching braces"
"set showmatch"

"command history  "
set history=1024 
"hightlight search "
set hlsearch  

"set ignorecase smartcase"

"immediate search turning off"
set noincsearch
set nobackup
"set nocompatible "
set scrolloff=5
syntax on
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

let c_space_errors = 1
let python_space_errors = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif

"type :cs help to see the meaning of command"
"type CTRL \ will show the search result in a current window"
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"type CTRL s will show the search result in a splited window horizontally"
nmap <C-s>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-s>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-s>d :scs find d <C-R>=expand("<cword>")<CR><CR>

"type CTRL v will split the result window in vertically"
nmap <C-v>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-v>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-v>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-v>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-v>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-v>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>   
nmap <C-v>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR> 
nmap <C-v>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>

