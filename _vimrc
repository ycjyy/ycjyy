"【1】自己的设置{{{
"(1)默认{{{
syntax on
set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

"set diffexpr=MyDiff()
"function MyDiff()
	"let opt = '-a --binary '
	"if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
	"if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
	"let arg1 = v:fname_in
	"if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
	"let arg2 = v:fname_new
	"if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
	"let arg3 = v:fname_out
	"if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
	"let eq = ''
	"if $VIMRUNTIME =~ ' '
		"if &sh =~ '\<cmd'
			"let cmd = '""' . $VIMRUNTIME . '\diff"'
			"let eq = '"'
		"else
			"let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
		"endif
	"else
		"let cmd = $VIMRUNTIME . '\diff'
	"endif
	"silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction
"}}}


"(2)快捷键{{{

"{{{
"nn <f2> :w<cr>
"nn <f2> :w<cr>
"nn <f2> :so ~\session1.vim<cr>
"nn <f1> :Rg<cr>
nn <f1> :w<cr>
"nn <f1> :mks! ~\session1.vim<cr>
nn <f8> :so %<cr>
nn <f7> :e $MYVIMRC<cr>
nn <f10> :tabnew<cr>
nn <f11> :tabn<cr>
nn <f12><f12> :bd<cr>
nn <f9> :bn<cr>
imap <f2> <esc>:w<cr>
imap <f1> <esc>:w<cr>
"nn <space> <pagedown>
"nn <a-space> <pageup>
nn <cr> o<esc>
nn K <esc>
nn J <esc>


"}}}

let mapleader=" "
nn <leader>[[ i"{{{<esc>
nn <leader>]] i"}}}<esc>
nn <leader>hh ^
nn <leader>ll $
nn <leader>gg G
nn <leader>tr :NERDTree
nn <f3> :MRUToggle<cr>
nn <f4> :NERDTreeToggle<cr>
nn <f5> ggVG=
map <f6> <leader>ci
set winaltkeys=no
set nu

set go=
"{{{
nn <a-h> <c-w>h 
nn <a-l> <c-w>l 
nn <a-j> <c-w>j 
nn <a-h> <c-w>h 

nn <a-s-j> :resize +5<cr>
nn <a-s-k> :resize -5<cr>
nn <a-s-h> :vertical resize+5<cr>
nn <a-s-l> :vertical resize-5<cr>
"}}}
nn <leader>mr :Mru<cr>
"{{{
ino <a-j> <down>
ino <a-k> <up>
ino <a-h> <left>
ino <a-l> <right>

ino <a-;> <bs>
ino <a-,> <del>
ino <a-/> <cr>
ino <a-.> <tab>
"}}}
"重定向{{{
nn <leader>re :redi>>%<cr>
nn <leader>ei :edit<cr>
nn <leader>en :redi end<cr>

nn <leader>rm :setlocal nomore<cr>:redi>>%<cr>:messages<cr>:redi end<cr>:edit<cr>:w<cr>
"}}}
nn <leader>qx ggVG_
nn <c-a> ggVG_

nn <c-v> "+p
nn <c-c> "+y

nn <leader>nu :setlocal nu!<cr>
nn <leader>wr :setlocal wrap!<cr>
"科科{{{
" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nn <leader>lm :CocList marketplace
nn <leader>le :CocList extensions
nn <leader>li :CocList

set autochdir

"” 绑定 ctrl-space 触发补全
inoremap <silent><expr> <c-space> coc#refresh()
"}}}
nn <leader>me :messages<cr>

nn <a-1> 1gt
nn <a-2> 2gt
nn <a-3> 3gt
nn <a-4> 4gt
nn <a-5> 5gt
nn <a-6> 6gt
nn <a-7> 7gt


