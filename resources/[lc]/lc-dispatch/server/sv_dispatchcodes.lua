
--[[
	["vehicleshots"] -> dispatchcodename that you pass with the event of AlertGunShot
	displayCode -> Code to be displayed on the blip message
	description -> Description of the blip message
	radius -> to draw a circle with radius around blip ( the number need to have a  .0  behind it, for example 150.0 or 75.0 )
        -> if u want to have the radius without the blip just make the blipScale = 0
        -> if u want to have the radius centered, disable the offset
	recipientList -> list of job names that can see the blip
	blipSprite -> blip sprite
	blipColour -> blip colour
	blipScale -> blip scale
	blipLength -> time in seconds at which the blip will fade down, lower the time, faster it will fade. Cannot be 0
        offset -> enable or disable the offset for the radius ( radius on 0 and offset on true does nothing )
        blipflash -> enable or disable the flashing blip
]]--

dispatchCodes = {

	["vehicleshots"] =  {displayCode = '10-13', description = "Tulistamine Autost", radius = 0, recipientList = {'police'}, blipSprite = 119, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["shooting"] =  {displayCode = '10-13', description ="Tulistamine", radius = 0, recipientList = {'police'}, blipSprite = 110, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["speeding"] =  {displayCode = '10-13', description = "Kiiruse Ületamine", radius = 0, recipientList = {'police'}, blipSprite = 326, blipColour = 84, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["fight"] =  {displayCode = '10-10', description = "Kaklemine", radius = 0, recipientList = {'police'}, blipSprite = 685, blipColour = 69, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["civdown"] =  {displayCode = '10-69', description = "Tsiviil on Haavatud", radius = 0, recipientList = {'ambulance'}, blipSprite = 126, blipColour = 3, blipScale = 1.5, blipLength = 2, sound = "dispatch", offset = "false", blipflash = "false"},
	["civdead"] =  {displayCode = '10-69', description = "Tsiviil on Hukkunud", radius = 0, recipientList = {'ambulance'}, blipSprite = 126, blipColour = 3, blipScale = 1.5, blipLength = 2, sound = "dispatch", offset = "false", blipflash = "false"},
	["911call"] =  {displayCode = '911', description = "112 Kõne", radius = 0, recipientList = {'police', 'ambulance'}, blipSprite = 480, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["311call"] =  {displayCode = '911', description = "112 Kõne", radius = 0, recipientList = {'police', 'ambulance'}, blipSprite = 480, blipColour = 3, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["officerdown"] =  {displayCode = '10-99', description = "Ohvitser on Haavatud", radius = 15.0, recipientList = {'police', 'ambulance'}, blipSprite = 526, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "panicbutton", offset = "false", blipflash = "false"},
	["emsdown"] =  {displayCode = '10-99', description = "Kiirabi on Haavatud", radius = 15.0, recipientList = {'police', 'ambulance'}, blipSprite = 526, blipColour = 3, blipScale = 1.5, blipLength = 2, sound = "panicbutton", offset = "false", blipflash = "false"},
	["storerobbery"] =  {displayCode = '10-90', description = "Poerööv", radius = 0, recipientList = {'police'}, blipSprite = 52, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["bankrobbery"] =  {displayCode = '10-90', description = "Fleeca Panga Rööv", radius = 0, recipientList = {'police'}, blipSprite = 500, blipColour = 2, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["paletobankrobbery"] =  {displayCode = '10-90', description = "Paleto Panga Rööv", radius = 0, recipientList = {'police'}, blipSprite = 500, blipColour = 12, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["pacificbankrobbery"] =  {displayCode = '10-90', description = "Pacific Panga Rööv", radius = 0, recipientList = {'police'}, blipSprite = 500, blipColour = 5, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["prisonbreak"] =  {displayCode = '10-90', description = "Vanglast Põgenemine", radius = 0, recipientList = {'police'}, blipSprite = 189, blipColour = 59, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["vangelicorobbery"] =  {displayCode = '10-90', description = "Juveelipoe Rööv", radius = 0, recipientList = {'police'}, blipSprite = 434, blipColour = 5, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["houserobbery"] =  {displayCode = '10-90', description = "Majaturva Alarm", radius = 0, recipientList = {'police'}, blipSprite = 40, blipColour = 5, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["suspicioushandoff"] =  {displayCode = '10-60', description = "Kahtlane Tegevus", radius = 120.0, recipientList = {'police'}, blipSprite = 469, blipColour = 52, blipScale = 0, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "true", blipflash = "false"},
	["yachtheist"] =  {displayCode = '10-65', description = "Yacht Heist In Progress", radius = 0, recipientList = {'police'}, blipSprite = 455, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["vehicletheft"] =  {displayCode = '10-35', description = "Car Theft In Progress", radius = 0, recipientList = {'police'}, blipSprite = 595, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["signrobbery"] =  {displayCode = '10-35', description = "Sign Robbery Committed", radius = 0, recipientList = {'police'}, blipSprite = 358, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["susactivity"] =  {displayCode = '10-66', description = "Kahtlane Tegevus", radius = 0, recipientList = {'police'}, blipSprite = 66, blipColour = 37, blipScale = 0.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},

	-- Rainmad Heists

	["artgalleryrobbery"] =  {displayCode = '10-90', description = "Art Gallery Robbery In Progress", radius = 0, recipientList = {'police'}, blipSprite = 269, blipColour = 59, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["humanelabsrobbery"] =  {displayCode = '10-90', description = "Humane Labs Robbery In Progress", radius = 0, recipientList = {'police'}, blipSprite = 499, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["trainrobbery"] =  {displayCode = '10-90', description = "Train Robbery In Progress", radius = 0, recipientList = {'police'}, blipSprite = 667, blipColour = 78, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["vanrobbery"] =  {displayCode = '10-90', description = "Security Van Robbery In Progress", radius = 0, recipientList = {'police'}, blipSprite = 67, blipColour = 59, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["undergroundrobbery"] =  {displayCode = '10-90', description = "Underground Tunnels Robbery In Progress", radius = 0, recipientList = {'police'}, blipSprite = 486, blipColour = 59, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["drugboatrobbery"] =  {displayCode = '10-31', description = "Suspicious Activity On Boat", radius = 0, recipientList = {'police'}, blipSprite = 427, blipColour = 26, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["unionrobbery"] =  {displayCode = '10-90', description = "Union Depository Robbery In Progress", radius = 0, recipientList = {'police'}, blipSprite = 500, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["carboosting"] =  {displayCode = '10-50', description = "Auto (boostimine) on Pooleli!", radius = 0, recipientList = {'police'}, blipSprite = 595, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["carjack"] =  {displayCode = '10-35', description = "Autorööv", radius = 0, recipientList = {'police'}, blipSprite = 595, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["explosion"] =  {displayCode = '10-80', description = "Explosion Reported", radius = 0, recipientList = {'police'}, blipSprite = 436, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
}
