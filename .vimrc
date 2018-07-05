" basics
syntax on
:set number
" :set laststatus=2
set clipboard=unnamed

" Alias
nnoremap <leader> :NERDTreeToggle <CR>

" Plugins
execute pathogen#infect()
filetype plugin indent on

" Go lang
au BufRead,BufNewFile *.go set filetype=go
command Gorun :!go run %

" yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Ack -> ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck <CR>

" CamcelCaseMotion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" Choosewin
nmap  -  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1
