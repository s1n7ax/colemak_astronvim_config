return {
	'jay-babu/mason-nvim-dap.nvim',
	opts = function(_, opts)
		opts.ensure_installed = { 'java-test', 'java-debug-adapter' }
		opts.automatic_installation = true

		return opts
	end,
}
