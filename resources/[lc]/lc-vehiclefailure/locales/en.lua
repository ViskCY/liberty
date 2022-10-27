local Translations = {
    error = {
        ["failed_notification"] = "Ebaonnestunud!",
        ["not_near_veh"] = "Te ei ole soiduki laheduses!",
        ["out_range_veh"] = "Olete soidukist liiga kaugel!",
        ["inside_veh"] = "Soiduki mootorit seestpoolt parandada ei saa!",
        ["healthy_veh"] = "Soiduk on liiga terve ja vajab paremaid tooriistu!",
        ["inside_veh_req"] = "Selle parandamiseks peate olema soidukis!",
        ["roadside_avail"] = "Saadaval on maanteeabi, helistage oma telefoni teel!",
        ["no_permission"] = "Teil ei ole luba soidukite remondiks",
        ["fix_message"] = "%{message}, ja nuud mine garaa?i!",
        ["veh_damaged"] = "Teie soiduk on liiga kahjustatud!",
        ["nofix_message_1"] = "Vaatasite oma olitaset ja see tundus normaalne",
        ["nofix_message_2"] = "Vaatasite oma jalgratast ja ei tundunud midagi valesti",
        ["nofix_message_3"] = "Sa vaatasid oma olivooliku pardilinti ja tundus, et koik on korras",
        ["nofix_message_4"] = "Panid raadio valjemaks. Kummaline mootorimura on nuud kadunud",
        ["nofix_message_5"] = "Teie kasutatud rooste eemaldaja ei avaldanud mingit moju",
        ["nofix_message_6"] = "Arge kunagi proovige teha midagi, mis pole katki, kuid te ei kuulanud",
    },
    success = {
        ["cleaned_veh"] = "Soiduk puhastatud!",
        ["repaired_veh"] = "Soiduk remonditud!",
        ["fix_message_1"] = "Kontrollisid olitaset",
        ["fix_message_2"] = "Sulgesid olireostuse narimiskummiga",
        ["fix_message_3"] = "Olivooliku tegid teibiga",
        ["fix_message_4"] = "Olete olilekke ajutiselt peatanud",
        ["fix_message_5"] = "Sa loid ratta vastu ja see tootab jalle",
        ["fix_message_6"] = "Sa eemaldasid natuke roostet",
        ["fix_message_7"] = "Sa karjusid oma auto peale ja see tootab jalle",
    },
    progress = {
        ["clean_veh"] = "Auto puhastamine...",
        ["repair_veh"] = "Soiduki Remontimine..",

    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})