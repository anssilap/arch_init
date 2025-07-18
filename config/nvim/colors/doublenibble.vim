" Name:         doublenibble
" Description:  A mostly monochrome colorscheme, with a few niceties.
" Author:       Anssi Lapplainen <anssilap@gmail.com>
" Maintainer:   Anssi Lapplainen <anssilap@gmail.com>
" Website:      N/A
" License:      MIT
" Last Updated: Mon 23 Sep 2024 21:20:39

hi clear
" source $VIMRUNTIME/colors/vim.lua " Nvim: revert to Vim default color scheme
let g:colors_name = 'doublenibble'

let s:t_Co = &t_Co

" hi! link Terminal Normal
" hi! link StatusLineTerm StatusLine
" hi! link StatusLineTermNC StatusLineNC
" hi! link MessageWindow Pmenu
" hi! link PopupNotification Todo
" hi! link Boolean Constant
" hi! link Character Constant
" hi! link Conditional Statement
" hi! link Define PreProc
" hi! link Debug Special
" hi! link Delimiter Special
" hi! link Exception Statement
" hi! link Float Constant
" hi! link Function Identifier
" hi! link Include PreProc
" hi! link Keyword Statement
" hi! link Label Statement
" hi! link Macro PreProc
" hi! link Number Constant
" hi! link Operator Statement
" hi! link PreCondit PreProc
" hi! link Repeat Statement
" hi! link SpecialChar Special
" hi! link SpecialComment Special
" hi! link StorageClass Type
" hi! link String Constant
" hi! link Structure Type
" hi! link Tag Special
" hi! link Typedef Type
" hi! link lCursor Cursor
" hi! link debugBreakpoint ModeMsg
" hi! link debugPC CursorLine
" hi! link Function bullshit

