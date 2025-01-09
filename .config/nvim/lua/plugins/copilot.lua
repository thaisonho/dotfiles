return {
    'github/copilot.vim',
    name = 'Copilot',
    event = 'InsertEnter',
    lazy = true,
    -- setting up
    setup = function()
        require('copilot').setup()
    end,
}
