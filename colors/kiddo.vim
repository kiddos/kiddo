""	Vim color file
""	Maintainer: Joseph Yu
""	Last Change: 2015 1 31
""	

hi clear

let colors_name = "kiddo"

set t_Co=256
set background=dark

if exists("syntax_on")
  syntax reset
endif

hi	Normal		cterm=NONE	ctermfg=255	ctermbg=0		gui=NONE	guifg=#FFFFFF	guibg=#000000	
hi	Cursor		cterm=NONE	ctermfg=0	ctermbg=255		gui=NONE	guifg=#000000	guibg=#FFFFFF
hi	CursorIM	cterm=NONE	ctermfg=0	ctermbg=255		gui=NONE	guifg=#000000	guibg=#FFFFFF
hi	CursorColumn	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi	CursorLine		cterm=NONE	ctermfg=NONE	ctermbg=233		gui=NONE	guifg=NONE	guibg=NONE
hi	Directory	cterm=bold	ctermfg=34		gui=NONE	guifg=#9933FF
hi	DiffAdd		ctermbg=236		guibg=#303030
hi	DiffChange	ctermbg=236		guibg=#303030
hi	DiffDelete	ctermbg=236		cterm=bold		gui=bold	guibg=#303030
hi	DiffText	ctermbg=236		ctermfg=82	cterm=bold		gui=bold	guibg=#303030	guifg=#33FF00
hi	ErrorMsg	ctermfg=255		ctermbg=160		guifg=#FFFFFF	guifg=#CC0000
hi	VertSplit	ctermbg=0		ctermfg=70		guibg=#000000	guifg=#339900
hi	Folded		ctermfg=69		guifg=#3366FF
hi	FoldColumn	ctermfg=69		guifg=#3366FF
hi	SignColumn	ctermfg=63		guifg=#3366FF
hi	IncSearch	cterm=bold		gui=bold
hi	LineNr			cterm=NONE	ctermfg=248		ctermbg=233		gui=NONE	guifg=#A8A8A8	guibg=#121212
hi	CursorLineNr	cterm=NONE	ctermfg=255		ctermbg=234		gui=NONE	guifg=#FFFFFF	guibg=#1C1C1C
hi	MatchParen	cterm=bold		ctermfg=0		ctermbg=214		gui=bold	guifg=#000000	guibg=#FF9900
hi	ModeMsg		cterm=bold		ctermfg=121		ctermbg=0		gui=bold	guifg=#66FF99	guibg=#000000
hi	MoreMsg		cterm=bold		ctermfg=153		ctermbg=0		gui=bold	guifg=#99CCFF	guibg=#000000
hi	NonText		cterm=bold		ctermfg=135		ctermbg=0		gui=bold	guifg=#9933FF	guibg=#000000
hi	Pmenu		cterm=bold		ctermbg=236		ctermfg=255		gui=bold	guibg=#339900	guifg=#FFFFFF
hi	PmenuSel	cterm=bold		ctermbg=239		ctermfg=255		gui=bold	guibg=#33CC00	guifg=#FFFFFF
hi	PmenuSbar	ctermbg=234		ctermfg=234		guibg=#006600	guifg=#33CCFF
hi	PmenuThumb	ctermbg=242		ctermfg=242		guibg=#009900	guifg=#3399ff
hi	Question	ctermbg=0		ctermfg=40		guibg=#000000	guifg=#00CC00
hi	Search		ctermfg=NONE	ctermbg=220		guifg=NONE		guibg=#FFCC00
hi	SpecialKey	ctermfg=69		guifg=#3366FF
hi	StatusLine		ctermfg=0		ctermbg=0	cterm=NONE		guifg=#000000	guibg=#000000	gui=NONE
hi	StatusLineNC	ctermfg=0		ctermbg=0	cterm=NONE		guifg=#000000	guibg=#000000	gui=NONE
hi	TabLine		cterm=bold		ctermfg=99		ctermbg=0		gui=bold		guifg=#6633FF	guibg=#000000
hi	TabLineFill	cterm=bold		ctermfg=0		ctermbg=0		gui=bold		guifg=#000000	guibg=#000000
hi	TabLineSel	cterm=underline,bold			ctermfg=214		ctermbg=236		gui=underline,bold	guifg=#FF9900	guibg=#303030
hi	Title		cterm=NONE		ctermfg=69		gui=NONE	guifg=#FF0033
hi	Visual		cterm=reverse	ctermbg=NONE	gui=reverse	guibg=NONE
hi	VisualNOS	cterm=underline,bold	gui=underline,bold
hi	WarningMsg	cterm=bold		ctermbg=160		ctermfg=255		gui=bold		guibg=#CC0000	guifg=#FFFFFF
hi	WildMenu	ctermfg=16		ctermbg=214		guifg=#000000	guibg=#FF9900

