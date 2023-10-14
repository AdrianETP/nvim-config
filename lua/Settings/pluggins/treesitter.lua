return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		dependencies = {
			"nvim-treesitter/nvim-treesitter-context",
			"HiPhish/nvim-ts-rainbow2",
		},
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "lua", "vim", "vimdoc", "query" },
				sync_install = false,
				auto_install = true,
				ignore_install = { "javascript" },
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = true,
				},
				rainbow = {
					enable = true,
				},
				indent = { enable = true },
				autotag = {
					enable = true,
				},
				incremental_selection = {
					enable = true,
					keymaps = {

						node_incremental = "+",
					},
				},
			})

			require("treesitter-context").setup({
				enable = true,
				max_lines = 0,
				min_window_height = 0,
				line_numbers = true,
				multiline_threshold = 20,
				trim_scope = "outer",
				mode = "cursor",
				separator = nil,
				zindex = 20,
			})
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		ft = { "html", "typescript", "typescriptreact", "javascript", "javascriptreact" },
	},
}
