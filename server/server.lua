local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent("fg:giveItem")
AddEventHandler("fg:giveItem", function(itemname, count, druginfo)
	local src = source
	if druginfo then
		local canCarry = exports.ox_inventory:CanCarryItem(src, itemname, count)
		if canCarry then
			exports.ox_inventory:AddItem(src, itemname, count)
		else
			TriggerClientEvent("ox_lib:notify", src, {
				description = "You don't have enough space...",
				type = "error",
			})
		end
	end
end)