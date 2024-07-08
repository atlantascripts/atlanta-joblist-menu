--    #    ####### #          #    #     # #######    #        #####   #####  ######  ### ######  #######  ##### 
--   # #      #    #         # #   ##    #    #      # #      #     # #     # #     #  #  #     #    #    #     # 
--  #   #     #    #        #   #  # #   #    #     #   #     #       #       #     #  #  #     #    #    #       
-- #     #    #    #       #     # #  #  #    #    #     #     #####  #       ######   #  ######     #     #####  
-- #######    #    #       ####### #   # #    #    #######          # #       #   #    #  #          #          # 
-- #     #    #    #       #     # #    ##    #    #     #    #     # #     # #    #   #  #          #    #     # 
-- #     #    #    ####### #     # #     #    #    #     #     #####   #####  #     # ### #          #     #####  

-- DISCORD SERVER: https://discord.gg/sCMKeZHxS5

fx_version("cerulean")
game("gta5")
lua54("yes")
author("chriis atlanta scripts")

client_scripts {
    'client.lua'
}
shared_scripts {
	"@es_extended/imports.lua",
    'shared.lua',
    '@ox_lib/init.lua',
} 
server_scripts {
	"@oxmysql/lib/MySQL.lua",
	"server.lua",
} 

