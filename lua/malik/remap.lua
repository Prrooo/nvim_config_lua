vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>c", ":bd<CR>", { desc = "Close current buffer" })
vim.keymap.set("v", "<leader>/", "gc", {remap = true, desc = "comment line" })
vim.keymap.set("n", "<leader>/", "vgc", {remap = true, desc = "comment line" })

-- custome shortcut to exit outof terminal mode using ctrl+w , e
vim.api.nvim_set_keymap('t', '<C-w>e', '<C-\\><C-n>', { noremap = true, silent = true })
-- and Ctrl+w ,h,j,k,l to change the perticular buffer

-- <C-q> to enter the visual-block
-- o to change the direciton of selection in visual mode

--vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
--vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to window below" })
--vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to window above" })
--vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

vim.opt.guicursor = 'a:block'  -- Lua

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

vim.keymap.set("n", "<leader>vwm", function()
  require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
  require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
-- Map <leader>xx to populate the quickfix list with diagnostics
vim.keymap.set("n", "<leader>xx", ":lua vim.diagnostic.setqflist()<CR>", { desc = "Set diagnostics in quickfix" })
-- Map <leader>q to open the quickfix list
vim.keymap.set("n", "<leader>q", ":copen<CR>", { desc = "Open Quickfix List" })


vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set(
  "n",
  "<leader>ee",
  "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set(
  "n",
  "<leader>ea",
  "oassert.NoError(err, \"\")<Esc>F\";a"
)

vim.keymap.set(
  "n",
  "<leader>ef",
  "oif err != nil {<CR>}<Esc>Olog.Fatalf(\"error: %s\\n\", err.Error())<Esc>jj"
)

vim.keymap.set(
  "n",
  "<leader>el",
  "oif err != nil {<CR>}<Esc>O.logger.Error(\"error\", \"error\", err)<Esc>F.;i"
)

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)
