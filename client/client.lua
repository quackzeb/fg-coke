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
		Repeat("fg:farmCoke")
	else
		lib.notify({
			description = "Cancelled",
			type = "error",
		})
    local druginfo = false
	end

end)

ox_target:addBoxZone({
	coords = vec3(-1977.06, 2.34, 122.5),
	size = vec3(20,20,20),
	rotation = 45,
	options = {
		{
		name = 'farmCoke',
		event = 'fg:farmCoke',
		icon = "fa-solid fa-cannabis",
		label = 'Farm...'
		}
	}
})


