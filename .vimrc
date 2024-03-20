"Indentacao
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set copyindent
set textwidth=120

"Permitir instalar pacotes pelo Vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'L9'

Plugin 'flazz/vim-colorschemes'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

"Esquema de cores
syntax enable

if &term =~ '256color'
    " The following two lines solve the BCE issue described here:
    " https://sunaku.github.io/vim-256color-bce.html
    set term=screen-256color
    set t_ut=
    set background=dark
    "colorscheme molokai_dark
    "colorscheme molokai
    ""colorscheme dracula
    "colorscheme tesla
    colorscheme jellybeans
    "colorscheme duoduo
    ""colorscheme VisualStudioDark
endif

"vim behavior
set hidden          "hides buffer
set nowrap          "não envolve as linhas
set number          "mostra o numero da linha
set showmatch       "mostra os parenteses em match
set ignorecase      "não considera case quando procura
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

