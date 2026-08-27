return {
  { -- git plugin (run git commands)
    "tpope/vim-fugitive",
  },

  { -- another git plugin (show diff lines)
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
  },

  { -- style todo comments, and others like "warn", "bug"
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = { "BufReadPost", "BufNewFile" },
    opts = { signs = false },
  },
}
