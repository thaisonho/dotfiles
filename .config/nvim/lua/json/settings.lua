-- ~/.config/nvim/lua/settings.lua
-- Some settings are inspired by nvim-lua/kickstart.nvim
local M = {}

-- Basic settings
function M.basic_settings()
    -- UI and editing
    vim.g.have_nerd_fonts = true
    vim.opt.number = true
    vim.opt.relativenumber = true
    vim.opt.numberwidth = 4
    vim.opt.expandtab = true
    vim.opt.shiftwidth = 4
    vim.opt.syntax = "on"
    vim.opt.signcolumn = "yes"
    vim.opt.showmode = true
    vim.opt.cursorline = true
    vim.opt.autoindent = true
    vim.opt.breakindent = true
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
    -- Sets how neovim will display certain whitespace characters in the editor.
    --  See `:help 'list'`
    --  and `:help 'listchars'`
    vim.opt.list = true
    vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
end

-- Transparent background
-- NOTED: Don't need this anymore bc Catppuccin supports transparent background
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

function M.highlight_when_yanking()
    vim.api.nvim_create_autocmd('TextYankPost', {
        desc = 'Highlight when yanking (copying) text',
        group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
            callback = function()
                vim.highlight.on_yank()
            end,
    })
end

return M
