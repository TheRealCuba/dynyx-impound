local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('dynyx-impound:server:VehicS', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('QBCore:Command:DeleteVehicle', src)
    TriggerEvent('qb-log:server:CreateLog', 'default', 'Scuff Impound', "lightgreen", (Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname).. " has scuff impounded a vehicle.")
end)

RegisterServerEvent('dynyx-impound:server:ParkingVio', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
        TriggerClientEvent('QBCore:Command:DeleteVehicle', src)
        TriggerClientEvent('QBCore:Notify', src, 'Impound Request Accepted.', 'success')
        TriggerEvent('qb-log:server:CreateLog', 'default', 'Parking Violation', "lightgreen", (Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname).. " has impounded a vehicle for a parking violation.")

end)

RegisterServerEvent('dynyx-impound:server:PDIm', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
        TriggerClientEvent("police:client:ImpoundVehicle", src, true)
        TriggerEvent('qb-log:server:CreateLog', 'default', 'Police Impound', "lightgreen", (Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname).. " has sent a vehicle to police Impound.")
end)
