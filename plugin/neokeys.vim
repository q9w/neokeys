" Plugin: neokeys
" Author: q9w
" License: BSD 3-Clause License
" Source: https://github.com/q9w/neokeys

if exists('g:loaded_neokeys') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

hi def link neokeysHeader      Number
hi def link neokeysSubHeader   Identifier

lua require'neokeys'.setup()

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_neokeys = 1
