function #luigis_mansion:other/music/cannot_overwrite/gameboy_horror
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/gameboy_horror
tag @s remove cancel