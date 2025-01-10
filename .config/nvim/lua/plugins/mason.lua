return {
    'williamboman/mason.nvim',
    name = 'mason.nvim',
    config = function()
        require('mason').setup()
    end
}
