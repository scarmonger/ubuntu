return {
	{
		"echasnovski/mini.icons",
		version = false, -- Use the latest version
		config = function()
			require("mini.icons").setup({
				style = "glyph", -- Ensure it’s set to 'glyph'
			})
		end,
	},
}
