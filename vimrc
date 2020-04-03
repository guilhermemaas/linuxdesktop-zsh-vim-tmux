" ~/.vimrc

call plug#begin('~/.vim/plugged')

" Lista de plugins
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale', {'do':'pip install flake8 isort yapf' }
Plug 'maralla/completor.vim', {'do':'pip install jedi' }
Plug 'davidhalter/jedi-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'
Plug 'dracula/vim', {'as':'dracula'}

call plug#end()

" Ale
let g:ale_fix_on_save = 1
let g:ale_fixers = {
 \   'python': [
 \       'isort',
 \       'yapf',
 \       'remove_trailing_lines',
 \       'trim_whitespace'
 \   ]
 \}

" Jedi
let g:jedi#completions_enabled = 0

" vim-test
let test#python#runner = 'pytest'

syntax on
"set termguicolors
colorscheme dracula
set background=dark
set t_Co=256
" highlight Normal = ctermbg=NONE
set number
" set cindent
" set visualbell

" Powerline para o vim:
set rtp+=/home/ilhanublar/.local/lib/python2.7/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

" Configuracoes nerdtree:
" Atalho CTRL + n
map <C-n> :NERDTreeToggle<CR>
" Abrir junto do VIM:
autocmd vimenter * NERDTree
" Fechar automaticamente quando a nerdtree for a ultima aba:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
