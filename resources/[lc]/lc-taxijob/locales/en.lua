local Translations = {
    error = {
        ["already_mission"] = "Te juba täidate NPC missiooni",
        ["not_in_taxi"] = "Sa ei ole taksos",
        ["missing_meter"] = "Sellel sõidukil puudub taksomeeter",
        ["no_vehicle"] = "Sa ei ole sõidukis",
        ["not_active_meter"] = "Taksomeeter ei ole aktiivne",
        ["no_meter_sight"] = "Taksoarvestit pole näha",
    },
    success = {},
    info = {
        ["person_was_dropped_off"] = "Kodanik visati välja",
        ["npc_on_gps"] = "NPC asukoht on määratud kaardile",
        ["go_to_location"] = "Vii NPC tema sihtkohta",
        ["vehicle_parking"] = "[E] Pargi sõiduk",
        ["job_vehicles"] = "[E] Tööautod",
        ["drop_off_npc"] = "[E] Lase NPC välja",
        ["call_npc"] = "[E] Kutsu NPC sisse",
        ["blip_name"] = "Taksopark",
        ["taxi_label_1"] = "Taksoauto",
        ["taxi_label_2"] = "Uberi sõiduk",
        ["taxi_label_3"] = "Kogenud Uberi sõiduk",
        ["taxi_label_4"] = "Juhtkonna sõiduk",        
        ["no_spawn_point"] = "Unable to find a location to bring the cab",
        ["taxi_returned"] = "Takso pargitud"
    },
    menu = {
        ["taxi_menu_header"] = "Taksopargi sõidukid",
        ["close_menu"] = "⬅ Sulge menüü",
        ['boss_menu'] = "Ülemuse menüü"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
