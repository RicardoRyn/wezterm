local wezterm = require('wezterm')
local platform = require('utils.platform')

-- local font = 'Maple Mono SC NF'
local font_family = 'JetBrainsMono Nerd Font'
local font_size = platform.is_win and 11 or 13

return {
    -- font = wezterm.font({
    --     family = font_family,
    --     weight = 'Medium',
    -- }),
    font = wezterm.font_with_fallback({
        font_family,
        { family = 'Microsoft YaHei', scale = 1 },
    }),
    font_size = font_size,

    --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
    freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
    freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
