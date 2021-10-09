local cmp = require("cmp")

cmp.setup({
    mapping = {
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'}),
        ['<CR>'] = cmp.mapping.confirm({select = true})
    },
    sources = {{name = 'path'}, {name = 'buffer'}, {name = 'nvim_lsp'}}
})
