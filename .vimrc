"root user vimrc setting

set nocompatible

set nu
set softtabstop=4
set tabstop=4
set ic
set ru

"Cscope setting
" [S] Find this C symbol
nmap cs :cs find s
" [G] Find this definition
nmap cg :cs find g
" [C] Find functions calling this function
nmap cc :cs find c
" [T] Find this text string
nmap ct :cs find t
" [E] Find this egreo pattern
nmap ce :cs find e
nmap cf :cs find f
" [I] Find files #including this file
nmap ci :cs find i ^=expand("")$
" [D] Find functions called by this function
nmap cd :cs find d

"Set NERD Tree quick item"
nnoremap <silent> <F5> :NERDTreeToggle<CR>

"Quick fix setting"
nnoremap <F12> <ESC>:call QFSwitch()<CR>
function! QFSwitch()
redir => ls_output
execute ':silent! ls'
redir END

let exists = match(ls_output, "[Quickfix List")
if exists == -1
execute ':copen'
else
execute ':cclose'
endif
endfunction

"Set FuzzyFinder quick item"
nnoremap ff <ESC>:FufFile<CR>
nnoremap fb <ESC>:FufBuffer<CR>
"map <silent> <C-\> :FufTag! <C-r>=expand('<cword>')<CR><CR>

"Set bufexploer Quick item
nnoremap <silent> <F3> :BufExplorer<CR>

"Set Taglist
map <F4> :Tlist<CR>
let Tlist_Use_Right_Window=1



