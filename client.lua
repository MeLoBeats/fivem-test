-- CHAR CREATOR

AddEventHandler('playerJoin', function()
    print("aaah")
end)

CreateThread(function()
    local player = PlayerId()
    while true do
        Wait(0)
        if NetworkIsPlayerActive(player) then
            TriggerEvent('playerJoin')
        end
    end
end)