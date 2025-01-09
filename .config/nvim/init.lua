-- NEOVIM CONFIG --
-- Author: @thaisonho

require("config.lazy")
local settings = require('json.settings')
local keymaps = require('json.keymaps')

-- Settings
settings.basic_settings()
-- Didn't need to use this any more bc Catppuccin already supports transparent
-- settings.transparent_background()

-- Keymaps
keymaps.basic_keymaps()