"}}}
"(3)界面{{{
"set cmdheight=1
"set cmdwinheight=2
"set guifont=Menlo:h22
"set guifont=SF\ Mono:h22
set guifont=FiraCode\ NF:h22
"colorscheme zellner
"set background=dark
set background=light
colorscheme evening
"colorscheme solarized8
"colorscheme solarized8_flat
"colorscheme cake16
"colorscheme stellarized
"colorscheme edge
"set guifontwide=楷体:h22
set foldmethod=marker
"}}}
" (4)语言{{{
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'
language messages zh_CN.UTF-8
" }}}


"(5)标记{{{
""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
if has("win32")                "设定windows系统中ctags程序的位置
	let Tlist_Ctags_Cmd = 'ctags'
elseif has("linux")              "设定linux系统中ctags程序的位置
	let Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 

let Tlist_Compact_Format = 1
let Tlist_GainFocus_On_ToggleOpen = 1
"let Tlist_Close_On_Select = 1
nnoremap <leader>tl :TlistToggle<CR>
"}}}

"(6)标签栏{{{
"-----------------------美化标签栏-----------------------
"定义颜色
hi SelectTabLine term=Bold cterm=Bold gui=Bold ctermbg=None
hi SelectPageNum cterm=None ctermfg=Red ctermbg=None
hi SelectWindowsNum cterm=None ctermfg=DarkCyan ctermbg=None

hi NormalTabLine cterm=Underline ctermfg=Black ctermbg=LightGray
hi NormalPageNum cterm=Underline ctermfg=DarkRed ctermbg=LightGray
hi NormalWindowsNum cterm=Underline ctermfg=DarkMagenta ctermbg=LightGray

function! MyTabLabel(n, select)
	let label = ''
	let buflist = tabpagebuflist(a:n)
	for bufnr in buflist
		if getbufvar(bufnr, "&modified")
			let label = '+' 
			break
		endif
	endfor

	let winnr = tabpagewinnr(a:n)
	let name = bufname(buflist[winnr - 1]) 
	if name == ''
		"为没有名字的文档设置个名字
		if &buftype == 'quickfix'
			let name = '[Quickfix List]'
		else
			let name = '[No Name]'
		endif
	else
		"只取文件名
		let name = fnamemodify(name, ':t')
	endif

	let label .= name
	return label
endfunction

function! MyTabLine()
	let s = ''
	for i in range(tabpagenr('$'))
		" 选择高亮
		let hlTab = ''
		let select = 0 
		if i + 1 == tabpagenr()
			let hlTab = '%#SelectTabLine#'
			" 设置标签页号 (用于鼠标点击)
			let s .= hlTab . "[%#SelectPageNum#%T" . (i + 1) . hlTab
			let select = 1
		else
			let hlTab = '%#NormalTabLine#'
			" 设置标签页号 (用于鼠标点击)
			let s .= hlTab . "[%#NormalPageNum#%T" . (i + 1) . hlTab
		endif

		" MyTabLabel() 提供标签
		let s .= ' %<%{MyTabLabel(' . (i + 1) . ', ' . select . ')} '

		"追加窗口数量
		let wincount = tabpagewinnr(i + 1, '$')
		if wincount > 1
			if select == 1
				let s .= "%#SelectWindowsNum#" . wincount
			else
				let s .= "%#NormalWindowsNum#" . wincount
			endif
		endif
		let s .= hlTab . "]"
	endfor

	" 最后一个标签页之后用 TabLineFill 填充并复位标签页号
	let s .= '%#TabLineFill#%T'

	" 右对齐用于关闭当前标签页的标签
	if tabpagenr('$') > 1
		let s .= '%=%#TabLine#%999XX'
	endif

	return s
endfunction
set tabline=%!MyTabLine()
"}}}

"(7)诺得趣{{{
" Check if NERDTree is open or active
function! IsNERDTreeOpen()
	return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction
" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
	if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
		NERDTreeFind
		wincmd p
	endif
endfunction
" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

function! ToggleNerdTree()
	set eventignore=BufEnter
	NERDTreeToggle
	set eventignore=
endfunction
nmap <C-n> :call ToggleNerdTree()<CR>
nmap <f4> :call ToggleNerdTree()<CR>
"}}}

