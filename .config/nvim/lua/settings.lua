-- ~/.config/nvim/lua/settings.lua
local M = {}

-- Basic settings
function M.basic_settings()
    -- UI and editing
    vim.opt.number = true
    vim.opt.relativenumber = true
    vim.opt.numberwidth = 4
    vim.opt.expandtab = true
    vim.opt.shiftwidth = 4
    vim.opt.syntax = "on"
    vim.opt.signcolumn = "yes"
    vim.opt.showmode = true

    -- Clipboard integration
    local ok, _ = pcall(function()
        -- Check if system has xclip or wl-clipboard
        local clipboard_cmd = vim.fn.executable('xclip') == 1 and 'xclip' 
            or vim.fn.executable('wl-copy') == 1 and 'wl-clipboard'
            or nil

        if clipboard_cmd then
            vim.opt.clipboard = 'unnamedplus'
        else
            vim.notify('Please install xclip or wl-clipboard for system clipboard support', vim.log.levels.WARN)
        end
    end)
end

-- Transparent background
function M.transparent_background()
    -- Modern API calls for transparency
    local highlights = {
        'Normal',
        'NormalFloat',
        'NonText',
        'LineNr',
        'SignColumn'
    }

    for _, group in ipairs(highlights) do
        vim.api.nvim_set_hl(0, group, { bg = 'NONE' })
    end
end

return M