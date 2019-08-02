" Vim syntax file
" Language:   Aheui
" Maintainer: Chayoung You
" URL:        https://github.com/yous/aheui.vim

if exists('b:current_syntax')
  finish
endif

set encoding=utf-8
scriptencoding utf-8

syn match aheuiComment        '[^가-힣]'
syn match aheuiPop            '[마-밓]'                                      contains=aheuiPopNumber,aheuiPopCharacter
syn match aheuiPopNumber      '[망맹먕먱멍멩명몡몽뫙뫵묑묭뭉뭥뮁뮝뮹믕믱밍]' containedin=aheuiPop
syn match aheuiPopCharacter   '[맣맿먛먷멓멯몋몧뫃뫟뫻묗묳뭏뭫뮇뮣뮿믛믷밓]' containedin=aheuiPop
syn match aheuiPush           '[바-빟]'                                      contains=aheuiPushNumber,aheuiPushCharacter
syn match aheuiPushNumber     '[방뱅뱡뱽벙벵병볭봉봥뵁뵝뵹붕붱뷍뷩븅븡븽빙]' containedin=aheuiPush
syn match aheuiPushCharacter  '[밯뱋뱧벃벟벻볗볳봏봫뵇뵣뱋붛붷뷓뷯븋븧빃빟]' containedin=aheuiPush
syn match aheuiSelect         '[사-싷]'
syn match aheuiMove           '[싸-앃]'
syn match aheuiOperator       '[나-닣다-딯따-띻라-맇타-팋]'
syn match aheuiStoreFunction  '[빠-삫파-핗]'
syn match aheuiConditional    '[자-짛차-칳]'
syn match aheuiControl        '[하-힣]'

hi default link aheuiComment        Comment
hi default link aheuiPop            Function
hi default link aheuiPopNumber      Number
hi default link aheuiPopCharacter   Character
hi default link aheuiPush           Number
hi default link aheuiPushNumber     Function
hi default link aheuiPushCharacter  Function
hi default link aheuiSelect         StorageClass
hi default link aheuiMove           Function
hi default link aheuiOperator       Operator
hi default link aheuiStoreFunction  Function
hi default link aheuiConditional    Conditional
hi default link aheuiControl        Function

setlocal nowrap

let b:current_syntax = 'aheui'
