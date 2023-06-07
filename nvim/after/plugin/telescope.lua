local builtin = require('telescope.builtin')
local mapper = require('nvim-mapper')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- vim.keymap.set('n', '<leader>fk', mapper., {})


require("nvim-mapper").setup({
    -- do not assign the default keymap (<leader>MM)
    no_map = false,
    -- where should ripgrep look for your keybinds definitions.
    -- Default config search path is ~/.config/nvim/lua
    search_path = os.getenv("HOME") .. "/.config/nvim/lua",
    -- what should be done with the selected keybind when pressing enter.
    -- Available actions:
    --   * "definition" - Go to keybind definition (default)
    --   * "execute" - Execute the keybind command
    action_on_enter = "definition",
})
