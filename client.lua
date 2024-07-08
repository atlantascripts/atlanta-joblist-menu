--    #    ####### #          #    #     # #######    #        #####   #####  ######  ### ######  #######  #####
--   # #      #    #         # #   ##    #    #      # #      #     # #     # #     #  #  #     #    #    #     #
--  #   #     #    #        #   #  # #   #    #     #   #     #       #       #     #  #  #     #    #    #
-- #     #    #    #       #     # #  #  #    #    #     #     #####  #       ######   #  ######     #     #####
-- #######    #    #       ####### #   # #    #    #######          # #       #   #    #  #          #          #
-- #     #    #    #       #     # #    ##    #    #     #    #     # #     # #    #   #  #          #    #     #
-- #     #    #    ####### #     # #     #    #    #     #     #####   #####  #     # ### #          #     #####

-- DISCORD SERVER: https://discord.gg/sCMKeZHxS5


CreateThread(function()
    while not ESX.IsPlayerLoaded() do
        Wait(1000)
    end
end)

RegisterCommand(Shared.OpenMenuCommand, function()
    openJobListing()
end, false)

RegisterKeyMapping(Shared.OpenMenuCommand, Shared.Translation['OPEN_BUTTON_DESCRIPTION'], 'keyboard', Shared.OpenButton)

function openJobListing()
    if Shared.Debug then
        print("[ATLANTA SCRIPTS] Generating menu options...")
    end
    ESX.TriggerServerCallback('getAllJobsWithPlayerCounts', function(jobData)
        local options = {}

        for _, job in pairs(jobData) do
            local emoji = Shared.EmojiEnabled and Shared.EmojiJobs[job.name] or ""
            local displayText = string.format('%s %s: %d %s', emoji, job.label, job.count, Shared.Translation['ONLINE'])
            table.insert(options, {
                title = displayText,
            })
        end

        lib.registerContext({
            id = 'joblist',
            title = Shared.Translation['MENU_TITLE'],
            menu = 'joblist',
            options = options
        })

        lib.showContext('joblist')

        if Shared.Debug then
            Wait(10)
            print("[ATLANTA SCRIPTS] Menu loaded...")
        end
    end)
end
