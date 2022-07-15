fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
  write
endfun
command! TrimWhitespace call TrimWhitespace()
