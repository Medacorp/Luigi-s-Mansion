function #luigis_mansion:other/music/cannot_overwrite/gameboy_horror_calling
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/gameboy_horror_calling
tag @s remove cancel