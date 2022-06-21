local colorscheme = "papercolor-dark"

local function setHighlights(bg, c, b)
	bg = bg or "dark"
	c = c or 240
	b = b or "#585858"
	vim.opt["background"] = bg
	-- lsp highlighting
	vim.api.nvim_set_hl(0, "LspReferenceRead", { ctermbg = c, bg = b })
	vim.api.nvim_set_hl(0, "LspReferenceText", { ctermbg = c, bg = b })
	vim.api.nvim_set_hl(0, "LspReferenceWrite", { ctermbg = c, bg = b })
end

local lightDefaults = { mode = "light", ctermbg = 256, bg = "#e4e4e4" }
local darkDefaults = { mode = "dark", ctermbg = 240, bg = "#585858" }

local colors = {
	["sunbather-light"] = { name = "sunbather", colors = lightDefaults },
	["sunbather-dark"] = { name = "sunbather", colors = darkDefaults },
	["onehalflight"] = { name = "onehalflight", colors = lightDefaults },
	["onehalfdark"] = { name = "onehalfdark", colors = darkDefaults },
	["papercolor-dark"] = { name = "PaperColor", colors = darkDefaults },
}

local function applyColorscheme(nickName)
	local scheme = colors[nickName]
	if not scheme then
		vim.notify("theme nickname missing or not supported")
		return
	end
	vim.cmd([[colorscheme ]] .. scheme.name)
  setHighlights(scheme.colors.mode, scheme.colors.ctermbg, scheme.colors.bg)
end

applyColorscheme(colorscheme)
-- vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]]) -- set background to inherit from terminal
-- vim.cmd([[hi CursorLine ctermbg=0 guibg=#000000]]) -- sets highlight line to black. makes it easier to read hint text

-- Favorite themes:
-- vim theme | iterm2 theme
-- [LIGHT]
-- onehalflight (via vim awesome themes) | onehalflight
-- sunbather | onehalflight
--
-- [DARK]
-- sunbather (via vim awesome) | One Dark (or anything with a black bg)
-- onehalfdark | onehalfdark
