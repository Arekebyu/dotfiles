local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.toggle_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
-- add future keybinds to navigate to different files in harpoon if you want 
-- vim.keymap.set("n", "<C-e>", function ui.nav_file(1) end)
