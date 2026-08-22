local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
    {
	"folke/tokyonight.nvim",
	config = function()
	    vim.cmd.colorscheme "tokyonight"
	    enable_transparency()
	end
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    'nvim-tree/nvim-web-devicons'
	},
        opts = {
            theme = "auto",
            sections = {
                lualine_a = {"mode"},
                lualine_b = {"filename"},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {"location"},
                lualine_z = {"encoding", "fileformat"},
            },
                inactive_sections = {
                lualine_a = {},
                lualine_b = {"filename"},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {"encoding", "fileformat"},
            },
	}
    },
}
