vim.cmd [[
  augroup AnsiEscAuto
    autocmd!
    autocmd BufReadPost *.log :AnsiEsc
  augroup END
]]

return require('packer').startup(function()
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    use 'wbthomason/packer.nvim'

	use 'bfrg/vim-cpp-modern'

    use 'ojroques/vim-oscyank'

	use "lukas-reineke/indent-blankline.nvim"

	use 'folke/tokyonight.nvim'

	use 'famiu/feline.nvim'

	use 'neovim/nvim-lspconfig'
	use 'simrat39/rust-tools.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'mfussenegger/nvim-dap'

	use 'windwp/nvim-autopairs'

	use {
		'lewis6991/gitsigns.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		},
	}

	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
		  'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
	}

	use 'navarasu/onedark.nvim'

	use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
	}
	
	use 'jackguo380/vim-lsp-cxx-highlight'

	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim'} 
	}

	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'

	use 'SirVer/ultisnips'
	use 'quangnguyen30192/cmp-nvim-ultisnips'

	use 'dcampos/nvim-snippy'
	use 'dcampos/cmp-snippy'

	-- use({
	--   "jackMort/ChatGPT.nvim",
	-- 	config = function()
	-- 	  require("chatgpt").setup()
	-- 	end,
	-- 	requires = {
	-- 	  "MunifTanjim/nui.nvim",
	-- 	  "nvim-lua/plenary.nvim",
	-- 	  "folke/trouble.nvim",
	-- 	  "nvim-telescope/telescope.nvim"
	-- 	}
	-- })

	use 'powerman/vim-plugin-AnsiEsc'

end)

