return {
  { -- git plugin
    "tpope/vim-fugitive",
  },

  { -- style todo comments, and others like "warn", "bug"
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = { "BufReadPost", "BufNewFile" },
    opts = { signs = false },
  },

  { -- show git diff - added, modified, removed
    "airblade/vim-gitgutter",
    event = { "BufReadPost", "BufNewFile" },
  }
}
