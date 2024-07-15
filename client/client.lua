local QBCore = exports['qb-core']:GetCoreObject()
local ox_target = exports.ox_target
local qbtarget = exports['qb-target']
local druginfo = false

RegisterNetEvent("fg:farmCoke")
AddEventHandler("fg:farmCoke", function()
	ExecuteCommand("crouch")
	Wait(100)
	lib.notify({ description = "Press X to stop" })
	druginfo = true
	if
		lib.progressBar({
			duration = Config.Coke.Time * 600,
			label = "Farm...",
			useWhileDead = false,
			canCancel = true,
			disable = {
				car = true,
				move = true,
				combat = true,
			},
			anim = {
				dict = "amb@world_human_gardener_plant@male@base",
				clip = "base",
			},
		})
		then
		TriggerServerEvent("fg:giveItem", Config.Coke.ItemFarm, Config.Coke.Amount, druginfo)
	else
		lib.notify({
			description = "Cancelled",
			type = "error",
		})
		local druginfo = false
	end
end)

Citizen.CreateThread(function()
	for _, loc in pairs(Config.CokePlantLoc) do
		local model = Config.CokePlant
	
		RequestModel(model)
		while not HasModelLoaded(model) do
			RequestModel(model)
			Wait(1)
		end
	
		local coke = CreateObject(model, loc.x, loc.y, loc.z - 1.0, true, false, false)
		FreezeEntityPosition(coke, true)
		PlaceObjectOnGroundProperly(coke)
	
		ox_target:addLocalEntity(coke, {
			{
				name = 'farmCoke',
				event = 'fg:farmCoke',
				icon = 'fa-solid fa-cannabis',
				label = 'Pick up ',
			}
		})			
	end
end)
