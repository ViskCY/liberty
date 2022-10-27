local Translations = {
    error = {
        not_your_vehicle = 'See ei ole teie sõiduk..',
        vehicle_does_not_exist = 'Sõidukit ei eksisteeri',
        not_enough_money = 'Sul ei ole piisavalt raha',
        finish_payments = 'Enne müümist peate selle sõiduki ära maksma..',
        no_space_on_lot = 'Krundil pole teie auto jaoks ruumi!',
        not_in_veh = 'Te ei ole sõidukis!',
        not_for_sale = 'See sõiduk EI OLE müügiks!',
    },
    menu = {
        view_contract = 'Vaata Lepingut',
        view_contract_int = '[E] Vaata Lepingut',
        sell_vehicle = 'Müü Autot',
        sell_vehicle_help = 'Müü sõiduk kaaskodanikele!',
        sell_back = 'Müüa auto tagasi!',
        sell_back_help = 'Müü oma auto soodushinnaga kohe tagasi!',
        interaction = '[E] Müü Autot',
    },
    success = {
        sold_car_for_price = 'Olete oma auto maha müünud $%{value}',
        car_up_for_sale = 'Teie auto on müüki pandud! Hind - $%{value}',
        vehicle_bought = 'Sõiduk ostetud',
    },
    info = {
        confirm_cancel = '~g~Y~w~ - Kinnita / ~r~N~w~ - Tühista ~g~',
        vehicle_returned = 'Teie sõiduk tagastati',
        used_vehicle_lot = 'Kasutatud Autod',
        sell_vehicle_to_dealer = '[~g~E~w~] - Müü sõiduk edasimüüjale ~g~$%{value}',
        view_contract = '[~g~E~w~] - Vaata sõiduki lepingut',
        cancel_sale = '[~r~G~w~] - Tühista sõiduki müük',
        model_price = '%{value}, Hind: ~g~$%{value2}',
        are_you_sure = 'Kas olete kindel, et ei soovi enam oma sõidukit müüa??',
        yes_no = '[~g~7~w~] - Jah | [~r~8~w~] - Ei',
        place_vehicle_for_sale = '[~g~E~w~] - Pane Sõiduk Müügile Omaniku Poolt',
    },
    charinfo = {
        firstname = 'mitte',
        lastname = 'teada',
        account = 'Konto pole teada..',
        phone = 'telefoninumber teadmata..',
    },
    mail = {
        sender = 'Kahuri RV Müügid',
        subject = 'Olete müünud ​​sõiduki!',
        message = 'Teenisite $%{value} teie müügist %{value2}.',
    }
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
