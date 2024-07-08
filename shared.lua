--    #    ####### #          #    #     # #######    #        #####   #####  ######  ### ######  #######  #####
--   # #      #    #         # #   ##    #    #      # #      #     # #     # #     #  #  #     #    #    #     #
--  #   #     #    #        #   #  # #   #    #     #   #     #       #       #     #  #  #     #    #    #
-- #     #    #    #       #     # #  #  #    #    #     #     #####  #       ######   #  ######     #     #####
-- #######    #    #       ####### #   # #    #    #######          # #       #   #    #  #          #          #
-- #     #    #    #       #     # #    ##    #    #     #    #     # #     # #    #   #  #          #    #     #
-- #     #    #    ####### #     # #     #    #    #     #     #####   #####  #     # ### #          #     #####

-- DISCORD SERVER: https://discord.gg/sCMKeZHxS5

Shared = {}

Shared.Debug = false  -- Enable or disable debug mode

Shared.ShowPlayers = true
Shared.ShowSteamName = true
Shared.ShowID = true

Shared.OpenMenuCommand = "joblist"                      -- The command to open the menu
Shared.OpenButton = "J"                                 -- The button to open everywhere the menu

Shared.ExcludedJobs = { -- Jobs that you dont want to show
    "unemployed",
    --"examplejob",
}

Shared.EmojiEnabled = true -- Show an emoji before the job names
Shared.EmojiJobs = {
    romania = "🇷🇴",
    alban = "🇦🇱",
    ausztria = "🇦🇺",
    bhutan = "🇧🇹",
    brazil = "🇧🇷",
    fehero = "🇧🇾",
    nemet = "🇩🇪",
    olasz = "🇮🇹",
    orosz = "🇷🇺",
}

Shared.Translation = {
    ['MENU_TITLE'] = "Joblist Menu",
    ['OPEN_BUTTON_DESCRIPTION'] = "Open Joblist Menu", -- Description to the button in FiveM Menu Keybinds
    ['ONLINE'] = "online",
    ['PLAYERS'] = "Players",
}


