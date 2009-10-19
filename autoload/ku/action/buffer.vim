" ku action: buffer - Default actions for kind "buffer"
" Version: 0.2.0
" Copyright (C) 2009 kana <http://whileimautomaton.net/>
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
" Interface  "{{{1
function! ku#action#buffer#delete(candidate)  "{{{2
  return s:delete('bdelete', a:candidate)
endfunction




function! ku#action#buffer#open(candidate)  "{{{2
  return s:open('', a:candidate)
endfunction




function! ku#action#buffer#open_x(candidate)  "{{{2
  return s:open('!', a:candidate)
endfunction




function! ku#action#buffer#unload(candidate)  "{{{2
  return s:delete('bunload', a:candidate)
endfunction




function! ku#action#buffer#wipeout(candidate)  "{{{2
  return s:delete('bwipeout', a:candidate)
endfunction








" Misc.  "{{{1
function! s:delete(delete_command, candidate)  "{{{2
  let v:errmsg = ''

  execute a:candidate.ku_buffer_nr a:delete_command

  return v:errmsg == '' ? 0 : v:errmsg
endfunction




function! s:open(bang, candidate)  "{{{2
  let v:errmsg = ''

  execute a:candidate.ku_buffer_nr 'buffer'.a:bang

  return v:errmsg == '' ? 0 : v:errmsg
endfunction








" __END__  "{{{1
" vim: foldmethod=marker
