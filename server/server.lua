ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj 
end)

local item = "lotticket" --Put in your lottery item

ESX.RegisterUsableItem(item, function(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    xPlayer.removeInventoryItem(item, 1)
    local num = math.random(0, 100)
    if num >= 0 and num <= 5 then
        TriggerClientEvent('esx:showNotification', playerId, "~b~You've won the jackpot of ~y~$7,500~b~!")
        xPlayer.addMoney(7500)
    elseif num >= 6 and num <= 15 then
        TriggerClientEvent('esx:showNotification', playerId, "~b~You've won ~y~$5,000~b~!")
        xPlayer.addMoney(5000)
    elseif num >=16 and num <=50 then
        TriggerClientEvent('esx:showNotification', playerId, "~b~You've won ~y~$400~b~!")
        xPlayer.addMoney(400)
    elseif num >=51 and num <=75 then
        TriggerClientEvent('esx:showNotification', playerId, "~b~You've won ~y~$200~b~!")
        xPlayer.addMoney(200)
    elseif num >=76 and num <=100 then
        TriggerClientEvent('esx:showNotification', playerId, "~b~You've won ~y~$100~b~!")
        xPlayer.addMoney(100)
    end
end)
