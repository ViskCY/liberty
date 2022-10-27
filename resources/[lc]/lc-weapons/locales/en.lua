local Translations = {
    error = {
        canceled = 'Tühistatud',
        max_ammo = 'Maksimaalne laskemoona mahutavus',
        no_weapon = 'Sul pole relva.',
        no_support_attachment = 'See relv ei toeta seda kinnitust.',
        no_weapon_in_hand = 'Sul pole relva käes.',
        weapon_broken = 'See relv on katki ja seda ei saa kasutada.',
        no_damage_on_weapon = 'See relv ei ole kahjustatud..',
        weapon_broken_need_repair = 'Teie relv on katki, peate selle parandama, enne kui saate seda uuesti kasutada.',
        attachment_already_on_weapon = 'Teil on juba %{value} oma relva peal.'
    },
    success = {
        reloaded = 'Relv Laetud'
    },
    info = {
        loading_bullets = 'Laed Kuule',
        repairshop_not_usable = 'Praegune remonditöökoda on ~r~NOT~w~ .',
        weapon_will_repair = 'Teie relva parandatakse.',
        take_weapon_back = '[E] - Võtke relv tagasi',
        repair_weapon_price = '[E] Paranda Relv, ~g~$%{value}~w~',
        removed_attachment = 'Sa eemaldasid %{value} oma relvalt!',
        hp_of_weapon = 'Teie relva vastupidavus'
    },
    mail = {
        sender = 'Tyrone',
        subject = 'Remont',
        message = 'Sinu %{value} on remonditud, saab kohale tulla. <br><br>  madafaka'
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
