" Vim syntax file for Minicom Script(RunScript) Language
"
" Language:     MSL
" Maintainer:   Yuenfu.Chiu <yuenfu.chiu@gmail.com>
" Last Change:  2015-03-27
" Required Vim Version: 6.0
" Version: 0.1

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword mslCommand      call dec inc print log send set sleep timeout verbose
syn keyword mslConditional  expect if
syn keyword mslStatement    break exit goto gosub return
syn match   mslLgcOperator  "[&|||!|<|>|=]"
syn match   mslNumber       "\<0x\x\+\>"
syn match   mslNumber       "\<\d\+\>"
syn region  mslComment      start="#" end="$"
syn region  mslString       start=+"+ end=+"+

hi def link mslCommand      Type
hi def link mslComment      Comment
hi def link mslConditional  Conditional
hi def link mslLgcOperator  Operator
hi def link mslNumber       Number
hi def link mslStatement    Statement
hi def link mslString       String

let b:current_syntax = "msl"
