local Translations = {
    error = {
        negative = 'Püüad müüa negatiivset summat?',
        no_melt = 'Sa ei andnud mulle midagi sulatada...',
        no_items = 'Pole piisavalt üksusi',
    },
    success = {
        sold = 'Sa müüsid %{value} x %{value2} summaga $%{value3}',
        items_received = 'Sa teenisid %{value} x %{value2}',
    },
    info = {
        title = 'Pandimaja',
        subject = 'Sulavad esemed',
        message = 'Lõpetasime teie esemete sulatamise. Neile võib igal ajal järgi tulla.',
        open_pawn = 'Ava pandimaja',
        sell = 'Müü esemeid',
        sell_pawn = 'Müüge esemeid pandimajale',
        melt = 'Sulata esemeid',
        melt_pawn = 'Avage sulatuskoda',
        melt_pickup = 'Võta sulatatud esemed',
        pawn_closed = 'Pandimaja on suletud. Tulge vahepeal tagasi %{value}:00 AM - %{value2}:00 PM',
        sell_items = 'Müügihind $%{value}',
        back = '⬅ Mine tagasi',
        melt_item = 'Sulata %{value}',
        max = 'Maksimaalne summa %{value}',
        submit = 'Sulata',
        melt_wait = 'Anna mulle %{value} minutit ja ma lasen su asjad sulatada',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})