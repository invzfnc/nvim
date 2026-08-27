return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",  -- auto update parsers on plugin update
    event = { "BufReadPost", "BufNewFile" },  -- lazy loads when opening a file

    opts = {
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },

        ensure_installed = {
            "lua", "vim", "c", "cpp", "python", "markdown", "javascript",
        },

        sync_install = false,  -- do async install, don't freeze neovim on startup
        auto_install = true,

    },
}

