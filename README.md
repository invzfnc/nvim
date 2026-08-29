# nvim/, Neovim configs

This document provides an overview of all plugins and custom keybinds defined in my Neovim configuration.

## Plugins
- lazy.nvim
- lualine.nvim
    - nvim-web-devicons
- telescope.nvim
    - plenary.nvim
    - telescope-fzf-native.nvim
- nvim-treesitter
- vim-fugitive
- todo-comments
- gitsigns.nvim
- nvim-lspconfig
    - lazydev.nvim

## Custom keybinds
|Mode|Key|Action|
|---|---|---|
|`n`|`<leader>cd`|Open Ex mode (`:Ex`)|
|`n`|`<leader>ff`|Telescope find files|
|`n`|`<leader>fg`|Telescope live grep|
|`n`|`<leader>fb`|Telescope buffers|
|`n`|`<leader>fh`|Telescope help tags|
|`n`|`<leader>en`|Telescope find in nvim/|
|`n`|`grn`|Rename variable|
|`n`|`K`|Hover|
|`n`|`]d`, `[d`|Next/prev diagnostic|
|`n`|`gd`|Go to definition|
|`n`|`gD`|Go to declaration|

## References
Some configs are taken and modified from the [kickstart init.lua](https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua).

## Environment
Windows. Terminal or Wezterm.

