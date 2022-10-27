local Translations = {
    error = {
        to_far_from_door = 'Olete uksekellast liiga kaugel',
        nobody_home = 'Kodus pole kedagi..',
        nobody_at_door = 'Uksel pole kedagi...'
    },
    success = {
        receive_apart = 'Saite Korteri',
        changed_apart = 'Kolisite',
    },
    info = {
        at_the_door = 'Keegi on ukse taga!',
    },
    text = {
        options = '[E] Korteri Valikud',
        enter = 'Sisene Korterisse',
        ring_doorbell = 'Helista Uksekella',
        logout = 'Logi Välja',
        change_outfit = 'Vaheta riietust',
        open_stash = 'Ava Kapp',
        move_here = 'Koli Siia',
        open_door = 'Ava Uks',
        leave = 'Lahku Korterist',
        close_menu = '⬅ Sulge menüü',
        tennants = 'Tennants',
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
