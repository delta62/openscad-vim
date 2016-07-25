if exists("b:current_syntax")
  finish
endif

syntax match scadPreproc "\v^use.*$"

syntax keyword scadKeyword module function
syntax keyword scadKeyword for if else
syntax keyword scadFunction echo cube cylinder sphere
syntax keyword scadFunction difference union intersection
syntax keyword scadFunction translate rotate scale

syntax match scadOperator "\v\*"
syntax match scadOperator "\v/"
syntax match scadOperator "\v\+"
syntax match scadOperator "\v-"
syntax match scadOperator "\v\%"
syntax match scadOperator "\v\="
syntax match scadOperator "\v\?"
syntax match scadOperator "\v\:"

syntax match scadComment "\v//.*$"
syntax region scadComment start="/\*" end="\*/"

syntax keyword scadBool true false

syntax match scadNumber "\v[0-9]"
syntax match scadFloat "\v[0-9]+\.[0-9]+"
syntax keyword scadFloat PI

syntax match scadString "\v\".*\""

syntax match scadTodo "\vTODO"
syntax match scadTodo "\vFIXME"
syntax match scadTodo "\vXXX"

syntax match scadDebug "\v^\s*\%.*$"
syntax match scadDebug "\v^\s*#.*$"

highlight link scadKeyword  Keyword
highlight link scadFunction Function
highlight link scadComment  Comment
highlight link scadOperator Operator
highlight link scadNumber   Number
highlight link scadFloat    Float
highlight link scadTodo     Todo
highlight link scadDebug    Debug
highlight link scadPreproc  PreProc
highlight link scadBool     Boolean
highlight link scadString   String

let b:current_syntax="openscad"
