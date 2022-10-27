QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Tsiviil',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Töötukassa palgal',
                payment = 100
            },
        },
	},
	['police'] = {
		label = 'LCPD',
        type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Kadett',
                payment = 1000
            },
			['1'] = {
                name = 'Ohvitser I',
                payment = 1100
            },
			['2'] = {
                name = 'Ohvitser II',
                payment = 1200
            },
			['3'] = {
                name = 'Ohvitser III',
                payment = 1300
            },
			['4'] = {
                name = 'Vanem-Ohvitser',
                payment = 1400
            },
            ['5'] = {
                name = 'Inspektor',
                payment = 1500
            },
            ['6'] = {
                name = 'Noorem-Uurija',
                payment = 1600
            },
            ['7'] = {
                name = 'Uurija',
                payment = 1700
            },
            ['8'] = {
                name = 'Vanem-Uurija',
                payment = 1900
            },
            ['9'] = {
                name = 'V.I.C.E Seersant',
                payment = 2100
            },
            ['10'] = {
                name = 'V.I.C.E Leitnant',
                payment = 2300
            },
            ['11'] = {
                name = 'V.I.C.E Kapten',
                payment = 2500
            },
            ['12'] = {
                name = 'Välijuht',
                payment = 2700
            },
            ['13'] = {
                name = 'Seersant',
                payment = 2900
            },
            ['14'] = {
                name = 'Leitnant',
                payment = 3100
            },
            ['15'] = {
                name = 'Kapten',
                isboss = true,
                payment = 3300
            },
            ['16'] = {
                name = 'Asedirektor',
                isboss = true,
                payment = 3550
            },
            ['17'] = {
                name = 'Peadirektor',
				isboss = true,
                payment = 3750
            },
		},
	},
	['ambulance'] = {
		label = 'EMS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Parameedik',
                payment = 1600
            },
			['1'] = {
                name = 'Õde',
                payment = 1800
            },
			['2'] = {
                name = 'Arst',
                payment = 2000
            },
			['3'] = {
                name = 'FTO',
                payment = 2200
            },
			['4'] = {
                name = 'OKJ III',
                payment = 2400
            },
            ['5'] = {
                name = 'OKJ II',
                payment = 2600
			},
			['6'] = {
				name = 'OKJ I',
				payment = 2800
			},
			['7'] = {
				name = 'Asedirektor',
				isboss = true,
				payment = 3000
			},
			['8'] = {
				name = 'Direktor',
				isboss = true,
				payment = 3200
			},
        },
	},
		['taxi'] = {
		label = 'Takso',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Katseaeg',
                payment = 400
            },
			['1'] = {
                name = 'Uber',
                payment = 600
            },
			['2'] = {
                name = 'Kogenud Uber',
                payment = 800
            },
			['3'] = {
                name = 'Ülemus',
				isboss = true,
                payment = 1000
            },
        },
	},
	['trucker'] = {
		label = 'Veoautoteenused',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Autojuht',
                payment = 50
            },
        },
	},
	['tow'] = {
		label = 'Puksiirteenused',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Autojuht',
                payment = 50
            },
        },
	},
	['garbage'] = {
		label = 'Prügivedu',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Töötaja',
                payment = 50
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 50
            },
        },
	},
	['hotdog'] = {
		label = 'Kiirtoidurestoran',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Teenindaja',
                payment = 50
            },
        },
	},
	['reporter'] = {
		label = 'Elu24',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Reporter',
                payment = 50
            },
        },
	},
     ['bus'] = {
		label = 'Bussifirma',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Bussijuht',
                payment = 50
            },
        },
	},
	["burgershot"] = {
		label = "Burgershot Employee",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 50
            },
			['1'] = {
                name = "Employee",
                payment = 75
            },
			['2'] = {
                name = "Burger Flipper",
                payment = 100
            },
			['3'] = {
                name = "Manager",
                payment = 125
            },
			['4'] = {
                name = "CEO",
				isboss = true,
                payment = 150
            },
        },
	},
	["realestate"] = {
		label = "KV24",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Praktikant",
                payment = 1000
            },
			['1'] = {
                name = "Maakler",
                payment = 1250
            },
			['2'] = {
                name = "Kogenud Maakler",
                payment = 1500
            },
			['3'] = {
                name = "Juhataja",
                payment = 1750
            },
			['4'] = {
                name = "Ülemus",
				isboss = true,
                payment = 2000
            },
        },
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 75
            },
			['2'] = {
                name = 'Business Sales',
                payment = 100
            },
			['3'] = {
                name = 'Finance',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
    ['mechanic'] = {
		label = 'Mechanic',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Novice',
                payment = 75
            },
			['2'] = {
                name = 'Experienced',
                payment = 100
            },
			['3'] = {
                name = 'Advanced',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
    ['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 50
            },
        },
	},
}