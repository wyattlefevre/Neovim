-- local colorscheme = "gruvbox"
local colorscheme = "onedark"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
vim.cmd([[hi CursorLine ctermbg=0 guibg=#000000]]) -- sets highlight line to black. makes it easier to read hint text
