-- import fine-cmdline plugin safely
local fine_cmdline_status, fnl = pcall(require, "fnl")
if not fine_cmdline_status then
	return
end

fnl.setup({
	cmdline = {
		enable_keymaps = true,
		smart_history = true,
		prompt = ": ",
	},
	popup = {
		position = {
			row = "10%",
			col = "50%",
		},
		size = {
			width = "60%",
		},
		border = {
			style = "rounded",
		},
		win_options = {
			winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
		},
	},
	hooks = {
		before_mount = function(input)
			-- code
		end,
		after_mount = function(input)
			-- code
		end,
		set_keymaps = function(imap, feedkeys)
			-- code
		end,
	},
})