if &background ==# 'dark'
  hi Normal guifg=#dadada guibg=#030303 gui=NONE cterm=NONE
  " hi Conditional guifg=#d15c28 guibg=NONE gui=NONE cterm=NONE
  " hi Function guifg=#ff0000 guibg=NONE gui=NONE cterm=NONE

  " if (has('termguicolors') && &termguicolors) || has('gui_running')
  "   let g:terminal_ansi_colors = ['#000000', '#d7005f', '#00af5f', '#d78700', '#0087d7', '#d787d7', '#00afaf', '#dadada', '#707070', '#ff005f', '#00d75f', '#ffaf00', '#5fafff', '#ff87ff', '#00d7d7', '#ffffff']
  "   " Nvim uses g:terminal_color_{0-15} instead
  "   for i in range(g:terminal_ansi_colors->len())
  "     let g:terminal_color_{i} = g:terminal_ansi_colors[i]
  "   endfor
  " endif

  " My custom additions to default vim 'quiet' theme
  " hi bullshit guifg=#ff00ff guibg=#000000 gui=NONE cterm=NONE

  " hi ColorColumn guifg=NONE guibg=#1c1c1c gui=NONE cterm=NONE
  " hi Conceal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  " hi CurSearch guifg=#ff5fff guibg=#000000 gui=reverse cterm=reverse
  " hi Cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  " hi CursorColumn guifg=NONE guibg=#303030 gui=NONE cterm=NONE
  " hi CursorLine guifg=NONE guibg=#303030 gui=NONE cterm=NONE
  " hi CursorLineNr guifg=#dadada guibg=#303030 gui=NONE cterm=NONE
  " hi DiffAdd guifg=#00af00 guibg=#000000 gui=reverse cterm=reverse
  " hi DiffChange guifg=#87afd7 guibg=#000000 gui=reverse cterm=reverse
  " hi DiffDelete guifg=#d75f5f guibg=#000000 gui=reverse cterm=reverse
  " hi DiffText guifg=#d787d7 guibg=#000000 gui=reverse cterm=reverse
  " hi Directory guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  " hi EndOfBuffer guifg=#707070 guibg=NONE gui=NONE cterm=NONE
  " hi ErrorMsg guifg=#dadada guibg=#000000 gui=reverse cterm=reverse
  " hi FoldColumn guifg=#707070 guibg=NONE gui=NONE cterm=NONE
  " hi Folded guifg=#707070 guibg=#000000 gui=NONE cterm=NONE
  " hi IncSearch guifg=#ffaf00 guibg=#000000 gui=reverse cterm=reverse
  " hi LineNr guifg=#585858 guibg=NONE gui=NONE cterm=NONE
  " hi MatchParen guifg=#ff00af guibg=NONE gui=bold cterm=bold
  " hi ModeMsg guifg=#dadada guibg=NONE gui=bold cterm=bold
  " hi MoreMsg guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  " hi NonText guifg=#707070 guibg=NONE gui=NONE cterm=NONE
  " hi Pmenu guifg=#000000 guibg=#a8a8a8 gui=NONE cterm=NONE
  " hi PmenuExtra guifg=#000000 guibg=#a8a8a8 gui=NONE cterm=NONE
  " hi PmenuKind guifg=#000000 guibg=#a8a8a8 gui=bold cterm=bold
  " hi PmenuSbar guifg=#707070 guibg=#585858 gui=NONE cterm=NONE
  " hi PmenuSel guifg=#000000 guibg=#dadada gui=NONE cterm=NONE
  " hi PmenuExtraSel guifg=#000000 guibg=#dadada gui=NONE cterm=NONE
  " hi PmenuKindSel guifg=#000000 guibg=#dadada gui=bold cterm=bold
  " hi PmenuThumb guifg=#dadada guibg=#dadada gui=NONE cterm=NONE
  " hi Question guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  " hi QuickFixLine guifg=#ff5fff guibg=#000000 gui=reverse cterm=reverse
  " hi Search guifg=#00afff guibg=#000000 gui=reverse cterm=reverse
  " hi SignColumn guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  " hi SpecialKey guifg=#707070 guibg=NONE gui=bold cterm=bold
  " hi SpellBad guifg=#d7005f guibg=NONE guisp=#d7005f gui=undercurl cterm=underline
  " hi SpellCap guifg=#0087d7 guibg=NONE guisp=#0087d7 gui=undercurl cterm=underline
  " hi SpellLocal guifg=#d787d7 guibg=NONE guisp=#d787d7 gui=undercurl cterm=underline
  " hi SpellRare guifg=#00afaf guibg=NONE guisp=#00afaf gui=undercurl cterm=underline
  " hi StatusLine guifg=#000000 guibg=#dadada gui=bold cterm=bold
  " hi StatusLineNC guifg=#707070 guibg=#000000 gui=reverse cterm=reverse
  " hi TabLine guifg=#707070 guibg=#000000 gui=reverse cterm=reverse
  " hi TabLineFill guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  " hi TabLineSel guifg=#000000 guibg=#dadada gui=bold cterm=bold
  " hi Title guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  " hi VertSplit guifg=#000070 guibg=#000000 gui=NONE cterm=NONE
  " hi Visual guifg=#ffaf00 guibg=#000000 gui=reverse cterm=reverse
  " hi VisualNOS guifg=NONE guibg=#303030 gui=NONE cterm=NONE
  " hi WarningMsg guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  " hi WildMenu guifg=#00afff guibg=#000000 gui=bold cterm=bold
  " hi Comment guifg=#00f000 guibg=NONE gui=bold cterm=bold
  " hi Constant guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  " hi Error guifg=#ff005f guibg=#000000 gui=bold,reverse cterm=bold,reverse
  " hi Identifier guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  " hi Ignore guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  " hi PreProc guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  " hi Special guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  " hi Statement guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  " hi Todo guifg=#00ffaf guibg=NONE gui=bold,reverse cterm=bold,reverse
  " hi Type guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  " hi Underlined guifg=#dadada guibg=NONE gui=underline cterm=underline
  " hi CursorIM guifg=#000000 guibg=#afff00 gui=NONE cterm=NONE
  " hi ToolbarLine guifg=NONE guibg=#000000 gui=NONE cterm=NONE
  " hi ToolbarButton guifg=#dadada guibg=#000000 gui=bold cterm=bold
