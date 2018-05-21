set runtimepath+=~/.vim_runtime
set mouse=a
set rnu

"colorscheme wombat256
"colorscheme tango
"colorscheme railscasts
"colorscheme vividchalk
"colorscheme distinguished
"colorscheme monokai
colorscheme ir_black
"colorscheme jellybeans 
"colorscheme desertEx
"colorscheme codeblocks_dark

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible        " don't use old settings that vi used.  
						" Use the newer features that vim offers
set backspace=2       	" make backspace able to go over end of lines
set laststatus=2    	"always show the status line
set t_Co=256        	"set colors to 256

set number          	"show line number on side
"set nornu           	"do not make the line numbers relative to cursor
set mousehide       	"hide mouse cursor while typing
set showmode        	"display the current mode
set cursorline      	"highlight the current line
set backspace=2			"make backspace able to go over end of lines
set backspace=indent,eol,start	"Set regular backspace during insert mode

syntax enable			"use syntax highlighting


" Tab stops
	set tabstop=4    	" when you press tab, it will move forward 
						" by 4 spaces
" ----------------------------------------------------------------------
	set shiftwidth=4 	" the number of spaces the >>, <<, >, and < 
						" commands will move by will be 4
" ----------------------------------------------------------------------
	set smarttab 		" pressing backspace on a blank indented line 
						" will delete the amount of spaces equal to 
						" shiftwidth

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

nnoremap <leader>rv :source $MYVIMRC<CR>

try
"source ~/.vim_runtime/my_configs.vim
catch
endtry
