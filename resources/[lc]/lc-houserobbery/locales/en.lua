local Translations = {
    error = {
        ["missing_something"] = "Tundub, et teil on midagi puudu...",
        ["not_enough_police"] = "Pole piisavalt politseisi..",
        ["door_open"] = "Uks on juba avatud..",
        ["process_cancelled"] = "Protsess Tühistati..",
        ["didnt_work"] = "See ei töödanud..",
        ["emty_box"] = "Kast On Tühi..",
    },
    success = {
        ["worked"] = "See töötas!",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
