local mark=require("harpoon.mark")
local ui=require("harpoon.ui")

vim.keymap.set("n","<leader>a",mark.add_file)
vim.keymap.set("n","<leader>s",ui.toggle_quick_menu)

vim.keymap.set("n","<tab>h",function() ui.nav_file(1) end)
vim.keymap.set("n","<tab>j",function() ui.nav_file(2) end)
vim.keymap.set("n","<tab>k",function() ui.nav_file(3) end)
vim.keymap.set("n","<tab>l",function() ui.nav_file(4) end)




