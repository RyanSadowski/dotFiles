local ok, lualine = pcall(require, 'lualine')
if not ok then
    return
end

-- git branch
local branch = {
    'branch',
    icon = '🪵'
}

-- diagnostics count from your preferred source
local diagnostics = {
    'diagnostics',
    sources = { 'nvim_diagnostic', 'nvim_lsp' },
    sections = { 'error', 'warn' },
    symbols = { error = '⛔️', warn = '⚠️ ' },
    colored = false,
    update_in_insert = false,
    always_visible = true
}

-- vim mode
local mode = {
    'mode',
    fmt = function(str)
        return '👉 ' .. str .. ' 👈'
    end
}

-- git diff status
local diff = {
    'diff',
    colored = false
}

lualine.setup({
    options = {
        theme = 'nord',
        disabled_filetypes = { "dashboard", "Outline" }
    },
    sections = {
        lualine_a = { branch }, --diagnostics
        lualine_b = { mode },
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = { diff, "encoding", 'filetype' },
        lualine_y = { 'location' },
        lualine_z = { 'progress' }
    },
})
