Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
    DisableControlAction(1, 141, true)
    if not IsPlayerTargettingAnything(PlayerId()) then
    DisableControlAction(1, 140, true)
    end
   end
 end)
