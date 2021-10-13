# astronauta.nvim

You now feel at home traveling to the moon


## Lua Keymap DSL

Until I merge: https://github.com/neovim/neovim/pull/13823 you can use lua keymaps by installing this plugin.

For example:

```lua
-- You need to do this if you want to call the code from init.lua
vim.cmd [[runtime plugin/astronauta.vim]]

-- elsewher in your vim files
local nnoremap = vim.keymap.nnoremap

nnoremap { '<leader>hello', function() print("Hello world, from lua") end }
```

## Lua ftplugins

REMOVED: This is now in neovim core.

## Lua `plugin`s

REMOVED: This is now in neovim core.
