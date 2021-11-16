ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

------------[Bateaux]


RegisterNetEvent('Location:AchatJetmax')
AddEventHandler('Location:AchatJetmax', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()
	xPlayer.removeMoney(50) -- Ici pour changer le prix !

end)

RegisterNetEvent('Location:AchatSurf')
AddEventHandler('Location:AchatSurf', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()
	xPlayer.removeMoney(50) -- Ici pour changer le prix !

end)

RegisterNetEvent('Location:AchatFaggio')
AddEventHandler('Location:AchatFaggio', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()
	xPlayer.removeMoney(50) -- Ici pour changer le prix !

end)

RegisterNetEvent('Location:AchatBlista')
AddEventHandler('Location:AchatBlista', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()
	xPlayer.removeMoney(50) -- Ici pour changer le prix !

end)
