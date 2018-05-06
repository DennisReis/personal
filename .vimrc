"Indentacao
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set copyindent
set textwidth=80

"Funcao para editor de texto
func! WordProcessorMode()
 setlocal textwidth=80
 setlocal smartindent
 setlocal spell spelllang=pt_br
 setlocal noexpandtab
endfun

com! WP call WordProcessoMode()

"Permitir instalar pacotes pelo Vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'L9'

Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on

"Esquema de cores
"colorscheme molokai_dark
"colorscheme molokai
""colorscheme dracula
colorscheme tesla 
"colorscheme duoduo
""colorscheme VisualStudioDark

"vim behavior
set hidden          "hides buffer
set nowrap          "não envolve as linhas
set number          "mostra o numero da linha
set showmatch       "mostra os parenteses em match
"set ignorecase     "não considera case quando procura
set smartcase       "ignora case se padrao de busca for todo minusculo, senao case-sensitive  
set smarttab        "insere tab no comeco da linha de acordo com o shiftwidth 
set hlsearch        "realça palavra buscada
set incsearch       "mostra busca enquanto digita

set history=1000    "lembrar mais comandos e busca historico
set undolevels=1000 "mais niveis de undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title           "muda o titulo do terminal"
set visualbell      "inibe o beep
set noerrorbells    "inibe beep

"set nobackup        "sem backup
"set noswapfile      "sem swap
