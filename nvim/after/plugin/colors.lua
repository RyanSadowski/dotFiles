-- init.lua
vim.g.tokyodark_transparent_background = false
vim.g.tokyodark_enable_italic_comment = true
vim.g.tokyodark_enable_italic = true
vim.g.tokyodark_color_gamma = "1.0"
--vim.cmd("colorscheme tokyodark")
--
vim.cmd [[colorscheme nord]]

-- Example config in lua
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = false

-- Load the colorscheme
require('nord').set()

require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    background = {
        -- :h background
        light = "latte",
        dark = "macchiato",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = true,      -- shows the '~' characters after the end of buffers
    term_colors = false,            -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false,            -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15,          -- percentage of the shade to apply to the inactive window
    },
    no_italic = false,              -- Force no italic
    no_bold = false,                -- Force no bold
    no_underline = false,           -- Force no underline
    styles = {
        -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        telescope = true,
        treesitter = true,
        --        lualine = true,
        harpoon = true,
        mason = true,
        --dap = {
        --  enabled = true,
        --enable_ui = true
        -- }
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
