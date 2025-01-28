-- NEOVIM CONFIG --
-- Author: @thaisonho

require("config.lazy")
local setting = require("json.settings")
local keymaps = require("json.keymaps")

-- Settings
setting.basic_settings()
-- Didn't need to use this any more bc Catppuccin already supports transparent
-- settings.transparent_background()
setting.highlight_when_yanking()
-- Keymaps
keymaps.basic_keymaps()
keymaps.buffer_keymaps()
