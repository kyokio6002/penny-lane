" vim:fdm=marker
" Vim Color File
" Name:       penny-lane.vim
" Maintainer: 
" License:    The MIT License (MIT)
" Based On:   https://github.com/--- 

let colors_name = "penny-lane"

hi clear

if exists("syntax_on")
  syntax reset
endif

" scope
" l: ローカルスコープ(関数内)
" s: スクリプトスコープ(スクリプト内)
" g: グローバルスコープ(グローバル)
" b: バッファスコープ
" w: ウィンドウスコープ
" t: タブスコープ

function! s:my_highlight(group, fg, bg, sp, gui) abort
  execute "highlight" a:group
    \ "guifg="   (a:fg  !=? "#xxxxxx" ? a:fg  : "NONE")
    \ "guibg="   (a:bg  !=? "#xxxxxx" ? a:bg  : "NONE")
    \ "guisp="   (a:sp  !=? "#xxxxxx" ? a:sp  : "NONE")
    \ "gui="     (a:gui !=? "NONE" ? a:gui : "NONE")
endfunction



" My Color {{{

let s:normal_fg = '#abb2bf'
let s:norma_bg  = '#282c34'

let s:linenr_fg = '#646975'
let s:linenr_bg = '#2e373b'

let s:grey_lite = '#abb2bf'
let s:grey_deep = '#5c6370'

let s:orange_lite = '#f2ac57'
let s:orange_midd = '#f28444'
let s:orange_deep = '#e66422'

let s:gold_lite = '#e6b422'
let s:gold_deep = '#D4AC04'

let s:red_lite = '#E73647'
let s:red_dark = '#C03647'

" }}}




" Highlight Group ························································{{{

