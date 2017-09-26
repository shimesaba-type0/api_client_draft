let SessionLoad = 1
if &cp | set nocp | endif
nmap ,vr :vr
nmap ,vw :vw
let s:cpo_save=&cpo
set cpo&vim
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
inoremap  <Left>
inoremap <NL> <Down>
inoremap  <Up>
inoremap  <Right>
inoremap ' '' <Left>
inoremap ( ()<Left>
inoremap < <><Left>
inoremap [ []<Left>
inoremap jj 
inoremap { {}<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
set ambiwidth=double
set autoindent
set autoread
set backspace=2
set expandtab
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp
set fileformats=unix,dos,mac
set formatoptions=tq
set helplang=ja
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:>_,trail:-,eol:$
set modelines=0
set ruler
set scrolloff=999
set shiftwidth=4
set shortmess=filnxtToOI
set showcmd
set showmatch
set smartcase
set smartindent
set softtabstop=4
set statusline=[%n]%{matchstr(hostname(),'__w__+')}@%<%F%m%r%h%w[%{&fileformat}][%{has('multi_byte')&&&fileencoding!=''?&fileencoding:&encoding}]%y%=%{exists('*SkkGetModeStr')?SkkGetModeStr():''}[%{col('.')-1}=ASCII=%B,HEX=%c[C=%c/%{col('$')-1}][L=%l/%L][WC=%{exists('*WordCount')?WordCount():[]}][%p%%]
set title
set updatetime=0
set virtualedit=block
set window=0
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/rb/rails_api_test/api_client_draft
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +11 add_user.rb
badd +36 get_user_info.rb
argglobal
silent! argdel *
edit get_user_info.rb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 71 + 71) / 142)
exe 'vert 2resize ' . ((&columns * 70 + 71) / 142)
argglobal
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=/usr/local/Cellar/rbenv/1.0.0/rbenv.d/exec/gem-rehash,~/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/did_you_mean-1.0.0/lib,~/.rbenv/versions/2.3.1/lib/ruby/site_ruby/2.3.0,~/.rbenv/versions/2.3.1/lib/ruby/site_ruby/2.3.0/x86_64-darwin16,~/.rbenv/versions/2.3.1/lib/ruby/site_ruby,~/.rbenv/versions/2.3.1/lib/ruby/vendor_ruby/2.3.0,~/.rbenv/versions/2.3.1/lib/ruby/vendor_ruby/2.3.0/x86_64-darwin16,~/.rbenv/versions/2.3.1/lib/ruby/vendor_ruby,~/.rbenv/versions/2.3.1/lib/ruby/2.3.0,~/.rbenv/versions/2.3.1/lib/ruby/2.3.0/x86_64-darwin16
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=./tags,tags,/usr/local/Cellar/rbenv/1.0.0/rbenv.d/exec/gem-rehash/tags,~/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/did_you_mean-1.0.0/lib/tags,~/.rbenv/versions/2.3.1/lib/ruby/site_ruby/2.3.0/tags,~/.rbenv/versions/2.3.1/lib/ruby/site_ruby/2.3.0/x86_64-darwin16/tags,~/.rbenv/versions/2.3.1/lib/ruby/site_ruby/tags,~/.rbenv/versions/2.3.1/lib/ruby/vendor_ruby/2.3.0/tags,~/.rbenv/versions/2.3.1/lib/ruby/vendor_ruby/2.3.0/x86_64-darwin16/tags,~/.rbenv/versions/2.3.1/lib/ruby/vendor_ruby/tags,~/.rbenv/versions/2.3.1/lib/ruby/2.3.0/tags,~/.rbenv/versions/2.3.1/lib/ruby/2.3.0/x86_64-darwin16/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 67 - ((14 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
67
normal! 0
wincmd w
argglobal
edit add_user.rb
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=/usr/local/Cellar/rbenv/1.0.0/rbenv.d/exec/gem-rehash,~/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/did_you_mean-1.0.0/lib,~/.rbenv/versions/2.3.1/lib/ruby/site_ruby/2.3.0,~/.rbenv/versions/2.3.1/lib/ruby/site_ruby/2.3.0/x86_64-darwin16,~/.rbenv/versions/2.3.1/lib/ruby/site_ruby,~/.rbenv/versions/2.3.1/lib/ruby/vendor_ruby/2.3.0,~/.rbenv/versions/2.3.1/lib/ruby/vendor_ruby/2.3.0/x86_64-darwin16,~/.rbenv/versions/2.3.1/lib/ruby/vendor_ruby,~/.rbenv/versions/2.3.1/lib/ruby/2.3.0,~/.rbenv/versions/2.3.1/lib/ruby/2.3.0/x86_64-darwin16
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=./tags,tags,/usr/local/Cellar/rbenv/1.0.0/rbenv.d/exec/gem-rehash/tags,~/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/did_you_mean-1.0.0/lib/tags,~/.rbenv/versions/2.3.1/lib/ruby/site_ruby/2.3.0/tags,~/.rbenv/versions/2.3.1/lib/ruby/site_ruby/2.3.0/x86_64-darwin16/tags,~/.rbenv/versions/2.3.1/lib/ruby/site_ruby/tags,~/.rbenv/versions/2.3.1/lib/ruby/vendor_ruby/2.3.0/tags,~/.rbenv/versions/2.3.1/lib/ruby/vendor_ruby/2.3.0/x86_64-darwin16/tags,~/.rbenv/versions/2.3.1/lib/ruby/vendor_ruby/tags,~/.rbenv/versions/2.3.1/lib/ruby/2.3.0/tags,~/.rbenv/versions/2.3.1/lib/ruby/2.3.0/x86_64-darwin16/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 71 - ((18 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
71
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 71 + 71) / 142)
exe 'vert 2resize ' . ((&columns * 70 + 71) / 142)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
