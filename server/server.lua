-- local QBCore = exports['qb-core']:GetCoreObject()

-- function GetDiscordInfo(source)
--     local Player = QBCore.Functions.GetPlayer(source)
--     local result = {
--         avatar =
--         'https://cdn.discordapp.com/attachments/1328764186062225418/1400386486867853414/image.png?ex=688c730c&is=688b218c&hm=14f9efcbe6c1ca6297675176bd495dea2d51314fe5ca9230e82186fa7004cae8&',
--         name = 'fahad'
--     }

--     if not Player then
--         return result
--     end


--     if Player.PlayerData.discord then
--         result.avatar = Player.PlayerData.discord.avatar or result.avatar
--         result.name = Player.PlayerData.discord.username or result.name
--         return result
--     end


--     local discordId = string.gsub(QBCore.Functions.GetIdentifier(source, "discord") or "", "discord:", "")
--     if discordId == "" then return result end

--     local finished = false

--     PerformHttpRequest("https://discord.com/api/users/" .. discordId, function(code, body, headers)
--         if code == 200 then
--             local data = json.decode(body)
--             if data then
--                 result.avatar = "https://cdn.discordapp.com/avatars/" .. data.id .. "/" .. data.avatar .. "?size=1024"
--                 result.name = data.username or result.name
--             end
--         end
--         finished = true
--     end, "GET", "", {
--         ['Authorization'] = 'Bot ' .. Shared.TokenBot,
--         ['Content-Type'] = 'application/json'
--     })


--     local waitTime = 0
--     while not finished and waitTime < 5000 do
--         Wait(10)
--         waitTime = waitTime + 10
--     end

--     return result
-- end

-- RegisterNetEvent('request:discordInfo')
-- AddEventHandler('request:discordInfo', function()
--     local playerSource = source

--     local discordInfo = GetDiscordInfo(playerSource)
--     TriggerClientEvent("response:discordInfo", playerSource, discordInfo)
-- end)





