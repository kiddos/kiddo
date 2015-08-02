""
""	Author:	Joseph Yu
""	Last Modified:	2015/1/30
""
""	status line setting:


" Define all the different modes
let g:currentmode={
	\ 'n'  : 'NORMAL',
	\ 'no' : 'N·Operator Pending',
	\ 'v'  : 'VISUAL',
	\ 'V'  : 'V·Line',
	\ '' : 'V·Block',
	\ 's'  : 'SELECT',
	\ 'S'  : 'S·Line',
	\ '' : 'S·Block',
	\ 'i'  : 'INSERT',
	\ 'R'  : 'REPLACE',
	\ 'Rv' : 'V·Replace',
	\ 'c'  : 'Command',
	\ 'cv' : 'Vim Ex',
	\ 'ce' : 'EX',
	\ 'r'  : 'Prompt',
	\ 'rm' : 'MORE',
	\ 'r?' : 'CONFIRM',
	\ '!'  : 'SHELL',
	\}

" Shorten a given filename by truncating path segments.
" https://github.com/blueyed/dotfiles/blob/master/vimrc#L396
function! ShortenFilename(bufname, maxlen) "{{{
	if getbufvar(bufnr(a:bufname), '&filetype') == 'help'
		return fnamemodify(a:bufname, ':t')
	endif

	let maxlen_of_parts = 7 " including slash/dot
	let maxlen_of_subparts = 5 " split at dot/hypen/underscore; including split

	let s:PS = exists('+shellslash') ? (&shellslash ? '/' : '\') : "/"
	let parts = split(a:bufname, '\ze['.escape(s:PS, '\').']')
	let i = 0
	let n = len(parts)
	let wholepath = '' " used for symlink check
	while i < n
		let wholepath .= parts[i]
		" Shorten part, if necessary:
		if i<n-1 && len(a:bufname) > a:maxlen && len(parts[i]) > maxlen_of_parts
		" Let's see if there are dots or hyphens to truncate at, e.g.
		" 'vim-pkg-debian' => 'v-p-d…'
		let w = split(parts[i], '\ze[._-]')
		if len(w) > 1
			let parts[i] = ''
			for j in w
			if len(j) > maxlen_of_subparts-1
				let parts[i] .= j[0:maxlen_of_subparts-2]."…"
			else
				let parts[i] .= j
			endif
			endfor
		else
			let parts[i] = parts[i][0:maxlen_of_parts-2].'…'
		endif
		endif
		" add indicator if this part of the filename is a symlink
		if getftype(wholepath) == 'link'
		if parts[i][0] == s:PS
			let parts[i] = parts[i][0] . '↬ ' . parts[i][1:]
		else
			let parts[i] = '↬ ' . parts[i]
		endif
		endif
		let i += 1
	endwhile
	let r = join(parts, '')
	return r
endfunction "}}}

" Find out current buffer's size and output it.
function! FileSize() "{{{
	let bytes = getfsize(expand('%:p'))
	if (bytes >= 1024)
		let kbytes = bytes / 1024
	endif
	if (exists('kbytes') && kbytes >= 1000)
		let mbytes = kbytes / 1000
	endif

	if bytes <= 0
		return 'null'
	endif

	if (exists('mbytes'))
		return mbytes . 'MB'
	elseif (exists('kbytes'))
		return kbytes . 'KB'
	else
		return bytes . 'B'
	endif
endfunction 

function ShowLastModifiedTime()
	let thisfile = expand("%:t")
	return strftime("Mod: %Y/%m/%d %H:%M:%S", getftime(thisfile))
	"return strftime("%c")
	"return strftime("%d/%m/%y %H:%M:%S")
endfunction

function ShowTime()
	let thisfile = expand("%:t")
	return strftime("%d/%m/%y %H:%M:%S")
endfunction

" the content of the status line.
set statusline=%#sMode#%7{g:currentmode[mode()]}
set statusline+=\ \ %#sFilename#%t
set statusline+=\ %#sFiletype#%y
set statusline+=\ \ %#sLastMod#%5{ShowTime()}
set statusline+=\ %#sStatus#\ %h%m%r
set statusline+=%=
set statusline+=%#sCharacter#0x%04B
set statusline+=\ %#sLinenumber#Line:\ %4l,
set statusline+=\ %#sColumnnumber#%2c
set statusline+=\ %<%#sPercentage#%P
" set statusline+=%=%<%-16.(%#sCharacter#0x%04B\ %#sLinenumber#Line:%4l,%#sColumnnumber#%2c%2V%)\ %#sPercentage#%P

hi sMode			cterm=bold		ctermfg=226		gui=bold	guifg=#FFFF00
hi sAuthor			cterm=bold		ctermfg=99		gui=bold	guifg=#6633FF
hi sFilename		cterm=bold		ctermfg=75		gui=bold	guifg=#6633FF
hi sFiletype		cterm=bold		ctermfg=54		gui=bold	guifg=#6633FF
hi sLastMod			cterm=NONE		ctermfg=34		gui=bold	guifg=#009900
hi sStatus			cterm=bold		ctermfg=160		gui=bold	guifg=#CC0000
hi sCharacter		cterm=bold		ctermfg=69		gui=bold	guifg=#3366FF
hi sLinenumber		cterm=bold		ctermfg=197		gui=bold	guifg=#FF0033
hi sColumnnumber	cterm=bold		ctermfg=70		gui=bold	guifg=#339900
hi sPercentage		cterm=bold		ctermfg=214		gui=bold	guifg=#FF9900

