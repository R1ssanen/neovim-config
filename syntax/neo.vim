" Quit when a syntax file was already loaded.
if exists('b:current_syntax') | finish|  endif

" Regular int like number with - + or nothing in front
syn match neoNumber '\d\+' contained display
syn match neoNumber '[-+]\d\+' contained display

" Floating point number with decimal no E or e (+,-)
syn match neoNumber '\d\+\.\d*' contained display
syn match neoNumber '[-+]\d\+\.\d*' contained display

" Floating point like number with E and no decimal point (+,-)
syn match neoNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+' contained display
syn match neoNumber '\d[[:digit:]]*[eE][\-+]\=\d\+' contained display

" Floating point like number with E and decimal point (+,-)
syn match neoNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+' contained display
syn match neoNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+' contained display

syn region neoString start='"' end='"'

syn keyword neoType b8 u8 u16 u32 u64 i8 i16 i32 i64 f32 f64 
syn keyword neoKeys if elif else ret cont break exit true false var put for while

syn keyword neoTODO contained TODO FIXME HACK INFO FIX NOTE
syn match neoComment '\$\_.\{-}\$' contains=neoTODO

let b:current_syntax = "neo"

hi def link neoTODO        Todo
hi def link neoComment     Comment
hi def link neoKeys        Statement
hi def link neoType        Type
hi def link neoString      Constant
hi def link neoNumber      Constant

