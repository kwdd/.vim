"个人喜好设置
"关闭vim的声音
:set vb t_vb=
"打开语法高亮  
syntax on  
"打开文件类型检测功能  
filetype on
"关闭vi模式  
set nocp  
"与windows共享剪贴板  
set clipboard+=unnamed  
"显示行号, 或set number  
set nu  
"当文件被外部改变时自动读取  
set autoread 
"取消自动备份及产生swp文件  
set nobackup  
set nowb  
set noswapfile
"背景色
set bg=dark
"高亮光标所在行  
"set cursorline
"总是显示状态行  
set laststatus=2
"状态栏显示当前执行的命令  
set showcmd 
"标尺功能，显示当前光标所在行列号  
set ruler  
"粘贴时保持格式  
set paste 
"在搜索的时候忽略大小写  
set ignorecase 
"制表符为4  
set tabstop=4  
"统一缩进为4  
set softtabstop=4  
set shiftwidth=4  
"允许使用退格键，或set backspace=2  
set backspace=eol,start,indent  
set whichwrap+=<,>,h,l  
"取消换行  
set nowrap 
"在被分割的窗口间显示空白，便于阅读  
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
"光标移动到buffer的顶部和底部时保持3行距离, 或set so=3  
set scrolloff=3 

"插件设置
"开启pathogen的插件
execute pathogen#infect()
syntax on
filetype plugin indent on
"vim报错设置(syntastic)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"添加surpertab
let g:SuperTabMappingForward = "<tab>"
"设置自动加载nerdtree
autocmd vimenter * NERDTree
"默认光标在右侧
wincmd w
autocmd VimEnter * wincmd w
"在关闭vim的时候关闭nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"更改nerdtree的默认箭头
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" 显示nerdtree书签列表
let NERDTreeShowBookmarks=1
" 设置nerdtree宽度
let NERDTreeWinSize=23
"设置显示隐藏文件
let NERDTreeShowHidden=1
"忽略特定的文件和目录
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
"控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
let NERDTreeAutoCenter=1
"对文件进行排序

"python补全
let g:pydiction_location = '~/.vim/after/complete-dict'
let g:pydiction_menu_height = 20
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

