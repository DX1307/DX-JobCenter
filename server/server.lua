ESX = exports['es_extended']:getSharedObject()

RegisterServerEvent("DX-JobCenter:setjob") 
AddEventHandler('DX-JobCenter:setjob', function(job)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.setJob(job, 0)
end)