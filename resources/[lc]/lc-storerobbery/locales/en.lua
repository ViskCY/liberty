local Translations = {
    error = {
        minimum_store_robbery_police = "Pole piisavalt politseisi, Vaja (%{MinimumStoreRobberyPolice} )",
        not_driver = "Sa ei ole juht",
        demolish_vehicle = "Te ei tohi praegu soidukeid lammutada",
        process_canceled = "Protsess tuhistati..",
        you_broke_the_lock_pick = "Sa murdsid murdraua",
        safe_code = "Seifi Kood: "
    },
    text = {
        the_cash_register_is_empty = "Kassaaparaat on tuhi",
        try_combination = "~g~E~w~ - Proovige kombinatsiooni",
        safe_opened = "Seif Avatud",
        emptying_the_register= "Registri tuhjendamine.."
    },
    email = {
        shop_robbery = "10-31 | Poeroov",
        someone_is_trying_to_rob_a_store = "Keegi puuab roovida poodi %{street} (KAAMERA ID: %{cameraId1})",
        storerobbery_progress = "Poeroov On Pooleli"
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})