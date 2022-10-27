local recoils = {
	-- Melee
	-- [-1834847097] = 0.3,		--['weapon_dagger']
	-- [-1786099057] = 0.3,		--['weapon_bat']
	-- [-102323637] = 0.3,		--['weapon_bottle']
	-- [2067956739] = 0.3,		--['weapon_crowbar']
	-- [-1951375401] = 0.3,		--['weapon_flashlight']
	-- [1141786504] = 0.3,		--['weapon_golfclub']
	-- [1317494643] = 0.3,		--['weapon_hammer']
	-- [-102973651] = 0.3,		--['weapon_hatchet']
	-- [-656458692] = 0.3,		--['weapon_knuckle']
	-- [-1716189206] = 0.3,		--['weapon_knife']
	-- [-581044007] = 0.3,		--['weapon_machete']
	-- [-538741184] = 0.3,		--['weapon_switchblade']
	-- [1737195953] = 0.3,		--['weapon_nightstick']
	-- [419712736] = 0.3,		--['weapon_wrench']
	-- [-853065399] = 0.3,		--['weapon_battleaxe']
	-- [-1810795771] = 0.3,		--['weapon_poolcue']
	-- [-2000187721] = 0.0,		--['weapon_briefcase']
	-- [28811031] = 0.0,		--['weapon_briefcase_02']
	-- [-499989876] = 0.0,		--['weapon_garbagebag']
	-- [-800287667] = 0.0,		--['weapon_handcuffs']
	-- [1309015656] = 0.0,		--['weapon_bread']
	-- [940833800] = 0.3,		--['weapon_stone_hatchet']

	-- Handguns
	[453432689] = 15.15,			--['weapon_pistol']
	[-1075685676] = 15.5,		--['weapon_pistol_mk2']
	[1593441988] = 15.2,			--['weapon_combatpistol']
	[584646201] = 15.3,			--['weapon_appistol']
	[911657153] = 15.1,			--['weapon_stungun']
	[-1716589765] = 15.6,		--['weapon_pistol50']
	[-1076751822] = 15.2,		--['weapon_snspistol']
	[-771403250] = 15.5,			--['weapon_heavypistol']
	[137902532] = 15.4,			--['weapon_vintagepistol']
	[1198879012] = 15.9,			--['weapon_flaregun']
	[-598887786] = 15.9,			--['weapon_marksmanpistol']
	[-1045183535] = 15.6,		--['weapon_revolver']
	[-879347409] = 15.6,			--['weapon_revolver_mk2']
	[-1746263880] = 15.3,		--['weapon_doubleaction']
	[-2009644972] = 15.3,		--['weapon_snspistol_mk2']
	[-1355376991] = 15.3,		--['weapon_raypistol']
	[727643628] = 15.3,			--['weapon_ceramicpistol']
	[-1853920116] = 15.3,		--['weapon_navyrevolver']
	[1470379660] = 15.3,			--['weapon_gadgetpistol']

	-- Submachine Guns
	[324215364] = 15.5,			--['weapon_microsmg']
	[736523883] = 15.4,			--['weapon_smg']
	[2024373456] = 15.1,			--['weapon_smg_mk2']
	[-270015777] = 15.1,			--['weapon_assaultsmg']
	[171789620] = 15.2,			--['weapon_combatpdw']
	[-619010992] = 15.3,			--['weapon_machinepistol']
	[-1121678507] = 15.1,		--['weapon_minismg']
	[1198256469] = 15.3,			--['weapon_raycarbine']

	-- Shotguns
	[487013001] = 15.4,			--['weapon_pumpshotgun']
	[2017895192] = 15.7,			--['weapon_sawnoffshotgun']
	[-494615257] = 15.4,			--['weapon_assaultshotgun']
	[-1654528753] = 15.2,		--['weapon_bullpupshotgun']
	[-1466123874] = 15.7,		--['weapon_musket']
	[984333226] = 15.2,			--['weapon_heavyshotgun']
	[-275439685] = 15.7,			--['weapon_dbshotgun']
	[317205821] = 15.2,			--['weapon_autoshotgun']
	[1432025498] = 15.4,			--['weapon_pumpshotgun_mk2']
	[94989220] = 15.0,			--['weapon_combatshotgun']

	-- Assault Rifles
	[-1074790547] = 15.5,		--['weapon_assaultrifle']
	[961495388] = 15.2,			--['weapon_assaultrifle_mk2']
	[-2084633992] = 15.3,		--['weapon_carbinerifle']
	[-86904375] = 15.1,			--['weapon_carbinerifle_mk2']
	[-1357824103] = 15.1,		--['weapon_advancedrifle']
	[-1063057011] = 15.2,		--['weapon_specialcarbine']
	[2132975508] = 15.2,			--['weapon_bullpuprifle']
	[1649403952] = 15.3,			--['weapon_compactrifle']
	[-1768145561] = 15.2,		--['weapon_specialcarbine_mk2']
	[-2066285827] = 15.2,		--['weapon_bullpuprifle_mk2']
	[-1658906650] = 15.0,		--['weapon_militaryrifle']

	-- Light Machine Guns
	[-1660422300] = 15.1,		--['weapon_mg']
	[2144741730] = 15.1,			--['weapon_combatmg']
	[1627465347] = 15.1,			--['weapon_gusenberg']
	[-608341376] = 15.1,			--['weapon_combatmg_mk2']

	-- Sniper Rifles
	[100416529] = 15.5,			--['weapon_sniperrifle']
	[205991906] = 15.7,			--['weapon_heavysniper']
	[-952879014] = 15.3,			--['weapon_marksmanrifle']
	[856002082] = 15.2,			--['weapon_remotesniper']
	[177293209] = 15.6,			--['weapon_heavysniper_mk2']
	[1785463520] = 15.3,			--['weapon_marksmanrifle_mk2']

	-- Heavy Weapons
	[-1312131151] = 15.0,		--['weapon_rpg']
	[-1568386805] = 1.0,		--['weapon_grenadelauncher']
	[1305664598] = 1.0,			--['weapon_grenadelauncher_smoke']
	[1119849093] = 0.1,			--['weapon_minigun']
	[2138347493] = 0.3,			--['weapon_firework']
	[1834241177] = 2.4,			--['weapon_railgun']
	[1672152130] = 0.0,			--['weapon_hominglauncher']
	[125959754] = 0.5,			--['weapon_compactlauncher']
	[-1238556825] = 0.3,		--['weapon_rayminigun']

	-- Throwables
	-- [-1813897027] = 0.3,		--['weapon_grenade']
	-- [-1600701090] = 0.3,		--['weapon_bzgas']
	-- [615608432] = 0.3,		--['weapon_molotov']
	-- [741814745] = 0.3,		--['weapon_stickybomb']
	-- [-1420407917] = 0.3,		--['weapon_proxmine']
	-- [126349499] = 0.3,		--['weapon_snowball']
	-- [-1169823560] = 0.3,		--['weapon_pipebomb']
	-- [600439132] = 0.3,		--['weapon_ball']
	-- [-37975472] = 0.3,		--['weapon_smokegrenade']
	-- [1233104067] = 0.3,		--['weapon_flare']

	-- Miscellaneous
	-- [883325847] = 0.3,		--['weapon_petrolcan']
	-- [101631238] = 0.3,		--['weapon_fireextinguisher']
	-- [-1168940174] = 0.3,		--['weapon_hazardcan']
}

CreateThread(function()
	while true do
		local ped = PlayerPedId()
		if IsPedShooting(ped) and not IsPedDoingDriveby(ped) then
			local _, wep = GetCurrentPedWeapon(ped)
			_, cAmmo = GetAmmoInClip(ped, wep)
			if recoils[wep] and recoils[wep] ~= 0 then
				-- luacheck: ignore
				local tv = 0
				if GetFollowPedCamViewMode() ~= 4 then
					repeat
						Wait(0)
						local p = GetGameplayCamRelativePitch()
						SetGameplayCamRelativePitch(p+0.1, 0.2)
						tv += 0.1
					until tv >= recoils[wep]
				else
					repeat
						Wait(0)
						local p = GetGameplayCamRelativePitch()
						if recoils[wep] > 0.1 then
							SetGameplayCamRelativePitch(p+0.6, 1.2)
							tv += 0.6
						else
							SetGameplayCamRelativePitch(p+0.016, 0.333)
							tv += 0.1
						end
					until tv >= recoils[wep]
				end
			end
		end
		Wait(0)
	end
end)
