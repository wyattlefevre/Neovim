local colorscheme = "onehalfdark"
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--   vim.notify("colorscheme " .. colorscheme .. " not found!")
--   return
-- end
print('colorscheme set')
-- set background to inherit from terminal
-- vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])

-- vim.api.nvim_exec([[
--       hi! LspReferenceRead ctermbg=254 guibg=#e4e4e4
--       hi! LspReferenceText ctermbg=254 guibg=#e4e4e4
--       hi! LspReferenceWrite ctermbg=254 guibg=#e4e4e4
-- ]], false)
-- local lightDefaults = function()
--   print('executing light defaults')
--   -- lsp highlighting
--   vim.api.nvim_exec([[
--         hi! LspReferenceRead ctermbg=254 guibg=#e4e4e4
--         hi! LspReferenceText ctermbg=254 guibg=#e4e4e4
--         hi! LspReferenceWrite ctermbg=254 guibg=#e4e4e4
--   ]], false)
--   print('executed')
--   vim.opt["background"] = "light"
-- end
--
local commandFn = vim.api.nvim_command
local darkDefaults = function()
  print('executing dark defaults')
  -- lsp highlighting
  vim.cmd("colorscheme " .. colorscheme)
  commandFn([[
        highlight! LspReferenceRead ctermbg=240 guibg=#585858
        highlight! LspReferenceText ctermbg=240 guibg=#585858
        highlight! LspReferenceWrite ctermbg=240 guibg=#585858
  ]])

  vim.cmd([[hi CursorLine ctermbg=0 guibg=#000000]]) -- sets highlight line to black. makes it easier to read hint text
  vim.opt["background"] = "dark"
end
darkDefaults()
commandFn([[
      highlight! LspReferenceRead ctermbg=240 guibg=#585858
      highlight! LspReferenceText ctermbg=240 guibg=#585858
      highlight! LspReferenceWrite ctermbg=240 guibg=#585858
]])
--
-- local themeConfigs = {
--   ["sunbather"] = lightDefaults,
--   ["onehalfdark"] = darkDefaults,
--   ["onehalflight"] = lightDefaults
-- }
-- print(colorscheme)
-- local setup = themeConfigs[colorscheme]
-- if (setup) then
--   setup()
--   print("theme setup complete")
-- else
--   print("error on setup")
-- end

-- Favorite themes:
-- vim theme | iterm2 theme
-- [LIGHT]
-- onehalflight (via vim awesome themes) | onehalflight
-- sunbather | onehalflight
--
-- [DARK]
-- sunbather (via vim awesome) | One Dark (or anything with a black bg)
-- onehalfdark | onehalfdark
