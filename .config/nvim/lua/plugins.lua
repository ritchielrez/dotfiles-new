-- This is installs packer.nvim if it isn't already installed
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function()
    -- To manage the package manager itself
    use 'wbthomason/packer.nvim'

    -- My favourite themes
    use 'sainnhe/gruvbox-material'
    use 'folke/tokyonight.nvim'
    -- use 'gruvbox-community/gruvbox'
    use 'ChristianChiarulli/nvcode-color-schemes.vim'
    use 'ishan9299/nvim-solarized-lua'

    -- Syntax highlighting
    -- use 'sheerun/vim-polyglot'

    -- Tresitter, a next gen syntax parser, mainly used to theme code properly
    use 'nvim-treesitter/nvim-treesitter'

    -- Auto pair up brackets
    use 'jiangmiao/auto-pairs'

    -- Comment and uncomment stuffs quickly
    use 'tpope/vim-commentary'

    -- My fuzzy file finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Langauge autocompletion, error linting
    use 'neovim/nvim-lspconfig'
    use 'RishabhRD/popfix'
    use 'RishabhRD/nvim-lsputils'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'

    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- To enable more of the features of rust-analyzer, such as inlay hints and more!
    use 'simrat39/rust-tools.nvim'

    -- Show me color codes in my editor
    use {
        'norcalli/nvim-colorizer.lua',
        config = function() require 'colorizer'.setup {
        '*'; -- Highlight all files, but customize some others.
        '!vim'; -- Exclude vim from highlighting.
        -- Exclusion Only makes sense if '*' is specified!
        }
        end
    }

    -- Note taking
    use {
        "nvim-neorg/neorg",
        requires = "nvim-lua/plenary.nvim"
    }

    -- My statusline at the bottom
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- My tabline at the top
    use {
        'akinsho/bufferline.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt=true}
    }

    -- Terminal
    use 'voldikss/vim-floaterm'

    -- Git
    use 'tpope/vim-fugitive'

    -- Start screen of neovim
    use 'glepnir/dashboard-nvim'

    -- Show off that I'm coding
    use 'andweeb/presence.nvim'

    -- Editorconfig is used for formatting documents
    use 'editorconfig/editorconfig-vim'

    -- Debugger
    use 'puremourning/vimspector'
    use 'szw/vim-maximizer'

    -- If packer is installed for the first time, then install all the plugins with it
    if packer_bootstrap then
        require('packer').sync()
    end

end)

-- Lsp config
require("plugins.lsp")

-- Neorg( note taking plugin ) config
require("plugins.neorg")

-- Cmp( completetion plugin ) config
require("plugins.cmp")

-- Tresitter config
require("plugins.treesitter")

-- My statusbar config
require("plugins.lualine")

-- My tabline config
require("plugins.bufferline")

-- My tokyonight colorscheme config
require("plugins.tokyonight")

