vim.api.nvim_exec([[
    packadd nvim-treesitter
    packadd nvim-treesitter-textobjects
	packadd nvim-ts-context-commentstring
	packadd nvim-ts-rainbow
    packadd playground
]], false)

require("nvim-treesitter.configs").setup {

    rainbow = {enable = true, extended_mode = true},

    context_commentstring = {enable = true, config = {lua = '-- %s'}},

    highlight = {enable = true},

    indent = {enable = true},

    playground = {enable = true},

    textobjects = {
        select = {
            enable = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
                ["ab"] = "@block.outer",
                ["ib"] = "@block.inner"
            }
        },
        swap = {
            enable = true,
            swap_next = {["<Leader>a"] = "@parameter.inner"},
            swap_previous = {["<Leader>A"] = "@parameter.inner"}
        },
        lsp_interop = {enable = true}
    }
}
