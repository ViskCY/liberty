local Translations = {
    notify = {
        ["hud_settings_loaded"] = "HUD-i Sätted On Laaditud!",
        ["hud_restart"] = "HUD Taaskäivitub!",
        ["hud_start"] = "HUD Is Now Started!",
        ["hud_command_info"] = "See käsk lähtestab teie praegused HUD-i sätted!",
        ["load_square_map"] = "Ruudukujulise Kaardi Laadimine...",
        ["loaded_square_map"] = "Ruudukujuline Kaart Laetud!",
        ["load_circle_map"] = "Ringikujuline Kaart Laeb...",
        ["loaded_circle_map"] = "Ringikujuline Kaart On Laetud!",
        ["cinematic_on"] = "Kinorežiim Sees!",
        ["cinematic_off"] = "Kinorežiim Väljas!",
        ["engine_on"] = "Mootor Käivitatud!",
        ["engine_off"] = "Mootori Seiskamine!",
        ["low_fuel"] = "Kütusetase Madal!",
        ["access_denied"] = "Teil Pole Ligipääsu!",
        ["stress_gain"] = "Tunned, Et Stress Tõuseb!",
        ["stress_removed"] = "Tunned Kuidas Stess Langeb!"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