endif

" Background: dark
" Color: dark0         #000000           16                black
" Color: dark1         #d7005f           161               darkred
" Color: dark2         #00af5f           35                darkgreen
" Color: dark3         #d78700           172               darkyellow
" Color: dark4         #0087d7           32                darkblue
" Color: dark5         #d787d7           176               darkmagenta
" Color: dark6         #00afaf           37                darkcyan
" Color: dark7         #dadada           253               grey
" Color: dark8         #707070           242               darkgrey
" Color: dark9         #ff005f           197               red
" Color: dark10        #00d75f           41                green
" Color: dark11        #ffaf00           214               yellow
" Color: dark12        #5fafff           75                blue
" Color: dark13        #ff87ff           213               magenta
" Color: dark14        #00d7d7           44                cyan
" Color: dark15        #ffffff           231               white
" Color: diffred       #d75f5f           167               darkred
" Color: diffgreen     #00af00           34                darkgreen
" Color: diffblue      #87afd7           110               darkblue
" Color: diffpink      #d787d7           176               darkmagenta
" Color: uipink        #ff00af           199               magenta
" Color: uilime        #afff00           154               green
" Color: uiteal        #00ffaf           49                green
" Color: uiblue        #00afff           39                blue
" Color: uipurple      #af00ff           129               darkmagenta
" Color: uiamber       #ffaf00           214               darkyellow
" Color: uiblack       #303030           236               darkgrey
" Color: yasogrey      #1c1c1c           234               black
" Color: linenrblack   #585858           240               darkgrey
" Color: uicursearch   #ff5fff           207               magenta
" Color: invisigrey    #a8a8a8           248               darkgrey
" Color: errorred      #ff005f           197               red
" Term colors: dark0 dark1 dark2 dark3 dark4 dark5 dark6 dark7
" Term colors: dark8 dark9 dark10 dark11 dark12 dark13 dark14 dark15
" Background: light
" Color: brightwhite   #eeeeee           255               grey
" Color: light0        #000000           16                black
" Color: light1        #af0000           124               darkred
" Color: light2        #005f00           22                darkgreen
" Color: light3        #af5f00           130               darkyellow
" Color: light4        #005faf           25                darkblue
" Color: light5        #870087           90                darkmagenta
" Color: light6        #008787           30                darkcyan
" Color: light7        #d7d7d7           188               grey
" Color: light8        #626262           241               darkgrey
" Color: light9        #d70000           160               red
" Color: light10       #008700           28                green
" Color: light11       #d78700           172               yellow
" Color: light12       #0087d7           32                blue
" Color: light13       #af00af           127               magenta
" Color: light14       #00afaf           37                cyan
" Color: light15       #ffffff           231               white
" Color: diffred       #d78787           174               red
" Color: diffgreen     #87d787           114               green
" Color: diffblue      #afafd7           146               blue
" Color: diffpink      #d787d7           176               magenta
" Color: uipink        #ff00af           199               magenta
" Color: uilime        #afff00           154               green
" Color: uiteal        #00ffaf           49                cyan
" Color: uiblue        #00afff           39                blue
" Color: uipurple      #af00ff           129               darkmagenta
" Color: uiamber       #ffaf00           214               yellow
" Color: invisigrey    #a8a8a8           248               darkgrey
" Color: yasogrey      #e4e4e4           254               grey
" Color: uicursearch   #ff5fff           207               magenta
" Color: errorred      #ff005f           197               red
" Term colors: light0 light1 light2 light3 light4 light5 light6 light7
" Term colors: light8 light9 light10 light11 light12 light13 light14 light15
" Background: any
" vim: et ts=8 sw=2 sts=2
