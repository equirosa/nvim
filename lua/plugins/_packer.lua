local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 'clone', 'https://github.com/wbthomason/packer.nvim',
        install_path
    })
    execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
    -- To handle Lua configuration
    use {'wbthomason/packer.nvim'}
    use {'kyazdani42/nvim-web-devicons', opt = false}
    use {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim'}

    -- Development
    use {
        {'tpope/vim-dispatch', cmd = {'Dispatch', 'Start', 'Focus', 'Make'}},
        'machakann/vim-sandwich', 'tpope/vim-unimpaired',
        'terrortylor/nvim-comment', 'tpope/vim-abolish',
        'junegunn/vim-easy-align', -- better tabularize
        'dyng/ctrlsf.vim', -- edit search matches in multiple files
        {'metakirby5/codi.vim', opt = true, cmd = 'Codi'}, -- scratch pad
        { -- Sane buffer/window deletion.
            'mhinz/vim-sayonara',
            cmd = 'Sayonara',
            opt = true
        }, -- Wrapper for an external formatter
        {"mhartington/formatter.nvim", opt = true, cmd = "Format"}

    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-telescope/telescope-frecency.nvim',
            "nvim-telescope/telescope-fzy-native.nvim"
        }
    }

    -- Git
    use {
        'tpope/vim-fugitive', 'tpope/vim-rhubarb', 'lewis6991/gitsigns.nvim',
        { -- Vim and Neovim plugin to reveal the commit messages under the cursor
            'rhysd/git-messenger.vim',
            cmd = 'GitMessenger',
            opt = true
        }
    }

    -- Motion and text objects
    use {
        'mg979/vim-visual-multi', 'wellle/targets.vim', 'phaazon/hop.nvim',
        'unblevable/quick-scope', 'christoomey/vim-sort-motion',
        'michaeljsmith/vim-indent-object', 'yuttie/comfortable-motion.vim'
    }

    -- UI/UX
    use {
        'RRethy/vim-illuminate', 'Yggdroot/indentLine',
        'gennaro-tedesco/nvim-peekup', -- view register contents
        {'norcalli/nvim-colorizer.lua', opt = true, ft = {'css'}}, -- colored hex codes
        {
            'akinsho/nvim-bufferline.lua',
            requires = 'kyazdani42/nvim-web-devicons'
        }, {'eddyekofo94/gruvbox-flat.nvim'}, 'szw/vim-maximizer' -- Toggle size of split windows
    }

    -- Treesitter
    use {
        { -- Syntax
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }, 'JoosepAlviste/nvim-ts-context-commentstring',
        'nvim-treesitter/nvim-treesitter-textobjects', 'windwp/nvim-ts-autotag',
        'p00f/nvim-ts-rainbow', {'nvim-treesitter/playground', opt = true}
    }

    -- LSP
    -- use {
    -- 	'neovim/nvim-lspconfig',
    -- 	'kabouzeid/nvim-lspinstall'
    -- }

    -- Completion
    use {'hrsh7th/nvim-cmp', 'hrsh7th/cmp-path', 'hrsh7th/cmp-buffer'}

    -- Snippets
    use {
        'xabikos/vscode-javascript', 'cstrap/python-snippets',
        'ylcnfrht/vscode-python-snippet-pack'
    }

    -- Project
    use {'nvim-telescope/telescope-project.nvim', 'airblade/vim-rooter'}

    -- Documents
    use {
        { -- Latex
            'lervag/vimtex',
            opt = true,
            ft = {'tex', 'aux', 'fd', 'blg', 'brf', 'cls', 'dtx'}
        }, { -- Markdown
            'plasticboy/vim-markdown',
            requires = {
                {
                    'iamcco/markdown-preview.nvim',
                    run = 'cd app && yarn install',
                    opt = true
                },
                {'mzlogin/vim-markdown-toc', opt = true, cmd = 'GenTocMarked'}
            },
            ft = {'markdown'}
        }, {'dhruvasagar/vim-table-mode', ft = {'text', 'markdown'}}
    }

    -- Status line
    use {'glepnir/galaxyline.nvim', branch = 'main'}

    -- Lang specific
    use {
        {'mattn/emmet-vim', opt = true, ft = {'html'}},
        'euclidianAce/BetterLua.vim'
    }
end)
