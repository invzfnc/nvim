-- enable faster startup by caching compiled lua modules
vim.loader.enable()

-- leader key is done in lazy.lua

vim.opt.number = true
vim.opt.cursorline = true

vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.statuscolumn = "%s%l "
vim.opt.signcolumn = "yes:1"

-- clear highlights on search when pressing Ctrl-c in normal mode
vim.keymap.set("n", "<C-c>", "<cmd>nohlsearch<CR>")

-- don't show the mode, it's already in the status line
vim.o.showmode = false

-- colorscheme and transparency
vim.cmd.colorscheme("retrobox")
--vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- add transparency

local transparent_groups = {
  "Normal",
  "NormalFloat",
  "SignColumn",
  "LineNr",
  "CursorLineNr",
  "Folded",
  "NonText",
  "SpecialKey",
}

for _, group in ipairs(transparent_groups) do
  vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
end
