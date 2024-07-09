return {
	"feline-nvim/feline.nvim",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require("feline").setup()
	end
}
