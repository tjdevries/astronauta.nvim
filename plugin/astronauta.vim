augroup Astronauta
  au!

  " Automatically find `ftplugin/*.lua` and `after/ftplugin/*.lua` files.
  autocmd Filetype * :lua require('astronauta.ft').do_filetype(vim.fn.expand("<amatch>"))
augroup END

if get(g:, 'astronauta_load_keymap', v:true)
  lua require('astronauta.keymap')
end

if get(g:, 'astronauta_load_plugins', v:true)
  lua require('astronauta.plugin').source()
end
