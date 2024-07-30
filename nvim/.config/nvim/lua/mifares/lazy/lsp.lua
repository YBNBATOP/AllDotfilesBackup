return {
	{
		-- Install Mason (to be able to look for LSP servers and install them on the machine
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		-- Install Mason-lspconfig which will make it easier to translate some functionality over to the nvim-lspconfig, and allow us to make sure we have servers installed before doing anything else.
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"gopls"
				}
			})
		end
	},
	{
		-- Install lspconfig, the configurator for further functionalities between client and server.
		"neovim/nvim-lspconfig",
		config = function()
			-- Each server should be initialized manually, and can have its specific configuration
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.gopls.setup({})

			-- Set some keybinds (global)
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}
