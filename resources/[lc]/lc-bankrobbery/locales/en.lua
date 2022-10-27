local Translations = {
    success = {
        success_message = "Edukas",
        fuses_are_blown = "Kaitsmed on labi polenud",
        door_has_opened = "Uks on avanenud"
    },
    error = {
        cancel_message = "Tuhistatud",
        safe_too_strong = "Naib, et seifi lukk on liiga tugev...",
        missing_item = "Sul puudub kindel ese...",
        bank_already_open = "Pank on juba avatud...",
        minimum_police_required = "Panga roovimiseks on vaja minimaalselt %{police} politseid",
        security_lock_active = "Turvalukk on aktiivne, ukse avamine hetkel ei ole voimalik",
        wrong_type = "%{receiver} ei saanud argumenteerimiseks oiget tuupi '%{argument}'\nreceived type: %{receivedType}\nreceived value: %{receivedValue}\n expected type: %{expected}",
        fuses_already_blown = "Kaitsmed on juba labi polenud...",
        event_trigger_wrong = "%{event}%{extraInfo} kaivitati, kui moned tingimused ei olnud taidetud, allikas: %{source}",
        missing_ignition_source = "Sul puudub suuteallikas"
    },
    general = {
        breaking_open_safe = "Seifi lahtimurdmine...",
        connecting_hacking_device = "Hakkimisseadme uhendamine...",
        fleeca_robbery_alert = "Fleeca pangaroovi katse",
        paleto_robbery_alert = "Blaini maakonna hoiukassa roovimiskatse",
        pacific_robbery_alert = "Pacific Standard Banki roovimiskatse",
        break_safe_open_option_target = "Purusta seif lahti",
        break_safe_open_option_drawtext = "[E] Purustada seifi uks",
        validating_bankcard = "Kaardi kinnitamine...",
        thermite_detonating_in_seconds = "Termiit laheb polema %{time} sekund(it)",
        bank_robbery_police_call = "10-90: Panga turvaalarm"
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
