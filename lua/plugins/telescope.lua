return {
    'nvim-telescope/telescope.nvim', version = '0.2.2',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'mingw32-make' },
    }
}

-- extra dependencies:
-- winget install BurntSushi.ripgrep.MSVC
-- winget install sharkdp.fd 
