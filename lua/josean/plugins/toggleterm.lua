-- import toggleterm safely
local status, toggleterm = pcall(require, "toggleterm")
if not status then
	return
end

-- configure toggleterm
toggleterm.setup({
	open_mapping = [[\\]],
	size = function(term)
		if term.direction == "horizontal" then
			return 15
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,
	shade_filetypes = {},
	autochdir = false,
	float_opts = {
		border = "double",
		width = 100,
		height = 30,
		winblend = 3,
	},
	winbar = {
		enabled = false,
		name_formatter = function(term) --  term: Terminal
			return term.name
		end,
	},
	direction = "horizontal",
	-- direction = "float",
	shade_terminals = true,
})
