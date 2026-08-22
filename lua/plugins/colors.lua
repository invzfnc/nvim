return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon",
      transparent = true,
    },
    config = function()
      vim.cmd.colorscheme "tokyonight"
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    end
  },
}
