" Key mappings
" Make the leader key be space
let mapleader = "\<Space>"
let maplocalleader="\\"

" I hate the ESCAPE key
inoremap jj <Esc>

" Easymotion <leader> remap
" Easymotion shortcut
map <leader>e <leader><leader>W

" Starting up Command-T
nnoremap <leader>t :CommandT<cr>
" yanking the rest of the line
noremap Y y$
" Disabling arrow keys
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
" Tab stuff
nnoremap tn :tabnew<cr>
nnoremap tc :tabclose<cr>
nnoremap tk :tabnext<cr>
nnoremap tj :tabprev<cr>
nnoremap th :tabfirst<cr>
nnoremap tl :tablast<cr>

" <shift-tab> to switch to next tab
nnoremap <s-tab> :tabnext<cr>
inoremap <s-tab> <esc>:tabnext<cr>
" <control-shift-tab> to switch to previous tab
nnoremap <c-s-tab> :tabprev<cr>
inoremap <c-s-tab> <esc>:tabprev<cr>
" Buffer management
" closing a buffer
nnoremap <c-b>d :bd<cr>

" Check file in spellcheck:
map <leader>c :!clear && shellcheck %<cr>

" Space-s to save:
nnoremap <leader>s :w!<cr>
nnoremap <leader>S :wq!<cr>

" Shortcutting split navigation:
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" Compile document, be it groff/LaTeX/markdown/etc.:
" map <leader><c-c> :w! \ | !compiler <c-r>%<cr><cr>

" Copy selected text to system clipboard (requires gvim installed):
vnoremap <c-c> "*Y :let @+=@*<cr>
map <c-p> "+P

" space-q to quit (doesn't save, watch out!):
nnoremap <leader>q :q!<cr>

" <leader>-1 insert "!" comment:
nnoremap <leader>1 :norm 0i!<cr>
vnoremap <leader>1 :norm 0i!<cr>

" <leader>-2 insert """ comment:
nnoremap <leader>2 :norm 0i"<cr>
vnoremap <leader>2 :norm 0i"<cr>

" <leader>-' insert "'" comment:
nnoremap <leader>' :norm 0i'<cr>
vnoremap <leader>' :norm 0i'<cr>

" <leader>3 insert "#" comment:
nnoremap <leader>3 :norm 0i#<cr>
vnoremap <leader>3 :norm 0i#<cr>

nnoremap <leader>- :norm 0i#<cr>
vnoremap <leader>- :norm 0i#<cr>
" <leader>-6 or <leader>-x uncomment:
nnoremap <leader>6 :norm 0^x<cr>
vnoremap <leader>6 :norm 0^x<cr>
nnoremap <leader>x :norm 0^x<cr>
vnoremap <leader>x :norm 0^x<cr>

" <leader>-7 insert "//" comment
nnoremap <leader>7 :norm 0i//<cr>
vnoremap <leader>7 :norm 0i//<cr>

" Edit shell config files:
nnoremap <leader>ez :tabnew ~/.zshrc<cr>
nnoremap <leader>eb :tabnew ~/.bashrc<cr>
nnoremap <leader>ef :tabnew ~/.config/fish/config.fish

" Other keymappings to make the experience less painful,
" make the j and k keys go up and down normally instead of to the previous line number
nnoremap j gj
nnoremap k gk

" Clears the search register
nnoremap <silent> <leader>/ :nohlsearch<cr>

" Strip all trailing whitespace from a file, using ,W
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<cr>

" <leader>-rv to reload the vimrc
nnoremap <leader>rv :source $MYVIMRC<cr>
" <leader>-ev to edit the vimrc in a new tab
nnoremap <leader>ev :tabnew $MYVIMRC<cr>

" Automatically deletes all trailing whitespaces on save:
autocmd BufWritePre * %s/\s\+$//e

" Run xrdb whenever the Xdefaults or Xresources are updated:
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

" Recompile suckless programs:
autocmd BufWritePost config.h,config.def.h !sudo make install
