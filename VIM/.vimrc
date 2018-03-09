execute pathogen#infect()

" doesn't work
" let makeprg = makeprgBuild({})

" test this settings
"set path+=**
set path+=$PWD/**

" set mapleader from '\' to '<' so it has the same place on german keyboard layout
" or even map to space because its the best option
let mapleader = "\<Space>"

"create a different version for use with ergodox_puq

"disable arrowkeys in vim for training
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
"disable arrowkey in insert mode for training
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"map esc key to jj to exit insert mode for easily
"TODO disable for ergodox.vimrc
inoremap jd <ESC>

" load filetype-specific indent files
filetype indent on
filetype plugin indent on

"syntax enable
syntax on

set incsearch

"highlight found patterns
set hlsearch

"show vim mode, ist ganz gut zu wissen
"set noshowmode

"set term=screen-256color
"let g:solarized_termcolors=256

let hour = strftime("%H")
if 10 <= hour && hour < 18
 set background=light
else
 set background=dark
endif
"
" set background=dark
" colorscheme solarized

" set colorprofile in vimdiff (high or low)
let g:solarized_diffmode="low"

" not necessary -- i use this quite often
call togglebg#map("<F5>")

set number
set rnu
set showcmd
"set cursorline

"set wildmenu            " visual autocomplete for command menu

"set showmatch           " highlight matching [{()}] -- Cursor nicht immer erkennbar

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" includes for zsh-Shell in syntastic
let g:syntastic_shell = "/usr/bin/zsh"


"
""" Mappings
"
"
"

" Navigate to beetween round brackets
map <Leader>) ])
" map <Leader>) [) -- doesnt work 
map <Leader>( [(
" map <Leader>( ]( -- doesnt work

" Navigate between curly brackets
" map <Leader>} ]} -- doesnt work
" map <Leader>{ [{ -- doesnt work

" Navigate between functions/methods(mostly in c/c++)
" map <Leader>m ]m
" map <Leader>M ]M

" Set/Unset hlsearch
nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" Copy to '+'-Register
map <Leader>y "+y
map <Leader>Y "+Y

" Copy to '*'-Register
" map <Leader>Y "*y

" Paste from '+'-Register
map <Leader>p "+p
map <Leader>P "+P

" Paste from '*'-Register
" map <Leader>P "*p

" Save File(Soft)
map <Leader>w :w<CR>

" Save File(Hard)
map <Leader>W :w!<CR>

" Switch Insertion-Mode for pasting
set pastetoggle=<F2>

" Start Tagbar-Plugin
map <Leader>t :TagbarToggle<CR>

" Toogle Syntastic-Mode
map <Leader><F12> :SyntasticToggleMode<CR>

" Open Syntastic Error-List 
map <Leader>e :Errors<CR>

" Close Syntastic Error-List
map <Leader>E :SyntasticReset<CR>


"" Visual Mode Mappings

" comment selected lines 
vmap <Leader>c :s/\(.*\)/\/\/\1<CR>
vmap <Leader>7 :s/\(.*\)/\/\/\1<CR>
vmap <Leader>- :s/\(.*\)/--\1<CR>

" uncomment selected lines
vmap <Leader>C :s/\/\//<CR>
vmap <Leader>/ :s/\/\//<CR>
vmap <Leader>_ :s/--/<CR>


" dot command is easily usable on selection 
vnoremap . :normal .<CR>
"
"
"
"

" Syntastic Icons/Options
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_warning_symbol = 'ǁ'
let g:syntastic_style_error_symbol = 'ǂ' 

"
" VimScripts 
"

" http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
function! LineNumberDisplayToggle()
  if(&rnu == 1)
    set nornu 
  else
    set rnu
  endif
endfunction
nnoremap <Leader>n :call LineNumberDisplayToggle()<CR>

function! ClearRegisters()
	let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', '\zs')
	for r in regs
		  call setreg(r, [])
	endfor
endfunction

function! ClearAllRegisters()
	let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
	for r in regs
		  call setreg(r, [])
	endfor
endfunction

" https://www.reddit.com/r/vim/comments/5lj75f/how_to_reload_vim_completely_using_zsh_exit_to/
function! VimQuitReload()
	!kill -USR1 $(ps -p $(ps -p $$ -o ppid=) -o ppid=)
	qa!
endfunction
command! Vimqrl silent call VimQuitReload()

"
"
"
