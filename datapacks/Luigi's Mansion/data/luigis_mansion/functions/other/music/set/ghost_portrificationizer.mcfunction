function #luigis_mansion:other/music/cannot_overwrite/ghost_portrificationizer
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/ghost_portrificationizer
tag @s remove cancel