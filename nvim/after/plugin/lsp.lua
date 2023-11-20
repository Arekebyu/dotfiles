local lsp = require('lsp-zero').preset({})

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'clangd'
})
lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = '!',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

-- (Optional) Configure lua language server for neovim
-- require('lspconfig').lua_ls.setup({})
--require('lspconfig').rust_analyzer.setup({})
--require('lspconfig').clangd.setup({})
--require('lspconfig').eslint.setup({})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
