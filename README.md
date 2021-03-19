# astronauta.nvim

You now feel at home traveling to the moon


## Lua Keymap DSL

Until I merge: https://github.com/neovim/neovim/pull/13823 you can use lua keymaps by installing this plugin.

For example:

```lua
local nnoremap = vim.keymap.nnoremap

nnoremap { '<leader>hello', function() print("Hello world, from lua") end }
```

## Lua ftplugins

Any file in `ftplugin/*.lua` or `after/ftplugin/*.lua` will now get automatically run at the correct time after installing this plugin.

For example, if you create a file `ftplugin/vim.lua` and it contains:

```lua
-- From 'ftplugin/vim.lua'
print("Hello, from lua")
```

That will get printed whenever you open a `.vim` file.

## Lua `plugin`s

To automatically run a file on startup with lua, put the file in `lua/plugin/*.lua` and the file will be executed at startup.
