" Vim color file
" Maintainer:   Edward Liaw
" Last Change:  Sat Dec 22 15:57:51 PST 2012
" URL:          http://

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
  " no guarantees for version 5.8 and below, but this makes it stop
  " complaining
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif
let g:colors_name="bubblegum"

" Color map
let s:white    = {"gui": "#FFFFFF", "cterm": "15"}
let s:black    = {"gui": "#141414", "cterm": "0"}
let s:blue0    = {"gui": "#99BBFF", "cterm": "12"}
let s:blue1    = {"gui": "#6699FF", "cterm": "4"}
let s:blue2    = {"gui": "#2970FF", "cterm": "4"}
let s:cyan0    = {"gui": "#99EEFF", "cterm": "14"}
let s:cyan1    = {"gui": "#66E6FF", "cterm": "6"}
let s:green0   = {"gui": "#BBFF99", "cterm": "10"}
let s:green1   = {"gui": "#99FF66", "cterm": "2"}
let s:green2   = {"gui": "#66FFCC", "cterm": "2"}
let s:grey0    = {"gui": "#999999", "cterm": "7"}
let s:grey1    = {"gui": "#DFDFDF", "cterm": "8"}
let s:grey2    = {"gui": "#3C3C3C", "cterm": "8"}
let s:orange0  = {"gui": "#FFC95C", "cterm": "11"}
let s:orange1  = {"gui": "#FFB829", "cterm": "3"}
let s:magenta0 = {"gui": "#DD99FF", "cterm": "13"}
let s:magenta1 = {"gui": "#CC66FF", "cterm": "5"}
let s:magenta2 = {"gui": "#7F66FF", "cterm": "5"}
let s:red0     = {"gui": "#FF99BB", "cterm": "9"}
let s:red1     = {"gui": "#FF6699", "cterm": "1"}
let s:red2     = {"gui": "#FF7F66", "cterm": "1"}
let s:yellow0  = {"gui": "#FFDD99", "cterm": "11"}
let s:yellow1  = {"gui": "#FFCC66", "cterm": "3"}
let s:yellow2  = {"gui": "#E6FF66", "cterm": "3"}


" Utility function
function! s:hi(group, style)
  execute "highlight" a:group
        \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
        \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
        \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
        \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
        \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
        \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
        \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" Color terminal definitions
"0              Black
"1              DarkRed
"2              DarkGreen
"3              Brown, DarkYellow
"4              DarkBlue
"5              DarkMagenta
"6              DarkCyan
"7              LightGray, LightGrey, Gray, Grey
"8              DarkGray, DarkGrey
"9              Red, LightRed
"10             Green, LightGreen
"11             Yellow, LightYellow
"12             Blue, LightBlue
"13             Magenta, LightMagenta
"14             Cyan, LightCyan
"15             White

" Highlight groups
if version >= 700
  call s:hi("CursorLine",   {"gui": "bold", "cterm": "bold"})
  call s:hi("ColorColumn",  {"gui": "reverse", "cterm": "reverse"})
  call s:hi("ColorColumn",  {"gui": "reverse", "cterm": "reverse"})
endif

call s:hi("Normal",       {"fg": s:white, "bg": s:black})
" CursorIM    
call s:hi("Directory",    {"fg": s:cyan1})
call s:hi("DiffAdd",      {"fg": s:black, "bg": s:green2})
call s:hi("DiffChange",   {"fg": s:black, "bg": s:yellow2})
call s:hi("DiffDelete",   {"fg": s:black, "bg": s:red2})
call s:hi("DiffText",     {"fg": s:black, "bg": s:yellow2, "gui": "bold", "cterm": "bold"})
call s:hi("ErrorMsg",     {"fg": s:white, "bg": s:red2, "gui": "bold", "cterm": "bold"})
call s:hi("Folded",       {"fg": s:black, "bg": s:grey2})
call s:hi("FoldColumn",   {"fg": s:black, "bg": s:grey2})
call s:hi("IncSearch",    {"fg": s:black, "bg": s:green2})
" Menu        
call s:hi("ModeMsg",      {"fg": s:yellow1})
call s:hi("MoreMsg",      {"fg": s:green1})
call s:hi("NonText",      {"fg": s:blue1, "gui": "bold", "cterm": "bold"})
call s:hi("LineNr",       {"fg": s:yellow1})
call s:hi("Question",     {"fg": s:green0})
" Scrollbar   
call s:hi("Search",       {"fg": s:black, "bg": s:blue2})
call s:hi("SpecialKey",   {"fg": s:green1})
call s:hi("StatusLine",   {"gui": "bold,reverse", "cterm": "bold,reverse"})
call s:hi("StatusLineNC", {"gui": "reverse", "cterm": "reverse"})
call s:hi("TabLine",      {"fg": s:black, "bg": s:grey2})
call s:hi("TabLineSel",   {"gui": "bold", "cterm": "bold"})
call s:hi("Title",        {"fg": s:blue0})
" Tooltip     
call s:hi("VertSplit",    {"gui": "reverse", "cterm": "reverse"})
call s:hi("Visual",       {"gui": "reverse", "cterm": "reverse"})
call s:hi("VisualNOS",    {"gui": "bold,undercurl", "cterm": "bold,underline"})
call s:hi("WarningMsg",   {"bg": s:red2})
call s:hi("WildMenu",     {"gui": "reverse", "cterm": "reverse"})

" syntax highlighting groups
call s:hi("Comment",      {"fg": s:grey1})

call s:hi("Constant",     {"fg": s:orange1})
call s:hi("String",       {"fg": s:red0})

call s:hi("Identifier",   {"fg": s:cyan0})
call s:hi("Function",     {"fg": s:green0})

call s:hi("Statement",    {"fg": s:yellow0})

call s:hi("PreProc",      {"fg": s:magenta2})

call s:hi("Type",         {"fg": s:blue0})
call s:hi("Typedef",      {"fg": s:magenta0})

call s:hi("Special",      {"fg": s:yellow0})
call s:hi("SpecialChar",  {"fg": s:orange1})
call s:hi("Tag",          {"fg": s:orange0})

call s:hi("Underlined",   {"gui": "undercurl", "cterm": "underline"})

call s:hi("Ignore",       {"fg": s:grey1})
call s:hi("Error",        {"fg": s:white, "bg": s:red2, "gui": "bold", "cterm": "bold"})

call s:hi("Todo",         {"fg": s:black, "bg": s:yellow2})

"vim: sw=4
