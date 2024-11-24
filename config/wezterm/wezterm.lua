local wezterm = require("wezterm")

return {
    hide_tab_bar_if_only_one_tab = true,
    enable_tab_bar = false,
    font_size = 12.0,
    font = wezterm.font("Inconsolata Nerd Font Mono"),
    window_background_opacity = 0.90,
    exit_behavior="Close",
    window_close_confirmation = 'NeverPrompt',
    default_cursor_style = "BlinkingBlock",
    cursor_blink_rate = 500,
    enable_wayland = false,

}
