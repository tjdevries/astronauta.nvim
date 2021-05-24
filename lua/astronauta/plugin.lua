local has_sourced = false

local plugin = {}

plugin.source = function(force)
  if not force and has_sourced then
    return
  end

  for _, mod in ipairs(vim.api.nvim_get_runtime_file('lua/plugin/**/*.lua', true)) do
    local ok, msg = pcall(loadfile(mod))

    if not ok then
      print("Failed to load: ", mod)
      print("\t", msg)
    end
  end

  has_sourced = true
end

return plugin
