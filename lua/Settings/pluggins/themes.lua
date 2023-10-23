function setTransparent()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {

	{
		"projekt0n/github-nvim-theme",
		tag = "v0.0.7",
		-- config = function()
		--     vim.cmd('colorscheme github_dimmed')
		-- end
		keys = "<leader>pc",
	},

	-- onedark
	{
		"navarasu/onedark.nvim",
		config = function()
			require("onedark").setup({
				-- style = 'cool'
			})
			vim.cmd("colorscheme onedark")
			setTransparent()
		end,
		-- keys = "<leader>pc"
	},
	-- vscode
	{
		"Mofiqul/vscode.nvim",
		keys = "<leader>pc",
	},

	-- tokyo night
	{
		"folke/tokyonight.nvim",

		-- config = function()
		--     vim.cmd("colorscheme tokyonight-night")
		--     -- setTransparent()
		-- end
		keys = "<leader>pc",
	},
	{
		"Mofiqul/dracula.nvim",
		-- config = function()
		--     vim.cmd('colorscheme dracula')
		-- end,
		keys = "<leader>pc",
	},
	-- nord
	{
		"shaunsingh/nord.nvim",
		--[[ config = function()
            vim.cmd('colorscheme nord')
        end ]]
		keys = "<leader>pc",
	},
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			--vim.cmd('colorscheme gruvbox')
		end,
		keys = "<leader>pc",
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
	},
}
