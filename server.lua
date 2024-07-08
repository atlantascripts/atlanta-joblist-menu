--    #    ####### #          #    #     # #######    #        #####   #####  ######  ### ######  #######  #####
--   # #      #    #         # #   ##    #    #      # #      #     # #     # #     #  #  #     #    #    #     #
--  #   #     #    #        #   #  # #   #    #     #   #     #       #       #     #  #  #     #    #    #
-- #     #    #    #       #     # #  #  #    #    #     #     #####  #       ######   #  ######     #     #####
-- #######    #    #       ####### #   # #    #    #######          # #       #   #    #  #          #          #
-- #     #    #    #       #     # #    ##    #    #     #    #     # #     # #    #   #  #          #    #     #
-- #     #    #    ####### #     # #     #    #    #     #     #####   #####  #     # ### #          #     #####

-- DISCORD SERVER: https://discord.gg/sCMKeZHxS5


ESX = exports['es_extended']:getSharedObject()

Shared = Shared or {}

ESX.RegisterServerCallback('getJobs', function(source, cb)
    MySQL.Async.fetchAll('SELECT * FROM jobs', {}, function(jobs)
        local jobCounts = {}

        for i = 1, #jobs, 1 do
            if not contains(Shared.ExcludedJobs, jobs[i].name) then
                jobCounts[jobs[i].name] = {
                    label = jobs[i].label,
                    count = 0
                }
            end
        end

        local players = ESX.GetPlayers()
        for i = 1, #players, 1 do
            local xPlayer = ESX.GetPlayerFromId(players[i])
            local jobName = xPlayer.job.name

            if jobCounts[jobName] then
                jobCounts[jobName].count = jobCounts[jobName].count + 1
            end
        end

        local jobList = {}
        for jobName, jobInfo in pairs(jobCounts) do
            table.insert(jobList, {
                name = jobName,
                label = jobInfo.label,
                count = jobInfo.count
            })
        end

        table.sort(jobList, function(a, b) return a.label < b.label end)

        cb(jobList)
    end)
end)

ESX.RegisterServerCallback('getPlayers', function(source, cb, jobName)
    local players = ESX.GetPlayers()
    local playerData = {}

    for i = 1, #players, 1 do
        local xPlayer = ESX.GetPlayerFromId(players[i])
        if xPlayer.job.name == jobName then
            local playerName = Shared.ShowSteamName and GetPlayerName(players[i]) or xPlayer.getName()
            table.insert(playerData, {
                id = xPlayer.source,
                name = playerName
            })
        end
    end

    cb(playerData)
end)

function contains(table, val)
    for i = 1, #table do
        if table[i] == val then
            return true
        end
    end
    return false
end