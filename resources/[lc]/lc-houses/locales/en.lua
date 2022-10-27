local Translations = {
    error = {
        ["no_keys"] = "Sul pole maja võtmeid...",
        ["not_in_house"] = "Sa ei ole majas!",
        ["out_range"] = "Olete väljunud levialast",
        ["no_key_holders"] = "Võtmehoidjaid ei leitud.",
        ["invalid_tier"] = "Kehtetu majatasand",
        ["no_house"] = "Teie läheduses pole ühtegi maja",
        ["no_door"] = "Sa ei ole uksele piisavalt lähedal..",
        ["locked"] = "Maja on lukus!",
        ["no_one_near"] = "Mitte kedagi ümberringi!",
        ["not_owner"] = "See maja ei kuulu sulle.",
        ["no_police"] = "Kohal pole politseijõude..",
        ["already_open"] = "See maja on juba avatud..",
        ["failed_invasion"] = "Uuesti proovimine ebaõnnestus",
        ["inprogress_invasion"] = "Keegi juba töötab ukse kallal..",
        ["no_invasion"] = "See uks pole lahti murtud..",
        ["realestate_only"] = "Seda käsku saavad kasutada ainult kinnisvaraettevõtted",
        ["emergency_services"] = "See on võimalik ainult hädaabiteenuste jaoks!",
        ["already_owned"] = "See maja on juba kellegi teise oma!",
        ["not_enough_money"] = "Sul ei ole piisavalt raha..",
        ["remove_key_from"] = "Võtmed on eemaldatud isikult %{firstname} %{lastname}",
        ["already_keys"] = "Sellel inimesel on juba maja võtmed!",
        ["something_wrong"] = "Midagi läks valesti, proovige uuesti!",
        ["nobody_at_door"] = 'Uksel juures pole kedagi...'
    },
    success = {
        ["unlocked"] = "Maja on lukustamata!",
        ["home_invasion"] = "Uks on nüüd lahti.",
        ["lock_invasion"] = "Panid maja jälle lukku..",
        ["recieved_key"] = "Sa said majale %{value} võtmed!",
        ["house_purchased"] = "Olete edukalt maja ostnud!"
    },
    info = {
        ["door_ringing"] = "Keegi helistab uksele",
        ["speed"] = "Kiirus on %{value}",
        ["added_house"] = "Olete lisanud maja: %{value}",
        ["added_garage"] = "Olete lisanud garaaži: %{value}",
        ["exit_camera"] = "Välju kaamerast",
        ["house_for_sale"] = "Maja müügiks",
        ["decorate_interior"] = "Kaunista interjöör",
        ["create_house"] = "Loo maja (ainult kinnisvaramaakler)",
        ["price_of_house"] = "Maja hind",
        ["tier_number"] = "Maja astme number",
        ["add_garage"] = "Lisa majale garaaž (ainult kinnisvara)",
        ["ring_doorbell"] = "Helistage uksekella"
    },
    menu = {
        ["house_options"] = "Maja valikud",
        ["close_menu"] = "⬅ Sulgege menüü",
        ["enter_house"] = "Sisenege oma majja",
        ["give_house_key"] = "Anna maja võti",
        ["exit_property"] = "Välju kinnisvarast",
        ["front_camera"] = "Esikaamera",
        ["back"] = "Tagasi",
        ["remove_key"] = "Eemalda võti",
        ["open_door"] = "Avage uks",
        ["view_house"] = "Vaata maja",
        ["ring_door"] = "Helista uksekella",
        ["exit_door"] = "Välju kinnisvarast",
        ["open_stash"] = "Avage kapp",
        ["stash"] = "Kapp",
        ["change_outfit"] = "Vaheta outfiti",
        ["outfits"] = "Outfitid",
        ["change_character"] = "Logi välja",
        ["characters"] = "Karakterid",
        ["enter_unlocked_house"] = "Sisenege lukustamata majja",
        ["lock_door_police"] = "Lukusta uks"
    },
    target = {
        ["open_stash"] = "[E] Ava kapp",
        ["outfits"] = "[E] Vaheta Outfiti",
        ["change_character"] = "[E] Vaheta Karakterit",
    },
    log = {
        ["house_created"] = "Maja loodud:",
        ["house_address"] = "**Aadress**: %{label}\n\n**Börsi hind**: %{price}\n\n**Tase**: %{tier}\n\n**Noteerimisagent**: %{agent}",
        ["house_purchased"] = "Maja ostetud:",
        ["house_purchased_by"] = "**Aadress**: %{house}\n\n**Ostuhind**: %{price}\n\n**Ostja**: %{firstname} %{lastname}"
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
