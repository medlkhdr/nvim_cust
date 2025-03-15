return {
	{
		"sphamba/smear-cursor.nvim",
		opts = {
			smear_delay = 1, -- Increase delay for smoother animation (lower value = faster)
			smear_intensity = 0.1, -- Control the intensity of the smear (lower value = smoother)
			smear_speed = 1, -- Adjust the speed of the smear (lower value = smoother)
			smear_shape = "circle", -- You can adjust the shape of the smear if desired
		},
	},

	"echasnovski/mini.nvim",
	config = function()
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
		--  - ci'  - [C]hange [I]nside [']quote
		--  etc...
		require("mini.ai").setup({ n_lines = 500 })

		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		-- etc...
		require("mini.surround").setup({
			custom_surroundings = {
				[")"] = { output = { left = "(", right = ")" } },
				["("] = { output = { left = "(", right = ")" } },
				["}"] = { output = { left = "{", right = "}" } },
				["{"] = { output = { left = "{", right = "}" } },
				["]"] = { output = { left = "[", right = "]" } },
				["["] = { output = { left = "[", right = "]" } },
			},
		})

		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = true })

		-- vim.opt.laststatus = 2 -- Or 3 for global statusline
		-- vim.opt.statusline = " %f %m %= %l:%c "
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_fileinfo = function()
			return ""
		end
	end,
}
