-- enable faster startup by caching compiled lua modules
vim.loader.enable()

-- leader key is done in lazy.lua

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.statuscolumn = "%s%l  "
vim.opt.signcolumn = "yes:1"

vim.opt.splitright = true
vim.opt.splitbelow = true

-- don't show the mode, it's already in the status line
vim.o.showmode = false

-- disable auto-commenting new lines (formatoptions -= cro)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

-- colorscheme and transparency
vim.cmd.colorscheme("retrobox")

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

