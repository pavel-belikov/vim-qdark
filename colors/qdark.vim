" vim:foldlevel=1:

hi clear
set background=dark
if exists('syntax_on')
    syntax reset
endif
let g:colors_name = 'qdark'

" Basic colors {{{1
" Modes {{{2
hi  Normal     ctermfg=white        ctermbg=black     guifg=#cccccc  guibg=#202020
if &t_Co == 256
    hi Visual ctermfg=white ctermbg=27
    hi Cursor ctermfg=white ctermbg=34
else
    hi Visual ctermfg=white ctermbg=darkblue
    hi Cursor ctermfg=white ctermbg=darkgreen
endif

hi Visual guifg=#cccccc guibg=#004588
hi Cursor guifg=#cccccc guibg=#00aa00

" Background {{{2
hi  OnDarkGreen          guibg=#086008  ctermbg=darkgreen   guifg=#cccccc  ctermfg=white
hi  OnDarkBlue           guibg=#0045ff  ctermbg=darkblue    guifg=#cccccc  ctermfg=white
hi  DarkGreenOnDarkBlue  guifg=#086008  ctermfg=darkgreen   guibg=#0045ff  ctermbg=darkblue
hi  OrangeOnDarkBlue     guifg=#aa5500  ctermfg=darkyellow  guibg=#0045ff  ctermbg=darkblue
hi  OnDarkRed            guibg=#e53c3c  ctermbg=darkred     guifg=#cccccc  ctermfg=white
hi  OnOrange             guibg=#aa5500  ctermbg=darkyellow  guifg=#cccccc  ctermfg=white
hi  OnYellow             guibg=#ffff30  ctermbg=yellow      guifg=#cccccc  ctermfg=white
hi  ItalicOnLightOrange  guibg=#ee8800  ctermbg=darkyellow  guifg=#ffffff  ctermfg=white     gui=italic     cterm=italic

if &t_Co == 256
    hi  OnDarkGreen          ctermbg=22
    hi  DarkGreenOnDarkBlue  ctermfg=22
    hi  ItalicOnLightOrange  ctermbg=202    ctermfg=231
endif

if &t_Co == 256
    hi  OnDarkGray             ctermbg=234
    hi  OnDarkGray2            ctermbg=235
    hi  OnDarkGray3            ctermbg=236
    hi  LightGreenOnDarkGray3  ctermbg=236
else
    hi  OnDarkGray             ctermbg=darkgray
    hi  OnDarkGray2            ctermbg=darkgray
    hi  OnDarkGray3            ctermbg=darkgray
    hi  LightGreenOnDarkGray3  ctermbg=darkgray
endif

hi  OnDarkGray             guibg=#222222
hi  OnDarkGray2            guibg=#252525
hi  OnDarkGray3            guibg=#303030
hi  LightGreenOnDarkGray3  guibg=#303030
hi  LightGreenOnDarkGray3  ctermfg=green  guifg=#50ff50

" Foreground {{{2
hi  LightGreen   ctermfg=green        guifg=#50ff50
hi  LightYellow  ctermfg=yellow       guifg=#ffff30
hi  LightCyan    ctermfg=cyan         guifg=#55ffff
hi  LightRed     ctermfg=red          guifg=#ff3c3c
hi  Magenta      ctermfg=magenta      guifg=#ff8bff
hi  Purple       ctermfg=darkmagenta  guifg=#ba55d3
hi  Orange       ctermfg=darkyellow   guifg=#aa5500
hi  DarkCyan     ctermfg=darkcyan     guifg=#0ecbcb
hi  Blue         ctermfg=blue         guifg=#87cefa

" TODO {{{2
hi  Scrollbar  ctermfg=cyan         ctermbg=darkcyan  guifg=#55ffff  guibg=#008cff
hi  Menu       ctermfg=black        ctermbg=blue      guifg=#0c0c0c  guibg=#55ffff

" Semantic syntax highlighting {{{2
hi  Namespace     ctermfg=green  guifg=#50ff50
hi  Member        cterm=italic   gui=italic  guifg=#6ad8b8
if &t_Co == 256
    hi Member ctermfg=49
else
    hi Member ctermfg=darkcyan
endif
hi  EnumConstant  ctermfg=green  guifg=#90ee90 cterm=italic gui=italic

