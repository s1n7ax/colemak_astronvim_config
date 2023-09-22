return {
	'nvim-treesitter/nvim-treesitter',
	opts = function(_, opts)
		opts.ensure_installed = {
			'bash',
			'c',
			'cmake',
			'comment',
			'cpp',
			'css',
			'csv',
			'diff',
			'dockerfile',
			'gitcommit',
			'gitignore',
			'html',
			'java',
			'javascript',
			'jsdoc',
			'json5',
			'lua',
			'markdown_inline',
			'nix',
			'python',
			'query',
			'regex',
			'requirements',
			'rust',
			'scss',
			'sql',
			'todotxt',
			'tsx',
			'typescript',
			'vimdoc',
			'vue',
			'xml',
			'yaml',
		}
		opts.incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = ',n',
				node_incremental = ',n',
				scope_incremental = ',s',
				node_decremental = ',e',
			},
		}

		opts.textobjects.select = {
			enable = true,
			lookahead = true,
			keymaps = {
				['ak'] = { query = '@block.outer', desc = 'around block' },
				['hk'] = { query = '@block.inner', desc = 'inside block' },
				['ac'] = { query = '@class.outer', desc = 'around class' },
				['hc'] = { query = '@class.inner', desc = 'inside class' },
				['a?'] = {
					query = '@conditional.outer',
					desc = 'around conditional',
				},
				['h?'] = {
					query = '@conditional.inner',
					desc = 'inside conditional',
				},
				['af'] = {
					query = '@function.outer',
					desc = 'around function ',
				},
				['hf'] = {
					query = '@function.inner',
					desc = 'inside function ',
				},
				['al'] = { query = '@loop.outer', desc = 'around loop' },
				['hl'] = { query = '@loop.inner', desc = 'inside loop' },
				['aa'] = {
					query = '@parameter.outer',
					desc = 'around argument',
				},
				['ha'] = {
					query = '@parameter.inner',
					desc = 'inside argument',
				},
			},
		}

		return opts
	end,
}