"(8)自动保存{{{
augroup AUTOSAVE
	au!
	autocmd InsertLeave,TextChanged,FocusLost * silent! write
augroup END


augroup AUTOSESSION
	au!
	autocmd BufNew * silent! mks! ~\session1.vim
augroup END



"jaugroup AUTOSESSION*/*/*/
"	/*au!*/
"	/*autocmd VimEnter * silent! so ~\session1.vim*/
"/*augroup END*/

"}}}

"(9)格式化{{{
let g:formatterpath = ['C:\Users\Administrator\AppData\Local\Programs\Python\Python38\Scripts\']
"let g:formatterpath = ['autopep8']

"noremap <F5> :Autoformat<CR>

"}}}

"}}}


"【2】别人的设置{{{
" =============================================================================
"        << 判断操作系统是 Windows 还是 Linux 和判断是终端还是 Gvim >>
" =============================================================================


" -----------------------------------------------------------------------------
"  < 判断操作系统是否是 Windows 还是 Linux >
" -----------------------------------------------------------------------------
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif


" -----------------------------------------------------------------------------
"  < 判断是终端还是 Gvim >
" -----------------------------------------------------------------------------
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif


" =============================================================================
"                          << 以下为软件默认配置 >>
" =============================================================================


" -----------------------------------------------------------------------------
"  < Windows Gvim 默认配置> 做了一点修改
" -----------------------------------------------------------------------------
if (g:iswindows && g:isGUI)
    source $VIMRUNTIME/vimrc_example.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin
    set diffexpr=MyDiff()
    function MyDiff()
        let opt = '-a --binary '
        if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
        if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
        let arg1 = v:fname_in
        if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
        let arg2 = v:fname_new
        if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
        let arg3 = v:fname_out
        if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
        let eq = ''
        if $VIMRUNTIME =~ ' '
            if &sh =~ '\<cmd'
                let cmd = '""' . $VIMRUNTIME . '\diff"'
                let eq = '"'
            else
                let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
            endif
        else
            let cmd = $VIMRUNTIME . '\diff'
        endif
        silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
    endfunction
endif


" -----------------------------------------------------------------------------
"  < Linux Gvim/Vim 默认配置> 做了一点修改
" -----------------------------------------------------------------------------
if g:islinux
    set nocompatible
    set hlsearch        "高亮搜索
    set incsearch       "在输入要搜索的文字时，实时匹配


    " Uncomment the following to have Vim jump to the last position when
    " reopening a file
    if has("autocmd")
        au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    endif


    if g:isGUI
        " Source a global configuration file if available
        if filereadable("/etc/vim/gvimrc.local")
            source /etc/vim/gvimrc.local
        endif
    else
        " This line should not be removed as it ensures that various options are
        " properly set to work with the Vim-related packages available in Debian.
        runtime! debian.vim


        " Vim5 and later versions support syntax highlighting. Uncommenting the next
        " line enables syntax highlighting by default.
        if has("syntax")
            syntax on
        endif


        set mouse=a                    " 在任何模式下启用鼠标
        set t_Co=256                   " 在终端启用256色
        set backspace=2                " 设置退格键可用


        " Source a global configuration file if available
        if filereadable("/etc/vim/vimrc.local")
            source /etc/vim/vimrc.local
        endif
    endif
endif


" -----------------------------------------------------------------------------
"  < 编码配置 >
" -----------------------------------------------------------------------------
" 注：使用utf-8格式后，软件与程序源码、文件路径不能有中文，否则报错
set encoding=utf-8                                    "设置gvim内部编码
set fileencoding=utf-8                                "设置当前文件编码
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1     "设置支持打开的文件的编码


" 文件格式，默认 ffs=dos,unix
if(g:iswindows)
    set fencs=gbk
    set fileformat=dos                                   "设置新文件的<EOL>格式
    set fileformats=dos,unix,mac                          "给出文件的<EOL>格式类型
else
    set fileformat=unix                                   "设置新文件的<EOL>格式
    set fileformats=unix,dos,mac                          "给出文件的<EOL>格式类型
endif


if (g:iswindows && g:isGUI)
    "解决菜单乱码
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim


    "解决consle输出乱码
    language messages zh_CN.utf-8
endif


" -----------------------------------------------------------------------------
"  < 界面配置 >
" -----------------------------------------------------------------------------
set nobackup
set ai
set ci
set ts=4
set sw=4
set expandtab
filetype plugin indent on
set ruler                                             "显示标尺  
set number                                            "显示行号
set laststatus=2                                      "启用状态栏信息
set cmdheight=2                                       "设置命令行的高度为2，默认为1
set cursorline                                        "突出显示当前行
" set guifont=YaHei_Consolas_Hybrid:h10                 "设置字体:字号（字体名称空格用下划线代替）
set nowrap                                            "设置不自动换行
set shortmess=atI                                     "去掉欢迎界面


" 设置 gVim 窗口初始位置及大小
if g:isGUI
    "au GUIEnter * simalt ~x                           "窗口启动时自动最大化
    winpos 450 300                                     "指定窗口出现的位置，坐标原点在屏幕左上角
    set lines=28 columns=120                          "指定窗口大小，lines为高度，columns为宽度
endif


" 设置代码配色方案
if g:isGUI
    colorscheme evening                               "Gvim配色方案
else
    colorscheme Tomorrow-Night-Eighties               "终端配色方案
endif


" 显示/隐藏菜单栏、工具栏、滚动条，可用 Ctrl + F11 切换
if g:isGUI
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    map <silent> <c-F11> :if &guioptions =~# 'm' <Bar>
        \set guioptions-=m <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=r <Bar>
        \set guioptions-=L <Bar>
    \else <Bar>
        \set guioptions+=m <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=r <Bar>
        \set guioptions+=L <Bar>
    \endif<CR>
endif


" -----------------------------------------------------------------------------
"  < 编写文件时的配置 >
" -----------------------------------------------------------------------------
filetype on                                           "启用文件类型侦测
filetype plugin on                                    "针对不同的文件类型加载对应的插件
filetype plugin indent on                             "启用缩进
set smartindent                                       "启用智能对齐方式
set expandtab                                         "将Tab键转换为空格
set tabstop=4                                         "设置Tab键的宽度
set shiftwidth=4                                      "换行时自动缩进4个空格
set smarttab                                          "指定按一次backspace就删除shiftwidth宽度的空格
"set foldenable                                        "启用折叠
"set foldmethod=indent                                 "indent 折叠方式
"set foldmethod=marker                                "marker 折叠方式

"imap <F7> <C-R>=strftime("%Y_%m_%d-%H:%M")<CR>
" 用空格键来开关折叠
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" 插入空行
nnoremap tt  o<esc>
nnoremap TT  O<esc>


" 当文件在外部被修改，自动更新该文件
set autoread


" 常规模式下输入 cS 清除行尾空格
nmap cS :%s/\s\+$//g<CR>:noh<CR>


" 常规模式下输入 cM 清除行尾 ^M 符号
nmap cM :%s/\r$//g<CR>:noh<CR>


set ignorecase                                        "搜索模式里忽略大小写
set smartcase                                         "如果搜索模式包含大写字符，不使用 'ignorecase' 选项，只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用
" set noincsearch                                       "在输入要搜索的文字时，取消实时匹配


" Ctrl + [ 替换ESC键进入normal模式
imap <C-[> <Esc>

" Ctrl + K 插入模式下光标向上移动
imap <c-k> <Up>


" Ctrl + J 插入模式下光标向下移动
imap <c-j> <Down>


" Ctrl + H 插入模式下光标向左移动
imap <c-h> <Left>


" Ctrl + L 插入模式下光标向右移动
imap <c-l> <Right>


" 启用每行超过80列的字符提示（字体变蓝并加下划线）
au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)


" 分屏窗口光标移动
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-k> <C-w>k
nmap <C-j> <C-w>j


" 定义快捷键的前缀，即<Leader>
"let mapleader=";"
" -----------------------------------------------------------------------------
"  < 编程配置 >
" -----------------------------------------------------------------------------
"""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: ma6174") 
        call append(line(".")+2, "\# mail: ma6174@163.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/bin/bash") 
        call append(line(".")+6, "") 
    else 
        call setline(1, "/*************************************************************************") 
        call append(line("."), "    > File Name: ".expand("%")) 
        call append(line(".")+1, "    > Author: ma6174") 
        call append(line(".")+2, "    > Mail: ma6174@163.com ") 
        call append(line(".")+3, "    > Created Time: ".strftime("%c")) 
        call append(line(".")+4, " ************************************************************************/") 
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ---------{<([符号自动补全--------------------------------------------------------------------
:inoremap < <><ESC>i
:inoremap > <c-r>=ClosePair('>')<CR>
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction
filetype plugin indent on 


"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu

set wrap
"map j gj
"map k gk
" -----------------------------------------------------------------------------
"  < 编译、连接、运行配置 >
"------------------------------------------------------------------------------
" F9 一键保存、编译、连接存并运行
"map <F9> :call Run()<CR>
"imap <F9> <ESC>:call Run()<CR>


" Ctrl + F9 一键保存并编译
map <c-F9> :call Compile()<CR>
imap <c-F9> <ESC>:call Compile()<CR>


" Ctrl + F10 一键保存并连接
map <c-F10> :call Link()<CR>
imap <c-F10> <ESC>:call Link()<CR>


let s:LastShellReturn_C = 0
let s:LastShellReturn_L = 0
let s:ShowWarning = 1
let s:Obj_Extension = '.o'
let s:Exe_Extension = '.exe'
let s:Sou_Error = 0


let s:windows_CFlags = 'gcc\ -fexec-charset=gbk\ -Wall\ -g\ -O0\ -c\ %\ -o\ %<.o'
let s:linux_CFlags = 'gcc\ -Wall\ -g\ -O0\ -c\ %\ -o\ %<.o'


let s:windows_CPPFlags = 'g++\ -fexec-charset=gbk\ -Wall\ -g\ -O0\ -c\ %\ -o\ %<.o'
let s:linux_CPPFlags = 'g++\ -Wall\ -g\ -O0\ -c\ %\ -o\ %<.o'


func! Compile()
    exe ":ccl"
    exe ":update"
    if expand("%:e") == "c" || expand("%:e") == "cpp" || expand("%:e") == "cxx"
        let s:Sou_Error = 0
        let s:LastShellReturn_C = 0
        let Sou = expand("%:p")
        let Obj = expand("%:p:r").s:Obj_Extension
        let Obj_Name = expand("%:p:t:r").s:Obj_Extension
        let v:statusmsg = ''
        if !filereadable(Obj) || (filereadable(Obj) && (getftime(Obj) < getftime(Sou)))
            redraw!
            if expand("%:e") == "c"
                if g:iswindows
                    exe ":setlocal makeprg=".s:windows_CFlags
                else
                    exe ":setlocal makeprg=".s:linux_CFlags
                endif
                echohl WarningMsg | echo " compiling..."
                silent make
            elseif expand("%:e") == "cpp" || expand("%:e") == "cxx"
                if g:iswindows
                    exe ":setlocal makeprg=".s:windows_CPPFlags
                else
                    exe ":setlocal makeprg=".s:linux_CPPFlags
                endif
                echohl WarningMsg | echo " compiling..."
                silent make
            endif
            redraw!
            if v:shell_error != 0
                let s:LastShellReturn_C = v:shell_error
            endif
            if g:iswindows
                if s:LastShellReturn_C != 0
                    exe ":bo cope"
                    echohl WarningMsg | echo " compilation failed"
                else
                    if s:ShowWarning
                        exe ":bo cw"
                    endif
                    echohl WarningMsg | echo " compilation successful"
                endif
            else
                if empty(v:statusmsg)
                    echohl WarningMsg | echo " compilation successful"
                else
                    exe ":bo cope"
                endif
            endif
        else
            echohl WarningMsg | echo ""Obj_Name"is up to date"
        endif
    else
        let s:Sou_Error = 1
        echohl WarningMsg | echo " please choose the correct source file"
    endif
    exe ":setlocal makeprg=make"
endfunc


func! Link()
    call Compile()
    if s:Sou_Error || s:LastShellReturn_C != 0
        return
    endif
    let s:LastShellReturn_L = 0
    let Sou = expand("%:p")
    let Obj = expand("%:p:r").s:Obj_Extension
    if g:iswindows
        let Exe = expand("%:p:r").s:Exe_Extension
        let Exe_Name = expand("%:p:t:r").s:Exe_Extension
    else
        let Exe = expand("%:p:r")
        let Exe_Name = expand("%:p:t:r")
    endif
    let v:statusmsg = ''
if filereadable(Obj) && (getftime(Obj) >= getftime(Sou))
        redraw!
        if !executable(Exe) || (executable(Exe) && getftime(Exe) < getftime(Obj))
            if expand("%:e") == "c"
                setlocal makeprg=gcc\ -o\ %<\ %<.o
                echohl WarningMsg | echo " linking..."
                silent make
            elseif expand("%:e") == "cpp" || expand("%:e") == "cxx"
                setlocal makeprg=g++\ -o\ %<\ %<.o
                echohl WarningMsg | echo " linking..."
                silent make
            endif
            redraw!
            if v:shell_error != 0
                let s:LastShellReturn_L = v:shell_error
            endif
            if g:iswindows
                if s:LastShellReturn_L != 0
                    exe ":bo cope"
                    echohl WarningMsg | echo " linking failed"
                else
                    if s:ShowWarning
                        exe ":bo cw"
                    endif
                    echohl WarningMsg | echo " linking successful"
                endif
            else
                if empty(v:statusmsg)
                    echohl WarningMsg | echo " linking successful"
                else
                    exe ":bo cope"
                endif
            endif
        else
            echohl WarningMsg | echo ""Exe_Name"is up to date"
        endif
    endif
    setlocal makeprg=make
endfunc


func! Run()
    let s:ShowWarning = 0
    call Link()
    let s:ShowWarning = 1
    if s:Sou_Error || s:LastShellReturn_C != 0 || s:LastShellReturn_L != 0
        return
    endif
    let Sou = expand("%:p")
    let Obj = expand("%:p:r").s:Obj_Extension
    if g:iswindows
        let Exe = expand("%:p:r").s:Exe_Extension
    else
        let Exe = expand("%:p:r")
    endif
    if executable(Exe) && getftime(Exe) >= getftime(Obj) && getftime(Obj) >= getftime(Sou)
        redraw!
        echohl WarningMsg | echo " running..."
        if g:iswindows
            exe ":!%<.exe"
        else
            if g:isGUI
                exe ":!gnome-terminal -e ./%<"
            else
                exe ":!./%<"
            endif
        endif
        redraw!
        echohl WarningMsg | echo " running finish"
    endif
endfunc

" -----------------------------------------------------------------------------
"  < txtbrowser 插件配置 >
" 用于文本文件生成标签与与语法高亮（调用TagList插件生成标签，如果可以）
" -----------------------------------------------------------------------------
"au BufRead,BufNewFile *.vm,*.txt setlocal ft=txt

" -----------------------------------------------------------------------------
"  <grep插件配置 >
"  在工程中快速查找
" -----------------------------------------------------------------------------
"nnoremap <silent> <F3> :Grep<CR>

" -----------------------------------------------------------------------------
"  < TagList 插件配置 >
" 高效地浏览源码, 其功能就像vc中的workpace
" 那里面列出了当前文件中的所有宏,全局变量, 函数名等
" 常规模式下输入 tl 调用插件，如果有打开 Tagbar 窗口则先将其关闭
" -----------------------------------------------------------------------------
"    nmap tl :Tlist<CR>
"    let Tlist_Show_One_File=1                   "只显示当前文件的tags
"    let Tlist_Enable_Fold_Column=0              "使taglist插件不显示左边的折叠行
"    let Tlist_Exit_OnlyWindow=1                 "如果Taglist窗口是最后一个窗口则退出Vim
"    let Tlist_File_Fold_Auto_Close=1            "自动折叠
"    let Tlist_WinWidth=30                       "设置窗口宽度
"    let Tlist_Use_Right_Window=1                "在右侧窗口中显示

" -----------------------------------------------------------------------------
"  < NERDTree 插件配置 >
" 有目录村结构的文件浏览插件
" 常规模式下输入 F2 调用插件
" -----------------------------------------------------------------------------
let NERDTreeWinPos = "left"        " where NERD tree window is placed on the screen
let NERDTreeWinSize = 25           " size of the NERD tree
"nmap <F2> :NERDTreeToggle<CR>
"au VimEnter * NERDTree | wincmd l
"au WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

" -----------------------------------------------------------------------------
"  < ctags 插件配置 >
" -----------------------------------------------------------------------------
set tags=tags; 
set autochdir

" -----------------------------------------------------------------------------
"  < PowerLine  状态栏增强展示插件配置 >
" -----------------------------------------------------------------------------
"vim有一个状态栏 加上powline则有两个状态栏
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'

" -----------------------------------------------------------------------------
"  < tagbar 状态栏增强展示插件配置 >
" -----------------------------------------------------------------------------
nmap <Leader>tb :TagbarToggle<CR>      "快捷键设置
let g:tagbar_ctags_bin='ctags'          "ctags程序的路径
let g:tagbar_width=30               "窗口宽度的设置
"nmap tl :Tagbar<CR>
nmap <f2> :Tagbar<CR>

" -----------------------------------------------------------------------------
"  < minibufexpl.vim 状态栏增强展示插件配置 >
" -----------------------------------------------------------------------------
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0

"map <F11> :MBEbp<CR>
"map <F12> :MBEbn<CR>

" -----------------------------------------------------------------------------
"  < Mark--Karkat（也就是 Mark 插件配置 >
" 给不同的单词高亮，表明不同的变量时很有用，详细帮助见 :h mark.txt
" -----------------------------------------------------------------------------
set viminfo+=!                     " 保存全局变量
let g:mwAutoSaveMarks = 1
let g:mwAutoLoadMarks = 1
"nmap <F3> \*

" -----------------------------------------------------------------------------
"  < a.vim 插件配置 >
" -----------------------------------------------------------------------------
"nnoremap <silent> <F12> :A<CR>

"}}}


"【3】附加设置{{{
"colorscheme edge  

"let g:formatter_yapf_style = 'pep8'
"noremap <F5> :Autoformat<CR>
nn <a-j> 10j
nn <a-k> 10k

nn <f2> :bn<cr>

let g:XkbSwitchLib = 'C:\tools\libxkbswitch64.dll' 
let g:XkbSwitchEnabled = 1

    set noundofile
    set nobackup
    set noswapfile

"map <F1> :MarkdownPreview<CR> "设置 F3 开启 Markdown 文件预览
let g:mkdp_auto_start = 0 "打开文件后自动弹出, 0 为否
let g:mkdp_auto_close = 1 "关闭文件后自动关闭预览窗口, 1 为是
let g:mkdp_refresh_slow = 1 "慢速预览, 修改后退出 insert 模式后方会刷新视图, 1 为是
let g:mkdp_open_to_the_world = 0 "开启公网链接, 0 为否
let g:mkdp_browser = '' "指定浏览器, 默认会跟随系统浏览器
let g:mkdp_port = '' " 指定端口, 默认随机端口
let g:mkdp_page_title = ' **${name}** ' "指定浏览器窗口标题, 默认为 Markdown 文件名


let mapleader = ' '


"}}}
