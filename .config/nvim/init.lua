-- NEOVIM CONFIG --
-- Author: @thaisonho

require("config.lazy")
local settings = require('json.settings')
local keymaps = require('json.keymaps')

-- Settings
settings.basic_settings()
-- settings.transparent_background()

-- Keymaps
keymaps.basic_keymaps()
