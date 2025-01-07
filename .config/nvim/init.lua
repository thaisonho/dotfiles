-- NEOVIM CONFIG --
-- Author: @thaisonho

require("config.lazy")
local settings = require('settings')
local keymaps = require('keymaps')

-- Settings
settings.basic_settings()
settings.transparent_background()

-- Keymaps
keymaps.basic_keymaps()
