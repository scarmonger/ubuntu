-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
	"mhinz/vim-startify",
	'mbbill/undotree',
	'christoomey/vim-tmux-navigator',
	'prettier/vim-prettier',
	'nvim-pack/nvim-spectre',
	-- { 'echasnovski/mini.nvim', version = '*' },

	'fatih/vim-go',
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = { style = "moon" },
	},
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		event = "VeryLazy",
		keys = {
			{ "<leader>bp", "<Cmd>BufferLineTogglePin<CR>",            desc = "Toggle pin" },
			{ "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
			{ "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>",          desc = "Delete other buffers" },
			{ "<leader>br", "<Cmd>BufferLineCloseRight<CR>",           desc = "Delete buffers to the right" },
			{ "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>",            desc = "Delete buffers to the left" },
			-- { "<S-h>",      "<cmd>BufferLineCyclePrev<cr>",            desc = "Prev buffer" },
			-- { "<S-l>",      "<cmd>BufferLineCycleNext<cr>",            desc = "Next buffer" },
			-- { "[b",         "<cmd>BufferLineCyclePrev<cr>",            desc = "Prev buffer" },
			-- { "]b",         "<cmd>BufferLineCycleNext<cr>",            desc = "Next buffer" },
		},
		opts = {
			options = {
				-- stylua: ignore
				close_command = function(n) require("mini.bufremove").delete(n, false) end,
				-- stylua: ignore
				right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
				diagnostics = "nvim_lsp",
				always_show_bufferline = false,
				-- diagnostics_indicator = function(_, _, diag)
				-- 	local icons = require("lazyvim.config").icons.diagnostics
				-- 	local ret = (diag.error and icons.Error .. diag.error .. " " or "")
				-- 		.. (diag.warning and icons.Warn .. diag.warning or "")
				-- 	return vim.trim(ret)
				-- end,
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or ""
					return " " .. icon .. count
				end,
				offsets = {
					{
						filetype = "neo-tree",
						text = "Neo-tree",
						highlight = "Directory",
						text_align = "left",
					},
				},
			},
		},
		config = function(_, opts)
			require("bufferline").setup(opts)
			-- Fix bufferline when restoring a session
			vim.api.nvim_create_autocmd("BufAdd", {
				callback = function()
					vim.schedule(function()
						pcall(nvim_bufferline)
					end)
				end,
			})
		end,
	},
	{
		"echasnovski/mini.indentscope",
		version = false, -- wait till new 0.7.0 release to put it back on semver
		event = "VeryLazy",
		opts = {
			-- symbol = "▏",
			symbol = "│",
			options = { try_as_border = true },
		},
		-- init = function()
		-- 	vim.api.nvim_create_autocmd("FileType", {
		-- 		pattern = {
		-- 			"help",
		-- 			"alpha",
		-- 			"dashboard",
		-- 			"neo-tree",
		-- 			"Trouble",
		-- 			"trouble",
		-- 			"lazy",
		-- 			"mason",
		-- 			"notify",
		-- 			"toggleterm",
		-- 			"lazyterm",
		-- 		},
		-- 		callback = function()
		-- 			vim.b.miniindentscope_disable = true
		-- 		end,
		-- 	})
		-- end,
	},
	{
		"echasnovski/mini.bufremove",

		keys = {
			{
				"<leader>bd",
				function()
					local bd = require("mini.bufremove").delete
					if vim.bo.modified then
						local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()),
							"&Yes\n&No\n&Cancel")
						if choice == 1 then -- Yes
							vim.cmd.write()
							bd(0)
						elseif choice == 2 then -- No
							bd(0, true)
						end
					else
						bd(0)
					end
				end,
				desc = "Delete Buffer",
			},
			-- stylua: ignore
			{ "<leader>bD", function() require("mini.bufremove").delete(0, true) end, desc = "Delete Buffer (Force)" },
		},
	},

}
