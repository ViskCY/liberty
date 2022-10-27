local Translations = {
    error = {
        ["missing_something"] = "Tundub, et teil on midagi puudu...",
        ["not_enough_police"] = "Pole piisavalt politseisi..",
        ["door_open"] = "Uks on juba avatud..",
        ["cancelled"] = "Protsess tuhistati..",
        ["didnt_work"] = "See ei toodanud..",
        ["emty_box"] = "Kast on tuhi..",
        ["injail"] = "Sa oled vanglas %{Time} kuud..",
        ["item_missing"] = "Teil on uksus puudu..",
        ["escaped"] = "Sa pogenesid... Tommake nihhi siit nuud.!",
        ["do_some_work"] = "Tehke karistuse vahendamiseks tood, kohene too: %{currentjob} ",
        ["security_activated"] = "Korgeim turvatase on aktiivne, jaa lahtriplokkide juurde!"
    },
    success = {
        ["found_phone"] = "Leidsid telefoni..",
        ["time_cut"] = "Olete monda aega oma karistusest vabaks toodanud.",
        ["free_"] = "Sa oled vaba! Naudi seda! :)",
        ["timesup"] = "Sinu aeg on labi! Vaadake end kulastuskeskuses",
    },
    info = {
        ["timeleft"] = "Ikka pead ootama... %{JAILTIME} kuud",
        ["lost_job"] = "Sa oled tootu",
        ["job_interaction"] = "[E] Elektritood",
        ["job_interaction_target"] = "Tee %{job} Tood",
        ["received_property"] = "Sa said oma vara tagasi..",
        ["seized_property"] = "Teie vara on arestitud, saate koik tagasi, kui teie aeg labi saab..",
        ["cells_blip"] = "Kongid",
        ["freedom_blip"] = "Vangla vastuvott",
        ["canteen_blip"] = "Sookla",
        ["work_blip"] = "Vanglatoo",
        ["target_freedom_option"] = "Kontrolli aega",
        ["target_canteen_option"] = "Hankige toitu",
        ["police_alert_title"] = "Uus Kone",
        ["police_alert_description"] = "Vanglast Pogenemine",
        ["connecting_device"] = "Seadme uhendamine",
        ["working_electricity"] = "Uhendad Juhtmeid"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
