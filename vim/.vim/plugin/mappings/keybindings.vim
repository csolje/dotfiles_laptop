" {{{ Key mappings

"{{{ Make the leader key be space
let mapleader = "\<Space>"

" }}}

" I hate the Escape key
inoremap jj <Esc>

" easymotion <leader> remap
" Easymotion shortcut
map <leader>e <leader><leader>W
map <leader>e <leader><leader>W

" space-n to open a new file (in a new tab)
nnoremap <leader>n :tabnew<cr>
" space-t to open a new tab
"nnoremap <leader>t :tabnew<cr>

" yanking the rest of the line
noremap Y y$
" Disabling the arrow keys
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
" {{{ tab stuff
nnoremap tn :tabnew<cr>
nnoremap tc :tabclose<cr>
nnoremap tk :tabnext<cr>
nnoremap tj :tabprev<cr>
nnoremap th :tabfirst<cr>
nnoremap tl :tablast<cr>

" <shift-tab> to go to next tab
nnoremap <s-tab> :tabnext<cr>
inoremap <s-tab> <esc>:tabnext<cr>

" <c-shift-tab> to go to previous tab
nnoremap <c-s-tab> :tabprev<cr>
inoremap <c-s-tab> <esc>:tabprev<cr>

" }}}

" {{{ Buffer management
" closing a buffer
nnoremap <c-b>d :bd<cr>


" }}}
" space-f to open fuzzy file finder for CtrlP plugin
"nnoremap <leader>f :CtrlPClearCache<cr>:CtrlP .<cr>

" space-o to open the file browser
nnoremap <leader>o :NERDTreeToggle<cr>
nnoremap <leader>O :NERDTreeFocus<cr>

" space-s to save
nnoremap <leader>s :w<cr>

" space-shift-s to save as
nnoremap <leader><s-s> :w

" space-q to quit (doesn't save, watch out!)
nnoremap <leader>q :q!<cr>

" alt-x to Esc
inoremap <a-d> <esc>

" Leader v for vertical split
nnoremap <c-v> :vsplit<cr>
vnoremap <c-v> :vsplit<cr>

" Leader h for horizontal split
nnoremap <c-h> :split<cr>
vnoremap <c-h> :split<cr>

" pageup and page down
nnoremap <leader>u :<PageUp><cr>
nnoremap <leader>d :<PageDown><cr>

" space-1 insert "!" commenting
nnoremap <leader>1 :norm i!<cr>
vnoremap <leader>1 :norm i!<cr>

" space-' insert """ commenting
nnoremap <leader>' :norm i"<cr>
vnoremap <leader>' :norm i"<cr>

" space-3 insert "#" commenting
nnoremap <leader>3 :norm i#<cr>
vnoremap <leader>3 :norm i#<cr>

" space-- insert "--" commenting
nnoremap <leader>- :norm i--<cr>
vnoremap <leader>- :norm i--<cr>

" space-7 insert "//" commenting
nnoremap <leader>7 :norm i//<cr>
vnoremap <leader>7 :norm i//<cr>

" space-6 uncomment
nnoremap <leader>6 :norm ^x<cr>
vnoremap <leader>6 :norm ^x<cr>

" edit config files
nnoremap <leader>ez :tabnew ~/.zshrc<cr>

" set relative number
"nnoremap <c-n> set rnu<cr>
"nnoremap <c-s-n> set number<cr>
" Clears the search register
nnoremap <silent> <leader>/ :nohlsearch<CR>
" Strip all trailing whitespace from a file, using ,W
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>


function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <c-n> :call NumberToggle()<cr>

" space-rv to reload vimrc
nnoremap <leader>rv :source<Space>$MYVIMRC<cr>

" space-ev to edit the vimrc file (think: edit-vim)
nnoremap <leader>ev :tabnew $MYVIMRC<cr>

" Other keymappings to make the experience less painful
"make j and k keys go up normally instead of to the previous line number
nnoremap j gj
nnoremap k gk

" }}}