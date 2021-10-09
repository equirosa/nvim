require'lspinstall'.setup() -- important

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
    if server == "java" then
        require'lspconfig'[server].setup {capabilities = capabilities}
    end
end

require('plugins.lsp._lspkind')
require('plugins.lsp._lua')
require'lspconfig'.rnix.setup {capabilities = capabilities}