hi	Menu		gui=bold
hi	scrollbars	gui=bold
hi	Tooltip		gui=bold	

""	general syntax highlighting
hi	Comment		cterm=NONE		ctermfg=243		gui=NONE	guifg=#767676
hi	Constant	cterm=bold		ctermfg=161		gui=bold	guifg=#FF0033
hi	String		cterm=NONE		ctermfg=40		gui=NONE	guifg=#00CC00
hi	Character	cterm=NONE		ctermfg=40		gui=NONE	guifg=#00CC00
hi	Number		cterm=bold		ctermfg=161		gui=bold	guifg=#FF0033
hi	Boolean		cterm=bold		ctermfg=161		gui=bold	guifg=#FF0033
hi	Float		cterm=bold		ctermfg=161		gui=bold	guifg=#FF0033
hi	Identifier	cterm=bold		ctermfg=214		gui=bold	guifg=#FF9900
hi	Function	cterm=NONE		ctermfg=158		gui=NONE	guifg=#FF9900
hi	Statement	cterm=bold		ctermfg=165		gui=bold	guifg=#9933FF
hi	Conditional	cterm=bold		ctermfg=165		gui=bold	guifg=#CC00FF
hi	Repeat		cterm=bold		ctermfg=165		gui=bold	guifg=#CC00FF
hi	Label		cterm=bold		ctermfg=165		gui=bold	guifg=#CC00FF
hi	Operator	cterm=bold		ctermfg=129		gui=bold	guifg=#9933FF
hi	Keyword		cterm=bold		ctermfg=135		gui=bold	guifg=#9933FF
hi	Exception	cterm=bold		ctermfg=165		gui=bold	guifg=#CC00FF
hi	PreProc		cterm=bold		ctermfg=161		gui=bold	guifg=#9933FF
hi	Include		cterm=bold		ctermfg=165		gui=bold	guifg=#CC00FF
hi	Define		cterm=bold		ctermfg=124		gui=bold	guifg=#9933FF
hi	Macro		cterm=bold		ctermfg=69		gui=bold	guifg=#9933FF
hi	PreCondit	cterm=bold		ctermfg=165		gui=bold	guifg=#CC00FF
hi	Type		cterm=bold		ctermfg=33		gui=bold	guifg=#3366FF
hi	StorageClass	cterm=bold	ctermfg=33		gui=bold	guifg=#3366FF
hi	Structure	cterm=bold		ctermfg=33		gui=bold	guifg=#3366FF
hi	Typedef		cterm=bold		ctermfg=33		gui=bold	guifg=#336699
hi	Special		cterm=bold		ctermfg=214		gui=bold	guifg=#FF9900
hi	SpecialChar	cterm=bold		ctermfg=214		gui=bold	guifg=#FF9900
hi	Tag			cterm=bold		ctermfg=214		gui=bold	guifg=#FF9900
hi	Delimiter	cterm=bold		ctermfg=214		gui=bold	guifg=#FF9900
hi	SpecialComment	cterm=bold	ctermfg=33		gui=bold	guifg=#3366FF
hi	Debug		cterm=bold		ctermfg=161		gui=bold	guifg=#FF0033
hi	Underlined	cterm=underline,bold	ctermfg=214			gui=underline,bold	guifg=#FF9900
hi	Ignore		cterm=bold		ctermfg=160		gui=bold	guifg=#CC0000
hi	Error		cterm=bold		ctermbg=160		ctermfg=255	gui=bold	guibg=#CC0000	guifg=#FFFFFF
hi	Todo		cterm=bold		ctermfg=161		ctermbg=214	gui=bold	guifg=#FF0033	guibg=#FF9900

"" statusline style
"source ~/.vim/bundle/kiddo/colors/statusline.vim

""	enable C syntax highlight
:let c_gnu = 1
:let c_comment_strings = 1
:let c_space_errors = 1
:let c_curly_error = 1
:let c_ansi_typedefs = 1
:let c_ansi_constants = 1
":let c_syntax_for_h = 1

""	enable Java syntax highlight
""	All identifiers in java.lang.* are always visible in all classes.  To
""	highlight them use:
:let java_highlight_java_lang_ids=1
""	If you write function declarations that are always indented by either
""	a tab, 8 spaces or 2 spaces you may want to set
":let java_highlight_functions="indent"
":let java_highlight_functions="style"
:let java_allow_cpp_keywords = 0
":hi link javaParen Comment
":let java_minlines = 50

""	enable Python syntax highlight
""	For highlighted numbers:
:let python_highlight_numbers = 1
""	For highlighted builtin functions:
:let python_highlight_builtins = 1
""	For highlighted standard exceptions:
:let python_highlight_exceptions = 1
""	For highlighted trailing whitespace and mix of spaces and tabs:
:let python_highlight_space_errors = 1
""	If you want all possible Python highlighting (the same as setting the
""	preceding three options):
""	:let python_highlight_all = 1

