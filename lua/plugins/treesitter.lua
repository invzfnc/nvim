return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")

        ts.setup({
            ensure_installed = {
                "lua", "python", "markdown", "vim", "javascript", 
                "html", "css", "typescript", "tsx", "json", "java",
                "c", "cpp"
            },
            auto_install = false,
            sync_install = false,
        })

        vim.api.nvim_create_autocmd("FileType", {
            callback = function()
                if pcall(vim.treesitter.start) then
                    vim.treesitter.start()
                end
            end,
        })
    end
}

--[[
return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")
        local languages = {
            "lua", "python", "markdown", "vim", "javascript", 
            "html", "css", "typescript", "tsx", "json", "java",
            "c", "cpp"
        }
        ts.setup({})

        -- Use TSInstall to manually install languages
        ts.install(languages)

        -- Treesitter features for installed languages must be enabled manually
        vim.api.nvim.create_autocmd("FileType", {
            pattern = languages,
            callback = function()
                -- Enable native neovim treesitter highlighting
                vim.treesitter.start()

                -- Configure code folding
                vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
                vim.wo.foldmethod = "expr"
                vim.foldlevel = 99

                -- Enable treesitter-based indentation
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
}
]]--

--[[
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highlight = { enable = true, },
            indent = { enable = true, },
            autotage = { enable = true, },
            ensure_installed = {
                "lua", "python", "markdown", "vim", "javascript", 
                "html", "css", "typescript", "tsx", "json", "java",
                "c", "cpp"
            },
            auto_install = false,
        })
    end
}
]]--