" call s:my_highlight('ColorColumn',      '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 'colorcolumn'で設定された列の表示に使われる
" call s:my_highlight('Conceal',          '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " Concealされたテキストの代わりに表示される代替文字の表示に使われる
" call s:my_highlight('Cursor',           '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " カーソル下の文字
" call s:my_highlight('lCursor',          '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " language-mappingが使用されているときのカーソル下の文字
" call s:my_highlight('CursorIM',         '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " Cursorと同じだが、IMEモードにいる時使われるCursorIM
" call s:my_highlight('CursorColumn',     '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 'cursorcolumn'がオンになっている時のカードル画面上の桁
" call s:my_highlight('CursorLine',       '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 'cursorline'がオンになっている時のカーソルがある画面上の行
" call s:my_highlight('Directory',        '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " ディレクトリ名(とリストにある特別な名前)
" call s:my_highlight('DiffAdd',          '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 差分モード: 追加された行
" call s:my_highlight('DiffChange',       '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 差分モード: 変更された行
" call s:my_highlight('DiffDelete',       '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 差分モード: 削除された行
" call s:my_highlight('DiffText',         '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 差分モード: 変更された行中の変更されたテキスト
call s:my_highlight('EndOfBuffer',      s:orange_midd, '#xxxxxx', '#xxxxxx', 'NONE')  " バッファ中で最終業以降の領域を埋めるための行
" call s:my_highlight('ErrorMsg',         '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " コマンドラインに現れるエラーメッセージ
" call s:my_highlight('VertSplit',        '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 垂直分割したウィンドウの区切りとなる桁
call s:my_highlight('Folded',           s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " 閉じた折りたたみの行
" call s:my_highlight('FoldColumn',       '#xxxxxx',       '#xxxxxx', '#xxxxxx', 'NONE')  " 'foldcolumn'
call s:my_highlight('SignColumn',       s:linenr_fg,   '#xxxxxx', '#xxxxxx', 'NONE')  " 目印signsが表示される桁
" call s:my_highlight('IncSearch',        '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 'incsearch'のハイライト; ':s ///c'で置換されたテキストにも使われる
call s:my_highlight('LineNr',           s:linenr_fg,   s:linenr_bg, '#xxxxxx', 'NONE')  " ':number'と':#'コマンドの行番号。'number'オプションか'relativenumber'にも使用。
call s:my_highlight('LineNrAvove',      s:linenr_fg,   s:linenr_bg, '#xxxxxx', 'NONE')  " 'relativenumber'オプションが設定されている時のカーソル行の上の行番号。
call s:my_highlight('LineNrBelow',      s:linenr_fg,   s:linenr_bg, '#xxxxxx', 'NONE')  " 'relativenumber'オプションが設定されている時のカーソル行の下の行番号。
" call s:my_highlight('CursorLineNr',     '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
" call s:my_highlight('CursorLineSign',   '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 
" call s:my_highlight('CursorLineFold',   '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 
" call s:my_highlight('MatchParen',       '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " カーソル下の文字、または直後の文字が括弧である時、その文字と対応する括弧に使われる。
" call s:my_highlight('ModeMsg',          '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 'showmode'のメッセージ ex) '-- INSERT --'
" call s:my_highlight('MoreMsg',          '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " more-prompt
" call s:my_highlight('NonText',          '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " ウィンドウの端の'@'と'showbreak'で設定された文字など、実際のテキストには存在しない文字。
call s:my_highlight('Normal',           s:normal_fg,   s:norma_bg, '#xxxxxx', 'NONE')  " 通常のテキスト
call s:my_highlight('PMenu',            s:grey_lite,   s:grey_deep, '#xxxxxx', 'NONE')  " ポップアップメニュー: 通常のテキスト
call s:my_highlight('PMenuSel',         s:orange_deep, s:grey_lite, '#xxxxxx', 'NONE')  " ポップアップメニュー: 選択されている項目
call s:my_highlight('PMenuSbar',        s:grey_deep,   s:grey_deep, '#xxxxxx', 'NONE')  " ポップアップメニュー: スクロールバー
call s:my_highlight('PMenuThumb',       s:grey_lite,   s:grey_lite, '#xxxxxx', 'NONE')  " ポップアップメニュー: スクロールバーのつまみ部分
" call s:my_highlight('Question',         '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " ヒットエンタープロンプトhit-enterとyes/noクエスチョン
" call s:my_highlight('QuickFixLine',     '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " quickfixウィンドウ内の現在のquickfix項目
call s:my_highlight('Search',           '#xxxxxx',     s:gold_lite, '#xxxxxx', 'NONE')  " 最後に検索した語のハイライト
call s:my_highlight('CurSearch',        '#xxxxxx',     s:gold_lite, '#xxxxxx', 'NONE')  " 最後に検索した語のハイライト
" call s:my_highlight('SpecialKey',       '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " ':map'でリストされるメタキーと特別なキー
" call s:my_highlight('SpellBad',         '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'None')  " スペルチェッカに認識されない単語
" call s:my_highlight('SpellCap',         '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'None')  " 大文字で始まるべき単語
" call s:my_highlight('SpellLocal',       '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'None')  " スペルチェッカによって他の地域で使われると判断される単語
" call s:my_highlight('SpellRare',        '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'None')  " スペルチェッカによってまず使わないと判断される単語
" call s:my_highlight('StatusLine',       '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " カレントウィンドウのステータスライン
" call s:my_highlight('StatusLineNC',     '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 非カレントウィンドウのステータスライン
" call s:my_highlight('StatusLineTerm',   '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " terminalウィンドウのカレントウィンドウのステータスライン
" call s:my_highlight('StatusLineTermNC', '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " terminalウィンドウの非カレントウィンドウのステータスライン
" call s:my_highlight('TabLine',          '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " タブページの行の、アクティブでないタブページのラベル
" call s:my_highlight('TabLineFill',      '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " タブページの行の、ラベルがない部分
" call s:my_highlight('TabLineSel',       '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " タブページの行の、アクティブなタブページのラベル
" call s:my_highlight('Terminal',         '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " terminalウィンドウ
" call s:my_highlight('Title',            '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " ':set all'、':autocmd'などによる出力のタイトル
" call s:my_highlight('Visual',           '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " ビジュアルモード選択
" call s:my_highlight('VisualNOS',        '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " vimが'Not Owning the Selection'の時のビジュアルモード選択
" call s:my_highlight('WarningMsg',       '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 警告メッセージ
" call s:my_highlight('WildMenu',         '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " 'wildmenu'補完における現在の候補
" call s:my_highlight('Menu',             '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " メニューのフォント、文字、背景。ツールバーにも使われる。
" call s:my_highlight('Scrollbar',        '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " メインウィンドウのスクロールバーの文字と背景
" call s:my_highlight('Tooltip',          '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'NONE')  " ツールチップのフォント、文字、背景

" }}}


" Standiard Syntax Group ············································{{{

call s:my_highlight('Comment',          s:grey_deep,   '#xxxxxx', '#xxxxxx', 'NONE')  " コメント 

call s:my_highlight('Constant',         s:orange_lite, '#xxxxxx', '#xxxxxx', 'NONE')  " 定数
call s:my_highlight('String',           s:gold_lite,   '#xxxxxx', '#xxxxxx', 'NONE')  " 文字列定数
call s:my_highlight('Character',        s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " 文字定数
call s:my_highlight('Number',           s:gold_lite,   '#xxxxxx', '#xxxxxx', 'NONE')  " 数値定数
call s:my_highlight('Float',            s:gold_lite,   '#xxxxxx', '#xxxxxx', 'NONE')  " 浮動小数点数の定数
call s:my_highlight('Boolean',          s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " ブール値の定数

call s:my_highlight('Identifier',       s:orange_midd, '#xxxxxx', '#xxxxxx', 'NONE')  " 変数名
call s:my_highlight('Function',         s:orange_lite, '#xxxxxx', '#xxxxxx', 'NONE')  " 関数名

call s:my_highlight('Statement',        s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " 命令文
call s:my_highlight('Conditional',      s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " if, then, else, endif, which, etc.
call s:my_highlight('Repeat',           s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " for, do, while, etc.
call s:my_highlight('Label',            s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " case, default, etc.
call s:my_highlight('Operator',         s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " 'sizeof', '+', '*', etc.
call s:my_highlight('Keyword',          s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " その他キーワード
call s:my_highlight('Exception',        s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " try, catch, throw

call s:my_highlight('PreProc',          s:orange_midd, '#xxxxxx', '#xxxxxx', 'NONE')  " 一般的なプリプロセッサー命令
call s:my_highlight('Include',          s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " #include プリプロセッサー
call s:my_highlight('Define',           s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " #define プリプロセッサー
call s:my_highlight('Macro',            s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " Defineと同値 
call s:my_highlight('PreCondit',        s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " プリプロセッサーの #if, #else, #endif, etc.

call s:my_highlight('Type',             s:gold_lite,   '#xxxxxx', '#xxxxxx', 'NONE')  " int, long, char, etc.
call s:my_highlight('StorageClass',     s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " static, register, volatile, etc..
call s:my_highlight('Structure',        s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " srtuct, union, enum, etc.
call s:my_highlight('Typedef',          s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " typedef宣言

call s:my_highlight('Special',          s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " 特殊なシンボル
call s:my_highlight('SpecialChar',      s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " 特殊な文字定数
call s:my_highlight('Tag',              s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " この上でCTRL-]を使うことができる
call s:my_highlight('Delimiter',        s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " 注意が必要な文字
call s:my_highlight('SpecialComment',   s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " コメント内の特記事項
call s:my_highlight('Debug',            s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " デバッグ命令

call s:my_highlight('Underlined',       s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " 目立つ文章, HTMLリンク
call s:my_highlight('Ignore',           s:orange_deep, '#xxxxxx', '#xxxxxx', 'NONE')  " (見た目上)空白, 不可視
call s:my_highlight('Error',            s:red_dark,    '#xxxxxx', '#xxxxxx', 'NONE')  " エラーなど、何らかの誤った構造
call s:my_highlight('Todo',             '#xxxxxx',     '#xxxxxx', '#xxxxxx', 'reverse')  " 特別な注意が必要なもの; 大抵は TODO FIXME XXX などのキーワード

" }}}




" Vim Help highlighting ···················································{{{

" call s:my_highlight('helpCommand',      '#xxxxxx', '#xxxxxx', '#xxxxxx', 'NONE')
" call s:my_highlight('helpExample',      '#xxxxxx', '#xxxxxx', '#xxxxxx', 'NONE')
" call s:my_highlight('helpHeader',       '#xxxxxx', '#xxxxxx', '#xxxxxx', 'NONE')
" call s:my_highlight('helpSectionDelim', '#xxxxxx', '#xxxxxx', '#xxxxxx', 'NONE')

" }}}
