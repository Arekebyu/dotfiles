-- OR setup with some options
local nonicons_extention = require("nvim-nonicons.extentions.nvim-tree")

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
    },
    renderer = {
        icons = {
            glyphs = nonicons_extention.glyphs,
        },
    },
    filters = {
        dotfiles = false,
        git_ignored = false,
    },
})
vim.keymap.set("n", "<leader>pe", vim.cmd.NvimTreeToggle)
