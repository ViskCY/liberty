local Translations = {
    error = {
        no_deposit = "$%{value} Nõutav sissemakse",
        cancelled = "Tühistatud",
        vehicle_not_correct = "Tegemist ei ole tarbesõidukiga!",
        no_driver = "Selleks peate olema juht..",
        no_work_done = "Te pole veel tööd teinud..",
        backdoors_not_open = "Sõiduki tagauksed ei ole avatud",
        get_out_vehicle = "Selle toimingu tegemiseks peate sõidukist välja astuma",
        too_far_from_trunk = "Peate haarama kastid oma sõiduki pagasiruumist",
        too_far_from_delivery = "Peate olema kohaletoimetamispunktile lähemal"
    },
    success = {
        paid_with_cash = "$%{value} Deposiit Makstud sularahas",
        paid_with_bank = "$%{value} Deposiit Makstud panga ülekandega",
        refund_to_cash = "$%{value} Deposiit Makstud sularahas",
        you_earned = "Sa teenisid $%{value}",
        payslip_time = "Käisite kõikides poodides .. Aeg oma palgalehe jaoks!",
    },
    menu = {
        header = "Saadaval veoautod",
        close_menu = "⬅ Sulge menüü",
    },
    mission = {
        store_reached = "Kaup on käes, võtke kast pagasiruumi, millel on [E] ja viige markerisse",
        take_box = "Võtke kast tooteid",
        deliver_box = "Tarnige tootekarp",
        another_box = "Hankige teine kast tooteid",
        goto_next_point = "Olete kõik tooted tarninud, järgmise punktini",
    },
    info = {
        deliver_e = "~g~E~w~ - Tarnige tooteid",
        deliver = "Tarnige tooteid",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
