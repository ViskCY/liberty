local Translations = {
    error = {
        ["invalid_job"] = "Ma ei usu, et ma siin tootan...",
        ["invalid_items"] = "Teil pole oigeid esemeid!",
        ["no_items"] = "Teil pole uhtegi esemet!",
    },
    progress = {
        ["pick_grapes"] = "Viinamarjade korjamine ..",
        ["process_grapes"] = "Viinamarjade tootlemine ..",
    },
    task = {
        ["start_task"] = "[E] Alusta",
        ["load_ingrediants"] = "[E] Laadige koostisained",
        ["wine_process"] = "[E] Kaivitage veiniprotsess",
        ["get_wine"] = "[E] Hangi veini",
        ["make_grape_juice"] = "[E] Valmistage viinamarjamahl",
        ["countdown"] = "Aega jaanud %{time}s",
        ['cancel_task'] = "Sa tuhistasid ulesande"
    },
    text = {
        ["start_shift"] = "Olete alustanud oma vahetust viinamarjaistanduses!",
        ["end_shift"] = "Teie vahetus viinamarjaistanduses on loppenud!",
        ["valid_zone"] = "Kehtiv tsoon!",
        ["invalid_zone"] = "Kehtetu tsoon!",
        ["zone_entered"] = "%{zone} Sisenesid alasse",
        ["zone_exited"] = "%{zone} Lahkusid alast",
    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})