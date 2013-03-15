" File from https://gist.github.com/choffee/2497544
" Takes some settings
" g:puppet_command The location of the puppet command
if !exists('g:puppet_command')
  let g:puppet_command = 'puppet'
endif
" g:puppet_doc_widown - The type of puppet doc window to open
if !exists('g:puppet_doc_window')
  let g:puppet_doc_window = 'split'
endif

" Define a puppet type
function PuppetDefineType(fname)
  " Show the puppet definition of the current puppet type that the cursor is
  " sitting on.

  " Create a window with a new __doc__ buffer
  if bufnr("__doc__") >0
      execute g:puppet_doc_window.'| b __doc__'
  else
      execute g:puppet_doc_window.' __doc__'
  endif
  " Make this buffer disposable
  setlocal noswapfile
  set buftype=nofile
  setlocal modifiable
  " Cleare the buffer
  normal ggdG
  "Read in the new description
  execute 'silent read !'.g:puppet_command.' describe '.a:fname
  " Go back to the top
  normal 1G
  setlocal nomodified
  set filetype=rst

endfunction

" Setup two commands to define the word under the cursor
map <buffer> <leader>pt :call PuppetDefineType('<C-R><C-W>')<CR>
map <buffer> <leader>pT :call PuppetDefineType('<C-R><C-A>')<CR>