" Basic mappings {{{2
hi!  link   Title                 Purple
hi!  link   VertSplit             LightGreenOnDarkGray3
hi!  link   SpecialKey            LightRed
hi!  link   NonText               LightRed
hi!  link   Directory             DarkCyan
hi!  link   ErrorMsg              OnDarkRed
hi!  link   Search                OnOrange
hi!  link   MoreMsg               OnDarkGreen
hi!  link   ModeMsg               OnDarkBlue
hi!  link   LineNr                LightGreenOnDarkGray3
hi!  link   CursorLineNr          LightYellow
hi!  link   ColorColumn           OnDarkGray3
hi!  link   Question              OnDarkGreen
hi!  link   StatusLine            OnDarkBlue
hi!  link   StatusLineNC          OnDarkGray
hi!  link   StatusLineNormalMode     OnDarkBlue
hi!  link   StatusLineInsertMode     OnDarkGreen
hi!  link   StatusLineInsertModeSep  DarkGreenOnDarkBlue
hi!  link   StatusLineVisualMode     OnOrange
hi!  link   StatusLineVisualModeSep  OrangeOnDarkBlue
hi!  link   WarningMsg            OnDarkRed
hi!  link   Comment               LightCyan
hi!  link   Constant              LightRed
hi!  link   String                Magenta
hi!  link   Special               Orange
hi!  link   Identifier            DarkCyan
hi!  link   Statement             LightYellow
hi!  link   Operator              LightYellow
hi!  link   PreProc               Purple
hi!  link   Type                  LightGreen
hi!  link   Variable              Normal
hi!  link   Error                 DarkCyan
hi!  link   Todo                  DarkCyan
hi!  link   CursorLine            OnDarkGray2
hi!  link   CursorColumn          OnDarkGray2
hi!  link   MatchParen            LightRed
hi!  link   TabLine               OnDarkGray
hi!  link   TabLineFill           OnDarkGray3
hi!  link   TabLineSel            OnDarkBlue
hi!  link   PMenu                 OnDarkGray3
hi!  link   PMenuSel              OnDarkGreen
hi!  link   DiffAdd               OnDarkGreen
hi!  link   DiffChange            OnOrange
hi!  link   DiffDelete            OnDarkRed
hi!  link   DiffText              ItalicOnLightOrange
hi!  link   Folded                OnDarkGreen
hi!  link   ExtraWhitespace       OnDarkRed
hi!  link   SignColumn            OnDarkGray3
hi!  link   FoldColumn            OnDarkGray3
hi!  link   IncSearch             Visual
hi!  link   Character             String
hi!  link   Number                Constant
hi!  link   Boolean               Keywoard
hi!  link   Float                 Number
hi!  link   Function              Identifier
hi!  link   Conditional           Statement
hi!  link   Repeat                Statement
hi!  link   Label                 Statement
hi!  link   Keyword               Statement
hi!  link   Exception             Keyword
hi!  link   Include               Blue
hi!  link   Define                PreProc
hi!  link   Macro                 PreProc
hi!  link   PreCondit             PreProc
hi!  link   StorageClass          Keyword
hi!  link   Structure             Keyword
hi!  link   Class                 Keyword
hi!  link   Typedef               Keyword
hi!  link   Tag                   Special
hi!  link   SpecialChar           Special
hi!  link   Delimiter             Special
hi!  link   SpecialComment        Special
hi!  link   Debug                 Special

" Language mappings {{{1
" C, C++ {{{2
hi!  link  cEnumTag            Type
hi!  link  cMemberTag          Member
hi!  link  cTypeTag            Type
hi!  link  cPreProcTag         PreProc
hi!  link  cFunctionTag        Function
hi!  link  cBoolean            Keyword
hi!  link  cppModifier         Keyword
hi!  link  cppSTLnamespace     Namespace
hi!  link  cppSTLtype          Type
hi!  link  cppSTLiterator      Type
hi!  link  cppSTLiterator_tag  Type
hi!  link  cppSTLexception     Type

" Python {{{2
hi!  link  pythonExceptions Type

" Plugin mappings {{{1
" vim-indent-guides {{{2
hi!  link  IndentGuidesOdd   OnDarkGray
hi!  link  IndentGuidesEven  OnDarkGray2

" tagbar {{{2
hi!  link  TagbarComment              Comment
hi!  link  TagbarKind                 Keyword
hi!  link  TagbarNestedScope          Keyword
hi!  link  TagbarScope                Type
hi!  link  TagbarType                 Type
hi!  link  TagbarSignature            Special
hi!  link  TagbarPseudoID             PreProc
hi!  link  TagbarFoldIcon             Operator
hi!  link  TagbarHighlight            PMenuSel
hi!  link  TagbarVisibilityPublic     Keyword
hi!  link  TagbarVisibilityProtected  Keyword
hi!  link  TagbarVisibilityPrivate    Keyword

" NERDTree {{{2
hi!  link  NERDTreePart             Normal
hi!  link  NERDTreePartFile         Normal
hi!  link  NERDTreeFile             Normal
hi!  link  NERDTreeClosable         LightGreen
hi!  link  NERDTreeBookmarksHeader  Statement
hi!  link  NERDTreeBookmarksLeader  Ignore
hi!  link  NERDTreeBookmarkName     Identifier
hi!  link  NERDTreeBookmark         Normal
hi!  link  NERDTreeHelp             Comment
hi!  link  NERDTreeHelpKey          Identifier
hi!  link  NERDTreeHelpCommand      Identifier
hi!  link  NERDTreeHelpTitle        Macro
hi!  link  NERDTreeToggleOn         Question
hi!  link  NERDTreeToggleOff        WarningMsg
hi!  link  NERDTreeDir              Directory
hi!  link  NERDTreeUp               Directory
hi!  link  NERDTreeDirSlash         Directory
hi!  link  NERDTreeCWD              Statement
hi!  link  NERDTreeLinkTarget       Type
hi!  link  NERDTreeLinkFile         LightCyan
hi!  link  NERDTreeLinkDir          LightCyan
hi!  link  NERDTreeOpenable         LightGreen
hi!  link  NERDTreeFlag             Ignore
hi!  link  NERDTreeRO               WarningMsg
hi!  link  NERDTreeBookmark         Statement
hi!  link  NERDTreeCurrentNode      Search

